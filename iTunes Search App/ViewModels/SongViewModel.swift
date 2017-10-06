//
//  SongViewModel.swift
//  iTunes Search App
//
//  Created by Marcin Pietrzak on 07.10.2017.
//  Copyright © 2017 Marcin Pietrzak. All rights reserved.
//

import Foundation

struct SongViewModel {
    let title: String
    let runtime: String
}

extension SongViewModel {
    init(song: Song) {
        self.title = song.censoredName
        
        //Track time in milliseconds
        let timeInSeconds = song.trackTime/1000
        let minutes = timeInSeconds / 60 % 60
        let seconds = timeInSeconds % 60
        
        self.runtime = "\(minutes): \(seconds)"
    }
}
