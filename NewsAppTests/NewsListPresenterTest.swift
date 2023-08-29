//
//  NewsListPresenterTest.swift
//  NewsAppTests
//
//  Created by 임재현 on 2023/08/29.
//

import XCTest

@testable import NewsApp

class NewsListPresenterTests: XCTestCase {
    var sut: NewsListPresenter!
    var viewController: MockNewsListViewController!
    var newsSearchManger: MockNewsSearchManager!
    
    
    
    override func setUp() {
        super.setUp()
        
        viewController = MockNewsListViewController()
        newsSearchManger = MockNewsSearchManager()
        
        sut = NewsListPresenter(viewCotroller: viewController,newsSearchManager: newsSearchManger)
    }
    
    override func tearDown() {
        sut = nil
        newsSearchManger = nil
        viewController = nil
        super.tearDown()
    }
    
    func test_viewDidLoad_호출() {
        sut.viewDidLoad()
        
        XCTAssertTrue(viewController.isCalledSetupNavigationBar)
        XCTAssertTrue(viewController.isCalledSetupLayout)
    }
    
    func test_didCalledRefresh_호출_request실패() {
       
        newsSearchManger.error = NSError() as Error
        
        sut.didCalledRefresh()
        
        XCTAssertFalse(viewController.isCalledReloadTableView)
        XCTAssertFalse(viewController.isCalledEndRefreshing)
        
        
    }
    
    
    func test_didCalledRefresh_호출_request성공() {
        
        newsSearchManger.error = nil
        
        sut.didCalledRefresh()
        
        XCTAssertTrue(viewController.isCalledReloadTableView)
        XCTAssertTrue(viewController.isCalledEndRefreshing)
        
    }
    
}


