//
//  CompartirController.swift
//  UnTaxi
//
//  Created by Done Santana on 7/3/17.
//  Copyright © 2017 Done Santana. All rights reserved.
//

import UIKit

class CompartirController: UIViewController {

    
    let compartirOpcions = ["itms://itunes.apple.com/us/app/apple-store/id1223715776?mt=8"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.black
        // Do any additional setup after loading the view.
    }

    //COMPARTIR POR WHATSAPP
    func CompartirWhatsapp(_ url: String){
        if let name = URL(string: "itms://itunes.apple.com/us/app/apple-store/id1223715776?mt=8") {
            let objectsToShare = [name]
            let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
            
            self.present(activityVC, animated: true, completion: nil)
        }
        else
        {
            // show alert for not available
        }
    }

    @IBAction func CompartirIOS(_ sender: AnyObject) {
        self.CompartirWhatsapp(compartirOpcions[0])
        //CompartirTable.isHidden = true
    }
    
}
