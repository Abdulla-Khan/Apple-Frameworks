//
//  FrameworkDetailView.swift
//  Apple Framework
//
//  Created by Ayaz on 05/09/2024.
//

import Foundation
import SwiftUI

struct  FrameworkDetailView : View {
        
    @Binding var isShowingDetailView : Bool
    
    var framework : Framework
    var body : some View {
        VStack{
            HStack{
                Spacer()
                Button{
                    isShowingDetailView = false
                }label:{
                    CloseButton()
                        
                }
            }
            Spacer()
                FrameWorkTileView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button{} label:{
                AFButton(
                    text:"Learn More")
            }
           
        }
    }
}



#Preview {
    FrameworkDetailView(isShowingDetailView: .constant(false), framework: MockData.sampleFramework)
}

struct AFButton: View {
    var text: String;
    var body: some View {
        
            Text(text)
                .frame(width: 280, height: 50)
                .font(.title2)
                .fontWeight(.semibold)
                .background(.red)
                .foregroundColor(.white)
                .cornerRadius(10)
            
     
    }
}

struct CloseButton: View {
    var body: some View {
        Image(systemName:"xmark")
        
            .foregroundColor(Color(.label))
            .imageScale(.large)
            .frame(width: 44,height: 44)
    }
}
