//
//  RowController.swift
//  WKCellResponder
//
//  Created by Stephen on 26/10/2015.
//  Copyright © 2015 lumiator.technology.com. All rights reserved.
//

import WatchKit

class RowController: NSObject {
    
    @IBOutlet var lblRow: WKInterfaceLabel!
    @IBOutlet var sldRow: WKInterfaceSlider!

    // Need these to store the text string and the slider value
    // (can't get the properties of the controls directly)
    var labelText:String!
    var sliderValue:Float!
    
    @IBAction func sliderValueChanged(value: Float) {
        sliderValue = value
    }
}
