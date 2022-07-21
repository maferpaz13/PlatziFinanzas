//
//  TransactionsViewController.swift
//  PlatziFinanzas
//
//  Created by christians bonilla on 5/12/22.
//  Copyright © 2022 christians bonilla. All rights reserved.
//

import UIKit

class TransactionsCell:UITableViewCell{
    
    @IBOutlet weak var imagen: UIImageView!
    
    
}

class TransactionsViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    fileprivate(set) lazy var emptyStateView: UIView = {
        guard let view = Bundle.main.loadNibNamed("EmptyState", owner: nil, options: [:])?.first as? UIView else{
        return UIView()
            
        }
        
        return view
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
       // let cell = UINib(nibName: "TransactionCell", bundle: Bundle.main)
        //tableView.register(cell, forCellReuseIdentifier: "cell")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension TransactionsViewController: UITableViewDelegate{
    
}


extension TransactionsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = 10
        tableView.backgroundView = count == 0 ? emptyStateView : nil
        tableView.separatorStyle = count == 0 ? .none : .singleLine
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = Bundle.main.loadNibNamed("TransactionCell", owner: self, options: nil)?.first as! TransactionsCell
        
        return cell
       //return tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    }
    
    
}
