//
//  FrameworkGridViewLogic.swift
//  Apple Framework
//
//  Created by Ayaz on 05/09/2024.
//


import SwiftUI

final class FrameworkGridViewLogic: ObservableObject {
    var selectedFramework : Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
    
}
