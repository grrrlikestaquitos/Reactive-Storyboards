import Foundation
import RxSwift
import UIKit

class Navigation: UINavigationController {

    let navigation = appStore.navigation.store.state
    let disposebag = DisposeBag()

    init() {
        super.init(nibName: nil, bundle: nil)
        navigationSettings()
        subscribeToNavigationChanges()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        navigationSettings()
        subscribeToNavigationChanges()
    }

    private func navigationSettings() {
        setNavigationBarHidden(true, animated: false)
    }

    private func subscribeToNavigationChanges() {
        navigation?.presentation
            .subscribe(onNext: { [unowned self] presentation in
                self.handlePresentation(presentation)
            }).disposed(by: disposebag)
    }

    private func handlePresentation(_ presentation: NavigationActions) {
        switch presentation {
        case .present(let story):
            let view = self.renderView(name: story.name)
            self.present(view, animated: true)
        case .push(let story):
            let view = self.renderView(name: story.name)
            self.pushViewController(view, animated: true)
        case .pop:
            self.popViewController(animated: true)
        case .dismiss:
            self.dismiss(animated: true)
        }
    }

    private func renderView(name: String) -> UIViewController {
        return UIStoryboard(name: name, bundle: nil).instantiateViewController(withIdentifier: name)
    }
}
