//
//  CFilteringJSONSerializer.h
//  CouchNotes
//
//  Created by Jonathan Wight on 06/20/10.
//  Copyright 2010 toxicsoftware.com. All rights reserved.
//

#import "../JSON/CJSONSerializer.h"

typedef NSString *(^JSONConversionTest)(id inObject);
typedef id (^JSONConversionConverter)(id inObject); // TODO replace with value transformers.

@interface CFilteringJSONSerializer : CJSONSerializer {
	NSSet *tests;
	NSDictionary *convertersByName;
}

@property (readwrite, nonatomic, strong) NSSet *tests;
@property (readwrite, nonatomic, strong) NSDictionary *convertersByName;

- (void)addTest:(JSONConversionTest)inTest;
- (void)addConverter:(JSONConversionConverter)inConverter forName:(NSString *)inName;

@end
