# ReactorViewStore

#### You can use ReactorKit in SwiftUI.

💁🏻‍♂️ Implemented purely in Swift, SwiftUI.<br>
💁🏻‍♂️ An extension connecting SwiftUI with ReactorKit.<br>
💁🏻‍♂️ A neutral library that pursues independence for each area (View, Reactor).<br>

## 장점

✅ Using ReactorViewStore makes it easier to introduce SwiftUI into projects based on UIKit + ReactorKit.<br>
✅ Pursues independence for ReactorKit, UIKit, SwiftUI, etc., making it easy for future removal.<br>
✅ You can easily publish Action and bind State more conveniently.

## Usage

With simple code, ReactorKit can be applied to SwiftUI.<br>

```swift
import SwiftUI
import ReactorViewStore

public struct DummyView: View {
  @ObservedObject
  private var viewStore: ReactorViewStore<DummyViewReactor>

  public var body: some View {
    // Binding State
    Text(viewStore.state.text)
      .onAppear {
        // publish Action
        viewStore.send(.onAppear)
      }
  }
}
```

## Swift Package Manager (SPM) Installation

```swift
dependencies: [
  .package(url: "https://github.com/Monsteel/ReactorViewStore.git", .upToNextMajor(from: "1.0.0"))
]
```

## Let's Build Together

I'm open to contributions and improvements for anything that can be enhanced.
Feel free to contribute through Pull Requests. 🙏

## License

ReactorViewStore is available under the MIT license. See the [LICENSE](https://github.com/Monsteel/ReactorViewStore/tree/main/LICENSE) file for more info.

## Auther

이영은(Tony) | dev.e0eun@gmail.com

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2FMonsteel%2FReactorViewStore&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false)](https://hits.seeyoufarm.com)
