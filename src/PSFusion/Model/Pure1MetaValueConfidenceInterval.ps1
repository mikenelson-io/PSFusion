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

.PARAMETER Upper
No description available.
.PARAMETER Lower
No description available.
.OUTPUTS

Pure1MetaValueConfidenceInterval<PSCustomObject>
#>

function Initialize-PSFPure1MetaValueConfidenceInterval {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${Upper},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${Lower}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFPure1MetaValueConfidenceInterval' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "upper" = ${Upper}
            "lower" = ${Lower}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Pure1MetaValueConfidenceInterval<PSCustomObject>

.DESCRIPTION

Convert from JSON to Pure1MetaValueConfidenceInterval<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Pure1MetaValueConfidenceInterval<PSCustomObject>
#>
function ConvertFrom-PSFJsonToPure1MetaValueConfidenceInterval {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFPure1MetaValueConfidenceInterval' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFPure1MetaValueConfidenceInterval
        $AllProperties = ("upper", "lower")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "upper"))) { #optional property not found
            $Upper = $null
        } else {
            $Upper = $JsonParameters.PSobject.Properties["upper"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lower"))) { #optional property not found
            $Lower = $null
        } else {
            $Lower = $JsonParameters.PSobject.Properties["lower"].value
        }

        $PSO = [PSCustomObject]@{
            "upper" = ${Upper}
            "lower" = ${Lower}
        }

        return $PSO
    }

}

