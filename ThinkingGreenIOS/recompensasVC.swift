//
//  recompensasVC.swift
//  ThinkingGreenIOS
//
//  Created by Sandy on 5/1/18.
//  Copyright © 2018 Sandy. All rights reserved.
//

import UIKit

var puntos = 7

class recompensasVC: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var lblPuntos: UILabel!
    
    
    let arrTemas = ["Tema Obscuro", "Tema Claro", "Tema Inverso", "Tema Acuático" ]
    let arrTitulo = ["THMDRK", "THMCLR", "THMINVRS", "THMAQUA"]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celda = collectionView.dequeueReusableCell(withReuseIdentifier: "celdaRecom", for: indexPath) as! CeldaRecom
        celda.lblPuntos.text = String ((indexPath.row + 2)*10)
        celda.lblTema.text = arrTemas[indexPath.row]
        celda.lblTitulo.text = arrTitulo[indexPath.row]
        celda.imgPuntos.image = UIImage(named: "ic_bug_report_black_48dp")
        celda.imgRegalo.image = UIImage(named: "ic_card_giftcard_black_48dp")
        return celda
        
    }
    
   

    override func viewDidLoad() {
        lblPuntos.text = String (puntos)
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
