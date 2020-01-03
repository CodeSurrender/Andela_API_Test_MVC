//
//  ViewController.swift
//  AndelaTest
//
//  Created by Cole on 31/12/2019.
//  Copyright © 2019 Cole. All rights reserved.
//

import UIKit

var bookTable: UITableView!

class ViewController: NetworkProcession {

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        
        /* API Fecthes data */
        
        
        /* Populate tableview */
        
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        bookTable = UITableView(frame: CGRect(x: 0, y: 0, width: displayWidth, height: displayHeight - barHeight))
        
        bookTable.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        bookTable.dataSource = self
        bookTable.delegate = self
        bookTable.backgroundColor = UIColor.white
        self.view.addSubview(bookTable)
        bookTable.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            // Attaching the content's edges to the scroll view's edges
            bookTable.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            bookTable.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            bookTable.topAnchor.constraint(equalTo: self.view.topAnchor),
            bookTable.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            
            // Satisfying size constraints
            bookTable.widthAnchor.constraint(equalTo: self.view.widthAnchor)
            ])
        bookTable.translatesAutoresizingMaskIntoConstraints = false
        
        network_request()
        
    }


}

