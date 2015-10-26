//
//  InterfaceController.swift
//  WKCellResponderWatch Extension
//
//  Created by Stephen on 26/10/2015.
//  Copyright © 2015 lumiator.technology.com. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    // ToDo: Data to come from parent app
    var tableData = ["Things", "Stuff", "Objects", "Bacon", "Mice"]
    
    @IBOutlet var table: WKInterfaceTable!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        // Set the number of rows for the table
        table.setNumberOfRows(tableData.count, withRowType: "tableRow")
        
        // Populate the rows
        for var i = 0; i < table.numberOfRows; i++ {
            let row = table.rowControllerAtIndex(i) as! RowController
            
            // We need the label text later, so save it to the row's labelText property:
            row.labelText = tableData[i]
            // and set the row's label:
            row.lblRow.setText(tableData[i])
        }
    }
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        // Get the row
        let row = table.rowControllerAtIndex(rowIndex) as! RowController
        // Get the label text and slider value
        var contextDict:Dictionary<String, AnyObject>
        if row.sliderValue == nil {
            contextDict = ["labelText":row.labelText, "sliderValue":0.0]
        } else {
            contextDict = ["labelText":row.labelText, "sliderValue":row.sliderValue]
        }
        // Push a new controller
        pushControllerWithName("detail", context: contextDict)
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
