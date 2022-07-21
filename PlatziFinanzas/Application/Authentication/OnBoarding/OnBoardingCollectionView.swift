//
//  OnBoardingCollectionView.swift
//  PlatziFinanzas
//
//  Created by christians bonilla on 5/10/22.
//  Copyright © 2022 christians bonilla. All rights reserved.
//

import Foundation
import UIKit

class OnBoardingCell: UICollectionViewCell{
    
    @IBOutlet var Imagen : UIImageView!
    @IBOutlet var titulo1 : UILabel!
    @IBOutlet weak var pageviwew: UIPageControl!
    
    
}

extension OnBoarding: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return ElementsArray.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let index = indexPath.row
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnBoardingCell", for: indexPath) as? OnBoardingCell
        
        cell?.titulo1.text = ElementsArray[index].titulo
        cell?.Imagen.image = ElementsArray[index].imagen
        cell?.pageviwew.currentPage = index
        return cell!
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = UIScreen.main.bounds
        
        return CGSize(width: size.width, height: size.height)
    }
    
    
}
