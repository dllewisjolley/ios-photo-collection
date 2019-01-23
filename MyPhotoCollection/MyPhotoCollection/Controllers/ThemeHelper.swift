//
//  ThemeHelper.swift
//  MyPhotoCollection
//
//  Created by Diante Lewis-Jolley on 1/23/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import Foundation

class ThemeHelper {
   let themePreferenceKey = "ThemePreference"
    let photoController = PhotoController()


    func setThemePreferenceToDark() {
        let userDefaults = UserDefaults.standard
        userDefaults.set("Dark", forKey: themePreferenceKey)
    }

    func setThemPreferenceToYourColor() {
        let userDefaults = UserDefaults.standard
        userDefaults.set("Purple", forKey: themePreferenceKey)
    }
    var themePreference: String? {
        let backgroundPrefernce = UserDefaults.standard.string(forKey: themePreferenceKey)
                if backgroundPrefernce == nil {
            setThemePreferenceToDark()
        }
        return backgroundPrefernce
        }
    }

