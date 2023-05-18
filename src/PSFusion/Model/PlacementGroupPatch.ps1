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
.PARAMETER Array
No description available.
.OUTPUTS

PlacementGroupPatch<PSCustomObject>
#>

function Initialize-PSFPlacementGroupPatch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DisplayName},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Array}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFPlacementGroupPatch' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "display_name" = ${DisplayName}
            "array" = ${Array}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PlacementGroupPatch<PSCustomObject>

.DESCRIPTION

Convert from JSON to PlacementGroupPatch<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PlacementGroupPatch<PSCustomObject>
#>
function ConvertFrom-PSFJsonToPlacementGroupPatch {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFPlacementGroupPatch' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFPlacementGroupPatch
        $AllProperties = ("display_name", "array")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "array"))) { #optional property not found
            $Array = $null
        } else {
            $Array = $JsonParameters.PSobject.Properties["array"].value
        }

        $PSO = [PSCustomObject]@{
            "display_name" = ${DisplayName}
            "array" = ${Array}
        }

        return $PSO
    }

}
