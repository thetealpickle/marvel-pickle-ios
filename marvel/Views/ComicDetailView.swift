//
//  ComicDetailView.swift
//  marvel
//
//  Created by Jessica Joseph on 3/25/20.
//  Copyright © 2020 JESSICA JEAN JOSEPH. All rights reserved.
//

import SwiftUI

struct ComicDetailView: View {
    var comic: Comic
    
    var body: some View {
        GeometryReader { (container: GeometryProxy) in
            ZStack(alignment: .bottom) {
                ScrollView {
                    VStack {
                        ComicDetailHeaderView()
                            .environmentObject(self.comic)
                            .frame(height: container.size.height * 0.3)
                        
                        
                        ComicDetailMetadataView()
                            .environmentObject(self.comic)
                            .frame(height: container.size.height * 0.5)
                        Spacer()
                    }
                }
                
                ComicDetailCycleBarView()
                    .frame(height: container.size.height * 0.1)
            }
            .padding(.vertical, container.size.height * 0.1)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("PrimarySystemColor"))
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ComicDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ComicDetailView(comic: SampleData.instance.comics[0])
    }
}
