//
//  NewsListTableViewCell.swift
//  NewsApp
//
//  Created by 임재현 on 2023/08/28.
//

import UIKit
import SnapKit

final class NewsListTableViewCell: UITableViewCell {
    
    static let identifier = "NewsListTableViewCell"
    
    private lazy var titleLabel:UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 15.0, weight: .semibold)
        return label
        
    }()
    
    private lazy var descriptionLabel:UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 14.0, weight: .medium)
    return label
    }()
    
    private lazy var dateLabel:UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12.0, weight: .medium)
        label.textColor = .secondaryLabel
        return label
    }()
   
    func setup(news:News) {
        setupLayout()
        
        accessoryType = .disclosureIndicator
         selectionStyle = .none
        titleLabel.text = news.title.htmlToString
        descriptionLabel.text = news.description.htmlToString
        dateLabel.text = news.pubDate
    }
    
}

private extension NewsListTableViewCell {
  
    func setupLayout(){
        let verticalSpacing:CGFloat = 4.0
        let superViewInset:CGFloat = 16.0
        
        
        [titleLabel,descriptionLabel,dateLabel].forEach {addSubview($0)}
        titleLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(superViewInset)
            $0.trailing.equalToSuperview().inset(48.0)
            $0.top.equalToSuperview().inset(superViewInset)
        }
        
        descriptionLabel.snp.makeConstraints {
            $0.leading.equalTo(titleLabel.snp.leading)
            $0.trailing.equalTo(titleLabel.snp.trailing)
            $0.top.equalTo(titleLabel.snp.bottom).offset(verticalSpacing)
        }
        dateLabel.snp.makeConstraints {
            $0.leading.equalTo(titleLabel.snp.leading)
            $0.trailing.equalTo(titleLabel.snp.trailing)
            $0.top.equalTo(descriptionLabel.snp.bottom)
                .offset(verticalSpacing)
            $0.bottom.equalToSuperview().inset(superViewInset)
        }
    }
}
