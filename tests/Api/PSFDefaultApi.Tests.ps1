#
# Pure Fusion API
# Pure Fusion is fully API-driven. Most APIs which change the system (POST, PATCH, DELETE) return an Operation in status ""Pending"" or ""Running"". You can poll (GET) the operation to check its status, waiting for it to change to ""Succeeded"" or ""Failed"". 
# Version: 1.1
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSFusion' -name 'PSFPSFDefaultApi' {
    Context 'Get-PSFVersion' {
        It 'Test Get-PSFVersion' {
            #$TestResult = Get-PSFVersion -XRequestID "TEST_VALUE" -Authorization "TEST_VALUE" -XCorrelationID "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

}