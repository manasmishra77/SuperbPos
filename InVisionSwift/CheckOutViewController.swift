//
//  CheckOutViewController.swift
//  InVisionSwift
//
//  Created by Manas Mishra on 02/06/17.
//  Copyright © 2017 Manas Mishra. All rights reserved.
//

import UIKit

class CheckOutViewController: UIViewController {
    
    @IBOutlet weak var parkBill: UIButton!
    @IBOutlet weak var discount: UIButton!
    @IBOutlet weak var splitBill: UIButton!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var phoneNumberTF: UITextField!
    @IBOutlet weak var recieptTableView: UITableView!
    @IBOutlet weak var discountLabel: UILabel!
    @IBOutlet weak var vatLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onAddItemButton(_ sender: UIButton) {
    }
    
    @IBAction func onDiscount(_ sender: UIButton) {
    }
    @IBAction func onParkBill(_ sender: UIButton) {
    }
}
