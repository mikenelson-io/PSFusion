#
# Pure Fusion API
# Pure Fusion is fully API-driven. Most APIs which change the system (POST, PATCH, DELETE) return an Operation in status ""Pending"" or ""Running"". You can poll (GET) the operation to check its status, waiting for it to change to ""Succeeded"" or ""Failed"". 
# Version: 1.1
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSFusion' -name 'PSFRPO' {
    Context 'PSFRPO' {
        It 'Initialize-PSFRPO' {
            # a simple test to create an object
            #$NewObject = Initialize-PSFRPO -Type "TEST_VALUE" -Rpo "TEST_VALUE"
            #$NewObject | Should -BeOfType RPO
            #$NewObject.property | Should -Be 0
        }
    }
}
