import ReSwift
import RxSwift
import UIKit

class Map: UIViewController  {
    @IBOutlet weak var countLabel: UILabel!

    let store: Store = appStore.map.initial
    let navigation: Store = appStore.navigation.store
    let disposeBag: DisposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        bindToStates()
    }

    private func bindToStates() {
        countLabel.bindTo(store.state.trigger.rx, disposeBag)
    }

    @IBAction func decreaseTrigger() {
        store.dispatch(InitialMapActions.decreaseTrigger)
    }

    @IBAction func increaseTrigger() {
        store.dispatch(InitialMapActions.increaseTrigger)
    }

    @IBAction func goToProfile() {
        navigation.dispatch(NavigationActions.present(.profile))
    }
}
