//
//  BudgetViewController.swift
//  PlatziFinanzas
//
//  Created by christians bonilla on 5/16/22.
//  Copyright © 2022 christians bonilla. All rights reserved.
//

import UIKit

class BudgetViewController: UIViewController {
    @IBOutlet weak var tableView : UITableView!
    @IBOutlet var animationsButtons: [UIButton]!
    @IBOutlet weak var animationLayout: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let cell = UINib(nibName: "TransactionCell", bundle: Bundle.main)
        //tableView.register(cell, forCellReuseIdentifier: "cell")
    }
    
    @IBAction func animateHeader(sender: UIButton){
        animationLayout.constant = sender.frame.origin.x
        UIView.animate(withDuration: 0.5, animations: {
            self.view.layoutIfNeeded()
        }) { (completed) in
            self.animationsButtons.forEach {
                $0.setTitleColor(UIColor(named: "TextColor"), for: .normal)
                sender.setTitleColor(UIColor.white, for: .normal)
            }
        }
    }
}

extension BudgetViewController: UITableViewDelegate{
    
}


extension BudgetViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = 10
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = Bundle.main.loadNibNamed("TransactionCell", owner: self, options: nil)?.first as! TransactionsCell
        
        return cell
        return tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    }
    
    
}
