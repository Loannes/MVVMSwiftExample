//
//  ViewController.swift
//  testProtocol
//
//  Created by dev_sinu on 2017. 3. 9..
//  Copyright © 2017년 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SwitchWithTextTableViewCell", for: indexPath) as! SwitchWithTextTableViewCell
        
        if indexPath.row == 0 {
            let viewModel = MinionModelViewModel()
            cell.configure(withDataSource: viewModel, delegate: viewModel)
        } else {
            var viewModel = MinionModelViewModel()
            viewModel.title = "hihihi2222"
            viewModel.switchOn = true
            cell.configure(withDataSource: viewModel, delegate: viewModel)
        }
        
        
        return cell
    }

}

