import Foundation
import RxSwift
import UIKit

extension UILabel {

    func bindTo<T>(_ element: Observable<T>, _ disposeBag: DisposeBag) {
        element.asObservable()
            .subscribe(onNext: { element in
                self.text = "\(element)"
            }).disposed(by: disposeBag)
    }
}

extension Variable {
    var rx: Observable<Element> {
        return asObservable()
    }
}
