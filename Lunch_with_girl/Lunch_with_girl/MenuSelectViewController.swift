//
//  MenuSelectViewController.swift
//  Lunch_with_girl
//
//  Created by minagi on 2019/03/27.
//  Copyright © 2019 minagi. All rights reserved.
//

import Foundation
import UIKit

class MenuSelectViewController: UIViewController {
    
    @IBOutlet weak var girlImage: UIImageView!
    @IBOutlet weak var serifLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    let dataSource = MenuDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        dataSource.menuReset()
        let text = "うーん、何を頼みましょうか・・・"
        serifLabel.text = text
    }
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        
    }
    
}
