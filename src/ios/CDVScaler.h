#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>
#import <Cordova/CDVInvokedUrlCommand.h>

@interface CDVScaler : CDVPlugin

- (void)viewportZoom:(CDVInvokedUrlCommand*)command;
- (void)zoom:(CDVInvokedUrlCommand*)command;

@end