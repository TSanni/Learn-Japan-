//
//  HomeView.swift
//  Learn Japan!
//
//  Created by Tomas Sanni on 12/24/22.
//

import SwiftUI


class HomeManager: ObservableObject {
    @Published var cards: [Cards] = []
    
    init() {
        cards = [
            Cards(image: "japanMap", title: "Prefectures", text: "Japan's prefectures can be thought of like American States. Altogether, there are 47 prefectures throughout Japan. Learn more about the prefectures..."),
            
            Cards(image: "cultureImage", title: "Culture", text: "Japan has a very rich culture. As one of the oldest countries in the world, there is so much to discover."),
            
            Cards(image: "historyImage", title: "History", text: "The history of Japan is a very facinating tale. Learn the story of this great nation and how it became the society it is today."),
            Cards(image: "japanMap", title: "Games", text: "Tired of learning about your favorite country? Come and play some small games to really help the information sink in.")
        ]
    }
    
    
    
}

struct HomeView: View {
    
    let screenSize = UIScreen.main.bounds
    let columns = [GridItem(.flexible())]
    
    @StateObject var mng = HomeManager()

    
    var body: some View {
        ZStack(alignment: .center) {
            
            Circle()
                .fill(Color.red)
                .frame(width: screenSize.width * 0.2, height: screenSize.height * 0.1)
            
            VStack {
                Text("Welcome to Learn Japan! ☺️")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(mng.cards) { card in
                            
                            NavigationLink {
                                Text("Hi")
                            } label: {
                                CardView(image: card.image, title: card.title, text: card.text)
                                    .shadow(radius: 5)
                            }.foregroundColor(.black)

                            
                    
    
                        }
                    }
                }
                
                
                
            }
            
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .previewDevice("iPhone 11 Pro Max")
        }

        HomeView()
            .previewDevice("iPhone SE (3rd generation)")

    }
}
