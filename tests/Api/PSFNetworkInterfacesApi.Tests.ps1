#
# Pure Fusion API
# Pure Fusion is fully API-driven. Most APIs which change the system (POST, PATCH, DELETE) return an Operation in status ""Pending"" or ""Running"". You can poll (GET) the operation to check its status, waiting for it to change to ""Succeeded"" or ""Failed"". 
# Version: 1.1
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSFusion' -name 'PSFPSFNetworkInterfacesApi' {
    Context 'Get-PSFNetworkInterface' {
        It 'Test Get-PSFNetworkInterface' {
            #$TestResult = Get-PSFNetworkInterface -RegionName "TEST_VALUE" -AvailabilityZoneName "TEST_VALUE" -ArrayName "TEST_VALUE" -NetIntfName "TEST_VALUE" -XRequestID "TEST_VALUE" -Authorization "TEST_VALUE" -XCorrelationID "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-PSFNetworkInterfaceById' {
        It 'Test Get-PSFNetworkInterfaceById' {
            #$TestResult = Get-PSFNetworkInterfaceById -NetworkInterfaceId "TEST_VALUE" -XRequestID "TEST_VALUE" -Authorization "TEST_VALUE" -XCorrelationID "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-PSFListNetworkInterfaces' {
        It 'Test Invoke-PSFListNetworkInterfaces' {
            #$TestResult = Invoke-PSFListNetworkInterfaces -RegionName "TEST_VALUE" -AvailabilityZoneName "TEST_VALUE" -ArrayName "TEST_VALUE" -XRequestID "TEST_VALUE" -Authorization "TEST_VALUE" -XCorrelationID "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Update-PSFNetworkInterface' {
        It 'Test Update-PSFNetworkInterface' {
            #$TestResult = Update-PSFNetworkInterface -RegionName "TEST_VALUE" -AvailabilityZoneName "TEST_VALUE" -ArrayName "TEST_VALUE" -NetIntfName "TEST_VALUE" -NetworkInterfacePatch "TEST_VALUE" -XRequestID "TEST_VALUE" -Authorization "TEST_VALUE" -XCorrelationID "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

}