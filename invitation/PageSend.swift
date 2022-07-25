//
//  PageSend.swift
//  invitation
//
//  Created by H-3228 on 2022/07/25.
//

import SwiftUI

struct PageSend: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("SEND")
                .font(.largeTitle)
                .fontWeight(.medium)
                .foregroundColor(Color(red: 0.26666666666666666, green: 0.26666666666666666, blue: 0.26666666666666666))
                .multilineTextAlignment(.center)
                .padding(.top, 50.0)
                .frame(maxWidth: .infinity)
            Text("招待状を送る")
                .font(.subheadline)
                .fontWeight(.regular)
                .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
            Text("メッセージ")
                .multilineTextAlignment(.center)
                .padding(.top, 30.0)
            TextEditor(text: .constant("この度6月26日に●●●●●&●●●●●の挙式・披露宴を開催いたします。 当日の詳細をWeb招待状にてご案内致しますので、お手数ではございますが下記URLより内容をご確認いただき、ご出席賜りますよう宜しくお願い致します。 https://wedding-invi.jp/s/6KV39bqG?openExternalBrowser=1"))
                .frame(height: 150.0)
                .border(Color.gray, width: 1)
                .font(.subheadline)
            Button("LINEで招待状を送る") {
                
            }
            .padding(.vertical, 10.0)
            .frame(maxWidth: .infinity)
            .background(Color(red: 0.023529411764705882, green: 0.7803921568627451, blue: 0.3333333333333333))
            .font(.body)
            .foregroundColor(Color(hue: 0.0, saturation: 0.0, brightness: 1.0))
            .padding(.top, 10.0)
            .padding(.bottom, 50.0)
            Divider()
                .padding(.horizontal, -20.0)
            
            Text("URLをコピーして送る")
                .multilineTextAlignment(.center)
                .padding(.top, 30.0)
            TextEditor(text: .constant("https://hana-yume.net/"))
                .frame(height: 40.0)
                .border(Color.gray, width: 1)
            Button("URLをコピーする") {
                
            }
            .padding(.vertical, 10.0)
            .frame(maxWidth: .infinity)
            .font(.body)
            .border(Color(red: 0.2980392156862745, green: 0.7176470588235294, blue: 0.7647058823529411), width: 1)
            .foregroundColor(Color(red: 0.2980392156862745, green: 0.7176470588235294, blue: 0.7647058823529411))
            .padding(.top, 10.0)
            .padding(.bottom, 50.0)
            Divider()
                .padding(.horizontal, -20.0)
            
            
        }
        .padding(.horizontal, 20.0)
    }
}

struct PageSend_Previews: PreviewProvider {
    static var previews: some View {
        PageSend()
            .previewLayout(.device)
            .previewDevice("iPhone 12")
    }
}
