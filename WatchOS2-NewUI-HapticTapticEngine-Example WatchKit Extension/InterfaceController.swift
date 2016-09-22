//
//  InterfaceController.swift
//  WatchOS2-NewUI-HapticTapticEngine-Example WatchKit Extension
//
//  Created by Wlad Dicario on 31/08/2015.
//  Copyright © 2015 Sweefties. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    // MARK: - Interface
    @IBOutlet var interfaceTable: WKInterfaceTable!
    
    // MARK: - Properties
    fileprivate let rowType = "HapticTableRowController"
    fileprivate let hapticTypeAllValues: [(String, WKHapticType)] = [
        ("Notification",    .notification),
        ("DirectionUp",     .directionUp),
        ("DirectionDown",   .directionDown),
        ("Success",         .success),
        ("Failure",         .failure),
        ("Retry",           .retry),
        ("Start",           .start),
        ("Stop",            .stop),
        ("Click",           .click)
    ]
    
    
    // MARK: - Calls
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        loadTableData()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}

//MARK: - TableDataSource -> InterfaceController Extension
typealias TableDataSource = InterfaceController
extension TableDataSource {
    
    fileprivate func loadTableData() {
        
        // set number of rows for table
        interfaceTable.setNumberOfRows(hapticTypeAllValues.count, withRowType: rowType)
        
        // row for index
        for (index, hapticTypeInfo) in hapticTypeAllValues.enumerated() {
            
            let (haptic, hapticType) = hapticTypeInfo
            let row = interfaceTable.rowController(at: index) as! HapticTableRowController
            
            row.interfaceButton.setTitle(haptic)
            row.hapticType = hapticType
        }
    }
}
