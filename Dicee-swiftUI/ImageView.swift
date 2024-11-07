//
//  ImageView.swift
//  Dicee-swiftUI
//
//  Created by Darsh viroja  on 18/09/24.
//

import SwiftUI

struct ImageView: View {
    let n: Int
    var body: some View {
    
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1,contentMode: .fit)
            .frame(width: 150, height: 150)
    }
}


#Preview {
    ImageView(n: 1)
}
