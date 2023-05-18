#
# Pure Fusion API
# Pure Fusion is fully API-driven. Most APIs which change the system (POST, PATCH, DELETE) return an Operation in status ""Pending"" or ""Running"". You can poll (GET) the operation to check its status, waiting for it to change to ""Succeeded"" or ""Failed"". 
# Version: 1.1
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSFusion' -name 'PSFPlacementRecommendation' {
    Context 'PSFPlacementRecommendation' {
        It 'Initialize-PSFPlacementRecommendation' {
            # a simple test to create an object
            #$NewObject = Initialize-PSFPlacementRecommendation -Id "TEST_VALUE" -Name "TEST_VALUE" -SelfLink "TEST_VALUE" -DisplayName "TEST_VALUE" -Tenant "TEST_VALUE" -TenantSpace "TEST_VALUE" -PlacementEngine "TEST_VALUE" -PlacementGroupId "TEST_VALUE" -PlacementGroup "TEST_VALUE" -SimulatedPlacement "TEST_VALUE" -IncludedArrays "TEST_VALUE" -ExcludedArrays "TEST_VALUE" -TargetArrays "TEST_VALUE" -TimeRemaining "TEST_VALUE"
            #$NewObject | Should -BeOfType PlacementRecommendation
            #$NewObject.property | Should -Be 0
        }
    }
}