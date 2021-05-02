//
//  ContentView.swift
//  Glassmorphosim
//
//  Created by Bohirjon Akhmedov on 01/05/21.
//

import SwiftUI
import SwiftUIX

struct ContentView: View {
    
    var body: some View {
        ZStack {
            AngularGradient(
                gradient: Gradient(
                    colors:[Color(#colorLiteral(red: 0.9019607843, green: 0.2470588235, blue: 0.2549019608, alpha: 1)), Color(#colorLiteral(red: 0.8980392157, green: 0.4196078431, blue: 0.9843137255, alpha: 1)), Color(#colorLiteral(red: 0.6901960784, green: 0.9882352941, blue: 0.9725490196, alpha: 1)),Color(#colorLiteral(red: 0.9843137255, green: 0.9333333333, blue: 0.5176470588, alpha: 1)), Color(#colorLiteral(red: 0.9019607843, green: 0.2470588235, blue: 0.2549019608, alpha: 1))]),
                center: .center, angle: .degrees(120))
            LinearGradient(gradient:
                            Gradient(
                                colors: [Color.white.opacity(0), Color.white.opacity(1)]),
                           startPoint: .bottom, endPoint: .top)
            content
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
                .overlay(Circle()
                            .stroke(lineWidth: 0.5)
                            .fill(Color.white))
                
                .mask(Circle())
                .frame(width: 84, height: 84)
                .offset(x: -30, y: -30)
            
            Text("Bohirjon Akhmedov".uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
            Text("I am a software developer at Silk Road Professionals")
                .font(.title)
                .bold()
            Text("Astrophysicist General and Special Theorists")
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
        AngularGradient(gradient:
                            Gradient(stops: [ .init(color: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), location: 0.65)])
                        ,center: .center)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
