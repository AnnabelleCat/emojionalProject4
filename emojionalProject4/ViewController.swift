//
//  ViewController.swift
//  emojionalProject4
//
//  Created by Apple on 6/20/19.
//  Copyright © 2019 Anika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Alert", message: "vitamin C", preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
    
}

