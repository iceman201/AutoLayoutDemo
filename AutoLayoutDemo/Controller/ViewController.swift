//
//  ViewController.swift
//  AutoLayoutDemo
//
//  Created by Liguo Jiao on 20/09/18.
//  Copyright © 2018 Liguo Jiao. All rights reserved.
//

import UIKit
import KeepLayout

class ViewController: UIViewController {
    @IBOutlet weak var mainContainer: UIView!
    
    var topBar: UIView?
    var topBarTitle: UILabel?
    var topBarMenu: UIButton?

    var safeAreas: UILayoutGuide {
        get {
            return self.view.safeAreaLayoutGuide
        }
    }
    override func loadView() {
        super.loadView()

        let topBarView = UIView()
        topBarView.backgroundColor = .green
        mainContainer.addSubview(topBarView)
        topBarView.keepTopInset.equal = zeroPadding
        topBarView.keepHorizontalInsets.equal = zeroPadding
        topBarView.keepHeight.equal = defaultNavBarHeight
        self.topBar = topBarView

        let label = UILabel()
        label.text = "hahah"
        topBarView.addSubview(label)
        label.keepHeight.equal = 35.keepValue
        label.keepLeftInset.equal = doublePadding
        label.keepVerticallyCentered()
        self.topBarTitle = label
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let top = UIColor(displayP3Red: 248/255, green: 87/255, blue: 165/255, alpha: 1.0)
        let bottom = UIColor(displayP3Red: 254/255, green: 88/255, blue: 88/255, alpha: 1.0)

        self.view.applyGradient(colours: [top,bottom],
                                locations: [0.0, 0.5, 1.0])
    }
    
}


