
import 'dart:async';

import 'package:flutter/services.dart';

class XtremepushFlutter {
  static const MethodChannel _channel =
      const MethodChannel('xtremepush_flutter');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  static void hitEvent(String xpEvent) async {
    final int result = await platform.invokeMethod(
        'hitEvent', <String, dynamic>{
      'xpEvent': xpEvent});
  }

  static void hitTag(String xpTag) async {
    final int result = await platform.invokeMethod(
        'hitTag', <String, dynamic>{
      'xpTag': xpTag});
  }

  static void  hitTagWithValue(String xpTag, xpValue) async {
    final int result = await platform.invokeMethod(
        'hitTagWithValue', <String, dynamic>{
      'xpTag': xpTag,
      'xpTagValue': xpValue});
  }

  static void setUser(String user_id) async {
    final int result = await platform.invokeMethod(
        'setUser', <String, dynamic>{
      'xp_user_id': user_id});
  }

  static void setTempUser(String temp_user_id) async {
    final int result = await platform.invokeMethod(
        'setTempUser', <String, dynamic>{
      'xp_temp_user_id': temp_user_id});
  }

  static void openInbox() async {
    final int result = await platform.invokeMethod(
        'openInbox');
  }

  static void setSubscription(bool sub_status) async {
    final int result = await platform.invokeMethod(
        'setSubscription', <String, dynamic>{
      'subscription_flag': sub_status});
  }

  static void setEmail(String email) async {
    final int result = await platform.invokeMethod(
        'setEmail', <String, dynamic>{
      'email': email});
  }
}
