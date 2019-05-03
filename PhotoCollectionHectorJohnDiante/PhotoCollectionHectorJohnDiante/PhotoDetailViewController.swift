//
//  PhotoDetailViewController.swift
//  PhotoCollectionHectorJohnDiante
//
//  Created by Hector Steven on 5/2/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {
	
	func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
		guard let image = info[.editedImage] as? UIImage else { return }
		dismiss(animated: true)
		imageView.image = image
		
	}

    override func viewDidLoad() {
        super.viewDidLoad()
		importPicture()
    }
	
	@IBAction func addPhotoButtonTapped(_ sender: Any) {
		
	
		
//		dismiss(animated: true, completion: nil)
	}
	
	func importPicture() {
		let picker = UIImagePickerController()
		picker.allowsEditing = true
		picker.delegate = self
		present(picker, animated: true)
	}
	
	@IBOutlet var imageView: UIImageView!
	
	@IBOutlet var photoTextField: UITextField!
	
	var photoController: PhotoController?
	var photo: Photo?
	var themeHelper: ThemeHelper?

}

extension PhotoDetailViewController:  UINavigationControllerDelegate, UIImagePickerControllerDelegate {
	



}
