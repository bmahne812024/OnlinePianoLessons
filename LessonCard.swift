//
//  LessonCard.swift
//  Online Piano Lessons
//
//  Created by Brian Mahne on 10/22/24.
//
import SwiftUI

/// One row inside a lesson: a video, a PDF handout, or a "coming soon" placeholder.
struct LessonItemRow: View {
    let item: LessonItem

    var body: some View {
        switch item.kind {
        case .video:
            if let url = item.url {
                NavigationLink(destination: VideoViewer(urlString: url)) {
                    VideoCard(title: item.title, thumbnail: item.thumbnail)
                }
                .lessonChecklistItem(id: item.checklistID ?? item.title, title: item.title)
            }
        case .pdf:
            if let url = item.url.flatMap(URL.init(string:)) {
                Link(destination: url) {
                    Image("PDF")
                        .resizable()
                        .frame(width: 30, height: 40)
                    Text(item.title)
                        .font(.title2)
                        .italic()
                        .foregroundStyle(Color.white)
                }
                .padding()
            }
        case .comingSoon:
            VideoCard(title: item.title, thumbnail: item.thumbnail)
        }
    }
}

private struct VideoCard: View {
    let title: String
    let thumbnail: String?

    var body: some View {
        VStack {
            Text(Image(systemName: "video"))
                .foregroundStyle(Color.white) +
            Text(" " + title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(Color.white)

            if let thumbnail {
                Image(thumbnail)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .padding()
                    .shadow(radius: 10, y: 10)
            }
        }
        .padding()
    }
}

// Completion is stored on this device, independently for each video activity.
private struct LessonCompletionCheckbox: View {
    @AppStorage private var isComplete: Bool
    private let title: String

    init(id: String, title: String) {
        _isComplete = AppStorage(wrappedValue: false, "lessonCompletion.v1.\(id)")
        self.title = title
    }

    var body: some View {
        Button {
            isComplete.toggle()
        } label: {
            Image(systemName: isComplete ? "checkmark.square.fill" : "square")
                .font(.system(size: 21))
                .foregroundStyle(isComplete ? Color.accentColor : Color.white)
                .frame(width: 44, height: 44)
                .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
        .accessibilityLabel("\(title) completed")
        .accessibilityValue(isComplete ? "Complete" : "Not complete")
        .accessibilityHint("Double tap to toggle completion. Saved on this device.")
    }
}

private struct LessonChecklistItem: ViewModifier {
    let id: String
    let title: String

    func body(content: Content) -> some View {
        HStack(alignment: .center, spacing: 0) {
            LessonCompletionCheckbox(id: id, title: title)
            content.frame(maxWidth: .infinity)
        }
    }
}

extension View {
    func lessonChecklistItem(id: String, title: String) -> some View {
        modifier(LessonChecklistItem(id: id, title: title))
    }
}
