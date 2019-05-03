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
		setupViews()
    }
	
	@IBAction func addPhotoButtonTapped(_ sender: Any) {
		
		if let photoController = photoController {
			if let image = imageView.image, let text = photoTextField.text {
				if let data = image.pngData() {
					photoController.create(imageData: data, title: text)
					print("addPhoto")
				}
			}
		}
		dismiss(animated: true)
	}
	
	func importPicture() {
		let picker = UIImagePickerController()
		picker.allowsEditing = true
		picker.delegate = self
		present(picker, animated: true)
	}
	
	func setupViews() {
		if let photo = photo {
			imageView.image = UIImage(data: photo.imageData)
			photoTextField.text = photo.title
		}
	}
	
	@IBOutlet var imageView: UIImageView!
	
	@IBOutlet var photoTextField: UITextField!
	
	var photoController: PhotoController? {
		didSet {
			importPicture()
		}
	}
	
	var photo: Photo? {
		didSet {
			setupViews()
			
		}
	}
	
	var themeHelper: ThemeHelper?

}

extension PhotoDetailViewController:  UINavigationControllerDelegate, UIImagePickerControllerDelegate {
	func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
		guard let image = info[.editedImage] as? UIImage else { return }
		dismiss(animated: true)
		imageView.image = image
	}
}
