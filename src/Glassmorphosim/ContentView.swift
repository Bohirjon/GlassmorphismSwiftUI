//
//  ContentView.swift
//  Glassmorphosim
//
//  Created by Bohirjon Akhmedov on 01/05/21.
//

import SwiftUI
import SwiftUIX

struct ContentView: View {
    @State private var showCards = false
    @State private var cardPosition = CGSize.zero
    
    var body: some View {
        ZStack {
            background
                .ignoresSafeArea()
            
            content
            
            VStack {
                Spacer()
                ZStack {
                    CardView(cardTitle: "Visa",height: showCards ? 420 : 220)
                        .offset(y: -40)
                        .offset(x: cardPosition.width, y: cardPosition.height)
                        .animation(.easeIn(duration: 0.6))
                        .padding(20)
                    
                    CardView(cardTitle: "Visa",height: showCards ? 420 : 220)
                        .offset(y: -20)
                        .offset(x: cardPosition.width, y: cardPosition.height)
                        .animation(.easeIn(duration: 0.5))
                        .padding(10)
                    CardView(cardTitle: "Visa",height: showCards ? 420 : 220)
                        .offset(x: cardPosition.width, y: cardPosition.height)
                        .animation(.easeIn)
                        .gesture(DragGesture()
                                    .onChanged({ value in
                                        self.cardPosition = value.translation
                                    })
                                    .onEnded({ value in
                                        self.cardPosition = .zero
                                    }))
                }
            }
        }
    }
    
    var background : some View {
        ZStack {
            
            
            AngularGradient(
                gradient: Gradient(
                    colors:[Color(#colorLiteral(red: 0.9019607843, green: 0.2470588235, blue: 0.2549019608, alpha: 1)), Color(#colorLiteral(red: 0.8980392157, green: 0.4196078431, blue: 0.9843137255, alpha: 1)), Color(#colorLiteral(red: 0.6901960784, green: 0.9882352941, blue: 0.9725490196, alpha: 1)),Color(#colorLiteral(red: 0.9843137255, green: 0.9333333333, blue: 0.5176470588, alpha: 1)), Color(#colorLiteral(red: 0.9019607843, green: 0.2470588235, blue: 0.2549019608, alpha: 1))]),
                center: .center, angle: .degrees(120))
            LinearGradient(gradient:
                            Gradient(
                                colors: [Color.white.opacity(0), Color.white.opacity(1)]),
                           startPoint: .bottom, endPoint: .top)
        }
    }
    
    var content : some View {
        VStack(alignment: .leading ,spacing: .init(16)) {
            Image(uiImage: #imageLiteral(resourceName: "avatar"))
                .resizable()
                .frame(width: 32, height: 32)
                .mask(Circle())
                .padding()
                .background(VisualEffectBlurView(blurStyle: UIBlurEffect.Style.light))
                .mask(Circle())
                .background(circleAvatarBackground)
            
            Text("Bohirjon Akhmedov".uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
            Text("I am a software developer at Silk Road Professionals")
                .font(.title)
                .bold()
            Text("Astrophysicist General and Special Relativity Theorists")
                .font(.footnote)
            
            HStack {
                Image(systemName: "link")
                Text("github.com")
            }
            .font(.footnote)
            Spacer()
        }
    }
    
    var circleAvatarBackground: some View {
        AngularGradient(gradient: Gradient(stops: [
                                            .init(color: Color(#colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)), location: 0),
                                            .init(color: Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)), location: 1),
                                            .init(color: Color(#colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)), location: 0.5421),
                                            .init(color: Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)), location: 0.6732475384)]) , center: .center, angle: .degrees(120))
            .frame(width: 84, height: 84)
            .mask(Circle())
            .overlay(RadialGradient(gradient: Gradient(stops: [.init(color: Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)), location: 0), .init(color: Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)), location: 1)]), center: .center, startRadius: 0.22, endRadius: 0.544))
            .offset(x: -40, y: -40)
            .blur(radius: 10)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
