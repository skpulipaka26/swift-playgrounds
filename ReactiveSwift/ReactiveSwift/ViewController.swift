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

class ViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let searchResults = searchBar.rx.text.map{ $0 ?? "" }
        _ =  searchResults.subscribe(
            onNext: { text in
                print(text)
        })
        
        // fucking with rxalamofire
        let http1$ = RxAlamofire.requestJSON(.get, URL(string: "https://jsonplaceholder.typicode.com/todos/1")!).asObservable()
        let http2$ = RxAlamofire.requestJSON(.get, URL(string: "https://jsonplaceholder.typicode.com/todos/2")!).asObservable()
        
        // fucking with structs
        struct Test {
            var first: Any
            var second: Any
        }
        
        //fucking with concatMap - can chain observables now
        _ = http1$
            .concatMap { (res, json) in
                return http2$.map{ (r, j) in
                    return Test(first: json, second: j)
                }
            }.subscribe(onNext: { data in
                print(data)
            }).disposed(by: disposeBag)
        
        // fucking with observable create operators
        _ = Observable<(HTTPURLResponse, Any)>.merge([http1$, http2$]).subscribe(onNext: { (res, json) in print(json)})
            .disposed(by: disposeBag)
        
    }
}

