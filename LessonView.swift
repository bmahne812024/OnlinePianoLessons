//
//  LessonView.swift
//  Online Piano Lessons
//
//  Created by Brian Mahne on 5/10/24.
//

import SwiftUI

/// Shows every section of one lesson. Content comes from Lessons.json.
struct LessonView: View {
    let lesson: Lesson

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                ForEach(lesson.sections.indices, id: \.self) { index in
                    VStack {
                        ForEach(lesson.sections[index].items.indices, id: \.self) { itemIndex in
                            LessonItemRow(item: lesson.sections[index].items[itemIndex])
                        }
                        Divider()
                            .overlay(.white)
                    }
                    .padding()
                }
            }
        }
        .background(Image("Background"))
        .navigationTitle("")
    }
}

#Preview {
    NavigationStack {
        LessonView(lesson: LessonCatalog.lessons[0])
    }
}
