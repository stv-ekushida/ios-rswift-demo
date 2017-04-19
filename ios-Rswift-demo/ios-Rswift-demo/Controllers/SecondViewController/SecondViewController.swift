//
//  SecondViewController.swift
//  ios-Rswift-demo
//
//  Created by OkuderaYuki on 2017/04/13.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import UIKit

final class SecondViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    fileprivate var dataSource = SecondListDataSource()
    
    // MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

// MARK: - file private
private extension SecondViewController {
    
    func setup() {
        registerNibs()
        setupDelegates()
    }
    
    func setupDelegates() {
        dataSource.set(secondListCellItems: createDummy())
        tableView.dataSource = dataSource
    }
    
    func registerNibs() {
        tableView.register(R.nib.secondListCell(), forCellReuseIdentifier: R.reuseIdentifier.secondListCell.identifier)
    }
    
    // MARK: - dummy data
    func createDummy() -> SecondListCellItems {
        var cellItems = SecondListCellItems()
        
        for i in 0..<10 {
            var cellItem = SecondListCellItem()
            cellItem.title = "title-title-title[\(i.description)]"
            cellItem.message1 = "message123"
            cellItem.message2 = "message456"
            cellItem.message3 = "message789"
            cellItem.image = R.image.search()
            
            cellItems.list.append(cellItem)
        }
        
        return cellItems
    }
}
