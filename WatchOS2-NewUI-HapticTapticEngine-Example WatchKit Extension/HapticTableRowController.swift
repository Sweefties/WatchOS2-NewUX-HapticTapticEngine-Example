//
//  HapticTableRowController.swift
//  WatchOS2-NewUI-HapticTapticEngine-Example
//
//  Created by Wlad Dicario on 31/08/2015.
//  Copyright © 2015 Sweefties. All rights reserved.
//

import WatchKit

class HapticTableRowController: NSObject {

    // MARK: - Interface
    @IBOutlet var interfaceButton: WKInterfaceButton!
    
    // MARK: - Property
    var hapticType = WKHapticType.Click
    
    // MARK: - Action
    @IBAction func buttonPressed() {
        // Gives haptic feedback to the user.
        WKInterfaceDevice.currentDevice().playHaptic(hapticType)
        print(hapticType.rawValue)
    }
    
    
    /**
    // from apple documentation (xcode7 beta 6.0) :
    //
    // All Constants -> Available in watchOS 2.0 and later.
    //
    // WKHapticTypeNotification
    // Alerts the user to an arrived notification when the Watch app is not running in the foreground.
    //
    // WKHapticTypeDirectionUp
    // Indicates an increase in a specific value or when a value has gone above a certain threshold. For example, you could use this feedback when adjusting the value of a thermostat.
    
    // WKHapticTypeDirectionDown
    // Indicates a decrease in a specific value or when a value has gone below a certain threshold. For example, you could use this feedback when adjusting the value of a thermostat.
    //
    // WKHapticTypeSuccess
    // Indicates the successful completion of a task or the answering of a question.
    //
    // WKHapticTypeFailure
    // Indicates the failed completion of a task or answering of a question.
    //
    // WKHapticTypeRetry
    // Indicates that the user should retry a task that temporarily failed.
    //
    // WKHapticTypeStart
    // Indicates the beginning of an action. For example, a stopwatch app would use this when the user started the stopwatch.
    //
    // WKHapticTypeStop
    // Indicates the end of an action. For example, a stopwatch app would use this when the user stopped the stopwatch.
    //
    // WKHapticTypeClick
    // Indicates a simple click type of feedback. Use this to mark fixed points along a path. If you use this haptic, space out the intervals at which you play it rather than playing it several times in quick succession.
    //
    //
    */
}
