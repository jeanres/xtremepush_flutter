#import "XtremepushFlutterPlugin.h"
#if __has_include(<xtremepush_flutter/xtremepush_flutter-Swift.h>)
#import <xtremepush_flutter/xtremepush_flutter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "xtremepush_flutter-Swift.h"
#endif

@implementation XtremepushFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftXtremepushFlutterPlugin registerWithRegistrar:registrar];
}
@end
