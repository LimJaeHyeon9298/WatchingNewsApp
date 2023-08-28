//
//  NewsListPresenter.swift
//  NewsApp
//
//  Created by 임재현 on 2023/08/28.
//

import UIKit

protocol NewsListProtocol:AnyObject {
    func setupNavigationBar()
    func setupLayout()
    func endRefreshing()
    
}

final class NewsListPresenter:NSObject {
    
    private weak var viewController: NewsListProtocol?
    
    init(viewCotroller:NewsListProtocol) {
        self.viewController = viewCotroller
    }
    
    func viewDidLoad() {
        viewController?.setupNavigationBar()
        viewController?.setupLayout()
        
    }
    func didCalledRefresh()  {
        viewController?.endRefreshing()
    }
}

extension NewsListPresenter:UITableViewDelegate{
        
    
}

extension NewsListPresenter:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NewsListTableViewCell.identifier, for: indexPath) as? NewsListTableViewCell
        
        cell?.setup()
        
        
        return cell ?? UITableViewCell()
    }
    
    
}