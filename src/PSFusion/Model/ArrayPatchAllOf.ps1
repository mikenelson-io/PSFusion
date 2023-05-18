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

.PARAMETER HostName
No description available.
.PARAMETER MaintenanceMode
No description available.
.PARAMETER UnavailableMode
No description available.
.OUTPUTS

ArrayPatchAllOf<PSCustomObject>
#>

function Initialize-PSFArrayPatchAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${HostName},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${MaintenanceMode},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${UnavailableMode}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFArrayPatchAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "host_name" = ${HostName}
            "maintenance_mode" = ${MaintenanceMode}
            "unavailable_mode" = ${UnavailableMode}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ArrayPatchAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to ArrayPatchAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ArrayPatchAllOf<PSCustomObject>
#>
function ConvertFrom-PSFJsonToArrayPatchAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFArrayPatchAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFArrayPatchAllOf
        $AllProperties = ("host_name", "maintenance_mode", "unavailable_mode")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "host_name"))) { #optional property not found
            $HostName = $null
        } else {
            $HostName = $JsonParameters.PSobject.Properties["host_name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maintenance_mode"))) { #optional property not found
            $MaintenanceMode = $null
        } else {
            $MaintenanceMode = $JsonParameters.PSobject.Properties["maintenance_mode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "unavailable_mode"))) { #optional property not found
            $UnavailableMode = $null
        } else {
            $UnavailableMode = $JsonParameters.PSobject.Properties["unavailable_mode"].value
        }

        $PSO = [PSCustomObject]@{
            "host_name" = ${HostName}
            "maintenance_mode" = ${MaintenanceMode}
            "unavailable_mode" = ${UnavailableMode}
        }

        return $PSO
    }

}
