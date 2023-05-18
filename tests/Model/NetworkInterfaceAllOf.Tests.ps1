#
# Pure Fusion API
# Pure Fusion is fully API-driven. Most APIs which change the system (POST, PATCH, DELETE) return an Operation in status ""Pending"" or ""Running"". You can poll (GET) the operation to check its status, waiting for it to change to ""Succeeded"" or ""Failed"". 
# Version: 1.1
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSFusion' -name 'PSFNetworkInterfaceAllOf' {
    Context 'PSFNetworkInterfaceAllOf' {
        It 'Initialize-PSFNetworkInterfaceAllOf' {
            # a simple test to create an object
            #$NewObject = Initialize-PSFNetworkInterfaceAllOf -Region "TEST_VALUE" -AvailabilityZone "TEST_VALUE" -Array "TEST_VALUE" -InterfaceType "TEST_VALUE" -Eth "TEST_VALUE" -Fc "TEST_VALUE" -Services "TEST_VALUE" -Enabled "TEST_VALUE" -NetworkInterfaceGroup "TEST_VALUE" -MaxSpeed "TEST_VALUE"
            #$NewObject | Should -BeOfType NetworkInterfaceAllOf
            #$NewObject.property | Should -Be 0
        }
    }
}
