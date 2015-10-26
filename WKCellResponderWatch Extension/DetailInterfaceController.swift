//
//  DetailInterfaceController.swift
//  WKCellResponder
//
//  Created by Stephen on 26/10/2015.
//  Copyright © 2015 lumiator.technology.com. All rights reserved.
//

import WatchKit
import Foundation


class DetailInterfaceController: WKInterfaceController {

    @IBOutlet var lblDetail: WKInterfaceLabel!
    @IBOutlet var lblSlider: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Get the context dictionary
        let detailData = context as! Dictionary<String, AnyObject>
        // Get the values
        let labelString = detailData["labelText"] as! String
        let sliderValue = detailData["sliderValue"] as! Float
        // Set the labels
        lblDetail.setText(labelString)
        lblSlider.setText("\(sliderValue)")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
