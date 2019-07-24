/**
 * CGFloat
 */
extension CGFloat: Advancable {
   public static var defaults: AnimState<CGFloat>  = AnimState<CGFloat>(0, 0, 0, 0, 10e-5)
   public static var defaultEasing: CGFloat = 0.2
   public static var defaultSpring: Springer<CGFloat>.Config = (spring: 0.02, friction: 0.90)///*Spring<CGFloat>*/
   public func isNear( value: CGFloat, epsilon: CGFloat) -> Bool {
      return self.isNear(value, epsilon)
   }
}
/**
 * CGPoint
 */
extension CGPoint: Advancable {
   public static var defaults: AnimState<CGPoint>  = AnimState<CGPoint>(.zero, .zero, .zero, .zero, .init(x: 10e-5, y: 10e-5))
   public static var defaultEasing: CGPoint = .init(x: 0.2, y: 0.2)
   public static var defaultSpring: Springer<CGPoint>.Config = (.init(x: 0.02, y: 0.02), .init(x: 0.90, y: 0.90))//(spring: 0.02, friction: 0.90)///*Spring<CGFloat>*/
   public func isNear(value: CGPoint, epsilon: CGPoint) -> Bool {
      return self.isNear(value, epsilon.x)
   }
}
/**
 * CGSize
 */
extension CGSize: Advancable {
   public static var defaults: AnimState<CGSize>  = AnimState<CGSize>(.zero, .zero, .zero, .zero, .init(width: 10e-5, height: 10e-5))
   public static var defaultEasing: CGSize = .init(width: 0.2, height: 0.2)
   public static var defaultSpring: Springer<CGSize>.Config = (.init(width: 0.02, height: 0.02), .init(width: 0.90, height: 0.90))//(spring: 0.02, friction: 0.90)///*Spring<CGFloat>*/
   public func isNear( value: CGSize, epsilon: CGSize) -> Bool {
      return self.isNear(value, epsilon.width)
   }
}
/**
 * CGRect
 */
extension CGRect: Advancable {
   public static var defaults: AnimState<CGRect> = AnimState<CGRect>(.zero, .zero, .zero, .zero, CGRect(origin: .init(x: 10e-5, y: 10e-5), size: .init(width: 10e-5, height: 10e-5)))
   public static var defaultEasing: CGRect = .init(origin: .init(x: 0.2, y: 0.2), size: .init(width: 0.2, height: 0.2))
   public static var defaultSpring: Springer<CGRect>.Config = (
      spring: .init(origin: .init(x: 0.90, y: 0.90), size: .init(width: 0.90, height: 0.90)),
      friction: .init(origin: .init(x: 0.90, y: 0.90), size: .init(width: 0.90, height: 0.90))
   )//(spring: 0.02, friction: 0.90)///*Spring<CGFloat>*/
   public func isNear( value: CGRect, epsilon: CGRect) -> Bool {
      return self.size.isNear(value.size, epsilon.size.width) && self.origin.isNear(value.origin, epsilon.origin.x)
   }
}


//import Foundation
///**
// * - Abstract: This can represent a CGFloat, point, rect or size, anything that adhers to the Advancable Protocol
// */
//public struct Spring<T: Advancable> {
//   public var spring: T
//   public var friction: T
//   /**
//    * - Parameter spring: The current spring
//    * - Parameter friction: The current friction
//    */
//   public init(_ spring: T = T.defaults.value, friction: T = T.defaults.value) {
//      self.spring = spring
//      self.friction = friction
//   }
//}


/*Convenient default init values*/

//enum DefaultSpring { // find a better place for these
//   static var initSpringerConfig: Springer<CGFloat>.Config = (0.02, 0.90)
//   static var initPointSpringerConfig: Springer<CGPoint>.Config = (CGPoint(x:0.02,y:0.02),CGPoint(x:0.90,y:0.90))
//}


//static var value:CGFloat { return (0.2) }
//static var point:CGPoint { return  }
//static var rect:CGRect { return  }

///**
// * Default
// */
//extension Easer {
//   enum DefaultEasing { // find a better place for these
//      static var value:CGFloat { return (0.2) }
//      static var point:CGPoint { return CGPoint(x: 0.2, y: 0.2) }
//      static var rect:CGRect { return CGRect(origin: .init(x: 0.2, y: 0.2), size: .init(width: 0.2, height: 0.2)) }
//   }
//}
