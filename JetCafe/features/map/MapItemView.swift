//
//  MapItemView.swift
//  JetCafe
//
//  Created by Asim Seferli on 07.04.24.
//

import SwiftUI
import WebKit

extension Color {
    init(hex: Int, opacity: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: opacity
        )
    }
}
struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

class Cafe {
    var websiteURL = "https://printfable.com"
    var title = "Cafe Printfable"
}
struct MapItemView: View {
//    let cafe: Cafe

    @State private var isModelPresented = false
    @State private var showWebsiteModal = false


    var body: some View {
        Rectangle()
            .frame(width: 45, height: 4)
            .foregroundColor(Color.gray)
            .padding(8)
        
        Spacer()
        
        VStack(alignment: .center){
            Image("Image")
                .resizable()
                .scaledToFill()
                .frame( height: 150)
                .cornerRadius(8)
                .padding(.vertical,16)

            HStack(alignment:.bottom){
                VStack(alignment: .leading){
                    Text("Caffe Latte")
                        .foregroundStyle(.black)
                        .font(.headline)
                    Text("Mərdanov Qardaşları 20 ")
                        .foregroundStyle(.gray)
                        .font(.footnote)
                }
                Spacer()
                
                HStack{
                    HStack{
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundStyle(Color(hex: 0x191632))
                        Text("5 km")
                            .foregroundStyle(Color(hex: 0x191632))
                            .font(.headline)
                          
                    }
                    
                    HStack{
                        Image(systemName: "star.fill")
                            .foregroundStyle(Color(hex: 0xDB8827))
                        Text("5.0")
                            .foregroundStyle(Color(hex: 0xDB8827))
                            .font(.headline)
                            
                    }
                }
            }
            .padding(.vertical, 5)
            HStack{
                Text("27m")
                    .font(
                    Font.custom("Roboto", size: 20)
                    .weight(.medium)
                    )
                    .fontWeight(.bold)
                    .multilineTextAlignment(.trailing)
                    .foregroundColor(.black)
                Spacer(minLength: 10)
                HStack(){
                    
                    HStack(alignment: .center, spacing: 10) {
                        
                        Button(action: {
                                    self.isModelPresented = true
                                }, label: {
                                    Image(systemName: "mappin")
                                        .foregroundColor(Color(hex: 0xFF0000))
                                })
                                .sheet(isPresented: $isModelPresented) {
                                    HStack{
                                        HStack(alignment:.center ){
                                            VStack{
                                                Button(action: {
                                                    UIApplication.shared.openURL(URL(string:"https://www.google.com/maps/@40.4093,49.8671,6z")!)

                                                        }, label: {
                                                            VStack{
                                                                Image( "gm")
                                                                Text("Google map")
                                                                    .font(
                                                                        Font.custom("Roboto", size: 20)
                                                                            .weight(.bold)
                                                                    )
                                                                    .fontWeight(.semibold)
                                                                    .foregroundColor(.black)
                                                            }})
                                                
                                            }
                                            .padding()
                                            VStack{
                                                Button(action: {
                                                    UIApplication.shared.openURL(URL(string:"waze://?ll=40.4093, 49.8671&navigate=yes")!)
                                                        }, label: {
                                                            VStack{
                                                                Image( "waze")
                                                                Text("Waze")
                                                                    .font(
                                                                        Font.custom("Roboto", size: 20)
                                                                          
                                                                    )
                                                                    .fontWeight(.bold)
                                                                    .foregroundColor(.black)
                                                            }})
                                            }
                                            
                                        }
                                    }
                                        .presentationDetents([.height(180)])
                                }
                        
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 9)
                    .frame( alignment: .center)
                    .cornerRadius(10)
                    .overlay(
                      RoundedRectangle(cornerRadius: 10)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.87, green: 0.87, blue: 0.89), lineWidth: 1)
                    )
                    HStack(alignment: .center, spacing: 10) {
                        Text("10+")
                            .font(
                            Font.custom("Roboto", size: 14)
                            .weight(.medium)
                            )
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal, 12)
                    .padding(.vertical, 11)
                    .frame( alignment: .center)
                    .cornerRadius(10)
                    .overlay(
                      RoundedRectangle(cornerRadius: 10)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.87, green: 0.87, blue: 0.89), lineWidth: 1)
                    )
                    HStack(alignment: .center, spacing: 10) {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.color2)
                            .frame(width: 14, height: 14)
                    }
                    .padding(12)
                    .frame(width: 38, alignment: .center)
                    .cornerRadius(10)
                    .overlay(
                      RoundedRectangle(cornerRadius: 10)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.87, green: 0.87, blue: 0.89), lineWidth: 1)
                    )
                    Button {
                        self.showWebsiteModal = true

                    } label: {
                        Text("Ətraflı")
                            .font(Font.custom("Roboto", size: 14))
                            .foregroundStyle(.white)
                            .padding(.horizontal, 24)
                            .padding(.vertical, 11)
                            .background(.color)
                            .cornerRadius(10)
                    }
                }
               

            }
        }.sheet(isPresented: $showWebsiteModal) {
            WkWebContentView()
                .presentationDetents([.height(613)])
        }
        .padding(.horizontal, 20)
    }
}


#Preview {
    MapItemView()
}
