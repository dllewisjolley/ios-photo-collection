//
//  PhotoController.swift
//  PhotoCollectionHectorJohnDiante
//
//  Created by Diante Lewis-Jolley on 5/2/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import Foundation

class PhotoController {

    var photos: [Photo] = []

    func create(imageData: Data, title: String) {
        let newPhoto = Photo(imageData: imageData, title: title)

        photos.append(newPhoto)

    }

}
