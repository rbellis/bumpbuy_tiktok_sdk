import Flutter
import UIKit
import TikTokBusinessSDK

public class BumpBuyTikTokSdkPlugin: NSObject, FlutterPlugin {

public static func register(with registrar: FlutterPluginRegistrar) {
let channel = FlutterMethodChannel(
name: "bumpbuy_tiktok_sdk",
binaryMessenger: registrar.messenger()
)

let instance = BumpBuyTikTokSdkPlugin()
registrar.addMethodCallDelegate(instance, channel: channel)
}

public func handle(
_ call: FlutterMethodCall,
result: @escaping FlutterResult
) {
switch call.method {

case "trackEvent":
guard
let arguments = call.arguments as? [String: Any],
let eventName = arguments["eventName"] as? String
else {
result(
FlutterError(
code: "INVALID_ARGUMENTS",
message: "eventName is required",
details: nil
)
)
return
}

TikTokBusiness.trackEvent(eventName)
result(true)

default:
result(FlutterMethodNotImplemented)
}
}
}
