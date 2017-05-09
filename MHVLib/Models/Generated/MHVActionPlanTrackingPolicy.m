#import "MHVActionPlanTrackingPolicy.h"

@implementation MHVActionPlanTrackingPolicy

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


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.

+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"isAutoTrackable": @"isAutoTrackable", @"occurrenceMetrics": @"occurrenceMetrics", @"targetEvents": @"targetEvents" }];
}
 */

+ (NSDictionary *)propertyNameMap
{
    static dispatch_once_t once;
    static NSMutableDictionary *names = nil;
    dispatch_once(&once, ^{
        names = [[super propertyNameMap] mutableCopy];
        [names addEntriesFromDictionary:@{
            @"isAutoTrackable": @"isAutoTrackable",
            @"occurrenceMetrics": @"occurrenceMetrics",
            @"targetEvents": @"targetEvents"
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
            
              @"occurrenceMetrics": [MHVActionPlanTaskOccurrenceMetrics class],

              @"targetEvents": [MHVActionPlanTaskTargetEvent class]
        }];
    });
    return types;
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"isAutoTrackable", @"occurrenceMetrics", @"targetEvents"];
  return [optionalProperties containsObject:propertyName];
}

@end