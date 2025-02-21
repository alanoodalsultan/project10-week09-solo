//
//  NewsCell.swift
//  Covid-19-
//
//  Created by alanood on 23/04/1443 AH.
//

import UIKit

class NewsCell: UICollectionViewCell {
    var identifier: String?
    var imageSize: CGSize?
    
    let imageView = UIImageView()
    let source = UILabel()
    let title = UILabel()
    let content = UILabel()
    let ago = UILabel()
    let line = UIView()
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        ago.attributedText = nil
        ago.text = nil
        
        content.text = nil
        content.attributedText = nil
        
        identifier = nil
        
        imageView.image = nil
        
        source.text = nil
        source.attributedText = nil
        
        title.attributedText = nil
        title.text = nil
    }

    var imageSizeUnwrapped: CGSize {
        guard let unwrapped = imageSize else { return CGSize.zero }
        
        return unwrapped
    }

    func configure(_ article: Article) {
        identifier = article.identifier
    }

    func update(image: UIImage?, matchingIdentifier: String?) {
        guard identifier == matchingIdentifier else { return }

        imageView.image = image
    }
}

