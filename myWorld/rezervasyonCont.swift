//
//  rezervasyonCont.swift
//  myWorld
//
//  Created by Tolga Eryılmaz on 5.05.2020.
//  Copyright © 2020 Tolga Eryılmaz. All rights reserved.
//

import UIKit

class rezervasyonCont: UIViewController{
    
    let odalar=["1 Kişilik Oda",
        "2 Kişilik Oda",
        "Aile Odası",
        "Kral Dairesi"
    ]
    var secilioda : String?
   
    @IBOutlet weak var cstp: UIStepper!
    @IBOutlet weak var ystp: UIStepper!
    @IBAction func cstp(_ sender: UIStepper) {
        let stepperValue = cstp.value
                clbl.text="\(Int(stepperValue))"
    }
    @IBAction func ystp(_ sender: UIStepper) {
        let stepperValue = ystp.value
                      ylbl.text="\(Int(stepperValue))"    }
    @IBOutlet weak var clbl: UILabel!
    @IBOutlet weak var ylbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

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
extension rezervasyonCont: UIPickerViewDelegate,UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return odalar.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return odalar[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        secilioda=odalar[row]
    }
    }
   
