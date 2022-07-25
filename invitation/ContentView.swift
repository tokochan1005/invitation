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
                PageHome()
                    .tag(1)
                PageEdit()
                    .tag(2)
                PageSend()
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
                    .foregroundColor(
                        selectedTab == 1 ? Color(red: 0.2980392156862745, green: 0.7176470588235294, blue: 0.7647058823529411)
                        : Color(red: 0.26666666666666666, green: 0.26666666666666666, blue: 0.26666666666666666))
                Text("ホーム")
                    .fontWeight(.heavy)
                    .foregroundColor(
                        selectedTab == 1 ? Color(red: 0.2980392156862745, green: 0.7176470588235294, blue: 0.7647058823529411)
                        : Color(red: 0.26666666666666666, green: 0.26666666666666666, blue: 0.26666666666666666))
                    
            }
            .onTapGesture {
                self.selectedTab = 1
            }
            Spacer()
            VStack {
                Image(systemName: "pencil.circle")
                    .foregroundColor(
                        selectedTab == 2 ? Color(red: 0.2980392156862745, green: 0.7176470588235294, blue: 0.7647058823529411)
                        : Color(red: 0.26666666666666666, green: 0.26666666666666666, blue: 0.26666666666666666))
                    
                Text("編集")
                    .fontWeight(.heavy)
                    .foregroundColor(
                        selectedTab == 2 ? Color(red: 0.2980392156862745, green: 0.7176470588235294, blue: 0.7647058823529411)
                        : Color(red: 0.26666666666666666, green: 0.26666666666666666, blue: 0.26666666666666666))
            }
            .foregroundColor(selectedTab == 2 ? Color.blue : Color.gray)
            .onTapGesture {
                self.selectedTab = 2
            }
            Spacer()
            VStack {
                Image(systemName: "paperplane")
                    .foregroundColor(
                        selectedTab == 3 ? Color(red: 0.2980392156862745, green: 0.7176470588235294, blue: 0.7647058823529411)
                        : Color(red: 0.26666666666666666, green: 0.26666666666666666, blue: 0.26666666666666666))
                Text("送る")
                    .fontWeight(.heavy)
                    .foregroundColor(
                        selectedTab == 3 ? Color(red: 0.2980392156862745, green: 0.7176470588235294, blue: 0.7647058823529411)
                        : Color(red: 0.26666666666666666, green: 0.26666666666666666, blue: 0.26666666666666666))
            }
            .foregroundColor(selectedTab == 3 ? Color.blue : Color.gray)
            .onTapGesture {
                self.selectedTab = 3
            }
            Spacer()
        }
    }
}

struct PageHome : View {
    var body: some View {
        VStack {
            Text("ホームページ")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
