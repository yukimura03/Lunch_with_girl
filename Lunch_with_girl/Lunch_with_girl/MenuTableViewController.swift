//
//  MenuTableViewController.swift
//  Lunch_with_girl
//
//  Created by minagi on 2019/03/28.
//  Copyright © 2019 minagi. All rights reserved.
//

import Foundation
import UIKit

class MenuTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var menuTableView: UITableView!
    
    let dataSource = MenuDataSource()
    
    @IBAction func addButtonTapped(_ sender: Any) {
        if textField.text != "" {
            let menu = textField.text!
            dataSource.menu = [menu]
        }
        reloadData()
        
    }
    
    func reloadData(){
        self.menuTableView.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.menu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return self.setupListCell(indexPath: indexPath)
    }
    /// エリア一覧が載ったセルを表示する
    private func setupListCell(indexPath: IndexPath) -> UITableViewCell {
        let cell = menuTableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath)
        cell.textLabel?.text = dataSource.menu[indexPath.row]
        return cell
    }
    
    
}
