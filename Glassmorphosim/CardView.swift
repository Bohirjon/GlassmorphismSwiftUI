//
//  CardView.swift
//  Glassmorphosim
//
//  Created by Bohirjon Akhmedov on 03/05/21.
//

import SwiftUI
import SwiftUIX

struct CardView: View {
    let cardTitle: String
    let height: CGFloat
    
    var body: some View {
        VisualEffectBlurView(blurStyle: .systemUltraThinMaterialLight, vibrancyStyle: .fill) {
            Text(cardTitle)
                .bold()
        }
        .frame(width: .infinity, height: height)
        .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(lineWidth: 0.5).fill(Color.white))
        .shadow(color: .black.opacity(0.3), radius: 20, x: 0.0, y: 10)
        .padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(cardTitle: "VISA", height: 220)
    }
}
