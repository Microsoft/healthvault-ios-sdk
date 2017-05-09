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


#import "MHVModelBase.h"


@protocol MHVGoalRange
@end

NS_ASSUME_NONNULL_BEGIN

@interface MHVGoalRange : MHVModelBase

/* The name of the range. [optional]
 */
@property(strong,nonatomic,nullable) NSString* name;
/* The description of the range. Allows more detailed information about the range. [optional]
 */
@property(strong,nonatomic,nullable) NSString* _description;
/* The minimum value for the range.              For ranges greater than a specified value with no maximum, specify a minimum but no maximum. [optional]
 */
@property(strong,nonatomic,nullable) NSNumber* minimum;
/* The maximum value for the range.              For ranges less than a specified value with no minimum, specify a maximum but no minimum. [optional]
 */
@property(strong,nonatomic,nullable) NSNumber* maximum;
/* The units of the range. [optional]
 */
@property(strong,nonatomic,nullable) NSString* units;

@end

NS_ASSUME_NONNULL_END