//
//  TestViewController.swift
//  VocaPower
//
//  Created by Rubaiyat Jahan Mumu on 2020-02-20.
//  Copyright © 2020 Rubaiyat Jahan Mumu. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    @IBAction func onBtnSelect(_ sender: Any) {
        let sb  = UIStoryboard(name: "Main", bundle: nil)
        guard let mainVC = sb.instantiateViewController(withIdentifier: "main") as? MainViewController else { return }
        self.navigationController?.pushViewController(mainVC, animated: true)
    }

    @IBAction func navigatebookContentViewController(_ sender: Any) {

        let vc  = BookContentViewController(nibName: "BookContentViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
