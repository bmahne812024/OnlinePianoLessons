//
//  Lesson.swift
//  Online Piano Lessons
//
//  The course content lives in Lessons.json. To add or change a video or handout,
//  edit that file — no SwiftUI changes are needed.
//

import Foundation

struct Lesson: Identifiable, Decodable {
    let id: Int
    let title: String
    /// Lines shown under the title on the home screen.
    let subtitle: [String]
    /// Optional alternate lines shown on the home screen while the lesson is locked.
    let lockedSubtitle: [String]?
    let requiresSubscription: Bool
    let sections: [LessonSection]
}

struct LessonSection: Decodable {
    let items: [LessonItem]
}

struct LessonItem: Decodable {
    enum Kind: String, Decodable {
        case video, pdf, comingSoon
    }

    let kind: Kind
    let title: String
    let url: String?
    /// Asset catalog image shown under a video's title.
    let thumbnail: String?
    /// Key for the on-device completion checkbox. Must stay stable once shipped,
    /// or students lose their saved progress for that video.
    let checklistID: String?
}

enum LessonCatalog {
    static let lessons: [Lesson] = load()

    private static func load() -> [Lesson] {
        guard let url = Bundle.main.url(forResource: "Lessons", withExtension: "json") else {
            assertionFailure("Lessons.json is missing from the app bundle")
            return []
        }
        do {
            return try JSONDecoder().decode([Lesson].self, from: Data(contentsOf: url))
        } catch {
            assertionFailure("Lessons.json could not be decoded: \(error)")
            return []
        }
    }
}
