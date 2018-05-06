//
//  restaurantesVC.swift
//  ThinkingGreenIOS
//
//  Created by Sandy on 5/2/18.
//  Copyright © 2018 Sandy. All rights reserved.
//

import UIKit

class restaurantesVC: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    
    let arrNombres = ["A de Acento", "Café Ruta de la Seda", "Café Ó", "Forever", "Forever", "Máximo Bistrot", "Ojo de Agua", "Pan Comido", "Peltre", "Pujol", "Pápalo y Papalotl", "Pápalo y Papalotl", "The Green Corner", "The Green Corner"]
    
    
    let arrDes = ["Todo el material de empaque que utilizan es biodegradable. El agua es embotellada en envases de vidrio y lo mejor es que tienen un huerto en la entrada, en el que siembran algunos de sus ingredientes.",
                  
                  "En esta cafetería fundada en 2008 y ubicada en Coyoacán se pueden encontrar deliciosos productos de repostería hechos, con ingredientes certificados como orgánicos.",
                  
                  "Los empaques del DELI y de los productos To-Go son biodegradables. Los residuos del café que se prepara se da como cortesía para uso como composta.",
                  "Los empaques del DELI y de los productos To-Go son biodegradables. Los residuos del café que se prepara se da como cortesía para uso como composta. ",
                  
                  "Los empaques del DELI y de los productos To-Go son biodegradables. Los residuos del café que se prepara se da como cortesía para uso como composta.",
                  
                  "Uno de los restaurantes más populares de la ciudad, el Máximo tiene, de acuerdo con su página web, un compromiso con el comercio justo.",
                  
                  "Este lugar es como un mercado de productos orgánicos. Venden frutas y verduras que en su mayoría son de siembra local. No utilizan popotes y sus empaques son biodegradables.",
                  
                  " La decoración de sus dos sucursales está hecha con materiales reciclados. Por ejemplo, algunas de las mesas fueron, en otra vida, puertas.",
                  
                  "Tienen empaques de vidrio para dejar de lado el PET y utilizan empaques de material reciclable. Lo más interesante es el proyecto de convertir el café en plantas.",
                  
                  "Cocina mexicana de autor con productos local en un lugar pequeño y minimalista con ambiente tranquilo.",
                  
                  "Este restaurante vegano ubicado en la Condensa tiene el objetivo de combinar los principios de la sustentabilidad con la nutrición, ofreciendo platillos deliciosos y de bajo impacto ambiental.",
                  
                  "The Green Corner no es solo un restaurante, sino también una tienda donde se pueden encontrar desde alimentos y bebidas orgánicos hasta productos de limpieza eco-friendly.",
                  
                  "The Green Corner no es solo un restaurante, sino también una tienda donde se pueden encontrar desde alimentos y bebidas orgánicos hasta productos de limpieza eco-friendly."]
    
    let arrImg = ["aDeAcento", "cafeRutaDeSeda", "cafeO", "forever", "forever", "maximoBistrot", "ojoDeAgua", "panComido", "peltre", "pujol", "papaloPapalotl", "theGreenCorner", "theGreenCorner"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 13
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let celda = collectionView.dequeueReusableCell(withReuseIdentifier: "celdaRestaurante", for: indexPath) as! CeldaRestaurante
        celda.lblRestaurante.text = arrNombres[indexPath.row]
        celda.tvDesRestaurante.text = arrDes[indexPath.row]
        celda.imgRest.image = UIImage(named: arrImg[indexPath.row])
        
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
