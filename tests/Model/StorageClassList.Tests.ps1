#
# Pure Fusion API
# Pure Fusion is fully API-driven. Most APIs which change the system (POST, PATCH, DELETE) return an Operation in status ""Pending"" or ""Running"". You can poll (GET) the operation to check its status, waiting for it to change to ""Succeeded"" or ""Failed"". 
# Version: 1.1
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSFusion' -name 'PSFStorageClassList' {
    Context 'PSFStorageClassList' {
        It 'Initialize-PSFStorageClassList' {
            # a simple test to create an object
            #$NewObject = Initialize-PSFStorageClassList -Count "TEST_VALUE" -MoreItemsRemaining "TEST_VALUE" -Items "TEST_VALUE"
            #$NewObject | Should -BeOfType StorageClassList
            #$NewObject.property | Should -Be 0
        }
    }
}
