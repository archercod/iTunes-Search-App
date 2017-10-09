//
//  Endpoint.swift
//  iTunes Search App
//
//  Created by Marcin Pietrzak on 09.10.2017.
//  Copyright © 2017 Marcin Pietrzak. All rights reserved.
//

import Foundation

protocol Endpoint {
    var base: String { get }
    var path: String { get }
    var queryItems: [URLQueryItem] { get }
}

extension Endpoint {
    var urlComponents: URLComponents {
        var components = URLComponents(string: base)!
        components.path = path
        components.queryItems = queryItems
        
       return components
    }
    
    var request: URLRequest {
        let url = urlComponents.url!
        
        return URLRequest(url: url)
    }
}

enum Itunes {
    case search(type: String, media: ItunesMedia?)
}
