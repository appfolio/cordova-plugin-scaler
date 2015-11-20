#import "CDVScaler.h"

@implementation CDVScaler

- (void)viewportZoom:(CDVInvokedUrlCommand*)command
{
	NSMutableDictionary *args = [command.arguments objectAtIndex:0];
	CGRect bounds = [self.webView.scrollView bounds];
	[args setObject:[NSNumber numberWithDouble:bounds.origin.x] forKey:@"x"];
	[args setObject:[NSNumber numberWithDouble:bounds.origin.y] forKey:@"y"];
	[args setObject:[NSNumber numberWithDouble:bounds.size.width] forKey:@"width"];
	[args setObject:[NSNumber numberWithDouble:bounds.size.height] forKey:@"height"];
	
	[self zoom:command];
}

- (void)zoom:(CDVInvokedUrlCommand*)command
{
	NSMutableDictionary *args = [command.arguments objectAtIndex:0];
	BOOL animated = [[args objectForKey:@"animate"] boolValue];
	CGRect bounds = CGRectMake(((NSNumber *)args[@"x"]).doubleValue,
								((NSNumber *)args[@"y"]).doubleValue,
								((NSNumber *)args[@"width"]).doubleValue,
								((NSNumber *)args[@"height"]).doubleValue);
	
	self.webView.scalesPageToFit = NO;
	[self.webView.scrollView zoomToRect:bounds animated:animated];
	self.webView.scalesPageToFit = YES;
	
	CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:YES];
	[self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
