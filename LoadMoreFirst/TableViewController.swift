//
//  TableViewController.swift
//  LoadMoreFirst
//
//  Created by trung on 2018/08/30.
//  Copyright © 2018 trung. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var arrayLoad = Array(1...20)
//    var loadMore: UITableViewCell
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayLoad.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = String(arrayLoad[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let lastRow = arrayLoad.count - 1
        if lastRow == indexPath.row {
            loadMore()
        }
       
    }
    func loadMore() {
        arrayLoad.append(1)
         tableView.reloadData()
    }

}
