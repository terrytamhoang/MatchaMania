//
//  GradesView.swift
//  MatchaMania
//
//  Created by Terry Hoang on 10/25/23.
//

import SwiftUI

struct GradesView: View {
    var matchaGrades: [matchaGrade] = GradeData
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            VStack{
                Spacer()
                HStack(alignment: .center, spacing: 25){
                    ForEach(matchaGrades){item in
                        gradeScrollView(matcha_grade: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal,25)
                Spacer()
            }
            
                
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    GradesView()
}
