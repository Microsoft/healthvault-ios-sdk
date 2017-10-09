//
// MHVGoalsApi.m
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
#import "MHVGoalsApi.h"
#import "MHVErrorResponse.h"
#import "MHVGoal.h"
#import "MHVGoalsResponse.h"
#import "MHVGoalsWrapper.h"


@implementation MHVRemoteMonitoringClient (MHVGoalsApi)

NSString* _Nonnull kMHVGoalsApiErrorDomain = @"MHVGoalsApiErrorDomain";
NSInteger kMHVGoalsApiMissingParamErrorCode = 234513;

#pragma mark - Api Methods

///
/// Post a collection of goal instances
/// 
///  @param goalsWrapper The collection of goal instances to create. 
/// 
- (void)goalsCreateWithGoalsWrapper:(MHVGoalsWrapper* _Nonnull)goalsWrapper
    completion:(void(^_Nonnull)(MHVGoalsResponse* _Nullable output, NSError* _Nullable error))completion
{
    // verify the required parameter 'goalsWrapper' is set
    if (goalsWrapper == nil)
    {
        NSParameterAssert(goalsWrapper);
        if(completion)
        {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"goalsWrapper"] };
            NSError* error = [NSError errorWithDomain:kMHVGoalsApiErrorDomain code:kMHVGoalsApiMissingParamErrorCode userInfo:userInfo];
            completion(nil, error);
        }

        return;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/Goals"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    NSData *bodyParam = nil;
    NSString *json = [MHVJsonSerializer serialize:goalsWrapper];
    bodyParam = [json dataUsingEncoding:NSUTF8StringEncoding];

    [self requestWithBaseUrl:nil
		    		    path:resourcePath
                  httpMethod:@"POST"
                  pathParams:pathParams
                 queryParams:queryParams
                     headers:nil
                        body:bodyParam
                 resultClass:[MHVGoalsResponse class]
                  completion:completion];
}

///
/// Delete a goal instance
/// 
///  @param goalId The identifier of the goal to delete. 
/// 
- (void)goalsDeleteWithGoalId:(NSString* _Nonnull)goalId
    completion:(void(^_Nonnull)(NSError* _Nullable error))completion
{
    // verify the required parameter 'goalId' is set
    if (goalId == nil)
    {
        NSParameterAssert(goalId);
        if(completion)
        {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"goalId"] };
            NSError* error = [NSError errorWithDomain:kMHVGoalsApiErrorDomain code:kMHVGoalsApiMissingParamErrorCode userInfo:userInfo];
            completion(error);
        }

        return;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/Goals/{goalId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (goalId != nil)
    {
        pathParams[@"goalId"] = goalId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    NSData *bodyParam = nil;

    [self requestWithBaseUrl:nil
			    	    path:resourcePath
                  httpMethod:@"DELETE"
                  pathParams:pathParams
                 queryParams:queryParams
                     headers:nil
                        body:bodyParam
                  completion:completion];
}

///
/// Get a collection of all goals
/// 
///  @param types The goal types(e.g Steps, CaloriesBurned) filter. (optional)
///  @param windowTypes The goal window types(e.g Daily, Weekly) filter. (optional)
///  @param startDate The start date for date range filter. (optional)
///  @param endDate The end date for date range filter. (optional)
/// 
- (void)goalsGetWithTypes:(NSString* _Nullable)types
    windowTypes:(NSString* _Nullable)windowTypes
    startDate:(NSDate* _Nullable)startDate
    endDate:(NSDate* _Nullable)endDate
    completion:(void(^_Nonnull)(MHVGoalsResponse* _Nullable output, NSError* _Nullable error))completion
{
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/Goals"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (types != nil)
    {
        queryParams[@"types"] = types;
    }
    if (windowTypes != nil)
    {
        queryParams[@"windowTypes"] = windowTypes;
    }
    if (startDate != nil)
    {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil)
    {
        queryParams[@"endDate"] = endDate;
    }

    NSData *bodyParam = nil;

    [self requestWithBaseUrl:nil
		    		    path:resourcePath
                  httpMethod:@"GET"
                  pathParams:pathParams
                 queryParams:queryParams
                     headers:nil
                        body:bodyParam
                 resultClass:[MHVGoalsResponse class]
                  completion:completion];
}

///
/// Get a collection of the active goals
/// 
///  @param types The goal types(e.g Steps, CaloriesBurned) filter. (optional)
///  @param windowTypes The goal window types(e.g Daily, Weekly) filter. (optional)
/// 
- (void)goalsGetActiveWithTypes:(NSString* _Nullable)types
    windowTypes:(NSString* _Nullable)windowTypes
    completion:(void(^_Nonnull)(MHVGoalsResponse* _Nullable output, NSError* _Nullable error))completion
{
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/Goals/active"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (types != nil)
    {
        queryParams[@"types"] = types;
    }
    if (windowTypes != nil)
    {
        queryParams[@"windowTypes"] = windowTypes;
    }

    NSData *bodyParam = nil;

    [self requestWithBaseUrl:nil
		    		    path:resourcePath
                  httpMethod:@"GET"
                  pathParams:pathParams
                 queryParams:queryParams
                     headers:nil
                        body:bodyParam
                 resultClass:[MHVGoalsResponse class]
                  completion:completion];
}

///
/// Get an instance of a specific goal
/// 
///  @param goalId The goal identifier. 
/// 
- (void)goalsGetByIdWithGoalId:(NSString* _Nonnull)goalId
    completion:(void(^_Nonnull)(MHVGoal* _Nullable output, NSError* _Nullable error))completion
{
    // verify the required parameter 'goalId' is set
    if (goalId == nil)
    {
        NSParameterAssert(goalId);
        if(completion)
        {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"goalId"] };
            NSError* error = [NSError errorWithDomain:kMHVGoalsApiErrorDomain code:kMHVGoalsApiMissingParamErrorCode userInfo:userInfo];
            completion(nil, error);
        }

        return;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/Goals/{goalId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (goalId != nil)
    {
        pathParams[@"goalId"] = goalId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    NSData *bodyParam = nil;

    [self requestWithBaseUrl:nil
		    		    path:resourcePath
                  httpMethod:@"GET"
                  pathParams:pathParams
                 queryParams:queryParams
                     headers:nil
                        body:bodyParam
                 resultClass:[MHVGoal class]
                  completion:completion];
}

///
/// Update/Replace a complete goal instance with no merge
/// 
///  @param goal The instance of the goal to update. The entire goal will be replaced with this version. 
/// 
- (void)goalsReplaceWithGoal:(MHVGoal* _Nonnull)goal
    completion:(void(^_Nonnull)(MHVGoal* _Nullable output, NSError* _Nullable error))completion
{
    // verify the required parameter 'goal' is set
    if (goal == nil)
    {
        NSParameterAssert(goal);
        if(completion)
        {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"goal"] };
            NSError* error = [NSError errorWithDomain:kMHVGoalsApiErrorDomain code:kMHVGoalsApiMissingParamErrorCode userInfo:userInfo];
            completion(nil, error);
        }

        return;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/Goals"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    NSData *bodyParam = nil;
    NSString *json = [MHVJsonSerializer serialize:goal];
    bodyParam = [json dataUsingEncoding:NSUTF8StringEncoding];

    [self requestWithBaseUrl:nil
		    		    path:resourcePath
                  httpMethod:@"PUT"
                  pathParams:pathParams
                 queryParams:queryParams
                     headers:nil
                        body:bodyParam
                 resultClass:[MHVGoal class]
                  completion:completion];
}

///
/// Update collection of goal instances with merge
/// 
///  @param goalsWrapper The collection of goal instances to update. Only the fields present in the passed in model will be updated. All other fields and colelctions              will be left, as is, unless invalid. 
/// 
- (void)goalsUpdateWithGoalsWrapper:(MHVGoalsWrapper* _Nonnull)goalsWrapper
    completion:(void(^_Nonnull)(MHVGoalsResponse* _Nullable output, NSError* _Nullable error))completion
{
    // verify the required parameter 'goalsWrapper' is set
    if (goalsWrapper == nil)
    {
        NSParameterAssert(goalsWrapper);
        if(completion)
        {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"goalsWrapper"] };
            NSError* error = [NSError errorWithDomain:kMHVGoalsApiErrorDomain code:kMHVGoalsApiMissingParamErrorCode userInfo:userInfo];
            completion(nil, error);
        }

        return;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/Goals"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];

    NSData *bodyParam = nil;
    NSString *json = [MHVJsonSerializer serialize:goalsWrapper];
    bodyParam = [json dataUsingEncoding:NSUTF8StringEncoding];

    [self requestWithBaseUrl:nil
		    		    path:resourcePath
                  httpMethod:@"PATCH"
                  pathParams:pathParams
                 queryParams:queryParams
                     headers:nil
                        body:bodyParam
                 resultClass:[MHVGoalsResponse class]
                  completion:completion];
}



@end
