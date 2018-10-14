//
//  ViewController.swift
//  ReactiveSwift
//
//  Created by Pulipaka Sai Krishna on 10/12/18.
//  Copyright © 2018 Pulipaka Sai Krishna. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxAlamofire
import ReSwift

class ViewController: UIViewController, StoreSubscriber {
    
    //    typealias StoreSubscriberStateType = AppState
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var decreaseButton: UIButton!
    let disposeBag = DisposeBag()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainStore.subscribe(self)
        // Do any additional setup after loading the view, typically from a nib.
        //        let searchResults = searchBar.rx.text.map{ $0 ?? "" }
        //        _ =  searchResults.subscribe(
        //            onNext: { text in
        //                print(text)
        //        })
        //
        //        // fucking with rxalamofire
        //        let http1$ = RxAlamofire.requestJSON(.get, URL(string: "https://jsonplaceholder.typicode.com/todos/1")!).asObservable()
        //        let http2$ = RxAlamofire.requestJSON(.get, URL(string: "https://jsonplaceholder.typicode.com/todos/2")!).asObservable()
        //
        //        // fucking with structs
        //        struct Test {
        //            var first: Any
        //            var second: Any
        //        }
        //
        //        //fucking with concatMap - can chain observables now
        //        _ = http1$
        //            .concatMap { (res, json) in
        //                return http2$.map{ (r, j) in
        //                    return Test(first: json, second: j)
        //                }
        //            }.subscribe(onNext: { data in
        //                print(data)
        //            }).disposed(by: disposeBag)
        //
        //        //fucking with observable create operators
        //        _ = Observable<(HTTPURLResponse, Any)>.merge([http1$, http2$]).subscribe(onNext: { (res, json) in print(json)})
        //            .disposed(by: disposeBag)
        //
        //        //fucking with other observable create methods
        //        let test = BehaviorSubject<String>(value: "pulipaka fucks with you")
        //        _ = test.subscribe(onNext: { d in print(d)})
    }
    
    // this is called whenever there is a change detected in the state of the app
    func newState(state: AppState) {
        let currNumber = state.counter
        counterLabel.text = "\(currNumber)"
        decreaseButton.isEnabled = currNumber > 0
    }
    
    
    @IBAction func numberAction(_ sender: AnyObject) {
        switch sender.tag {
        case 0:
            mainStore.dispatch(CounterActionDecrease())
        case 1:
            mainStore.dispatch(CounterActionIncrease())
        default:
            return
        }
    }
}

