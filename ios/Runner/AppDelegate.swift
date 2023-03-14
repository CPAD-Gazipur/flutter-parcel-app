import UIKit
import Flutter
import Crisp

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
    let channel = FlutterMethodChannel(name: "CrispChannel", binaryMessenger: controller.binaryMessenger)
    channel.setMethodCallHandler({
              [weak self] (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
              if (call.method == "openActivity") {
                  self?.openActivity()
              } else {
                  result(FlutterMethodNotImplemented)
              }
     })
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  private func openActivity() {
          CrispSDK.configure(websiteID: "a4685f43-8022-4142-b9cb-b786c6628a92")
          self.window?.rootViewController?.present(ChatViewController(), animated: true)
      }

}
