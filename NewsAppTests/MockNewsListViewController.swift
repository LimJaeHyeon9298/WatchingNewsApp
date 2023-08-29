//
//  MockNewsListViewController.swift
//  NewsAppTests
//
//  Created by 임재현 on 2023/08/29.
//

import XCTest
@testable import NewsApp


final class MockNewsListViewController: NewsListProtocol {
   var isCalledSetupNavigationBar = false
    var isCalledSetupLayout = false
    var isCalledEndRefreshing = false
    var isCalledMoveToNewsWebViewController = false
    var isCalledReloadTableView = false
    
    
    func setupNavigationBar() {
        isCalledSetupNavigationBar = true
    }
    
    func setupLayout() {
        isCalledSetupLayout = true
    }
    
    func endRefreshing() {
        isCalledEndRefreshing = true
    }
    
    func moveToNewsWebViewController(with news: NewsApp.News) {
        isCalledMoveToNewsWebViewController = true
    }
    
    func reloadTableView() {
        isCalledReloadTableView = true
    }
    
    
}


