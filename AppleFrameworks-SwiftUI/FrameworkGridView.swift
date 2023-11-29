//
//  ContentView.swift
//  AppleFrameworks-SwiftUI
//
//  Created by Ali Hammoud on 27/11/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    
//    MARK: when initializing the viewModel we use stateobject while injection we use @observedObject
//    @StateObject will hold the state of the object while the view is distroyed and recreated again,
    @StateObject var viewModel = FrameworkGridViewModel()
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        
        NavigationView {
            ScrollView{
                LazyVGrid(columns: self.columns) {
                    ForEach(MockData.frameworks) { frameWork in
                        FrameworkTitleView(framework: frameWork)
                            .onTapGesture {
                                viewModel.selectedFramework = frameWork
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailedView) {
                FrameworkDetailedView(
                    framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                    isShowingDetailView: $viewModel.isShowingDetailedView)
            }
        }
    }
}

struct FrameworkTitleView: View {

    let framework: Framework
        
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
