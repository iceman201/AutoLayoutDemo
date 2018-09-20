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

    var topBar: UIView?
    var topBarTitle: UILabel?
    var topBarMenu: UIButton?

    override func loadView() {
        super.loadView()

        let topBarView = UIView()
        topBarView.backgroundColor = .green
        self.view.addSubview(topBarView)
        topBarView.keepTopInset.equal = zeroPadding
        topBarView.keepVerticalInsets.equal = zeroPadding
        topBarView.keepHeight.equal = defaultNavBarHeight
        self.topBar = topBarView

        let label = UILabel()
        label.text = "hahah"
        self.view.addSubview(label)
        label.keepSize.equal = 35.keepValue
        label.keepLeftInset.equal = doublePadding
        label.keepVerticallyCentered()
        self.topBarTitle = label

        

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.applyGradient(colours: [UIColor.yellowColor(), UIColor.blueColor(), UIColor.redColor()],
                                locations: [0.0, 0.5, 1.0])
    }


}

