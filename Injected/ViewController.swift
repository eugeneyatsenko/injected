//
//  ViewController.swift
//  Injected
//
//  Created by OknestaDeveloper on 03.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @Injected(\.defaultStyle)
    var defaultStyle: DefaultStyle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = defaultStyle.colors.whiteDarkColor
    }
}

