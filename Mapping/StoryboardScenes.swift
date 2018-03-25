enum StoryboardScenes: String {
    case map = "Map"
    case profile = "Profile"
}

extension StoryboardScenes {
    var name: String {
        return self.rawValue
    }
}
