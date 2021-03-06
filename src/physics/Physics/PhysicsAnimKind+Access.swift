import Foundation
/**
 * Access (Getters)
 */
extension PhysicsAnimKind {
   public var targetValue: T { get { return state.targetValue } set { state.targetValue = newValue } }
   var velocity: T { get { return state.velocity } set { state.velocity = newValue } }
   public var value: T { get { return state.value } set { state.value = newValue } }
   var epsilon: T { get { return state.epsilon } set { state.epsilon = newValue } }
   var stopVelocity: T { get { return state.stopVelocity } set { state.stopVelocity = newValue } }
}
