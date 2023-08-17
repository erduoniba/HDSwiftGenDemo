//
//  ViewController.swift
//  HDSwiftGenDemo
//
//  Created by denglibing on 2023/8/16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let systemlanguage = Locale.preferredLanguages.first, systemlanguage.hasPrefix("zh") {
            UserDefaults.standard.setValue("zh", forKey: "systemlanguage")
        }
        else {
            UserDefaults.standard.setValue("en", forKey: "systemlanguage")
        }
        
        // "Locale.current: en_CN (current)"
        // "Locale.current: zh_CN (current)"
        debugPrint("L10n.Localizable.hello:\(L10n.Localizable.hello)")
        debugPrint("L10n.Localizable.good:\(L10n.Localizable.good)")
    }


    @IBAction func languageChange(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            UserDefaults.standard.setValue("zh", forKey: "systemlanguage")
            
            debugPrint("L10n.Localizable.hello:\(L10n.Localizable.hello)")
            debugPrint("L10n.Localizable.good:\(L10n.Localizable.good)")
        }
        else if sender.selectedSegmentIndex == 1 {
            UserDefaults.standard.setValue("en", forKey: "systemlanguage")
            
            debugPrint("L10n.Localizable.hello:\(L10n.Localizable.hello)")
            debugPrint("L10n.Localizable.good:\(L10n.Localizable.good)")
        }
    }
}

