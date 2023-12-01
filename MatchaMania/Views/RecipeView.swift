//
//  RecipeView.swift
//  MatchaMania
//
//  Created by Terry Hoang on 10/25/23.
//

import SwiftUI

struct RecipeView: View {
    var headers: [Header] = headersData
    var facts: [Fact] = factData
    var recipes: [Recipe] = recipeData
    @State private var selectedRecipeCardView: Int = 0
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false){
                //Header scroll
                ScrollViewReader{ proxy in
                    VStack(alignment: .center, spacing: 20) {
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(alignment: .top, spacing: 0) {
                                ForEach(headers) { item in
                                    HeaderView(header: item)
                                }
                            }
                        }
                        
                        
                        // Dishes title
                        Text("Drinks & Pastries")
                            .fontWeight(.bold)
                            .modifier(TitleModifer())
                        // DishesView
                        HStack(alignment: .center, spacing: 4){
                            VStack (alignment: .leading, spacing: 4) {
                                HStack{
                                    Image("cookies")
                                        .resizable()
                                        .modifier(IconModifier())
                                    Spacer()
                                    Text("Cookies")
                                }.onTapGesture {
                                    selectedRecipeCardView = 1
                                }
                                Divider()
                                HStack{
                                    Image("cheesecake")
                                        .resizable()
                                        .modifier(IconModifier())
                                    Spacer()
                                    Text("Cheesecake")
                                }.onTapGesture {
                                    selectedRecipeCardView = 2
                                }
                                Divider()
                                HStack{
                                    Image("souffle")
                                        .resizable()
                                        .modifier(IconModifier())
                                    Spacer()
                                    Text("Souffle Cake")
                                }.onTapGesture {
                                    selectedRecipeCardView = 3
                                }
                                Divider()
                                HStack{
                                    Image("rollCake")
                                        .resizable()
                                        .modifier(IconModifier())
                                    Spacer()
                                    Text("Swiss Roll")
                                }.onTapGesture {
                                    selectedRecipeCardView = 4
                                }
                            }
                            VStack (alignment:.center, spacing: 16 ){
                                HStack {
                                    Divider()
                                }
                                Image(systemName: "heart.circle")
                                    .font(Font.title.weight(.ultraLight))
                                    .imageScale(.large)
                                HStack {
                                    Divider()
                                }
                            }
                            
                            VStack (alignment: .trailing, spacing: 4){
                                HStack{
                                    Text("Latte")
                                    Spacer()
                                    Image("latte")
                                        .resizable()
                                        .modifier(IconModifier())
                                }.onTapGesture {
                                    selectedRecipeCardView = 5
                                }
                                Divider()
                                HStack{
                                    Text("Smoothie")
                                    Spacer()
                                    Image("smoothie")
                                        .resizable()
                                        .modifier(IconModifier())
                                }.onTapGesture {
                                    selectedRecipeCardView = 6
                                }
                                Divider()
                                HStack{
                                    Text("Icecream")
                                    Spacer()
                                    Image("iceCream")
                                        .resizable()
                                        .modifier(IconModifier())
                                }.onTapGesture {
                                    selectedRecipeCardView = 7
                                }
                                Divider()
                                HStack{
                                    Text("Tiramisu")
                                    Spacer()
                                    Image("tiramisu")
                                        .resizable()
                                        .modifier(IconModifier())
                                }.onTapGesture {
                                    selectedRecipeCardView = 8
                                }
                            }
                            
                        }.font(.system(.callout,design:.serif))
                            .foregroundColor(.gray)
                            .padding(.horizontal)
                            .frame(maxHeight: 220)
                        
                        
                        
                        // FACTS
                        Text("Matcha Facts")
                            .fontWeight(.bold)
                            .modifier(TitleModifer())
                        //FactView scroll
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(alignment: .top, spacing: 60) {
                                ForEach(facts) { item in
                                    FactView(fact: item)
                                }
                            }
                            .padding(.vertical)
                            .padding(.leading, 60)
                            .padding(.trailing, 80)
                        }
                        
                        //Recipes
                        Text("Matcha Recipes")
                            .fontWeight(.bold)
                            .modifier(TitleModifer())
                        VStack(alignment: .center, spacing: 20){
                            ForEach(recipes, id: \.id){ item in
                                RecipeCardView(recipe: item)
                            }
                        }.onChange(of: selectedRecipeCardView, perform: { value in
                            withAnimation(.spring(dampingFraction: 0.1)){
                                proxy.scrollTo(value, anchor: .top)
                            }
                        })
                        .frame(maxWidth: 640)
                        .padding(.horizontal)
                        
                        
                        
                        
                        // FOOTER COPY RIGHT
                        
                        VStack(alignment: .center, spacing: 20) {
    //                        Text("MatchaMania")
    //                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
    //                            .modifier(TitleModifer())
                            Text("""
    Copyright ©2023 Terry Hoang
    All rights reserved
    """)
                            .font(.system(size: 13, design: .serif))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.gray)
                        }.frame(maxWidth: 640)
                            .padding()
                            .padding(.bottom, 85)
                        
                    }
                }

                }
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .padding(0)
        }
    }
}

#Preview {
    RecipeView()
}

//
//.onChange(of: selectedRecipeCardView, perform: { value in
//    proxy.scrollTo(value, anchor: nil)
//})
