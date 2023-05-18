#
# Pure Fusion API
# Pure Fusion is fully API-driven. Most APIs which change the system (POST, PATCH, DELETE) return an Operation in status ""Pending"" or ""Running"". You can poll (GET) the operation to check its status, waiting for it to change to ""Succeeded"" or ""Failed"". 
# Version: 1.1
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'PSFusion' -name 'PSFPSFSnapshotsApi' {
    Context 'New-PSFSnapshot' {
        It 'Test New-PSFSnapshot' {
            #$TestResult = New-PSFSnapshot -TenantName "TEST_VALUE" -TenantSpaceName "TEST_VALUE" -SnapshotPost "TEST_VALUE" -XRequestID "TEST_VALUE" -Authorization "TEST_VALUE" -XCorrelationID "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Remove-PSFSnapshot' {
        It 'Test Remove-PSFSnapshot' {
            #$TestResult = Remove-PSFSnapshot -TenantName "TEST_VALUE" -TenantSpaceName "TEST_VALUE" -SnapshotName "TEST_VALUE" -XRequestID "TEST_VALUE" -Authorization "TEST_VALUE" -XCorrelationID "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-PSFSnapshot' {
        It 'Test Get-PSFSnapshot' {
            #$TestResult = Get-PSFSnapshot -TenantName "TEST_VALUE" -TenantSpaceName "TEST_VALUE" -SnapshotName "TEST_VALUE" -XRequestID "TEST_VALUE" -Authorization "TEST_VALUE" -XCorrelationID "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-PSFSnapshotById' {
        It 'Test Get-PSFSnapshotById' {
            #$TestResult = Get-PSFSnapshotById -SnapshotId "TEST_VALUE" -XRequestID "TEST_VALUE" -Authorization "TEST_VALUE" -XCorrelationID "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-PSFListSnapshots' {
        It 'Test Invoke-PSFListSnapshots' {
            #$TestResult = Invoke-PSFListSnapshots -TenantName "TEST_VALUE" -TenantSpaceName "TEST_VALUE" -XRequestID "TEST_VALUE" -Authorization "TEST_VALUE" -XCorrelationID "TEST_VALUE" -Filter "TEST_VALUE" -Sort "TEST_VALUE" -Limit "TEST_VALUE" -Offset "TEST_VALUE" -Id "TEST_VALUE" -Name "TEST_VALUE" -DisplayName "TEST_VALUE" -ProtectionPolicyId "TEST_VALUE" -Destroyed "TEST_VALUE" -TimeRemaining "TEST_VALUE" -Volume "TEST_VALUE" -PlacementGroup "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-PSFQuerySnapshots' {
        It 'Test Invoke-PSFQuerySnapshots' {
            #$TestResult = Invoke-PSFQuerySnapshots -Filter "TEST_VALUE" -Sort "TEST_VALUE" -Limit "TEST_VALUE" -Offset "TEST_VALUE" -Id "TEST_VALUE" -Name "TEST_VALUE" -DisplayName "TEST_VALUE" -TenantSpaceId "TEST_VALUE" -TenantId "TEST_VALUE" -ProtectionPolicyId "TEST_VALUE" -Destroyed "TEST_VALUE" -TimeRemaining "TEST_VALUE" -XRequestID "TEST_VALUE" -Authorization "TEST_VALUE" -XCorrelationID "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Update-PSFSnapshot' {
        It 'Test Update-PSFSnapshot' {
            #$TestResult = Update-PSFSnapshot -TenantName "TEST_VALUE" -TenantSpaceName "TEST_VALUE" -SnapshotName "TEST_VALUE" -SnapshotPatch "TEST_VALUE" -XRequestID "TEST_VALUE" -Authorization "TEST_VALUE" -XCorrelationID "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

}
