//
//  NewsListViewController.swift
//  NewsApp
//
//  Created by 임재현 on 2023/08/28.
//

import UIKit
import SnapKit

final class NewsListViewController: UIViewController {

    private lazy var presenter = NewsListPresenter(viewCotroller: self)
    private lazy var refreshControl:UIRefreshControl = {
       let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(didCalledRefresh), for: .valueChanged)
        return refreshControl
    }()
    
    private lazy var tableView:UITableView = {
       let tableView = UITableView()
        tableView.delegate = presenter
        tableView.dataSource = presenter
        
        tableView.register(NewsListTableViewCell.self, forCellReuseIdentifier: NewsListTableViewCell.identifier)
        tableView.register(NewsListTableViewHeaderView.self, forHeaderFooterViewReuseIdentifier: NewsListTableViewHeaderView.identifier)
       
        tableView.refreshControl = refreshControl
        return tableView
       
    }()
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
        
        NewsSearchManager().request(from: "아이폰", start: 1, display: 20) { newsArray in
            print(newsArray)
        }
        
    }


}


extension NewsListViewController:NewsListProtocol {
    func setupNavigationBar() {
        navigationItem.title = "News"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func setupLayout() {
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
   }
    
    func endRefreshing() {
        refreshControl.endRefreshing()
    }
    
    func moveToNewsWebViewController(with news:News) {
        let newsWebViewController = NewsWebViewController(news: news)
        navigationController?.pushViewController(newsWebViewController, animated: true)
    }
    
    func reloadTableView() {
        tableView.reloadData()
    }
    
}

private extension NewsListViewController {
    @objc func didCalledRefresh() {
        presenter.didCalledRefresh()
    }
}
