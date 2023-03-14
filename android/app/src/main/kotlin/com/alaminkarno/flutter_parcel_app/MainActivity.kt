package com.alaminkarno.flutter_parcel_app


import android.content.Intent
import im.crisp.client.ChatActivity
import im.crisp.client.Crisp
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel


class MainActivity: FlutterActivity() {


    private var CHANNEL = "CrispChannel"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
                call, result ->
            if (call.method == "openActivity") {
                Crisp.configure(applicationContext, "b3f3d31f-f27c-4f54-a9b2-b9db89a86316");
                openActivity()
            } else {
                result.notImplemented()
            }
        }
    }

    private fun openActivity() {
        val intent = Intent(this, ChatActivity::class.java)
        startActivity(intent)
    }

}
