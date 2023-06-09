#
# Pure Fusion API
# Pure Fusion is fully API-driven. Most APIs which change the system (POST, PATCH, DELETE) return an Operation in status ""Pending"" or ""Running"". You can poll (GET) the operation to check its status, waiting for it to change to ""Succeeded"" or ""Failed"". 
# Version: 1.1
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSFusion' -name 'PSFPerformance' {
    Context 'PSFPerformance' {
        It 'Initialize-PSFPerformance' {
            # a simple test to create an object
            #$NewObject = Initialize-PSFPerformance -Resource "TEST_VALUE" -ReadsPerSec "TEST_VALUE" -ReadLatencyUs "TEST_VALUE" -ReadBandwidth "TEST_VALUE" -WritesPerSec "TEST_VALUE" -WriteLatencyUs "TEST_VALUE" -WriteBandwidth "TEST_VALUE"
            #$NewObject | Should -BeOfType Performance
            #$NewObject.property | Should -Be 0
        }
    }
}
