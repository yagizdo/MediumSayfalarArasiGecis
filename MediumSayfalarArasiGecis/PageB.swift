//
//  PageB.swift
//  MediumSayfalarArasiGecis
//
//  Created by Yılmaz Yağız Dokumacı on 31.01.2023.
//

import UIKit

class PageB: UIViewController {

    var gelenVeri:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let gv = gelenVeri {
            print("Gelen veri : \(gv)")
        }
    }

    @IBAction func backToPageA(_ sender: Any) {
        self.dismiss(animated: true) {
            print("Bir önce ki sayfaya dönüldü")
        }
    }
    
}
