//
//  Song.swift
//  Top Charts
//
//  Created by Mehmet Kaan Demir on 8.08.2021.
//  Copyright © 2021 Demir. All rights reserved.
//

import UIKit

struct Song: Decodable {
    // MARK: - Properties
    let name: String
    let artistName: String
    let artworkUrl100: String
    let url: String
}
