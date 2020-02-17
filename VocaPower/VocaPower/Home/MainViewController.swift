//
//  ViewController.swift
//  VocaPower
//
//  Created by Rubaiyat Jahan Mumu on 2020-02-16.
//  Copyright © 2020 Rubaiyat Jahan Mumu. All rights reserved.
//

import UIKit

struct CellDataModel {
    let header: String
    let text: String
}

class MainViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    let data: [CellDataModel] = [ CellDataModel(header: "Barrons 333", text: "Study These Words"), CellDataModel(header: "Barrons 800", text: "Study These Words"), CellDataModel(header: "Maghoosh 1000", text: "Study These Words"), CellDataModel(header: "Word Smart I", text: "Study These Words"), CellDataModel(header: "Manhattan Essential", text: "Study These Words"), CellDataModel(header: "Favourite", text: "Study These Words"), CellDataModel(header: "Help & Feedback", text: "Rate Us")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Main"
        setupTableView()
    }

    func setupTableView() {
        tableview.delegate = self
        tableview.dataSource = self
        tableview.register(UINib(nibName: "MainTableViewCell", bundle: nil), forCellReuseIdentifier: "MainCell")
    }
}


extension MainViewController: UITableViewDelegate {

}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell") as! MainTableViewCell
        cell.TextLabel.text = data[indexPath.row].text
        cell.headerLabel.text = data[indexPath.row].header
        return cell
    }

}

