//
//  PhotosCollectionViewCell.swift
//  PhotoCollectionHectorJohnDiante
//
//  Created by Hector Steven on 5/2/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
	
	 func Views() {
		
	}
	
	@IBOutlet var imageView: UIImageView!
	@IBOutlet var photoLabel: UILabel!
	
	var photo: Photo? {
		didSet {
			
		}
	}
	
	
	
}
