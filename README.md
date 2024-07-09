# ReactorViewStore

#### [Reactor](https://github.com/ReactorKit/ReactorKit)를 [TCA](https://github.com/pointfreeco/swift-composable-architecture)와 유사한 형태로 Maapping합니다.

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

## 사용하고 있는 곳.

| 회사                                                                                                                      | 설명                                                                                                                                                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <img src="https://github.com/Monsteel/ReactorViewStore/assets/52942409/e2754e73-ac06-4520-9ddf-e0bf84e84f93" height="50"> | UIKit 기반으로 개발된 [정육각 커머스 앱](https://apps.apple.com/kr/app/%EC%A0%95%EC%9C%A1%EA%B0%81-%EC%96%B8%EC%A0%9C%EB%82%98-%EC%B4%88%EC%8B%A0%EC%84%A0/id1490984523)에서, SwiftUI 부분도입을 위해 사용하고 있습니다.<br>향후 SwiftUI로 전환 후 TCA 도입이 목표입니다. |

## 함께 만들어 나가요

개선의 여지가 있는 모든 것들에 대해 열려있습니다.<br>
PullRequest를 통해 기여해주세요. 🙏

## License

ReactorViewStore 는 MIT 라이선스로 이용할 수 있습니다. 자세한 내용은 [라이선스](https://github.com/Monsteel/ReactorViewStore/tree/main/LICENSE) 파일을 참조해 주세요.<br>
ReactorViewStore is available under the MIT license. See the [LICENSE](https://github.com/Monsteel/ReactorViewStore/tree/main/LICENSE) file for more info.

## Auther

이영은(Tony) | dev.e0eun@gmail.com

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2FMonsteel%2FReactorViewStore&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false)](https://hits.seeyoufarm.com)
