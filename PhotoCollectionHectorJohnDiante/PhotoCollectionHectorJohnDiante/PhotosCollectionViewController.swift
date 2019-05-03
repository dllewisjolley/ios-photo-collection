//
//  PhotosCollectionViewController.swift
//  PhotoCollectionHectorJohnDiante
//
//  Created by Hector Steven on 5/2/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit

class PhotosCollectionViewController: UICollectionViewController {

	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		collectionView.reloadData()
		
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
		setTheme()

    }
	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return photoController.photos.count
	}
	
	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath)
		guard let photoCell = cell as? PhotosCollectionViewCell else { return cell }
		let photo = photoController.photos[indexPath.item]
		
		photoCell.imageView.image =  UIImage(data: photo.imageData) 
		photoCell.photoLabel.text = photo.title

		return photoCell
	}
	
	func setTheme() {
		if themeHelper.themePreference == "Dark" {
			collectionView.backgroundColor = .lightGray
		} else {
			collectionView.backgroundColor = .yellow
		}
	}
	
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		
		if segue.identifier == "themeSegue" {
			
			guard let vc = segue.destination as? ThemeSelectionViewController else { return }
			vc.themeHelper = themeHelper
			
		} else if segue.identifier == "AddSegue" {
			
			guard let vc = segue.destination as? PhotoDetailViewController else { return }
			vc.photoController = photoController
			
		} else if segue.identifier == "updateSegue" {
			
			guard let vc = segue.destination as? PhotoDetailViewController else { return }
			guard let cell = sender as? PhotosCollectionViewCell else { return }
			guard let indexpath = collectionView.indexPath(for: cell) else { return }
			let photo = photoController.photos[indexpath.row]
			
			vc.photo = photo
			vc.themeHelper = themeHelper
		}
	}
	
	let photoController = PhotoController()
	let themeHelper = ThemeHelper()
}


