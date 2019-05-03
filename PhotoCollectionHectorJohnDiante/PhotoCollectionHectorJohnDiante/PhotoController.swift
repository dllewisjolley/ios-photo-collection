//
//  PhotoController.swift
//  PhotoCollectionHectorJohnDiante
//
//  Created by Diante Lewis-Jolley on 5/2/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import Foundation

class PhotoController {

   private(set) var photos: [Photo] = []

    func create(imageData: Data, title: String) {
        let newPhoto = Photo(imageData: imageData, title: title)
        photos.append(newPhoto)
    }


    func update(photo: Photo, imageData: Data, title: String) {
        if let index = getPhotoIndex(photo: photo) {
            photos[index].imageData = imageData
            photos[index].title = title

        }
    }

    private func getPhotoIndex(photo: Photo) -> Int? {
        guard let index = photos.index(of: photo) else { return nil }
        return index

    }


}
