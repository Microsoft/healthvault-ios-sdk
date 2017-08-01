//
// MHVActionPlanTaskTracking.m
// MHVLib
//
// Copyright (c) 2017 Microsoft Corporation. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

/**
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/


#import "MHVActionPlanTaskTracking.h"

@implementation MHVActionPlanTaskTracking

+ (BOOL)shouldValidateProperties
{
    return YES;
}

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}



+ (NSDictionary *)propertyNameMap
{
    static dispatch_once_t once;
    static NSMutableDictionary *names = nil;
    dispatch_once(&once, ^{
        names = [[super propertyNameMap] mutableCopy];
        [names addEntriesFromDictionary:@{
            @"identifier": @"id",
            @"trackingType": @"trackingType",
            @"timeZoneOffset": @"timeZoneOffset",
            @"trackingDateTime": @"trackingDateTime",
            @"creationDateTime": @"creationDateTime",
            @"trackingStatus": @"trackingStatus",
            @"occurrenceStart": @"occurrenceStart",
            @"occurrenceEnd": @"occurrenceEnd",
            @"completionStart": @"completionStart",
            @"completionEnd": @"completionEnd",
            @"taskId": @"taskId",
            @"feedback": @"feedback",
            @"evidence": @"evidence"
        }];
    });
    return names;
}

+ (NSDictionary *)objectParametersMap
{
    static dispatch_once_t once;
    static NSMutableDictionary *types = nil;
    dispatch_once(&once, ^{
        types = [[super objectParametersMap] mutableCopy];
        [types addEntriesFromDictionary:@{
            @"trackingType": [MHVActionPlanTaskTrackingTrackingTypeEnum class],
            @"trackingStatus": [MHVActionPlanTaskTrackingTrackingStatusEnum class],
            @"evidence": [MHVActionPlanTaskTrackingEvidence class]

        }];
    });
    return types;
}
@end
@implementation MHVActionPlanTaskTrackingTrackingTypeEnum

-(NSDictionary *)enumMap
{
    return @{
        @"Unknown": @"Unknown",
        @"Manual": @"Manual",
        @"Auto": @"Auto",
    };
}

+(MHVActionPlanTaskTrackingTrackingTypeEnum *)MHVUnknown
{
    return [[MHVActionPlanTaskTrackingTrackingTypeEnum alloc] initWithString:@"Unknown"];
}
+(MHVActionPlanTaskTrackingTrackingTypeEnum *)MHVManual
{
    return [[MHVActionPlanTaskTrackingTrackingTypeEnum alloc] initWithString:@"Manual"];
}
+(MHVActionPlanTaskTrackingTrackingTypeEnum *)MHVAuto
{
    return [[MHVActionPlanTaskTrackingTrackingTypeEnum alloc] initWithString:@"Auto"];
}
@end
@implementation MHVActionPlanTaskTrackingTrackingStatusEnum

-(NSDictionary *)enumMap
{
    return @{
        @"Unknown": @"Unknown",
        @"Occurrence": @"Occurrence",
        @"Completion": @"Completion",
        @"OutOfWindow": @"OutOfWindow",
    };
}

+(MHVActionPlanTaskTrackingTrackingStatusEnum *)MHVUnknown
{
    return [[MHVActionPlanTaskTrackingTrackingStatusEnum alloc] initWithString:@"Unknown"];
}
+(MHVActionPlanTaskTrackingTrackingStatusEnum *)MHVOccurrence
{
    return [[MHVActionPlanTaskTrackingTrackingStatusEnum alloc] initWithString:@"Occurrence"];
}
+(MHVActionPlanTaskTrackingTrackingStatusEnum *)MHVCompletion
{
    return [[MHVActionPlanTaskTrackingTrackingStatusEnum alloc] initWithString:@"Completion"];
}
+(MHVActionPlanTaskTrackingTrackingStatusEnum *)MHVOutOfWindow
{
    return [[MHVActionPlanTaskTrackingTrackingStatusEnum alloc] initWithString:@"OutOfWindow"];
}
@end
