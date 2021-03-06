import Foundation
import Hybrid_iOS
import Spatial
import With

extension PeekAndPopView {
   /**
    * Creates the modal button
    */
   func createModalButton(btn: ModalButton) -> ModalButton {
      addSubview(btn)
      let y: CGFloat = UIScreen.main.bounds.size.height / 4 * btn.factor
      btn.applyAnchorAndSize(to: self, width: 80, height: 80, align: .centerCenter, alignTo: .topCenter, offset: .init(x: 0, y: y) )
      return btn
   }
   /**
    * Creates the Prompt Button
    */
   func createPromptButton() -> PromptButton {
      let textBtn: PromptButton = .init(text: "Dismiss")
      addSubview(textBtn)
      textBtn.anchorAndSize(to: self, height: 60, align: .bottomCenter, alignTo: .bottomCenter, offset: .init(x: 0, y: -20), sizeOffset: .init(width: -40, height: 0) )
      return textBtn
   }
}
//   func createFirstButton() -> Button {
//      return with(.init()) {
//         addSubview($0)
//         $0.anchorAndSize(to: self, width: 100, height: 24, align: .topLeft, alignTo: .topLeft)
//         $0.upInsideCallBack = {Swift.print("upinside")}
//      }
//   }
