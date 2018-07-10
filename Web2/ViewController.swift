//
//  ViewController.swift
//  Web2
//
//  Created by yantze on 2018/7/4.
//  Copyright © 2018 yantze. All rights reserved.
//

import Cocoa
import WebKit
import AVFoundation

class ViewController: NSViewController, WKUIDelegate {

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var urlText: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        urlText.stringValue = "https://www.apple.com/"
        load(str: urlText.stringValue)
        /*
        let url = Bundle.main.url(forResource: "template", withExtension: "html")
        var content: String! = "nihao"
        do {
            content = try String(contentsOf: url!)
        } catch {}

        Swift.print(content)
        webView.loadHTMLString(content!, baseURL: nil)
        */
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    func load(str: String) {
        let myURL = URL(string: str)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }

    @IBAction func goTo(sender: NSButton) {
        load(str: urlText.stringValue)
    }

}

