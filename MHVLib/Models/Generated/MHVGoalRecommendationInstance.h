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


#import "MHVGoal.h"
#import "MHVModelBase.h"


@protocol MHVGoalRecommendationInstance
@end

NS_ASSUME_NONNULL_BEGIN

@interface MHVGoalRecommendationInstance : MHVModelBase

/* The identifier of the recommendation. [optional]
 */
@property(strong,nonatomic,nullable) NSString* _id;
/* The ID of the organization that manages this recommendation [optional]
 */
@property(strong,nonatomic,nullable) NSString* organizationId;
/* The name of the organization that manages this recommendation [optional]
 */
@property(strong,nonatomic,nullable) NSString* organizationName;
/* Specifies if the user has used the recommendation to set a goal. [optional]
 */
@property(strong,nonatomic,nullable) NSNumber* acknowledged;
/* The expiration date of the recommendation in Universal Time Zone(UTC). [optional]
 */
@property(strong,nonatomic,nullable) NSDate* expirationDate;
/* The associated goal data [optional]
 */
@property(strong,nonatomic,nullable) MHVGoal* associatedGoal;

@end

NS_ASSUME_NONNULL_END