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


#import "MHVActionPlanInstance.h"
#import "MHVModelBase.h"


@protocol MHVActionPlansResponseActionPlanInstance_
@end

NS_ASSUME_NONNULL_BEGIN

@interface MHVActionPlansResponseActionPlanInstance_ : MHVModelBase

/* The collection of action plans [optional]
 */
@property(strong,nonatomic,nullable) NSArray<MHVActionPlanInstance>* plans;
/* The URI for the next page of data [optional]
 */
@property(strong,nonatomic,nullable) NSString* nextLink;

@end

NS_ASSUME_NONNULL_END