import ReSwift
import RxSwift

struct MapStores: StateType {
    let initial: Store = Store<InitialMapState>(reducer: initialMapReducer, state: nil)
}

struct InitialMapState: StateType {
    let trigger: Variable<Int> = Variable<Int>(0)
}
