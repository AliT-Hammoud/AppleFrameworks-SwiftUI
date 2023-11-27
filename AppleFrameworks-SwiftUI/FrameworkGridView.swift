//
//  ContentView.swift
//  AppleFrameworks-SwiftUI
//
//  Created by Ali Hammoud on 27/11/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
