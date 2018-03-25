import Foundation
import ReSwift
import RxSwift

struct NavigationStore: StateType {
    let store: Store = Store<NavigationState>(reducer: navigationReducer, state: nil)
}

struct NavigationState: StateType {
    let presentation = BehaviorSubject<(NavigationActions)>(value: .push(.map))
}
