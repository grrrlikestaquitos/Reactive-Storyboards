import ReSwift

func initialMapReducer(action: Action, state: InitialMapState?) -> InitialMapState {
    let newState = state ?? InitialMapState()

    switch action as? InitialMapActions {
    case .increaseTrigger?:
        newState.trigger.value += 1
    case .decreaseTrigger?:
        newState.trigger.value -= 1
    default: break
    }

    return newState
}
