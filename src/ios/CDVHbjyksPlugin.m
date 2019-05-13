#import "CDVHbjyksPlugin.h"
@implementation CDVHbjyksPlugin


- (void)open:(CDVInvokedUrlCommand*)command
{
    [self.commandDelegate runInBackground:^{

        CDVPluginResult* pluginResult = nil;
        NSString* echo = [command.arguments objectAtIndex:0];
        
        NSLog(@"input params=>%@",echo);
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
        // pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }];
  
}

@end
