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

.PARAMETER Reason
Reason Placement Group cannot be placed on this array
.OUTPUTS

PlacementRecommendationExcludedArrayAllOf<PSCustomObject>
#>

function Initialize-PSFPlacementRecommendationExcludedArrayAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Reason}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFPlacementRecommendationExcludedArrayAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "reason" = ${Reason}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PlacementRecommendationExcludedArrayAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to PlacementRecommendationExcludedArrayAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PlacementRecommendationExcludedArrayAllOf<PSCustomObject>
#>
function ConvertFrom-PSFJsonToPlacementRecommendationExcludedArrayAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFPlacementRecommendationExcludedArrayAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFPlacementRecommendationExcludedArrayAllOf
        $AllProperties = ("reason")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reason"))) { #optional property not found
            $Reason = $null
        } else {
            $Reason = $JsonParameters.PSobject.Properties["reason"].value
        }

        $PSO = [PSCustomObject]@{
            "reason" = ${Reason}
        }

        return $PSO
    }

}
