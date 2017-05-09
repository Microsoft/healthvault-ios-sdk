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


#import "MHVSystemThreadingWaitHandle.h"
#import "MHVModelBase.h"


@protocol MHVSystemThreadingCancellationToken
@end

NS_ASSUME_NONNULL_BEGIN

@interface MHVSystemThreadingCancellationToken : MHVModelBase


@property(strong,nonatomic,nullable) NSNumber* isCancellationRequested;

@property(strong,nonatomic,nullable) NSNumber* canBeCanceled;

@property(strong,nonatomic,nullable) MHVSystemThreadingWaitHandle* waitHandle;

@end

NS_ASSUME_NONNULL_END