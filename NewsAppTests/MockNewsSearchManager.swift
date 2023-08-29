//
//  MockNewsSearchManager.swift
//  NewsAppTests
//
//  Created by 임재현 on 2023/08/29.
//

import XCTest
@testable import NewsApp


final class MockNewsSearchManager:NewsSearchManagerProtocol {
    var error : Error?
    var isCalledRequest = false
    
    
    func request(from keyword: String, start: Int, display: Int, completionHandler: @escaping ([NewsApp.News]) -> Void) {
        isCalledRequest = true
        
        if error == nil {
            completionHandler([])
        }
    }
    
    
}
