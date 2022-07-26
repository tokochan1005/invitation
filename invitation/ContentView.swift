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
        .padding(.bottom, 30.0)
    }
}

struct PageHome : View {
    var body: some View {
        ScrollView(.vertical) {
            VStack{
                Image("fv_home")
                    .resizable()
                    .frame(width: 375, height: 262)
                HStack {
                    Image("01")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    VStack(alignment: .leading) {
                        Text("1 完全無料で使える")
                            .foregroundColor(Color(red: 0.2980392156862745, green: 0.7176470588235294, blue: 0.7647058823529411))
                            .multilineTextAlignment(.trailing)
                        Text("招待状作成はもちろん名簿作成・受付機能など全ての機能が無料でご利用いただけます。")
                            .font(.caption)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.26666666666666666, green: 0.26666666666666666, blue: 0.26666666666666666)/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.leading)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    .padding(.bottom, 20.0)
                    .frame(width: 180.0)
                }
                HStack {
                    VStack(alignment: .leading) {
                        Text("2 豊富なデザイン")
                            .foregroundColor(Color(red: 0.2980392156862745, green: 0.7176470588235294, blue: 0.7647058823529411))
                            .multilineTextAlignment(.trailing)
                            
                        Text("結婚式・二次会など幅広いシーンでつかえる高品質な デザインを８０種類以上ご用意。")
                            .font(.caption)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.26666666666666666, green: 0.26666666666666666, blue: 0.26666666666666666)/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.leading)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    
                    Image("02")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    .padding(.bottom, 20.0)
                    .frame(width: 180.0)
                }
                HStack {
                    Image("03")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    .padding(.bottom, 20.0)
                    VStack(alignment: .leading) {
                        Text("3 かんたんゲスト管理")
                            .foregroundColor(Color(red: 0.2980392156862745, green: 0.7176470588235294, blue: 0.7647058823529411))
                            .multilineTextAlignment(.trailing)
                            .fixedSize(horizontal: false, vertical: true)
                        Text("招待状作成はもちろん名簿作成・受付機能など全ての機能が無料でご利用いただけます。")
                            .font(.caption)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.26666666666666666, green: 0.26666666666666666, blue: 0.26666666666666666)/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.leading)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    .padding(.bottom, 20.0)
                    .frame(width: 180.0)
                }
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .background(Color(red: 0.9411764705882353, green: 0.9647058823529412, blue: 0.9647058823529412))
            Text("デザインを選んで\nパーティ＆ホストの情報を入力するだけ！\nさっそく作ってみる♡")
                .font(.caption2)
                .foregroundColor(Color(red: 0.2980392156862745, green: 0.7176470588235294, blue: 0.7647058823529411))
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
            
            HStack {
                Button("LINEで招待状を送る") {
                    
                }
                .padding(.vertical, 10.0)
                .frame(maxWidth: .infinity)
                .font(.body)
                .background(Color(red: 0.2980392156862745, green: 0.7176470588235294, blue: 0.7647058823529411))
                .foregroundColor(Color(hue: 0.517, saturation: 0.0, brightness: 1.0))
                .padding(.top, 10.0)
                .padding([.leading, .bottom, .trailing], 50.0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
