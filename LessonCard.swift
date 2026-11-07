//
//  LessonCard.swift
//  Online Piano Lessons
//
//  Created by Brian Mahne on 10/22/24.
//
import SwiftUI
struct LessonCard: View {
    var body: some View {
        VStack() {
            
            NavigationLink(destination: VideoViewer(urlString: "https://firebasestorage.googleapis.com/v0/b/onlinepianolessons-b0cd6.appspot.com/o/Lesson%201%2F1.01%205%20Finger%20Scale%20and%20C%20Triad.mp4?alt=media&token=e05be21e-a3f8-4651-b7fd-250d043bbb25")) {
                VStack() {
                    
                    Text(Image(systemName: "video"))
                        .foregroundStyle(Color.white) +
                    Text(" 1.00: 5 Finger Scale and C Position")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(Color.white)
                    
                    Image("1.00_Still")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                        .padding()
                        .shadow(radius: 10, y: 10)
                    
                }
                .padding()
                
            }
            Divider()
                .overlay(.white)
        }
        .padding()
    }
}

struct LessonCardPreview: PreviewProvider {
    static var previews: some View {
        LessonCard()
        
    }
}



// Completion is stored on this device, independently for each video activity.
private struct LessonCompletionCheckbox: View {
    @AppStorage private var isComplete: Bool

    init(id: String) {
        _isComplete = AppStorage(wrappedValue: false, "lessonCompletion.v1.\(id)")
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
        .accessibilityLabel("Lesson activity completion")
        .accessibilityValue(isComplete ? "Complete" : "Not complete")
        .accessibilityHint("Double tap to toggle completion. Saved on this device.")
    }
}

private struct LessonChecklistItem: ViewModifier {
    let id: String

    func body(content: Content) -> some View {
        HStack(alignment: .center, spacing: 0) {
            LessonCompletionCheckbox(id: id)
            content.frame(maxWidth: .infinity)
        }
    }
}

extension View {
    func lessonChecklistItem(id: String) -> some View {
        modifier(LessonChecklistItem(id: id))
    }
}
