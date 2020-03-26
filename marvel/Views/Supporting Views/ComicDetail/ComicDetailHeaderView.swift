//
//  ComicDetailHeaderView.swift
//  marvel
//
//  Created by Jessica Joseph on 3/25/20.
//  Copyright © 2020 JESSICA JEAN JOSEPH. All rights reserved.
//

import SwiftUI

struct ComicDetailHeaderView: View {
    @EnvironmentObject var comic: Comic
    
    var body: some View {
        GeometryReader { (container: GeometryProxy) in
            ZStack {
                if self.comic.image != nil {
                    Image(uiImage: self.comic.image!)
                }
                HStack {
                    Image("")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: container.size.width * 0.35,
                               height: container.size.height)
                    GeometryReader { (actionContainer: GeometryProxy) in
                        VStack {
                            Button(action: {
                                print("read now HUMANNNN")
                            }) {
                                Text("READ NOW")
                                    .font(getHeadlineFontWithContainerSize(container.size.width))
                                    .foregroundColor(Color("PrimaryTextColor"))
                            }
                            .padding()
                            .frame(width: actionContainer.size.width)
                            .background(Color("AccentColor"))
                            
                            ComicUserBackgroundTaskListView()
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct ComicDetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { (container: GeometryProxy) in
            ComicDetailHeaderView()
                .frame(height: container.size.height * 0.3)
            
        }
    }
}