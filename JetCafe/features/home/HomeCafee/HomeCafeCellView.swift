//
//  HomeCafeCellView.swift
//  JetCafe
//
//  Created by Asim Seferli on 08.04.24.
//

import SwiftUI
struct HomeCafeCellView: View {
        let title :String
        let image :String
    let describe :String

    let website : DarwinBoolean

    var body: some View {

        VStack(alignment:.leading) {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: UIScreen.main.bounds.width)
                    .padding(.leading, 0)
                    .cornerRadius(5.0)
            VStack(alignment:.leading){
                    Text(title)
                        .fontWeight(.semibold)
                        .font(.headline)
                        .foregroundColor(.color)
                        .fontWeight(.light)
                    Text(describe)
                        .fontWeight(.semibold)
                        .font(.caption2)
                        .foregroundColor(.gray)
                        .fontWeight(.light)
                HStack{
                    Button {
                        showModal.toggle()

                    } label: {
                        Text("Ətraflı")
                            .foregroundStyle(.white)
                            .font(.footnote)
                            .padding(.horizontal, 24)
                                                       .padding(.vertical, 11)
                                                       .background(.color)
                                                       .cornerRadius(10)
                    }
                    Spacer()
                    Button {
                        showModal.toggle()

                    } label: {
                        Text("Visit Website")
                            .font(.footnote)

                            .foregroundStyle(.white)
                            .padding(.horizontal, 24)
                                                       .padding(.vertical, 11)
                                                       .background(.color)
                                                       .cornerRadius(10)
                    }
                }
             

                }
                    
                
            }
        .sheet(isPresented: $showModal, content: {
           MapItemView()
                .presentationDetents([.height(313)])
        }
            
        )
            .padding(.horizontal,16)
        }
    @State var showModal = false
}

