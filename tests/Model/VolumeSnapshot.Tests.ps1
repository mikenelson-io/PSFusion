#
# Pure Fusion API
# Pure Fusion is fully API-driven. Most APIs which change the system (POST, PATCH, DELETE) return an Operation in status ""Pending"" or ""Running"". You can poll (GET) the operation to check its status, waiting for it to change to ""Succeeded"" or ""Failed"". 
# Version: 1.1
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSFusion' -name 'PSFVolumeSnapshot' {
    Context 'PSFVolumeSnapshot' {
        It 'Initialize-PSFVolumeSnapshot' {
            # a simple test to create an object
            #$NewObject = Initialize-PSFVolumeSnapshot -Id "TEST_VALUE" -Name "TEST_VALUE" -SelfLink "TEST_VALUE" -DisplayName "TEST_VALUE" -SerialNumber "TEST_VALUE" -VolumeSerialNumber "TEST_VALUE" -CreatedAt "TEST_VALUE" -ConsistencyId "TEST_VALUE" -Destroyed "TEST_VALUE" -TimeRemaining "TEST_VALUE" -Size "TEST_VALUE" -Tenant "TEST_VALUE" -TenantSpace "TEST_VALUE" -Snapshot "TEST_VALUE" -Volume "TEST_VALUE" -ProtectionPolicy "TEST_VALUE" -PlacementGroup "TEST_VALUE"
            #$NewObject | Should -BeOfType VolumeSnapshot
            #$NewObject.property | Should -Be 0
        }
    }
}