#
# Pure Fusion API
# Pure Fusion is fully API-driven. Most APIs which change the system (POST, PATCH, DELETE) return an Operation in status ""Pending"" or ""Running"". You can poll (GET) the operation to check its status, waiting for it to change to ""Succeeded"" or ""Failed"". 
# Version: 1.1
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSFusion' -name 'PSFPlacementGroupPostAllOf' {
    Context 'PSFPlacementGroupPostAllOf' {
        It 'Initialize-PSFPlacementGroupPostAllOf' {
            # a simple test to create an object
            #$NewObject = Initialize-PSFPlacementGroupPostAllOf -AvailabilityZone "TEST_VALUE" -Region "TEST_VALUE" -StorageService "TEST_VALUE"
            #$NewObject | Should -BeOfType PlacementGroupPostAllOf
            #$NewObject.property | Should -Be 0
        }
    }
}
