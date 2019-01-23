//
//  PhotoController.swift
//  MyPhotoCollection
//
//  Created by Diante Lewis-Jolley on 1/23/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import Foundation

class PhotoController {
    var photos: [Photo] = []

    func create(_ image: Data, title: String) {
        let newPhotos = Photo.init(imageData: image, title: title)
        photos.append(newPhotos)
    }

    func upDate(photo: Photo, imageData: Data, title: String) {
        guard let index = photos.index(of: photo) else { return }
        photos[index].imageData = imageData
        photos[index].title = title
    }
}
