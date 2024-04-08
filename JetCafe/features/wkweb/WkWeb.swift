//
//  WkWeb.swift
//  JetCafe
//
//  Created by Asim Seferli on 08.04.24.
//

import SwiftUI
import WebKit


struct WebViewContent: UIViewRepresentable {
    
    let webView: WKWebView
    
    init() {
        self.webView = WKWebView()
        
    }
    
    func makeUIView(context: Context) -> WKWebView {
        webView.allowsBackForwardNavigationGestures = true
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
    }
    
    func goBack(){
        webView.goBack()
    }
    
    func goForward(){
        webView.goForward()
    }
    
    
    func loadURL(urlString: String) {
        webView.load(URLRequest(url: URL(string: urlString)!))
    }
}

struct WkWebContentView: View {
    var webView = WebViewContent()
    
    @State var urlString = "https://www.printfable.com"
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    webView.goBack()
                }) {
                    Image(systemName: "arrow.backward")
                        .font(.title)
                        .padding()
                }
                
                TextField("Enter url", text: $urlString)
                
                Button(action: {
                     webView.loadURL(urlString: urlString)
                }) {
                    Text("Go")
                }

                Button(action: {
                     webView.goForward()
                }) {
                    Image(systemName: "arrow.forward")
                        .font(.title)
                        .padding()
                }
            }
            .background(Color(.systemGray6))
            
            webView
        }
        .onAppear {
             webView.loadURL(urlString: urlString)
        }
    }
}
#Preview {
    WkWebContentView()
}
