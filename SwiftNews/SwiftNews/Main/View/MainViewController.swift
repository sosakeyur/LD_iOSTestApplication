//
//  MainViewController.swift
//  SwiftNews
//
//  Created by KEYUR SOSA on 10/7/19.
//  Copyright © 2019 KEYUR SOSA. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    // MARK: - Controls

    @IBOutlet var tableView: UITableView!

    // MARK: - Scene variables

    private lazy var interactor: MainInterface = MainInteractor(
        presenter: MainPresenter(viewController: self)
    )

    // MARK: - Internal variables

    private var newsData: [MainModels.ChildViewModel]?

    // MARK: - Controller cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadData()
    }
}

// MARK: - Events

private extension MainViewController {
    func configure() {}

    func loadData() {
        interactor.fetchNews()
    }
}

// MARK: - Interactions

private extension MainViewController {}

// MARK: - Scene cycle

extension MainViewController: MainDisplayable {
    func displayFetched(with viewModel: MainModels.ViewModel) {
        newsData = viewModel.children

        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }

    func displayFetched(with error: String) {
        // display alerview for error.
    }
}

// MARK: - Delegates

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsData?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as! MainCellTableViewCell

        cell.bind(with: newsData?[indexPath.row])

        return cell
    }
}

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "DetailVC", sender: newsData?[indexPath.row])
    }
}

extension MainViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailVC" {
            let viewController = segue.destination as? DetailArticalViewController
            viewController?.newsData = sender as? MainModels.ChildViewModel
        }
    }
}
