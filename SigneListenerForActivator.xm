#import <libactivator/libactivator.h>
#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface SigneListenerForActivator : NSObject <LAListener>
@end
@implementation SigneListenerForActivator
+ (void)load {
	// NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"me.kritanta.signe.activate"];
	// [pool release];
}
- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	[[NSNotificationCenter defaultCenter] postNotificationName:@"ActivateSigne" object:nil];
	AudioServicesPlaySystemSound(1519);
}
@end