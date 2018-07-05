//
//  AppDelegate.swift
//  Web2
//
//  Created by yantze on 2018/7/4.
//  Copyright © 2018 yantze. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        LSSetDefaultHandlerForURLScheme("test" as CFString, "com.vastiny.sega.Web2" as CFString)
        let test = NSAppleEventDescriptor(string: "test")
        let descriptor = NSAppleEventDescriptor(eventClass: AEEventClass(kInternetEventClass), eventID: AEEventID(kAEGetURL), targetDescriptor: nil, returnID: AEReturnID(kAutoGenerateReturnID), transactionID: AETransactionID(kAnyTransactionID))
        descriptor.setParam(test, forKeyword: keyDirectObject)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

