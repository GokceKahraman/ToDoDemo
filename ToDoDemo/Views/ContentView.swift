//
//  ContentView.swift
//  ToDoDemo
//
//  Created by Gökçe Kahraman on 7.12.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var realmManager = RealmManager()
    @State private var showAdddTaskView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            TasksView()
                .environmentObject(realmManager)
            
            SmallAddButton()
                .padding()
                .onTapGesture {
                    showAdddTaskView.toggle()
                }
        }
        .sheet(isPresented: $showAdddTaskView) { //add closure
            AddTaskView()
                .environmentObject(realmManager)

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(Color(hue: 0.086, saturation: 0.141, brightness: 0.972))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
