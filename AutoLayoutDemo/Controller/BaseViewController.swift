//
//  BaseViewController.swift
//  AutoLayoutDemo
//
//  Created by Liguo Jiao on 21/09/18.
//  Copyright © 2018 Liguo Jiao. All rights reserved.
//

import UIKit
import KeepLayout

class BaseViewController: UIViewController {
    @IBOutlet weak var mainContainer: UIView!
    
    var topBar: UIView?
    var topBarTitle: UILabel?
    var topBarMenu: UIButton?
    
    override func loadView() {
        super.loadView()
        let topBarView = UIView()
        mainContainer.addSubview(topBarView)
        topBarView.keepTopInset.equal = zeroPadding
        topBarView.keepHorizontalInsets.equal = zeroPadding
        topBarView.keepHeight.equal = defaultNavBarHeight
        self.topBar = topBarView
        
        let left = UIButton(fontAwesome: 16, type: .Solid)
        left.setTitle(FontAwesome.alignLeft.rawValue, for: .normal)
        left.titleLabel?.textColor = .white
        topBarView.addSubview(left)
        left.keepHeight.equal = 35.keepValue
        left.keepLeftInset.equal = doublePadding
        left.keepVerticallyCentered()
        self.topBarMenu = left
        
        let label = UILabel()
        label.text = "TODO"
        label.textColor = .white
        topBarView.addSubview(label)
        label.keepHeight.equal = 35.keepValue
        label.keepCentered()
        self.topBarTitle = label
        
        let right = UIButton(fontAwesome: 16, type: .Solid)
        right.setTitle(FontAwesome.alignLeft.rawValue, for: .normal)
        right.titleLabel?.textColor = .white
        topBarView.addSubview(right)
        right.keepHeight.equal = 35.keepValue
        right.keepRightInset.equal = doublePadding
        right.keepVerticallyCentered()
        self.topBarMenu = right
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
