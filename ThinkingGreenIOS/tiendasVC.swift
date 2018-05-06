//
//  tiendasVC.swift
//  ThinkingGreenIOS
//
//  Created by Sandy on 5/2/18.
//  Copyright © 2018 Sandy. All rights reserved.
//

import UIKit

class tiendasVC: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    let arrNombres = ["Botánica Granel", "Estado Natural", "Half & Half", "LUSH", "LUSH", "LUSH", "La Nature- Tu vida sin basura", "Lecheria Xaltipa", "Zero Market"]
    let arrDesc = ["Botánica Granel es un espacio que busca promoveer la cultura de la sustentabilidad y apoyo al campo mexicano.\nSus objetivos se enfocan en ser un super- mercado a granel con cero empaque y sin medidas preestablecidas.",
                   "Tu despensa a granel. Sin empaques ni marcas, simplemente alimentos sanos en su Estado Natural. Para eso vivimos!",
                   "Somos una empresa 100% mexicana que producimos, comercializamos y distribuimos productos enchilados gourmet, súper alimentos, spreads saludables, harinas gluten free y chips de kale, piña y betabel",
                   "Creemos en preparar productos efectivos a partir de frutas y vegetales orgánicos frescos, con los aceites esenciales más finos y utilizando sólo sintéticos seguros.",
                   "Creemos en preparar productos efectivos a partir de frutas y vegetales orgánicos frescos, con los aceites esenciales más finos y utilizando sólo sintéticos seguros.",
                   "Creemos en preparar productos efectivos a partir de frutas y vegetales orgánicos frescos, con los aceites esenciales más finos y utilizando sólo sintéticos seguros.",
                   "Venden productos naturales y locales a granel. Puedes llevártelos en tus propios contenedores, o bien en uno de nuestros tarros grandes rellenables. Organiza tu vida sin basura!",
                   "Es la última lechería sobreviviente de los buenos tiempos de nuestros abuelos donde no había tanto plástico. Además también entregan la leche a las colonias cercanas en bicicleta.",
                   "Fomentan una cultura de consumo responsable e inteligente ofreciendo un espacio de venta de productos saludables y ecológicos a través que reduzcan el deterioro ambiental y promueva la economía local."]
    
    
    let arrImg = ["bg", "estadoNatural", "half&half", "lush", "lush", "lush", "nature", "xaltipa", "zeroMarket"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let celda = collectionView.dequeueReusableCell(withReuseIdentifier: "celdaTienda", for: indexPath) as! CeldaTienda
        celda.lblTienda.text = arrNombres[indexPath.row]
        celda.lblDesc.text = arrDesc[indexPath.row]
        celda.imgTienda.image = UIImage(named: arrImg[indexPath.row])
        
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
