//
//  ViewController.swift
//  InVisionSwift
//
//  Created by Manas Mishra on 23/05/17.
//  Copyright © 2017 Manas Mishra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var parkBill: UIButton!
    @IBOutlet weak var discount: UIButton!
    @IBOutlet weak var addItem: UIButton!
    @IBOutlet weak var itemCollectionView: UICollectionView!
    @IBOutlet weak var hedingCollectionView: UICollectionView!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var phoneNumberTF: UITextField!
    @IBOutlet weak var recieptTableView: UITableView!
    @IBOutlet weak var discountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var checkOutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onCheckOut(_ sender: Any) {
    }
    @IBAction func onAddItemButton(_ sender: UIButton) {
    }

    @IBAction func onDiscount(_ sender: UIButton) {
    }
    @IBAction func onParkBill(_ sender: UIButton) {
    }
}

