//
//  File.swift
//  PlatziFinanzas
//
//  Created by christians bonilla on 5/10/22.
//  Copyright © 2022 christians bonilla. All rights reserved.
//

import Foundation
import UIKit


class OnBoarding: UIViewController{
    
    @IBOutlet weak var CollectionView: UICollectionView!
    
    var Auxrow: Int8! = 0
    var ElementsArray: [(titulo: String, imagen: UIImage)] = []
    
    override func viewDidLoad() {
        
        SetUpUI()
        
    }
    
    func SetUpUI() {
        
        ElementsArray.append((titulo: "Save money and reduce debt", imagen: UIImage(named: "Onboarding1")!))
        ElementsArray.append((titulo: "You’ve finished your onboarding", imagen: UIImage(named: "onboarding2")!))
        CollectionView.reloadData()
        
        let swipeleft = UISwipeGestureRecognizer(target: self, action: #selector(self.Gesture(gesture:)))
        
        swipeleft.direction = .left
        
        CollectionView.addGestureRecognizer(swipeleft)
        
        let swiperight = UISwipeGestureRecognizer(target: self, action: #selector(self.Gesture(gesture:)))
        
        swiperight.direction = .right
        
        CollectionView.addGestureRecognizer(swiperight)
        
    }
    
    @objc func Gesture(gesture: UISwipeGestureRecognizer) -> Void{
        
        if gesture.direction == UISwipeGestureRecognizer.Direction.right{
            
            Auxrow = 0
            
            self.CollectionView.scrollToItem(at: IndexPath(row: Int(Auxrow), section: 0), at: [.centeredVertically, .centeredHorizontally], animated: true)
            
        }else if gesture.direction == UISwipeGestureRecognizer.Direction.left{
            
            if Auxrow != 1 {
                
                Auxrow = 1
                
                self.CollectionView.scrollToItem(at: IndexPath(row: Int(Auxrow), section: 0), at: [.centeredVertically, .centeredHorizontally], animated: true)
                
            }
            
        }
        
    }
    
}
