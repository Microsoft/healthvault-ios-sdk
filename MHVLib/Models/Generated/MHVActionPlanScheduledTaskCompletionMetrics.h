#import <Foundation/Foundation.h>

/**
* Microsoft Health API - KHV
* No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
*
* OpenAPI spec version: KHV
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/


#import "MHVTime.h"
#import "MHVModelBase.h"


@protocol MHVActionPlanScheduledTaskCompletionMetrics
@end

NS_ASSUME_NONNULL_BEGIN

@interface MHVActionPlanScheduledTaskCompletionMetrics : MHVModelBase

/* The time at which this task is scheduled [optional]
 */
@property(strong,nonatomic,nullable) MHVTime* scheduledTime;
/* The reminder state of the task [optional]
 */
@property(strong,nonatomic,nullable) NSString* reminderState;
/* The days that this will show for the user              Expected values: { 'Unknown', 'Everyday', 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday' } [optional]
 */
@property(strong,nonatomic,nullable) NSArray<NSString*>* scheduledDays;

@end

NS_ASSUME_NONNULL_END