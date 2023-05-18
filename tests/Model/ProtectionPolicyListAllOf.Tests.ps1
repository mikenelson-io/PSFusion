#
# Pure Fusion API
# Pure Fusion is fully API-driven. Most APIs which change the system (POST, PATCH, DELETE) return an Operation in status ""Pending"" or ""Running"". You can poll (GET) the operation to check its status, waiting for it to change to ""Succeeded"" or ""Failed"". 
# Version: 1.1
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSFusion' -name 'PSFProtectionPolicyListAllOf' {
    Context 'PSFProtectionPolicyListAllOf' {
        It 'Initialize-PSFProtectionPolicyListAllOf' {
            # a simple test to create an object
            #$NewObject = Initialize-PSFProtectionPolicyListAllOf -Items "TEST_VALUE"
            #$NewObject | Should -BeOfType ProtectionPolicyListAllOf
            #$NewObject.property | Should -Be 0
        }
    }
}
