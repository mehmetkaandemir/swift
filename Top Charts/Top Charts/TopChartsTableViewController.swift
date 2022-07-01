//
//  TopChartsTableViewController.swift
//  Top Charts
//
//  Created by Mehmet Kaan Demir on 8.08.2021.
//  Copyright © 2020 DEMIR. All rights reserved.
//

import UIKit

class SongTableViewController: UITableViewController {
    
    // MARK: - Functions
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SongData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let song = SongData[indexPath.row]
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SongCell") as? SongTableViewCell {
            
            cell.songNameLabel.text = song.name
            cell.artistNameLabel.text = song.artistName
            
            cell.albumCoverimageView.image = UIImage(url: song.artworkUrl100)
            cell.albumCoverimageView.layer.cornerRadius = 5.0
            return cell
        }
        
        return UITableViewCell()
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let songUrl = URL(string: SongData[indexPath.row].url) {
            UIApplication.shared.open(songUrl)
        }
    }
    
}
