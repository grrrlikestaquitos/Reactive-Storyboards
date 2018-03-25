import ReSwift

enum NavigationActions: Action {
    case present(StoryboardScenes)
    case push(StoryboardScenes)
    case pop
    case dismiss
}
