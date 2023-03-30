import UIKit
import Flutter
import Crisp
import GoogleMaps

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

    GMSServices.provideAPIKey("AIzaSyDJQtaIqNR0VhfB5mgjKqzXthSYu1NfvX4")

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  private func openActivity() {
          CrispSDK.configure(websiteID: "b3f3d31f-f27c-4f54-a9b2-b9db89a86316")
          self.window?.rootViewController?.present(ChatViewController(), animated: true)
      }

}
