//
//  ContentView.swift
//  Menu app
//
//  Created by Hilal Öner on 7/6/23.
//

import SwiftUI

struct MenuView: View {
    
   @State var menuItems :[MenuItem] = [MenuItem]()
    var dataService = DataServise()
    
    var body: some View {
        
        List(menuItems) { item in
            HStack{
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:50)
                    .cornerRadius(10)
                
                Text(item.name)
                    .bold()
                
                Spacer()
                
                Text("$" + item.price)
            }
            
            .listRowSeparator(.hidden)
            .listRowBackground(
                Color(.brown)
                .opacity(0.1)
            
            )
        }
        .listStyle(.plain)
        .onAppear{
            
            menuItems = dataService.getData()
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}


