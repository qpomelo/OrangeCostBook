//
//  SelectCostTypeViewController.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/11/6.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import UIKit

class SelectCostTypeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .clear
        self.view.isOpaque = false
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true)
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
