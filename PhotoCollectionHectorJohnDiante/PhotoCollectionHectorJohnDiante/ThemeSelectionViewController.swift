//
//  ThemeSelectionViewController.swift
//  PhotoCollectionHectorJohnDiante
//
//  Created by Hector Steven on 5/2/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit

class ThemeSelectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	@IBAction func yellowButtonPressed(_ sender: Any) {
		if let themeHelper = themeHelper {
			themeHelper.themePreferenceKey = "Yellow"
			themeHelper.setThemePreferenceToYellow()
			
		}
		dismiss(animated: true)
	}
	
	@IBAction func darkButtonPressed(_ sender: Any) {
		if let themeHelper = themeHelper {
			themeHelper.themePreferenceKey = "Dark"
			themeHelper.setThemePreferenceToDark()
		}
		dismiss(animated: true)
	}
	
	var themeHelper: ThemeHelper?
}
