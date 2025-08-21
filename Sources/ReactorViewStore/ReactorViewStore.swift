//
//  ReactorViewStore.swift
//  
//
//  Created by Tony on 2024/07/09.
//

import Foundation
import ReactorKit
import SwiftUI

public final class ReactorViewStore<Reactor: ReactorKit.Reactor>: ObservableObject {
  public typealias State = Reactor.State
  public typealias Action = Reactor.Action

  private let disposeBag = DisposeBag()
  private let reactor: Reactor

  @Published
  public var state: State

  public init(reactor: Reactor) {
    self.reactor = reactor
    self.state = reactor.initialState

    bindState()
  }

  private func bindState() {
    reactor.state
      .observe(on: MainScheduler.instance)
      .subscribe(onNext: { [weak self] newState in
        self?.state = newState
      })
      .disposed(by: disposeBag)
  }

  public func send(_ action: Action) {
    reactor.action.onNext(action)
  }
}
