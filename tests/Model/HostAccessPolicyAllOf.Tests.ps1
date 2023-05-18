#
# Pure Fusion API
# Pure Fusion is fully API-driven. Most APIs which change the system (POST, PATCH, DELETE) return an Operation in status ""Pending"" or ""Running"". You can poll (GET) the operation to check its status, waiting for it to change to ""Succeeded"" or ""Failed"". 
# Version: 1.1
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSFusion' -name 'PSFHostAccessPolicyAllOf' {
    Context 'PSFHostAccessPolicyAllOf' {
        It 'Initialize-PSFHostAccessPolicyAllOf' {
            # a simple test to create an object
            #$NewObject = Initialize-PSFHostAccessPolicyAllOf -Iqn "TEST_VALUE" -Personality "TEST_VALUE"
            #$NewObject | Should -BeOfType HostAccessPolicyAllOf
            #$NewObject.property | Should -Be 0
        }
    }
}