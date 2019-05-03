//
//  ThemeHelper.swift
//  PhotoCollectionHectorJohnDiante
//
//  Created by Diante Lewis-Jolley on 5/2/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import Foundation

class ThemeHelper {
    init() {
        if themePreference == nil {
            setThemePreferenceToDark()
			
		}
    }

    var themePreferenceKey: String?
	
	func setKey() {
		
	}

    var themePreference: String? {
        guard let themePreferenceKey = themePreferenceKey else { return nil }
        guard let str = UserDefaults.standard.string(forKey: themePreferenceKey) else { return nil }
        return str
    }

    func setThemePreferenceToDark() {
        let userDefaults = UserDefaults.standard
        // TODO: Change Value
        userDefaults.set(true, forKey: "Dark")

    }

    func setThemePreferenceToYellow() {
        let userDefaults = UserDefaults.standard
        // TODO: Change Value
        userDefaults.set(true, forKey: "Yellow")

    }
}
