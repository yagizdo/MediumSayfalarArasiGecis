//
//  ViewController.swift
//  MediumSayfalarArasiGecis
//
//  Created by Yılmaz Yağız Dokumacı on 31.01.2023.
//

import UIKit

class PageA: UIViewController {

    let gonderilecekMesaj:String = "Page A dan gelen mesaj"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToPageBBtn(_ sender: Any) {
        performSegue(withIdentifier: "toPageB", sender: gonderilecekMesaj)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Storyboard icerisinde tanimladigimiz identifier ile burada segue ye erisiyoruz
        if segue.identifier == "toPageB" {
            
            // Gonderdigimiz string mesaji bu metod da Any? turune donusturuldugu icin type casting ile onu geri String yapmaliyiz
            if let gonderilenMesaj = sender as? String {
                
                // Gidilecek VC (View Controller) seklinde gidecegimiz View Controlleri segue ye destination olarak belirliyoruz
                let gidilecekVC = segue.destination as! PageB
                
                // Sonrasinda gidecegimiz view controller icerisinde veriyi yakalamak icin yazdigimiz degiskene gonderdigimiz veriyi atiyoruz
                gidilecekVC.gelenVeri = gonderilenMesaj
            }
        }
    }
    
}

