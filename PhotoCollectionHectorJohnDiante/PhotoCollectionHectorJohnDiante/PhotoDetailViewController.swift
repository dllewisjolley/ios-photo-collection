//
//  PhotoDetailViewController.swift
//  PhotoCollectionHectorJohnDiante
//
//  Created by Hector Steven on 5/2/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
	@IBAction func addPhotoButtonTapped(_ sender: Any) {
	}
	@IBOutlet var imageView: UIImageView!
	
	@IBOutlet var photoTextField: UITextField!
	
	var photoController: PhotoController?
	var photo: Photo?
	var themeHelper: ThemeHelper?

}
