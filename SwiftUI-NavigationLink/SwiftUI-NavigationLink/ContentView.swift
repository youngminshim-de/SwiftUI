//
//  ContentView.swift
//  SwiftUI-NavigationLink
//
//  Created by 심영민 on 2022/03/15.
//

import SwiftUI

struct ContentView: View {
    @State var firstNaviLinkActive = false
    var body: some View {
//        NavigationView {
//            NavigationLink(isActive: $firstNaviLinkActive) {
//                SecondView(firstNaviLinkActive: $firstNaviLinkActive)
//            } label: {
//                Text("두번째 View 보기")
//                    .foregroundColor(.black)
//            }
//
//        }
        PresentView()
    }
}

struct SecondView: View {
    @Binding var firstNaviLinkActive: Bool
    var body: some View {
        NavigationLink {
            ThirdView(firstNaviLinkActive: $firstNaviLinkActive)
        } label: {
            Text("세번째 View 보기")
                .foregroundColor(.red)
        }
    }
}

struct ThirdView: View {
    @Binding var firstNaviLinkActive: Bool
    var body: some View {
        Button {
            firstNaviLinkActive = false
        } label: {
            Text("처음 View로 이동")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
