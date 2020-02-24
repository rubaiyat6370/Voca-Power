//
//  BookContentViewController.swift
//  VocaPower
//
//  Created by Rubaiyat Jahan Mumu on 2020-02-21.
//  Copyright © 2020 Rubaiyat Jahan Mumu. All rights reserved.
//

import UIKit

class BookContentViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var titleVC: String = "Barrons 300"
    override func viewDidLoad() {
        super.viewDidLoad()
        title = titleVC
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "BookLessionCell", bundle: nil), forCellReuseIdentifier: "lessionCell")
        tableView.register(UINib(nibName: "BookLessionHeaderView", bundle: nil), forCellReuseIdentifier: "lessionHeader")
        tableView.backgroundColor = AppConstants.themeColor
        view.backgroundColor = AppConstants.themeColor
    
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension BookContentViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableCell(withIdentifier: "lessionHeader") as! BookLessionHeaderView
        header.headerLabel.text = "Low Frequency"
        return header
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
}

extension BookContentViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "lessionCell") as! BookLessionCell
        return cell
    }


}
