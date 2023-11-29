//
//  FrameworkGridViewModel.swift
//  AppleFrameworks-SwiftUI
//
//  Created by Ali Hammoud on 28/11/2023.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailedView = true
        }
    }
    
    @Published var isShowingDetailedView = false
}
