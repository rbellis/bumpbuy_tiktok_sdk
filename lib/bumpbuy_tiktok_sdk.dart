import 'package:flutter/services.dart';

class BumpBuyTikTokSdk {
static const MethodChannel _channel =
MethodChannel('bumpbuy_tiktok_sdk');

static Future<void> initialize() async {
await _channel.invokeMethod('initialize');
}

static Future<void> trackEvent(
String eventName, {
Map<String, dynamic>? properties,
}) async {
await _channel.invokeMethod('trackEvent', {
'eventName': eventName,
'properties': properties ?? <String, dynamic>{},
});
}
}
