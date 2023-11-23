//
//  ContentView.swift
//  Bookapp
//
//  Created by Arianna Spirito on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    HStack {
                        Circle()
                            .fill(.white)
                            .stroke( .gray, lineWidth:3)
                            .frame(width:17)
                        
                        Text("Today's Reading")
                            .font(.title2)
                    }
                    
                    Divider()
                    
                    Text ("Current")
                        .font(.title2)
                        .fontWeight(.bold)
                        .fontDesign(.serif)
                    
                    
                    NavigationLink(destination: DevelopInSwiftView()) {
                        
                        HStack {
                            
                            Image("dvl")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 6, height: 100)))
                            
                            
                            VStack (alignment: .leading){
                                
                                Text("Develop in Swift Fundamentals")
                                    .font(.title3)
                                    .foregroundColor(.black)
                                
                                Text ("5%")
                                    .font(.subheadline)
                                    .padding(.horizontal)
                                    .foregroundColor(.black)
                            }
                            
                        }
                        
                    }
                }
                
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Want to Read")
                        .font(.title2)
                        .fontWeight(.bold)
                        .fontDesign(.serif)
                    
                    Text("Books you would like to read next.")
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(alignment: .firstTextBaseline){
                            NavigationLink(destination: B1view()) {
                                Image("Belowzero")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 6, height: 70)))
                                    .frame(width: 200)
                                
                            }
                            NavigationLink(destination: Text("Destination")) {
                                Image("under1roof")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 6, height: 100)))
                                    .frame(width: 200)
                            }
                        }
                    }
                }
                
                
                Divider()
                
                
                
                VStack(alignment: .leading) {
                    Text("Hot This Week")
                        .font(.title2)
                        .fontDesign(.serif)
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(BookViewModal().Booklist , id : \.self) { book in
                                NavigationLink(destination:BookViencoll()){
                                    Image(book.coverBookImage)
                                        .resizable()
                                        .scaledToFit()
                                    .frame(height:200)}
                            }
                        }
                    }
                    .frame(height: 200)
                    .font(.title3)
                    .fontDesign(.serif)
                }
                
            }
            .navigationTitle("Reading Now")
            .padding(20)
            .toolbar {
                ToolbarItemGroup(placement: .primaryAction) {
                    Image("serena")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 40)
                }
            }
        }
    }
}
    
    
    
#Preview {
    ContentView()
}
    

