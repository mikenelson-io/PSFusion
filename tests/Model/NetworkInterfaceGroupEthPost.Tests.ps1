#
# Pure Fusion API
# Pure Fusion is fully API-driven. Most APIs which change the system (POST, PATCH, DELETE) return an Operation in status ""Pending"" or ""Running"". You can poll (GET) the operation to check its status, waiting for it to change to ""Succeeded"" or ""Failed"". 
# Version: 1.1
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSFusion' -name 'PSFNetworkInterfaceGroupEthPost' {
    Context 'PSFNetworkInterfaceGroupEthPost' {
        It 'Initialize-PSFNetworkInterfaceGroupEthPost' {
            # a simple test to create an object
            #$NewObject = Initialize-PSFNetworkInterfaceGroupEthPost -Prefix "TEST_VALUE" -Gateway "TEST_VALUE" -Mtu "TEST_VALUE"
            #$NewObject | Should -BeOfType NetworkInterfaceGroupEthPost
            #$NewObject.property | Should -Be 0
        }
    }
}