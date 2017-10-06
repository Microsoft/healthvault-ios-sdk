//
// MHVGoalsRecommendationsApi.m
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


#import <Foundation/Foundation.h>
#import "MHVRemoteMonitoringClient.h"
#import "MHVJsonSerializer.h"
#import "MHVGoalsRecommendationsApi.h"
#import "MHVErrorResponse.h"
#import "MHVGoalRecommendation.h"
#import "MHVGoalRecommendationInstance.h"
#import "MHVGoalRecommendationsResponse.h"


@implementation MHVRemoteMonitoringClient (MHVGoalsRecommendationsApi)

NSString* _Nonnull kMHVGoalsRecommendationsApiErrorDomain = @"MHVGoalsRecommendationsApiErrorDomain";
NSInteger kMHVGoalsRecommendationsApiMissingParamErrorCode = 234513;

#pragma mark - Api Methods

///
/// Updates the goal recommendation to acknowledged state
/// 
///  @param goalRecommendationId The identifier of the goal recommendation to acknowledge. 
/// 
- (void)goalRecommendationsAcknowledgeWithGoalRecommendationId:(NSString* _Nonnull)goalRecommendationId
    completion:(void(^_Nonnull)(NSError* _Nullable error))completion
{
    // verify the required parameter 'goalRecommendationId' is set
    if (goalRecommendationId == nil)
    {
        NSParameterAssert(goalRecommendationId);
        if(completion)
        {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"goalRecommendationId"] };
            NSError* error = [NSError errorWithDomain:kMHVGoalsRecommendationsApiErrorDomain code:kMHVGoalsRecommendationsApiMissingParamErrorCode userInfo:userInfo];
            completion(error);
        }

        return;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/GoalRecommendations/{goalRecommendationId}/Acknowledge"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (goalRecommendationId != nil)
    {
        pathParams[@"goalRecommendationId"] = goalRecommendationId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    NSData *bodyParam = nil;

    [self requestWithPath:resourcePath
                      httpMethod:@"PUT"
                      pathParams:pathParams
                     queryParams:queryParams
                         headers:nil
                            body:bodyParam
                      completion:completion];
}

///
/// Post a goal recommendation instance
/// 
///  @param goalRecommendation The instance of the goal recommendation to create. 
/// 
- (void)goalRecommendationsCreateWithGoalRecommendation:(MHVGoalRecommendation* _Nonnull)goalRecommendation
    completion:(void(^_Nonnull)(MHVGoalRecommendationInstance* _Nullable output, NSError* _Nullable error))completion
{
    // verify the required parameter 'goalRecommendation' is set
    if (goalRecommendation == nil)
    {
        NSParameterAssert(goalRecommendation);
        if(completion)
        {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"goalRecommendation"] };
            NSError* error = [NSError errorWithDomain:kMHVGoalsRecommendationsApiErrorDomain code:kMHVGoalsRecommendationsApiMissingParamErrorCode userInfo:userInfo];
            completion(nil, error);
        }

        return;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/GoalRecommendations"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    NSData *bodyParam = nil;
    NSString *json = [MHVJsonSerializer serialize:goalRecommendation];
    bodyParam = [json dataUsingEncoding:NSUTF8StringEncoding];

    [self requestWithPath:resourcePath
                      httpMethod:@"POST"
                      pathParams:pathParams
                     queryParams:queryParams
                        headers:nil
                            body:bodyParam
                     resultClass:[MHVGoalRecommendationInstance class]
                      completion:completion];
}

///
/// Delete a goal recommendation instance
/// 
///  @param goalRecommendationId The identifier of the goal recommendation to delete. 
/// 
- (void)goalRecommendationsDeleteWithGoalRecommendationId:(NSString* _Nonnull)goalRecommendationId
    completion:(void(^_Nonnull)(NSError* _Nullable error))completion
{
    // verify the required parameter 'goalRecommendationId' is set
    if (goalRecommendationId == nil)
    {
        NSParameterAssert(goalRecommendationId);
        if(completion)
        {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"goalRecommendationId"] };
            NSError* error = [NSError errorWithDomain:kMHVGoalsRecommendationsApiErrorDomain code:kMHVGoalsRecommendationsApiMissingParamErrorCode userInfo:userInfo];
            completion(error);
        }

        return;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/GoalRecommendations/{goalRecommendationId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (goalRecommendationId != nil)
    {
        pathParams[@"goalRecommendationId"] = goalRecommendationId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    NSData *bodyParam = nil;

    [self requestWithPath:resourcePath
                      httpMethod:@"DELETE"
                      pathParams:pathParams
                     queryParams:queryParams
                         headers:nil
                            body:bodyParam
                      completion:completion];
}

///
/// Get a collection of all goal recommendations
/// 
///  @param goalTypes The goal types(e.g Steps, CaloriesBurned) filter. (optional)
///  @param goalWindowTypes The goal window types(e.g Daily, Weekly) filter. (optional)
/// 
- (void)goalRecommendationsGetWithGoalTypes:(NSString* _Nullable)goalTypes
    goalWindowTypes:(NSString* _Nullable)goalWindowTypes
    completion:(void(^_Nonnull)(MHVGoalRecommendationsResponse* _Nullable output, NSError* _Nullable error))completion
{
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/GoalRecommendations"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (goalTypes != nil)
    {
        queryParams[@"goalTypes"] = goalTypes;
    }
    if (goalWindowTypes != nil)
    {
        queryParams[@"goalWindowTypes"] = goalWindowTypes;
    }

    NSData *bodyParam = nil;

    [self requestWithPath:resourcePath
                      httpMethod:@"GET"
                      pathParams:pathParams
                     queryParams:queryParams
                        headers:nil
                            body:bodyParam
                     resultClass:[MHVGoalRecommendationsResponse class]
                      completion:completion];
}

///
/// Get an instance of a specific goal recommendation
/// 
///  @param goalRecommendationId The goal recommendation identifier. 
/// 
- (void)goalRecommendationsGetByIdWithGoalRecommendationId:(NSString* _Nonnull)goalRecommendationId
    completion:(void(^_Nonnull)(MHVGoalRecommendationInstance* _Nullable output, NSError* _Nullable error))completion
{
    // verify the required parameter 'goalRecommendationId' is set
    if (goalRecommendationId == nil)
    {
        NSParameterAssert(goalRecommendationId);
        if(completion)
        {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"goalRecommendationId"] };
            NSError* error = [NSError errorWithDomain:kMHVGoalsRecommendationsApiErrorDomain code:kMHVGoalsRecommendationsApiMissingParamErrorCode userInfo:userInfo];
            completion(nil, error);
        }

        return;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/GoalRecommendations/{goalRecommendationId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (goalRecommendationId != nil)
    {
        pathParams[@"goalRecommendationId"] = goalRecommendationId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    NSData *bodyParam = nil;

    [self requestWithPath:resourcePath
                      httpMethod:@"GET"
                      pathParams:pathParams
                     queryParams:queryParams
                        headers:nil
                            body:bodyParam
                     resultClass:[MHVGoalRecommendationInstance class]
                      completion:completion];
}



@end
