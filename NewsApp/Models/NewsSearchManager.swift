//
//  NewsSearchManager.swift
//  NewsApp
//
//  Created by 임재현 on 2023/08/29.
//

import Foundation
import Alamofire

protocol NewsSearchManagerProtocol {
    func request(from keyword:String,start:Int,display:Int,completionHandler:@escaping([News])->Void)
}


struct NewsSearchManager:NewsSearchManagerProtocol {
    
    func request(from keyword:String,start:Int,display:Int,completionHandler:@escaping([News])->Void) {
        guard let url = URL(string: "https://openapi.naver.com/v1/search/news.json") else {return}
        
        let parameters = NewsRequestModel(start: start, display: display, query: keyword)
        let headers: HTTPHeaders = [
        
          
            
            "X-Naver-Client-Id" : "0n2M3XbV1R4TzOABD7l5",
             "X-Naver-Client-Secret" : "GjW4_EofaJ"
        ]
        
        AF.request(url,method: .get,parameters: parameters,headers: headers)
            .responseDecodable(of: NewsResponseModel.self) { response in
                switch response.result {
                case .success(let result) :
                    completionHandler(result.items)
                case .failure(let error):
                    print(error)
                }
            }
    }
    
}
