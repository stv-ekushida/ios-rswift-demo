//
//  SecondListDataSource.swift
//  ios-Rswift-demo
//
//  Created by OkuderaYuki on 2017/04/19.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import UIKit

final class SecondListDataSource: NSObject {
    fileprivate var secondListCellItems = SecondListCellItems()
    
    func set(secondListCellItems: SecondListCellItems) {
        self.secondListCellItems = secondListCellItems
    }
    
    func append(secondListCellItems: SecondListCellItems) {
        self.secondListCellItems.list.append(contentsOf: secondListCellItems.list)
    }
}

extension SecondListDataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.secondListCellItems.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.secondListCell, for: indexPath) {
            cell.item = secondListCellItems.list[indexPath.row]
            
            // セル選択時に色が変わらないようselectionStyleを変更
            cell.selectionStyle = .none
            return cell
        }
        return UITableViewCell()
    }
}
