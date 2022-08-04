//
//  ContentView.swift
//  GeneralMotors_TakeHome
// https://medium.com/swift-productions/sdwebimageswiftui-image-from-url-b0960f0bda64
// how to load an image from a URL^^
//  Created by Kyle Essenmacher on 8/3/22.
//https://images.unsplash.com/photo-1659535635086-18d69d56d0a4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=988&q=80

import SwiftUI
import SDWebImageSwiftUI


struct ContentView: View {
    
    @State var url = ""
    @State var show = false
    
    
    var body: some View {
        WebImage(url: URL(string: "https://images.unsplash.com/photo-1659535635086-18d69d56d0a4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=988&q=80"))
            .resizable()
            .frame(width: 200, height: 200)
            .aspectRatio(contentMode: .fit)
    }
}

        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
            ContentView()
        }
    }
