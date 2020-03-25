//
//  ComicDetailView.swift
//  marvel
//
//  Created by Jessica Joseph on 3/25/20.
//  Copyright © 2020 JESSICA JEAN JOSEPH. All rights reserved.
//

import SwiftUI

struct ComicDetailView: View {
    var body: some View {
        GeometryReader { (container: GeometryProxy) in
            ScrollView {
                VStack {
                    ComicDetailHeaderView()
                        .frame(height: container.size.height * 0.3)
                    ComicDetailMetadataView()
                        .frame(height: container.size.height * 0.5)
                    Spacer()
                }
            }
            .padding(.vertical, container.size.height * 0.07)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ComicDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ComicDetailView()
    }
}
