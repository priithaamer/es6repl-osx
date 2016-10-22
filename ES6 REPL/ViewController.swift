//
//  ViewController.swift
//  ES6 REPL
//
//  Created by Priit Haamer on 05.02.16.
//  Copyright © 2016 Priit Haamer. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {
    
    // MARK: IBOutlets
    @IBOutlet var webview: WebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url: URL! = Bundle.main.url(forResource: "repl", withExtension: "html")
        
        do {
            let fileContent = try NSString(contentsOf: url, encoding: String.Encoding.utf8.rawValue) as String
            
            webview.mainFrame.loadHTMLString(fileContent, baseURL:nil)
        } catch let error as NSError {
            print("Error: \(error)")
        }
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

