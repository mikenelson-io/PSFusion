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

.PARAMETER Region
No description available.
.OUTPUTS

AvailabilityZoneAllOf<PSCustomObject>
#>

function Initialize-PSFAvailabilityZoneAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Region}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFAvailabilityZoneAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "region" = ${Region}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AvailabilityZoneAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to AvailabilityZoneAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AvailabilityZoneAllOf<PSCustomObject>
#>
function ConvertFrom-PSFJsonToAvailabilityZoneAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFAvailabilityZoneAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFAvailabilityZoneAllOf
        $AllProperties = ("region")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "region"))) { #optional property not found
            $Region = $null
        } else {
            $Region = $JsonParameters.PSobject.Properties["region"].value
        }

        $PSO = [PSCustomObject]@{
            "region" = ${Region}
        }

        return $PSO
    }

}
