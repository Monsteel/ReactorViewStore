# ReactorViewStore

#### SwiftUI에서 ReactorKit을 사용할 수 있습니다.

[There is also an explanation in English.](https://github.com/Monsteel/ReactorViewStore/tree/main/README_EN.md)

💁🏻‍♂️ 순수한 Swift, SwiftUI 를 사용하여 구현되었습니다.<br>
💁🏻‍♂️ SwiftUI와 ReactorKit을 연결하는 extension입니다.<br>
💁🏻‍♂️ 각 영역(View, Reactor) 독립성을 추구하며, 중립적인 라이브러리 입니다.<br>

## 장점

✅ ReactorViewStore를 사용하면, UIKit+ReactorKit기반의 프로젝트에 SwiftUI 도입이 용이해집니다.<br>
✅ ReactorKit, UIKit, SwiftUI 등 각 영역의 독립성을 추구하며, 중립적입니다. 추후 제거에 용이합니다.<br>
✅ 보다 쉽게, Action을 발행하고, State를 Binding할 수 있습니다.<br>

## 사용방법

간단한 코드로, SwiftUI에 ReactorKit을 적용할 수 있습니다.<br>

```swift
import SwiftUI
import ReactorViewStore

public struct DummyView: View {
  @ObservedObject
  private var viewStore: ReactorViewStore<DummyViewReactor>

  public var body: some View {
    // State를 Binding합니다.
    Text(viewStore.state.text)
      .onAppear {
        // Action을 발행합니다.
        viewStore.send(.onAppear)
      }
  }
}
```

## Swift Package Manager(SPM) 을 통해 사용할 수 있어요

```swift
dependencies: [
  .package(url: "https://github.com/Monsteel/ReactorViewStore.git", .upToNextMajor(from: "0.0.1"))
]
```

## 함께 만들어 나가요

개선의 여지가 있는 모든 것들에 대해 열려있습니다.<br>
PullRequest를 통해 기여해주세요. 🙏

## License

ReactorViewStore 는 MIT 라이선스로 이용할 수 있습니다. 자세한 내용은 [라이선스](https://github.com/Monsteel/ReactorViewStore/tree/main/LICENSE) 파일을 참조해 주세요.<br>
ReactorViewStore is available under the MIT license. See the [LICENSE](https://github.com/Monsteel/ReactorViewStore/tree/main/LICENSE) file for more info.

## Auther

이영은(Tony) | dev.e0eun@gmail.com

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2FMonsteel%2FReactorViewStore&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false)](https://hits.seeyoufarm.com)
