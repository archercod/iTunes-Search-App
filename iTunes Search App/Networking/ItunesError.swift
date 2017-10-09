//
//  ItunesError.swift
//  iTunes Search App
//
//  Created by Marcin Pietrzak on 09.10.2017.
//  Copyright © 2017 Marcin Pietrzak. All rights reserved.
//

import Foundation

enum ItunesError: Error {
    case requestFailed
    case responseUnsuccessful
    case invalidData
    case jsonConversionFailure
    case jsonParsingFailure(message: String)
}
