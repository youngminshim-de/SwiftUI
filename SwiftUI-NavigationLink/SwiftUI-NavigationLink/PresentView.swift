//
//  PresentView.swift
//  SwiftUI-NavigationLink
//
//  Created by 심영민 on 2022/03/15.
//

import SwiftUI

struct PresentView: View {
    @State private var isPresenting = false
    @Environment(\.dismiss) var presentationMode
    var body: some View {
        Button {
            isPresenting.toggle()
        } label: {
            Text("Present Full-Screen Cover")
        }
        .fullScreenCover(isPresented: $isPresenting) {
            didDismiss()
        } content: {
            VStack {
                Text("A Full-screen modal view.")
                    .font(.title)
                    .foregroundColor(.black)
                
                Text("Tap to Dismiss")
                    .foregroundColor(.black)
            }
            .onTapGesture {
                isPresenting.toggle()
            }
            .foregroundColor(.white)
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity)
            .background(.blue)
        }
    }
    
    func didDismiss() {
        presentationMode.callAsFunction()

    }
}

struct PresentView_Previews: PreviewProvider {
    static var previews: some View {
        PresentView()
    }
}
