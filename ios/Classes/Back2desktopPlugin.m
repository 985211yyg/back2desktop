#import "Back2desktopPlugin.h"
#if __has_include(<back2desktop/back2desktop-Swift.h>)
#import <back2desktop/back2desktop-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "back2desktop-Swift.h"
#endif

@implementation Back2desktopPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBack2desktopPlugin registerWithRegistrar:registrar];
}
@end
