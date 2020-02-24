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

    lazy var searchBar:UISearchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 40, height: 20))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //title = "Main"
        setupTableView()
        setupSearchbar()
        navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.view.backgroundColor = UIColor(red: 88.0/255.0, green: 86.0/255.0, blue: 214.0/255.0, alpha: 1)
    }

    func setupSearchbar() {


        searchBar.searchBarStyle = .minimal
        //view.addSubview(searchBar)

        searchBar.placeholder = "Search words...    "

        searchBar.set(textColor: .black)
        searchBar.setTextField(color: UIColor.clear)
        searchBar.setPlaceholder(textColor: .white)
        searchBar.setSearchImage(color: .white)
        searchBar.setClearButton(color: .black)
        let leftNavBarButton = UIBarButtonItem(customView:searchBar)
        self.navigationItem.leftBarButtonItem = leftNavBarButton
    }

    func setupTableView() {
        tableview.delegate = self
        tableview.dataSource = self
        tableview.register(UINib(nibName: "MainTableViewCell", bundle: nil), forCellReuseIdentifier: "MainCell")
        tableview.rowHeight = UITableView.automaticDimension
        tableview.estimatedRowHeight = 200
        tableview.backgroundColor = UIColor(red: 88.0/255.0, green: 86.0/255.0, blue: 214.0/255.0, alpha: 1)
    }
}


extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc  = BookContentViewController(nibName: "BookContentViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell") as! MainTableViewCell
        cell.selectionStyle = .none
        ///


        ////
        cell.TextLabel.text = data[indexPath.row].text
        cell.headerLabel.text = data[indexPath.row].header
        return cell
    }

}

