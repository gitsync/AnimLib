import Cocoa
import AnimKit

open class View: NSView {
   override open var isFlipped: Bool { return true } /* TopLeft orientation */
   override public init(frame: CGRect) {
      super.init(frame: frame)
      Swift.print("Hello world")
      self.wantsLayer = true /* if true then view is layer backed */
//      testAnimation()
//      zoomBackAndForthAnimTest()
//      easer4Test()
//      springer4Test()
//      elasticTest()
   }
   /**
    * Boilerplate
    */
   public required init?(coder decoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
