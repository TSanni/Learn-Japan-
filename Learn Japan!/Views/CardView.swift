//
//  CardView.swift
//  Learn Japan!
//
//  Created by Tomas Sanni on 12/24/22.
//

import SwiftUI

struct CardView: View {
    
    let image: String
    let title: String
    let text: String

    
    var body: some View {
        
        GroupBox {
            Text(text)
        } label: {
            
            VStack {
                HStack {
                    Text(title)
                    Spacer()
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                Divider()
            }
            
        }
        
        .padding()
        
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(image: Cards.example2.image, title: Cards.example2.title, text: Cards.example2.text)
    }
}
