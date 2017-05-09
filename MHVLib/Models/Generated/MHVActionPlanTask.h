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


#import "MHVActionPlanFrequencyTaskCompletionMetrics.h"
#import "MHVActionPlanScheduledTaskCompletionMetrics.h"
#import "MHVActionPlanTrackingPolicy.h"
#import "MHVModelBase.h"


@protocol MHVActionPlanTask
@end

NS_ASSUME_NONNULL_BEGIN

@interface MHVActionPlanTask : MHVModelBase

/* The friendly name of the task [optional]
 */
@property(strong,nonatomic,nullable) NSString* name;
/* The short description of the task [optional]
 */
@property(strong,nonatomic,nullable) NSString* shortDescription;
/* The detailed description of the task [optional]
 */
@property(strong,nonatomic,nullable) NSString* longDescription;
/* The image URL of the task. Suggested resolution is 200 x 200 [optional]
 */
@property(strong,nonatomic,nullable) NSString* imageUrl;
/* The thumbnail image URL of the task. Suggested resolution is 90 x 90 [optional]
 */
@property(strong,nonatomic,nullable) NSString* thumbnailImageUrl;
/* The type of the task, used to choose the UI editor for the task [optional]
 */
@property(strong,nonatomic,nullable) NSString* taskType;
/* The tracking policy [optional]
 */
@property(strong,nonatomic,nullable) MHVActionPlanTrackingPolicy* trackingPolicy;
/* The text shown during task signup. [optional]
 */
@property(strong,nonatomic,nullable) NSString* signupName;
/* The ID of the associated plan. This is not needed when adding a task as part of a new plan [optional]
 */
@property(strong,nonatomic,nullable) NSString* associatedPlanId;
/* The list of objective IDs the task is associated with [optional]
 */
@property(strong,nonatomic,nullable) NSArray<NSString*>* associatedObjectiveIds;
/* The Completion Type of the Task [optional]
 */
@property(strong,nonatomic,nullable) NSString* completionType;
/* Completion metrics for frequency based tasks [optional]
 */
@property(strong,nonatomic,nullable) MHVActionPlanFrequencyTaskCompletionMetrics* frequencyTaskCompletionMetrics;
/* Completion metrics for schedule based tasks [optional]
 */
@property(strong,nonatomic,nullable) MHVActionPlanScheduledTaskCompletionMetrics* scheduledTaskCompletionMetrics;

@end

NS_ASSUME_NONNULL_END