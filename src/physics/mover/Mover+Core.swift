import Foundation

extension Mover {
   /**
    * - Abstract: In charge of incrementing the value
    * - Fixme ⚠️️ I'm not sure if the param direct is needed. also maybe rename to isDirect?
    */
   @objc func updatePosition(_ direct: Bool = false) {
      value += velocity
   }
   /**
    * - Abstract: Called every on every frame tick (60FPS)
    */
   override func onFrameTick() {
      updatePosition()
      callBack(value)
   }
}
