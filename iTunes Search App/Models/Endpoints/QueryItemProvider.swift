//
//  QueryItemProvider.swift
//  iTunes Search App
//
//  Created by Marcin Pietrzak on 09.10.2017.
//  Copyright © 2017 Marcin Pietrzak. All rights reserved.
//

import Foundation

protocol QueryItemProvider {
    var queryItem: URLQueryItem { get }
}
