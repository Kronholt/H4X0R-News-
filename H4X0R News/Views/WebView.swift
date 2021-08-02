//
//  WebView.swift
//  H4X0R News
//
//  Created by Kegan Ronholt on 8/2/21.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable{
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let safeUrl = URL(string: safeString){
                let request = URLRequest(url: safeUrl)
                uiView.load(request)
            }
            
        }
    }
    
}