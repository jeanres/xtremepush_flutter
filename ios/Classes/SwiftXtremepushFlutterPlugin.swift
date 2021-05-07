import Flutter
import UIKit

public class SwiftXtremepushFlutterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "xtremepush_flutter", binaryMessenger: registrar.messenger())
    let instance = SwiftXtremepushFlutterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
                 switch call.method {
                 case "hitEvent":
                     let xpEvent = call.arguments["xpEvent"] as! String
                     XPush.hitEvent(xpEvent)
                 case "hitTag":
                     let xpTag = call.arguments["xpTag"] as! String;
                     XPush.hitTag(xpTag)
                 case "hitTagWithValue":
                     let xpTag = call.arguments["xpTag"] as! String;
                     let xpTagValue = call.arguments["xpTagValue"] as! String;
                     XPush.hitTag(xpTag, withValue: xpTagValue)
                 case "setUser":
                     let userId = call.arguments["xp_user_id"] as! String;
                     XPush.setUser(userId)
                 case "setTempUser":
                     let userId = call.arguments["xp_temp_user_id"] as! String;
                     XPush.setTempUser(userId)
                 case "openInbox":
                     XPush.openInbox()
                 case "setSubscription":
                     let subscription_flag = (call.arguments["xp_temp_user_id"] as! NSNumber).boolValue;
                     XPush.setSubscription(subscription_flag)
                 }

  }
}
