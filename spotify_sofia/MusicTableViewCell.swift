//
//  MusicTableViewCell.swift
//  spotify_leticia
//
//  Created by COTEMIG on 01/07/25.
//

import UIKit

class MusicTableViewCell: UITableViewCell {
    

    @IBOutlet weak var stackview: UIStackView!
    
    func configure(musicData: MusicData) {
          let label = UILabel()
          label.numberOfLines = 0
          label.text = "Música: \(musicData.nome)\nArtista: \(musicData.artista)"
          stackview.addArrangedSubview(label)
      }
    
}
