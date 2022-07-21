//
//  TabBarViewController.swift
//  PlatziFinanzas
//
//  Created by christians bonilla on 5/12/22.
//  Copyright © 2022 christians bonilla. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    @IBOutlet weak var tapbar: UITabBar!
    override func viewDidLoad() {
        super.viewDidLoad()

        customButton()
       // print(tapbar.items)
        
    }
    
    func customButton() {
        let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 32, height: 32))
        
        var menuButtonFrame = menuButton.frame
        menuButtonFrame.origin.y = tabBar.frame.minY + 6
        menuButtonFrame.origin.x = view.bounds.width / 2 - menuButtonFrame.size.width / 2
        menuButton.frame = menuButtonFrame
        menuButton.setImage(UIImage(named: "PlusButton"), for: .normal)
        
        menuButton.backgroundColor = UIColor(named: "GreenColor")
        menuButton.layer.cornerRadius = 10
        view.addSubview(menuButton)
        
        menuButton.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)
    }
    
    @objc private func menuButtonAction(sender: UIButton){
        selectedIndex = 2
    }
}
