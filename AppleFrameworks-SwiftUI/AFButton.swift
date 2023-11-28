//
//  AFButton.swift
//  AppleFrameworks-SwiftUI
//
//  Created by Ali Hammoud on 28/11/2023.
//

import SwiftUI

struct AFButton: View {
    let title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 300, height: 50)
            .foregroundColor(.white)
            .background(.red)
            .cornerRadius(10)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "Button")
    }
}
