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
    @State private var selectionDate = Date()
    @State var check = false
    @State private var textValue = ""

    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Group {
                    HStack {
                        Text("メインイメージ")
                            .font(.custom("Hiragino Sans", size: 16))
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 9.0)
                        Spacer()
                    }
                    Image("HogeHoge")
                        .resizable()
                        .frame(width: 200, height: 50)
                    Button("写真を選択", action: {
                        print("ボタンがタップされました")
                        //UploadImage()
                    })
                    Text("新郎新婦おふたりの写真がおすすめ！写真なしも可能です")
                        .font(.custom("Hiragino Sans", size: 10))
                        .padding(10.0)
                }
                HStack {
                    Text("案内文")
                        .font(.custom("Hiragino Sans", size: 16))
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 9.0)
                    Spacer()
                }
                .padding(.leading, 5.0)
                .padding(.vertical, 25.0)
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
                    .foregroundColor(Color(hue: 1.0, saturation: 0.035, brightness: 0.521))
                    .padding(.bottom, 30.0)
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
                .padding(.leading, 5.0)
                .padding(.vertical, 25.0)
            }
            DatePicker("日付", selection: $selectionDate,displayedComponents: [.date])
                .padding(.horizontal, 20.0)
                .padding(.vertical, 5.0)
            DatePicker("受付時間",selection: $selectionDate,displayedComponents: [.hourAndMinute])
                .padding(.horizontal, 20.0)
                .padding(.vertical, 5.0)
            DatePicker("開始時間",selection: $selectionDate,displayedComponents: [.hourAndMinute])
                .padding(.horizontal, 20.0)
                .padding(.vertical, 5.0)
            VStack {
                HStack {
                    Text("披露宴について")
                        .font(.custom("Hiragino Sans", size: 16))
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 9.0)
                    Spacer()
                }
                .padding(.leading, 5.0)
                .padding(.vertical, 25.0)
                HStack {
                    Button{
                        check.toggle()
                    } label: {
                        Image(systemName: check
                              ? "checkmark.circle.fill"
                              : "circle")
                    }
                    .padding(.top, 10.0)
                    Text("日付・会場が挙式と同じ")
                        .font(.custom("Hiragino Sans", size: 12))
                        .padding(.top, 10.0)
                }
            }
            DatePicker("日付", selection: $selectionDate,displayedComponents: [.date])
                .padding(.horizontal, 20.0)
                .padding(.vertical, 5.0)
            DatePicker("受付時間",selection: $selectionDate,displayedComponents: [.hourAndMinute])
                .padding(.horizontal, 20.0)
                .padding(.vertical, 5.0)
            DatePicker("開始時間",selection: $selectionDate,displayedComponents: [.hourAndMinute])
                .padding(.horizontal, 20.0)
                .padding(.vertical, 5.0)
            VStack {
                HStack {
                    Text("アクセス")
                        .font(.custom("Hiragino Sans", size: 16))
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 9.0)
                    Spacer()
                }
                .padding(.leading, 5.0)
                .padding(.vertical, 25.0)
                TextField("会場名", text: $textValue)
                    .padding(.horizontal, 10.0)
                    .frame(width: 300.0, height: 30.0)
                    .border(Color.gray, width: 1)
                TextField("住所", text: $textValue)
                    .padding(.horizontal, 10.0)
                    .frame(width: 300.0, height: 30.0)
                    .border(Color.gray, width: 1)
                TextField("電話番号", text: $textValue)
                    .padding(.horizontal, 10.0)
                    .frame(width: 300.0, height: 30.0)
                    .border(Color.gray, width: 1)
                TextField("会場URL", text: $textValue)
                    .padding(.horizontal, 10.0)
                    .frame(width: 300.0, height: 30.0)
                    .border(Color.gray, width: 1)
                HStack {
                    Button{
                        check.toggle()
                    } label: {
                        Image(systemName: check
                              ? "checkmark.circle.fill"
                              : "circle")
                    }
                    .padding(.top, 10.0)
                    Text("MAPを表示する")
                        .font(.custom("Hiragino Sans", size: 12))
                        .padding(.top, 10.0)
                }
                Text("HOST")
                    .padding(.top, 50.0)
                Text("ホストの情報を入力してください")
                    .font(.custom("Hiragino Sans", size: 10))
                    .foregroundColor(Color(hue: 1.0, saturation: 0.035, brightness: 0.521))
                    .padding(.bottom, 10.0)
                Text("新郎")
                    .padding(.vertical, 20.0)
                    .font(.custom("Hiragino Sans", size: 16))
                Text("新婦")
                    .padding(.vertical, 20.0)
                    .font(.custom("Hiragino Sans", size: 16))

            }
        }
    }
}

struct PageEdit_Previews: PreviewProvider {
    static var previews: some View {
        PageEdit()
    }
}
