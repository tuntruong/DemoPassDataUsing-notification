//
//  TableViewController.swift
//  DemoPassDataOtherWay
//
//  Created by Cuong15tr on 11/14/17.
//  Copyright © 2017 Cuong15tr. All rights reserved.
//

import UIKit

let myNotifiKey = "this is a notification key"

class TableViewController: UITableViewController {
    let array = [Int](1...100)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return array.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "\(array[indexPath.row])"
        return cell
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let controller = segue.destination as? ViewController {
//            controller.number = array[(tableView.indexPathForSelectedRow?.row)!]
//        }
//    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NotificationCenter.default.post(name: Notification.Name(rawValue: myNotifiKey), object: nil , userInfo: ["message": array[indexPath.row]])
    }
}
