import Foundation

@objc public class Performance: NSObject {

    var launchStart: Date

    @objc public func launchComplete() -> String {
        let endDate = Date()
        let timeInterval = endDate.timeIntervalSince(launchStart)
        let result = String(format: "🏎️ Launch time: %.2f seconds", timeInterval)
        print(result)
        return result
    }

    override public func load() {
        print("🏎️ Performance plugin loaded")
        launchStart = Date()
    }
}
