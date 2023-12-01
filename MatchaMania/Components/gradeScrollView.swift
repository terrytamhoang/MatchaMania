//
//  gradeScrollView.swift
//  MatchaMania
//
//  Created by Terry Hoang on 10/28/23.
//

import SwiftUI

struct gradeScrollView: View {
    var matcha_grade: matchaGrade
    @State private var slideInAnimation: Bool = false
    var body: some View {
        VStack {
            Image(matcha_grade.image)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(Color("ColorGreenLight"))
                        .frame(width: 110, height: 110, alignment: .center))
                .background(
                    Circle()
                        .fill(Color("ColorAppearanceAdaptive"))
                        .frame(width: 120, height: 120, alignment: .center))
            .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            .animation(Animation.easeInOut(duration: 1), value: slideInAnimation)
            .offset(y: slideInAnimation ? 55 : -55)
            
            VStack(alignment: .center, spacing: 10){

                VStack(alignment: .center, spacing: 10){
//                    Text("2nd")
//                        .font(.system(.largeTitle, design: .serif))
//                        .bold()
//                    Text("Harvest")
//                        .font(.system(.body, design: .serif))
//                        .fontWeight(.heavy)
                }
                .foregroundColor(Color("ColorGreenMedium"))
                .padding(.top, 65)
                .frame(width: 180)
                
                //Title
                Text(matcha_grade.title)
                    .font(.system(.title2, design: .serif))
                    .bold()
                    .foregroundColor(Color("ColorGreenMedium"))
                    .padding(.vertical, 12)
                    .padding(.horizontal, 0)
                    
                    .frame(width: 220)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(colors: [.white, Color("ColorGreenLight")], startPoint: .top, endPoint: .bottom)))
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                
                // Harvest
                VStack(alignment: .center, spacing: 10){
                    Text("\(matcha_grade.harvest) Harvest")
                        .font(.system(.title3, design: .serif))
                        .bold()
                }.foregroundColor(Color("ColorGreenMedium"))

                    .frame(width: 180)
                //Description
                Spacer()
                Text("Grade: \(matcha_grade.grade)")
                    .foregroundStyle(Color("ColorGreenDark"))
                    .bold()
                    .lineLimit(nil)
                Text("Color: \(matcha_grade.gradeColor)")
                    .foregroundStyle(Color("ColorGreenDark"))
                    .bold()
                    .lineLimit(nil)
                Text("Flavor: \(matcha_grade.flavor)")
                    .foregroundStyle(Color("ColorGreenDark"))
                    .bold()
                    .lineLimit(nil)
                Text("L-Theanine: \(matcha_grade.l_theanine)")
                    .foregroundStyle(Color("ColorGreenDark"))
                    .bold()
                    .lineLimit(nil)
                
                
                //Ripeness
                Spacer()
                Button(action:{
                    if let url = URL(string: matcha_grade.amazonLink){
                        UIApplication.shared.open(url)
                    }
                }){
                    Text("AmazonLink")
                        .foregroundStyle(.white)
                        .bold()
                        .font(.system(.callout, design: .serif))
                        .shadow(radius: 3)
                        .padding(.vertical)
                        .padding(.horizontal, 0)
                        .frame(width: 185)
                        .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenDark")], startPoint: .top, endPoint: .bottom)))
                        .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                }
                

                Spacer()
            }
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 485, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors:[Color("ColorGreenLight"), Color("ColorGreenMedium")] ), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .onAppear {
            self.slideInAnimation = true
        }
        .onDisappear{
            self.slideInAnimation = false
        }
    }
}

#Preview {
    gradeScrollView(matcha_grade: GradeData[0])
}
