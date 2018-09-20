//
//  ViewController.swift
//  AutoLayoutDemo
//
//  Created by Liguo Jiao on 20/09/18.
//  Copyright © 2018 Liguo Jiao. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {
    
    var cardScrollView: UIScrollView?
    override func loadView() {
        super.loadView()
        let scroll = UIScrollView()
        scroll.backgroundColor = .green
        scroll.isPagingEnabled = true
        self.mainContainer.addSubview(scroll)
        scroll.keepHorizontalInsets.equal = zeroPadding
        scroll.keepBottomInset.equal = 50.keepValue
        scroll.keepHeight.equal = 350.keepValue
        self.cardScrollView = scroll
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let top = UIColor(displayP3Red: 248/255, green: 87/255, blue: 165/255, alpha: 1.0)
        let bottom = UIColor(displayP3Red: 254/255, green: 88/255, blue: 88/255, alpha: 1.0)
//        for family: String in UIFont.familyNames
//        {
//            print("\(family)")
//            for names: String in UIFont.fontNames(forFamilyName: family)
//            {
//                print("== \(names)")
//            }
//        }
        self.view.applyGradient(colours: [top,bottom],
                                locations: [0.0, 0.5, 1.0])
        
    }
    
    
}


