import Foundation
import UIKit

class Profile: UIViewController {
    let navigation = appStore.navigation.store
    
    @IBAction func goBack() {
        navigation.dispatch(NavigationActions.dismiss)
    }
}
