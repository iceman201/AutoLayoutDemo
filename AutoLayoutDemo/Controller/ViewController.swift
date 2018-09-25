//
//  ViewController.swift
//  AutoLayoutDemo
//
//  Created by Liguo Jiao on 20/09/18.
//  Copyright © 2018 Liguo Jiao. All rights reserved.
//

import UIKit

class ViewController: BaseViewController, UIScrollViewDelegate {
    
    var cardScrollView: UIScrollView?
    
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    
    override func loadView() {
        super.loadView()
        let scroll:UIScrollView = {
            let scroll = UIScrollView()
            scroll.showsHorizontalScrollIndicator = false
            scroll.isPagingEnabled = true
            self.mainContainer.addSubview(scroll)
            scroll.keepHorizontalInsets.equal = zeroPadding
            scroll.keepBottomInset.equal = 50.keepValue
            scroll.keepHeight.equal = 350.keepValue
            return scroll
        }()
        self.cardScrollView = scroll
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.cardScrollView?.delegate = self
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
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.setCards()
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        /* get the current select page */
    }
    
    func setCards() {
        for eachCard in 0..<3 {
            frame.origin.x = UIScreen.main.bounds.width * CGFloat(eachCard)
            frame.size = (self.cardScrollView?.frame.size)!
            let card = CardView(frame: frame)
            self.cardScrollView?.addSubview(card)
        }
        self.cardScrollView?.contentSize = CGSize(width: (self.cardScrollView?.frame.size.width)! * 3, height: (self.cardScrollView?.frame.size.height)!)
    }
}


