//
//  ContentView.swift
//  ToDoDemo
//
//  Created by Gökçe Kahraman on 7.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showAdddTaskView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            TasksView()
            
            SmallAddButton()
                .padding()
                .onTapGesture {
                    showAdddTaskView.toggle()
                }
        }
        .sheet(isPresented: $showAdddTaskView) { //add closure
            AddTaskView()
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
