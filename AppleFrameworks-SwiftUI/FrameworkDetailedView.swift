//
//  FrameworkDetailedView.swift
//  AppleFrameworks-SwiftUI
//
//  Created by Ali Hammoud on 28/11/2023.
//

import SwiftUI

struct FrameworkDetailedView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Button {
                    print("Close button")
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                print("Tapped Me")
            } label: {
                AFButton(title: "Learn More")
            }
        }
    }
}

struct FrameworkDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailedView(framework: MockData.sampleFramework)
        
    }
}
