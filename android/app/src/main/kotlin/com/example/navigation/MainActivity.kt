package com.example.navigation

import android.annotation.SuppressLint
import android.os.Handler
import android.os.Looper
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import java.text.SimpleDateFormat
import java.util.*

class MainActivity: FlutterActivity() {
    private val eventChannel = "timeHandlerEvent"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        EventChannel(flutterEngine.dartExecutor.binaryMessenger, eventChannel).setStreamHandler(
            TimeHandler
        )

    }

    object TimeHandler : EventChannel.StreamHandler {
        // Handle event in main thread.
        private var handler = Handler(Looper.getMainLooper())

        // Declare our eventSink later it will be initialized
        private var eventSink: EventChannel.EventSink? = null

        override fun onListen(p0: Any?, sink: EventChannel.EventSink) {
            eventSink = sink
            var i=0;
            val r: Runnable = object: Runnable{
                override fun run(){
                    handler.post{
                        eventSink?.success(i++);
                    }
                    handler.postDelayed(this,1000);
                }
               
                
            }
            handler.postDelayed(r,1000);
        }

        override fun onCancel(p0: Any?) {
           
        }
    }
}