import ReSwift

func navigationReducer(action: Action, state: NavigationState?) -> NavigationState {
    let newState = state ?? NavigationState()

    switch action as? NavigationActions {
    case .present(let story)?:
        newState.presentation.onNext(.present(story))
    case .push(let story)?:
        newState.presentation.onNext(.push(story))
    case .pop?:
        newState.presentation.onNext(.pop)
    case .dismiss?:
        newState.presentation.onNext(.dismiss)
    default:
        break
    }

    return newState
}
