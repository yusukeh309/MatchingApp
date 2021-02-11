//
//  RegiserViewModel.swift
//  MatchingApp
//
//  Created by Uske on 2021/02/11.
//

import Foundation
import RxSwift

class RegiserViewModel {
    
    private let disposeBag = DisposeBag()
    
    // MARK: observable
    var nameTextOutput = PublishSubject<String>()
    var emailTextOutput = PublishSubject<String>()
    var passwordTextOutput = PublishSubject<String>()
    
    // MARK: observer
    var nameTextInput: AnyObserver<String> {
        nameTextOutput.asObserver()
    }
    
    var emailTextInput: AnyObserver<String> {
        emailTextOutput.asObserver()
    }
    
    var passwordTextInput: AnyObserver<String> {
        passwordTextOutput.asObserver()
    }
    
    init() {
        
        nameTextOutput
            .asObservable()
            .subscribe { text in
                print("name: ", text)
            }
            .disposed(by: disposeBag)
        
        emailTextOutput
            .asObservable()
            .subscribe { text in
                print("email: ", text)
            }
            .disposed(by: disposeBag)
        
        passwordTextOutput
            .asObservable()
            .subscribe { text in
                print("password: ", text)
            }
            .disposed(by: disposeBag)
        
    }
    
}
