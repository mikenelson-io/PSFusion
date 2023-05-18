#
# Pure Fusion API
# Pure Fusion is fully API-driven. Most APIs which change the system (POST, PATCH, DELETE) return an Operation in status ""Pending"" or ""Running"". You can poll (GET) the operation to check its status, waiting for it to change to ""Succeeded"" or ""Failed"". 
# Version: 1.1
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSFusion' -name 'PSFPlacementRecommendationExcludedArray' {
    Context 'PSFPlacementRecommendationExcludedArray' {
        It 'Initialize-PSFPlacementRecommendationExcludedArray' {
            # a simple test to create an object
            #$NewObject = Initialize-PSFPlacementRecommendationExcludedArray -Id "TEST_VALUE" -Name "TEST_VALUE" -Kind "TEST_VALUE" -SelfLink "TEST_VALUE" -Reason "TEST_VALUE"
            #$NewObject | Should -BeOfType PlacementRecommendationExcludedArray
            #$NewObject.property | Should -Be 0
        }
    }
}
