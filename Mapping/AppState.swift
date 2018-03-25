import ReSwift

struct AppStore: StateType {
    let navigation: NavigationStore
    let map: MapStores

    init() {
        self.navigation = NavigationStore()
        self.map = MapStores()
    }
}
