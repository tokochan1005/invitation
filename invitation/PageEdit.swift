//
//  PageEdit.swift
//  invitation
//
//  Created by H-3228 on 2022/07/25.
//

import SwiftUI

struct PageEdit: View {
    @State private var text = """
      皆様にはお健やかにお過ごしのことと お慶び申し上げます このたび 私たちは結婚式を挙げることとなりました つきましては 日頃お世話になっております皆様に 感謝の気持ちを込めて ささやかな小宴を催したく存じます ご多用中誠に恐縮でございますが 何とぞご臨席賜りますようご案内申し上げます
   """
    @State private var selectedValue = 1
    @State private var selectedPartyValue = 1
    var body: some View {
        VStack {
            Image("HogeHoge")
                .resizable()
                .frame(width: 200, height: 200)
            
            Button("写真を選択", action: {
                print("ボタンがタップされました")
                //UploadImage()
                
            })
            Text("新郎新婦おふたりの写真がおすすめ！写真なしも可能です")
                .font(.custom("Hiragino Sans", size: 10))
                .padding(10.0)
            HStack {
                Text("案内文")
                    .font(.custom("Hiragino Sans", size: 16))
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 9.0)
                Spacer()
            }
            Picker("選択してください", selection: $selectedValue)
            {
                Text("挙式・披露宴のご案内").tag(1)
            }
            .padding(.horizontal, 50.0)
            .border(Color.gray, width: 1)
            TextEditor(text: $text)
                .font(.custom("Hiragino Sans", size: 10))
                .frame(width: 300, height: 100)
                .border(Color.gray, width: 1)
            Text("PARTY")
                .padding(.top, 50.0)
            Text("パーティの種類と情報を入力してください")
                .font(.custom("Hiragino Sans", size: 10))
                .padding(10.0)
            Picker("選択してください", selection: $selectedPartyValue)
            {
                Text("挙式・披露宴").tag(1)
            }
            .padding(.horizontal, 50.0)
            .border(Color.gray, width: 1)
            HStack {
                Text("挙式について")
                    .font(.custom("Hiragino Sans", size: 16))
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 9.0)
                Spacer()
            }
        }
    }
}

struct PageEdit_Previews: PreviewProvider {
    static var previews: some View {
        PageEdit()
    }
}
