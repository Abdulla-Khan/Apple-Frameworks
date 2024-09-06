//
//  ContentView.swift
//  Apple Framework
//
//  Created by Ayaz on 05/09/2024.
//

import SwiftUI

struct FrameWorkGridView: View {
    @StateObject var viewModel = FrameworkGridViewLogic()
    
    let coulumns : [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        NavigationView{	
            ScrollView{
                LazyVGrid(
                    columns: coulumns)
                {
                    ForEach(MockData.frameworks) {
                        framework in
                        FrameWorkTileView( framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }.navigationTitle("Apple Frameworks")
                .sheet(isPresented: $viewModel.isShowingDetailView){
                    FrameworkDetailView(isShowingDetailView: $viewModel.isShowingDetailView, framework: viewModel.selectedFramework ?? MockData.sampleFramework
                    )
                }
        }
    }
}

#Preview {
    FrameWorkGridView()
}


struct FrameWorkTileView:View{
    let framework : Framework
    var body : some View{
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90,height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
        }.padding()
    }
}
