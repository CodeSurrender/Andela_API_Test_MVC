//
//  Entities.swift
//  AndelaTest
//
//  Created by Cole on 02/01/2020.
//  Copyright © 2020 Cole. All rights reserved.
//

import Foundation
import UIKit

let bookJSON = Data()
var BookEntries = [Entry]()

class bookData: UITableViewCell {
    
    var newView: UIImageView!
    var bookName: UILabel!
    var bookDescription: UILabel!
    var mediaType: UILabel!
    
    init(frame: CGRect, title: String) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        
        bookName = UILabel(frame: CGRect(x: 20,y: 10,width: 200,height: 25))
        bookName.font = UIFont.boldSystemFont(ofSize: bookName.font.pointSize)
        bookDescription = UILabel(frame: CGRect(x: 20,y: 35,width: 300,height: 25))
        bookDescription.lineBreakMode = .byWordWrapping
        bookDescription.numberOfLines = 0
       
        addSubview(bookName)
        addSubview(bookDescription)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
}
