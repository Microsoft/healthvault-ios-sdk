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


#import "MHVWeeklyAdherenceSummary.h"
#import "MHVModelBase.h"


@protocol MHVActionPlanTaskAdherenceSummary
@end

NS_ASSUME_NONNULL_BEGIN

@interface MHVActionPlanTaskAdherenceSummary : MHVModelBase

/* The Id of the task [optional]
 */
@property(strong,nonatomic,nullable) NSString* _id;
/* The name of the task [optional]
 */
@property(strong,nonatomic,nullable) NSString* name;
/* The recurrence type of the schedule window [optional]
 */
@property(strong,nonatomic,nullable) NSString* windowType;
/* The starting date of the task or the start date requested, whichever is later. [optional]
 */
@property(strong,nonatomic,nullable) NSDate* startDate;
/* The ending date of the task or the end date requested, whichever is earlier. [optional]
 */
@property(strong,nonatomic,nullable) NSDate* endDate;
/* A list of weekly adherence summaries [optional]
 */
@property(strong,nonatomic,nullable) NSArray<MHVWeeklyAdherenceSummary>* weeklyAdherence;

@end

NS_ASSUME_NONNULL_END