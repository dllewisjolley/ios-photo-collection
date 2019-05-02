//
//  ThemeHelper.swift
//  PhotoCollectionHectorJohnDiante
//
//  Created by Diante Lewis-Jolley on 5/2/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import Foundation

class ThemeHelper {

    var themePreferenceKey: String = "Dark"

    func setThemePreferenceToDark() {
        let userDefaults = UserDefaults.standard

        
        // TODO: Change Value
        userDefaults.set(true, forKey: themePreferenceKey)
    }
}
