import Foundation
/**
 * Base class That Springer classes can subClass
 */
class Springer<T>:BaseAnimation,PhysicsAnimationKind{
    typealias argType = T
    typealias Config = (spring:argType,friction:argType)/*Signatures*/
    var initValues:InitValues
    var config:Config/*Config values*/
    var callBack:FrameTickSignature
    init(_ callBack:@escaping FrameTickSignature,  _ initValues:InitValues, _ config:Config) {
        self.initValues = initValues
        self.callBack = callBack
        self.config = config
        super.init()
    }
    override func onFrame(){
        self.updatePosition()
        self.callBack(value)
    }
    func updatePosition() {
        fatalError("Must be overriden in subClass")
    }
}
/**
 * Springer for CGFloat
 */
class NumberSpringer:Springer<CGFloat> {
    override func updatePosition() {
        let d = (targetValue - value)
        let a = d * config.spring
        velocity = velocity + a
        velocity = velocity * config.friction
        value = value + velocity
        if assertStop {stop()}
    }
    var assertStop:Bool {
        return velocity.isNear(stopVelocity, 10e-5.cgFloat)
    }
    static var initConfig:(CGFloat,CGFloat) {/*Convenient default init values*/
        return (0.02,0.90)
    }
    static var initValues:(CGFloat,CGFloat,CGFloat,CGFloat){/*Convenient default init values*/
        return (0,0,0,0)
    }
}
/**
 * Springer for CGPoint
 */
class PointSpringer:Springer<CGPoint> {
    override func updatePosition() {
        let d = (targetValue - value)
        let a = d * config.spring
        velocity = velocity + a
        velocity = velocity * config.friction
        value = value + velocity
        if assertStop {stop()}
    }
    var assertStop:Bool {
        return velocity.isNear(stopVelocity, 10e-5.cgFloat)
    }
    static var initConfig:(spring:CGPoint,friction:CGPoint) {/*Convenient default init values*/
        return (CGPoint(0.02,0.02),CGPoint(0.90,0.90))
    }
    static var initValues:(value:CGPoint,targetValue:CGPoint,velocity:CGPoint,stopVelocity:CGPoint){/*Convenient default init values*/
        return (CGPoint(0,0),CGPoint(0,0),CGPoint(0,0),CGPoint(0,0))
    }
}

