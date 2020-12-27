//
//  ProgressBarView.swift
//  Projet4A
//
//  Created by Sogekingu on 22/12/2020.
//

import SwiftUI

struct ProgressBarView: View {
    var progress: Double
    var defaultWidth: Int
    
    var body: some View {
        ZStack(alignment: .leading){
            Rectangle()
                .foregroundColor(Color.gray)
                .opacity(0.3)
                .frame(width: CGFloat(defaultWidth), height: 8.0)
            Rectangle()
                .foregroundColor(Color.purple)
                .frame(width: CGFloat(defaultWidth) * (CGFloat(progress)/100.0), height: 8.0)
        }
        .cornerRadius(4.0)
    }
}


struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ProgressBarView(progress: 75.0, defaultWidth: 200)
            ProgressBarView(progress: 50.0, defaultWidth: 200)
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
