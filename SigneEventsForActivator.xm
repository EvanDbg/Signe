#import <Foundation/Foundation.h>
#import <libactivator/libactivator.h>
#import <UIKit/UIKit.h>

#include <dispatch/dispatch.h>
#include <objc/runtime.h>

#define LASendEventWithName(eventName) \
	[LASharedActivator sendEventToListener:[LAEvent eventWithName:eventName mode:[LASharedActivator currentEventMode]]]

static NSString *Number1 = @"Signe Draw Number 1";
static NSString *Number2 = @"Signe Draw Number 2";
static NSString *Number3 = @"Signe Draw Number 3";
static NSString *Number4 = @"Signe Draw Number 4";
static NSString *Number5 = @"Signe Draw Number 5";
static NSString *Number6 = @"Signe Draw Number 6";
static NSString *Number7 = @"Signe Draw Number 7";
static NSString *Number8 = @"Signe Draw Number 8";
static NSString *Number9 = @"Signe Draw Number 9";
static NSString *Number0 = @"Signe Draw Number 0";

@interface ControlCenterDataSource : NSObject <LAEventDataSource>
+ (id)sharedInstance;
@end

@implementation ControlCenterDataSource
+ (id)sharedInstance {
	static id sharedInstance = nil;
	static dispatch_once_t token = 0;
	dispatch_once(&token, ^{
		sharedInstance = [self new];
	});
	return sharedInstance;
}
+ (void)load {
	[self sharedInstance];
}
- (id)init {
	if (self = [super init]) {
		[LASharedActivator registerEventDataSource:self forEventName:Number1];
		[LASharedActivator registerEventDataSource:self forEventName:Number2];
		[LASharedActivator registerEventDataSource:self forEventName:Number3];
		[LASharedActivator registerEventDataSource:self forEventName:Number4];
		[LASharedActivator registerEventDataSource:self forEventName:Number5];
		[LASharedActivator registerEventDataSource:self forEventName:Number6];
		[LASharedActivator registerEventDataSource:self forEventName:Number7];
		[LASharedActivator registerEventDataSource:self forEventName:Number8];
		[LASharedActivator registerEventDataSource:self forEventName:Number9];
		[LASharedActivator registerEventDataSource:self forEventName:Number0];
	}
	return self;
}
- (NSString *)localizedTitleForEventName:(NSString *)eventName {
	if ([eventName isEqualToString:Number1]) {
		return @"Signe Draw Number 1";
	} else if ([eventName isEqualToString:Number2]) {
		return @"Signe Draw Number 2";
	} else if ([eventName isEqualToString:Number3]) {
		return @"Signe Draw Number 3";
	} else if ([eventName isEqualToString:Number4]) {
		return @"Signe Draw Number 4";
	} else if ([eventName isEqualToString:Number5]) {
		return @"Signe Draw Number 5";
	} else if ([eventName isEqualToString:Number6]) {
		return @"Signe Draw Number 6";
	} else if ([eventName isEqualToString:Number7]) {
		return @"Signe Draw Number 7";
	} else if ([eventName isEqualToString:Number8]) {
		return @"Signe Draw Number 8";
	} else if ([eventName isEqualToString:Number9]) {
		return @"Signe Draw Number 9";
	} else if ([eventName isEqualToString:Number0]) {
		return @"Signe Draw Number 10";
	}
	return @" ";
}
- (NSString *)localizedGroupForEventName:(NSString *)eventName {
	return @"Signe";
}
- (NSString *)localizedDescriptionForEventName:(NSString *)eventName {
	if ([eventName isEqualToString:Number1]) {
		return @"Triggered when Signe draw number 1";
	} else if ([eventName isEqualToString:Number2]) {
		return @"Triggered when Signe draw number 2";
	} else if ([eventName isEqualToString:Number3]) {
		return @"Triggered when Signe draw number 3";
	} else if ([eventName isEqualToString:Number4]) {
		return @"Triggered when Signe draw number 4";
	} else if ([eventName isEqualToString:Number5]) {
		return @"Triggered when Signe draw number 5";
	} else if ([eventName isEqualToString:Number6]) {
		return @"Triggered when Signe draw number 6";
	} else if ([eventName isEqualToString:Number7]) {
		return @"Triggered when Signe draw number 7";
	} else if ([eventName isEqualToString:Number8]) {
		return @"Triggered when Signe draw number 8";
	} else if ([eventName isEqualToString:Number9]) {
		return @"Triggered when Signe draw number 9";
	} else if ([eventName isEqualToString:Number0]) {
		return @"Triggered when Signe draw number 0";
	}
	return @" ";
}
- (void)dealloc {
	[LASharedActivator unregisterEventDataSourceWithEventName:Number1];
	[LASharedActivator unregisterEventDataSourceWithEventName:Number2];
	[LASharedActivator unregisterEventDataSourceWithEventName:Number3];
	[LASharedActivator unregisterEventDataSourceWithEventName:Number4];
	[LASharedActivator unregisterEventDataSourceWithEventName:Number5];
	[LASharedActivator unregisterEventDataSourceWithEventName:Number6];
	[LASharedActivator unregisterEventDataSourceWithEventName:Number7];
	[LASharedActivator unregisterEventDataSourceWithEventName:Number8];
	[LASharedActivator unregisterEventDataSourceWithEventName:Number9];
	[LASharedActivator unregisterEventDataSourceWithEventName:Number0];
	// [super dealloc];
}
@end