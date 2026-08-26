//
//  dataModel.swift
//  Online Piano Lessons
//
//  Created by Brian Mahne on 10/22/24.
//

struct LessonData: Identifiable, Decodable {
    var id: Double
    var name: String
    var videoString: String
    var picString: String
    
}
