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

.PARAMETER Pure1meta
No description available.
.OUTPUTS

PlacementRecommendationIncludedArrayAllOf<PSCustomObject>
#>

function Initialize-PSFPlacementRecommendationIncludedArrayAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Pure1meta}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFPlacementRecommendationIncludedArrayAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "pure1meta" = ${Pure1meta}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PlacementRecommendationIncludedArrayAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to PlacementRecommendationIncludedArrayAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PlacementRecommendationIncludedArrayAllOf<PSCustomObject>
#>
function ConvertFrom-PSFJsonToPlacementRecommendationIncludedArrayAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFPlacementRecommendationIncludedArrayAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFPlacementRecommendationIncludedArrayAllOf
        $AllProperties = ("pure1meta")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pure1meta"))) { #optional property not found
            $Pure1meta = $null
        } else {
            $Pure1meta = $JsonParameters.PSobject.Properties["pure1meta"].value
        }

        $PSO = [PSCustomObject]@{
            "pure1meta" = ${Pure1meta}
        }

        return $PSO
    }

}
