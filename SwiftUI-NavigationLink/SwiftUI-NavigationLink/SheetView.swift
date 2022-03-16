//
//  SheetView.swift
//  SwiftUI-NavigationLink
//
//  Created by 심영민 on 2022/03/16.
//

import SwiftUI

struct SheetView: View {
    @State private var isShowingSheet = false
    var body: some View {
        Button {
            isShowingSheet.toggle()
        } label: {
            Text("Show License Agreement")
        }
        .sheet(isPresented: $isShowingSheet) {
            didDismiss()
        } content: {
            Text("License Agreement")
                .font(.title)
                .padding(50)
            
            Text("""
                    Terms and conditions go here.
                """)
                .padding(50)
            Button("Dismiss") {
                isShowingSheet.toggle()
            }
        }
    }
    
    func didDismiss() {
        // Handle the dismissing action.
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
