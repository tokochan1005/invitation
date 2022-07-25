//
//  ContentView.swift
//  invitation
//
//  Created by t-nagata on 2022/07/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab = 1
    var body: some View {
        VStack {
            TabBarView(selectedTab: $selectedTab)
            TabView (selection: $selectedTab) {
                PageView(text: "ホームdesu")
                    .tag(1)
                PageView(text: "編集")
                    .tag(2)
                PageView(text: "送る")
                    .tag(3)
            }
        }
    }
}

struct TabBarView : View {
    @Binding var selectedTab : Int
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Image(systemName: "house")
                    .foregroundColor(Color(red: 0.26666666666666666, green: 0.26666666666666666, blue: 0.26666666666666666))
                Text("ホーム")
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 0.26666666666666666, green: 0.26666666666666666, blue: 0.26666666666666666))
            }
            .foregroundColor(selectedTab == 1 ? Color.blue : Color.gray)
            .onTapGesture {
                self.selectedTab = 1
            }
            Spacer()
            VStack {
                Image(systemName: "pencil.circle")
                    .foregroundColor(Color(red: 0.26666666666666666, green: 0.26666666666666666, blue: 0.26666666666666666))
                    
                Text("編集")
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 0.26666666666666666, green: 0.26666666666666666, blue: 0.26666666666666666))
            }
            .foregroundColor(selectedTab == 2 ? Color.blue : Color.gray)
            .onTapGesture {
                self.selectedTab = 2
            }
            Spacer()
            VStack {
                Image(systemName: "paperplane")
                    .foregroundColor(Color(red: 0.26666666666666666, green: 0.26666666666666666, blue: 0.26666666666666666))
                Text("送る")
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 0.26666666666666666, green: 0.26666666666666666, blue: 0.26666666666666666))
            }
            .foregroundColor(selectedTab == 3 ? Color.blue : Color.gray)
            .onTapGesture {
                self.selectedTab = 3
            }
            Spacer()
        }
    }
}

struct PageView : View {
    var text = ""
    
    init(text : String) {
        self.text = text
    }
    
    var body: some View {
        VStack {
            Text(text)
                .font(.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
