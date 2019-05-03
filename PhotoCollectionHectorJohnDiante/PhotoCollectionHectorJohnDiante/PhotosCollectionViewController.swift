//
//  PhotosCollectionViewController.swift
//  PhotoCollectionHectorJohnDiante
//
//  Created by Hector Steven on 5/2/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit

class PhotosCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
			view.backgroundColor = .lightGray
		} else {
			view.backgroundColor = .yellow
		}
	}
	
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		
		if segue.identifier == "themeSegue" {
			guard let vc = segue.destination as? ThemeSelectionViewController else { return }
			vc.themeHelper = themeHelper
		} else if segue.identifier == "AddSegue" {
			guard let vc = segue.destination as? PhotoDetailViewController else { return }
			vc.photoController = photoController
		} else if segue.identifier == "UpdateSegue" {
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


