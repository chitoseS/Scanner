//
//  ContentView.swift
//  Scanner
//
//  Created by Motoki Kimura on 2023/05/31.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    
    var body: some View {
        VStack {
            Button(action: {
                print("Btn Tapped")
                self.isPresented = true
            }) {
                Text("Scanner Button")
                    .foregroundColor(.black)
            }
        }
        .padding()
        .sheet(isPresented: $isPresented) {
            MyViewController()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct MyViewController: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        let viewController = ScannerVC()
        // 表示するUIViewControllerのカスタム設定
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        // UIViewControllerが更新されるときに呼ばれる処理
    }
}
