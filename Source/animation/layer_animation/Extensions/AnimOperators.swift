
import Foundation

infix operator ~ {
	associativity right
	precedence 155
}

public func >> (a: Double, b: Double) -> AnimationDescription<Double> {
	return AnimationDescription(valueFunc: { t in
		return a.interpolate(b, progress: t)
	})
}

public func >> (a: Transform, b: Transform) -> AnimationDescription<Transform> {
	return AnimationDescription(valueFunc: { t in
		return a.interpolate(b, progress: t)
	})
}