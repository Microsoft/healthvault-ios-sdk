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


@protocol MHVAudit
@end

NS_ASSUME_NONNULL_BEGIN

@interface MHVAudit : MHVModelBase

/* Gets or sets when the change was made [optional]
 */
@property(strong,nonatomic,nullable) NSDate* timestamp;
/* Gets or sets who made the change [optional]
 */
@property(strong,nonatomic,nullable) NSString* personId;
/* Gets or sets which application that made the change [optional]
 */
@property(strong,nonatomic,nullable) NSString* applicationId;
/* Gets or sets the audit action for the change [optional]
 */
@property(strong,nonatomic,nullable) NSString* auditAction;

@end

NS_ASSUME_NONNULL_END