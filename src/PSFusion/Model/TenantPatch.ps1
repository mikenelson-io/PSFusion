#
# Pure Fusion API
# Pure Fusion is fully API-driven. Most APIs which change the system (POST, PATCH, DELETE) return an Operation in status ""Pending"" or ""Running"". You can poll (GET) the operation to check its status, waiting for it to change to ""Succeeded"" or ""Failed"". 
# Version: 1.1
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER DisplayName
No description available.
.OUTPUTS

TenantPatch<PSCustomObject>
#>

function Initialize-PSFTenantPatch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DisplayName}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFTenantPatch' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "display_name" = ${DisplayName}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TenantPatch<PSCustomObject>

.DESCRIPTION

Convert from JSON to TenantPatch<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TenantPatch<PSCustomObject>
#>
function ConvertFrom-PSFJsonToTenantPatch {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFTenantPatch' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFTenantPatch
        $AllProperties = ("display_name")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "display_name"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["display_name"].value
        }

        $PSO = [PSCustomObject]@{
            "display_name" = ${DisplayName}
        }

        return $PSO
    }

}

