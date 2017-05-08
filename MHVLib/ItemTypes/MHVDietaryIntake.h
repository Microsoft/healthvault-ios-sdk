//
//  MHVDietaryIntake.h
//  MHVLib
//
//  Copyright (c) 2017 Microsoft Corporation. All rights reserved.
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

#import <Foundation/Foundation.h>
#import "MHVTypes.h"
#import "MHVVocab.h"

@interface MHVDietaryIntake : MHVItemDataTyped
{
@private
    MHVCodableValue* m_foodItem;
    MHVCodableValue* m_servingSize;
    MHVNonNegativeDouble* m_servingsConsumed;
    MHVCodableValue* m_meal;
    MHVDateTime* m_when;
    
    MHVFoodEnergyValue* m_calories;
    MHVFoodEnergyValue* m_caloriesFromFat;
    MHVWeightMeasurement* m_totalFat;
    MHVWeightMeasurement* m_saturatedFat;
    MHVWeightMeasurement* m_transFat;
    MHVWeightMeasurement* m_monoUnsaturatedFat;
    MHVWeightMeasurement* m_polyUnsaturatedFat;
    
    MHVWeightMeasurement* m_protein;
    MHVWeightMeasurement* m_carbs;
    MHVWeightMeasurement* m_fiber;
    MHVWeightMeasurement* m_sugar;
    MHVWeightMeasurement* m_sodium;
    MHVWeightMeasurement* m_cholesterol;
    
    MHVWeightMeasurement* m_calcium;
    MHVWeightMeasurement* m_iron;
    MHVWeightMeasurement* m_magnesium;
    MHVWeightMeasurement* m_phosphorus;
    MHVWeightMeasurement* m_potassium;
    MHVWeightMeasurement* m_zinc;
    
    MHVWeightMeasurement* m_vitaminA;
    MHVWeightMeasurement* m_vitaminE;
    MHVWeightMeasurement* m_vitaminD;
    MHVWeightMeasurement* m_vitaminC;
    MHVWeightMeasurement* m_thiamin;
    MHVWeightMeasurement* m_riboflavin;
    MHVWeightMeasurement* m_niacin;
    MHVWeightMeasurement* m_vitaminB6;
    MHVWeightMeasurement* m_folate;
    MHVWeightMeasurement* m_vitaminB12;
    MHVWeightMeasurement* m_vitaminK;
    
    MHVAdditionalNutritionFacts* m_additionalFacts;
}

//
// (Required)
//
@property (readwrite, nonatomic, strong) MHVCodableValue* foodItem;
//
// (Optional)
//
@property (readwrite, nonatomic, strong) MHVCodableValue* servingSize;
//
// (Optional)
//
@property (readwrite, nonatomic, strong) MHVNonNegativeDouble* servingsConsumed;
//
// (Optional)
//
@property (readwrite, nonatomic, strong) MHVCodableValue* meal;
//
// (Optional)
//
@property (readwrite, nonatomic, strong) MHVDateTime* when;

//--------------------
//
// ALL OPTIONAL
//
//--------------------

@property (readwrite, nonatomic, strong) MHVFoodEnergyValue* calories;           // Cal
@property (readwrite, nonatomic, strong) MHVFoodEnergyValue* caloriesFromFat;    // Cal

@property (readwrite, nonatomic, strong) MHVWeightMeasurement* totalFat;         // g
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* saturatedFat;     // g
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* transFat;         // g
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* monounsaturatedFat; //g
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* polyunsaturatedFat; //g

@property (readwrite, nonatomic, strong) MHVWeightMeasurement* protein;      // g
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* carbs;        // g
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* dietaryFiber; // g
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* sugar;        // g

@property (readwrite, nonatomic, strong) MHVWeightMeasurement* sodium;       // mg
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* cholesterol;  // mg
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* calcium;      // mg
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* iron;         // mg
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* magnesium;    // mg
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* phosphorus;   // mg
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* potassium;    // mg
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* zinc;         // mg

@property (readwrite, nonatomic, strong) MHVWeightMeasurement* vitaminA;     // mg
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* vitaminE;     // mg
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* vitaminD;     // mg
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* vitaminC;     // mg
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* thiamin;      // mg
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* riboflavin;   // mg
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* niacin;
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* vitaminB6;
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* folate;
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* vitaminB12;
@property (readwrite, nonatomic, strong) MHVWeightMeasurement* vitaminK;

@property (readwrite, nonatomic, strong) MHVAdditionalNutritionFacts* additionalFacts;

//---------------------
//
// MHVVocab
//
//---------------------
+(MHVVocabIdentifier *) vocabForFood;
+(MHVVocabIdentifier *) vocabForMeals;

//---------------------
//
// Some standard codes
//
//---------------------
+(MHVCodableValue *) mealCodeForBreakfast;
+(MHVCodableValue *) mealCodeForLunch;
+(MHVCodableValue *) mealCodeForDinner;
+(MHVCodableValue *) mealCodeForSnack;

//--------------------
//
// TypeInfo
//
//--------------------

+(NSString *) typeID;
+(NSString *) XRootElement;

+(MHVItem *) newItem;

@end