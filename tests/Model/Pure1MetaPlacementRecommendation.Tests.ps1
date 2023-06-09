#
# Pure Fusion API
# Pure Fusion is fully API-driven. Most APIs which change the system (POST, PATCH, DELETE) return an Operation in status ""Pending"" or ""Running"". You can poll (GET) the operation to check its status, waiting for it to change to ""Succeeded"" or ""Failed"". 
# Version: 1.1
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSFusion' -name 'PSFPure1MetaPlacementRecommendation' {
    Context 'PSFPure1MetaPlacementRecommendation' {
        It 'Initialize-PSFPure1MetaPlacementRecommendation' {
            # a simple test to create an object
            #$NewObject = Initialize-PSFPure1MetaPlacementRecommendation -Raw "TEST_VALUE" -Objectives "TEST_VALUE" -LoadValues "TEST_VALUE" -CapacityValues "TEST_VALUE" -DaysToReach90PercentCapacity "TEST_VALUE" -DaysToReach100PercentCapacity "TEST_VALUE" -VarError "TEST_VALUE" -Warnings "TEST_VALUE"
            #$NewObject | Should -BeOfType Pure1MetaPlacementRecommendation
            #$NewObject.property | Should -Be 0
        }
    }
}
