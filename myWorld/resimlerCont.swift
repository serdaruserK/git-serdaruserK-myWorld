//
//  resimlerCont.swift
//  myWorld
//
//  Created by Tolga Eryılmaz on 5.05.2020.
//  Copyright © 2020 Tolga Eryılmaz. All rights reserved.
//

import UIKit

class resimlerCont: UIViewController {

    @IBOutlet weak var anaGorsel: UIScrollView!
    var ImageArray=[UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        anaGorsel.frame = view.frame
        
        ImageArray = []
        for i in 0..<ImageArray.count{
            let imageView = UIImageView()
            imageView.image = ImageArray[i]
            imageView.contentMode = .scaleAspectFit
            let pozisyon = self.view.frame.width*CGFloat(i)
            imageView.frame = CGRect(x: pozisyon, y:0, width: self.anaGorsel.frame.width, height: self.anaGorsel.frame.height)
            
            anaGorsel.contentSize.width = anaGorsel.frame.width*CGFloat(i+1)
            anaGorsel.addSubview(imageView)
        }

        // Do any additional setup after loading the view.
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
