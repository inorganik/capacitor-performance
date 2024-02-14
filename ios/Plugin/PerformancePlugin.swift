import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(PerformancePlugin)
public class PerformancePlugin: CAPPlugin {
    var launchStart: Date?

    @objc public func launchComplete(_ call: CAPPluginCall) -> Void {
        let endDate = Date()
        let timeInterval = endDate.timeIntervalSince(launchStart!)
        let result = String(format: "🏎️ Launch time: %.2f seconds", timeInterval)
        print(result)
        call.resolve([
            "value": result
        ])
    }

    @objc override public func load() {
        launchStart = Date()
        print("🏎️ Performance plugin loaded")
    }
}
