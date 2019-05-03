//
//  Photo.swift
//  PhotoCollectionHectorJohnDiante
//
//  Created by Diante Lewis-Jolley on 5/2/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import Foundation

struct Photo: Equatable {
    var imageData: Data
    var title: String

    init(imageData: Data, title: String) {
        self.imageData = imageData
        self.title = title
    }
}
