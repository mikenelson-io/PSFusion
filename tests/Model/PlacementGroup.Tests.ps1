#
# Pure Fusion API
# Pure Fusion is fully API-driven. Most APIs which change the system (POST, PATCH, DELETE) return an Operation in status ""Pending"" or ""Running"". You can poll (GET) the operation to check its status, waiting for it to change to ""Succeeded"" or ""Failed"". 
# Version: 1.1
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSFusion' -name 'PSFPlacementGroup' {
    Context 'PSFPlacementGroup' {
        It 'Initialize-PSFPlacementGroup' {
            # a simple test to create an object
            #$NewObject = Initialize-PSFPlacementGroup -Id "TEST_VALUE" -Name "TEST_VALUE" -SelfLink "TEST_VALUE" -DisplayName "TEST_VALUE" -Tenant "TEST_VALUE" -TenantSpace "TEST_VALUE" -PlacementEngine "TEST_VALUE" -AvailabilityZone "TEST_VALUE" -Protocols "TEST_VALUE" -StorageService "TEST_VALUE" -Array "TEST_VALUE"
            #$NewObject | Should -BeOfType PlacementGroup
            #$NewObject.property | Should -Be 0
        }
    }
}
