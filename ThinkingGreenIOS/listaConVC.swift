//
//  listaConVC.swift
//  ThinkingGreenIOS
//
//  Created by Sandy on 5/2/18.
//  Copyright © 2018 Sandy. All rights reserved.
//

import UIKit

class listaConVC: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    let arrNombre = ["10 ideas para tu hogar", "11 consejos", "3 DIY con una misma lechera", "De camiseta a bolsa", "Protección solar", "Reciclaje de neumáticos", "Reduce la basura en casa", "Reduce tus residuos", "Tarro de muñeca kokeshi", "Una vida Zero Waste", "¿Cómo reciclar?"]
    
    let arrDesc = ["¡10 Ideas para decorar rincones del hogar con cosas recicladas!", "Recopilatorio de 11 alternativas zero waste", "Florero, Washi-Tape y Recetario", "Convierte una camiseta vieja en una bolsa en solo 10 minutos", "Cómo hacer protección solar zero waste", "¡Recicla neumáticos y decora tu casa con estas ideas!", "10 consejos para reducir la basura en casa", "Consejos para reducción de residuos ", "Muñeca kokeshi un reto facilisimo", "Tour por los mejores consejos para una vida zero waste", "Resolviendo dudas de reciclaje"]
    
    let arrImg = ["icons8_recycle_48", "icons8_circled_0_c_48", "icons8_recycle_48", "icons8_decline_48", "icons8_drill_48", "icons8_recycle_48", "icons8_decline_48", "icons8_decline_48", "icons8_recycle_48", "icons8_circled_0_c_48", "icons8_recycle_48"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 11
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let celda = collectionView.dequeueReusableCell(withReuseIdentifier: "celdaCons", for: indexPath) as! CeldaCon
        celda.lblConsejo.text = arrNombre[indexPath.row]
        celda.tvConsejo.text = arrDesc[indexPath.row]
        celda.imgConsejo.image = UIImage(named: arrImg[indexPath.row])
        return celda
        
    }

    override func viewDidLoad() {
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
