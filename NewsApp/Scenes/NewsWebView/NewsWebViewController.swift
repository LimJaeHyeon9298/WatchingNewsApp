//
//  NewsWebViewController.swift
//  NewsApp
//
//  Created by 임재현 on 2023/08/29.
//

import UIKit
import SnapKit
import WebKit

final class NewsWebViewController: UIViewController {
    
    private let webView = WKWebView()
    
    
    private let rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "link"), style: .plain, target: self, action: #selector(didTapRightBarButtonItem))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupNavigationBar()
        setupWebView()
    }
}

private extension NewsWebViewController {
    func setupNavigationBar() {
        navigationItem.title = "기사 제목"
        navigationItem.rightBarButtonItem = rightBarButtonItem
        
    }
    
    func setupWebView() {
        guard let linkURL = URL(string: "https://github.com/") else {
            
            navigationController?.popViewController(animated: true)
            
            return
            
        }
        
        view = webView
        
        let urlRequest = URLRequest(url: linkURL)
        webView.load(urlRequest)
    }
    
    @objc func didTapRightBarButtonItem() {
        UIPasteboard.general.string = "뉴스 링크"
    }
    
}
