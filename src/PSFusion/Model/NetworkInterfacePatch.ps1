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

(Provider)

.PARAMETER DisplayName
No description available.
.PARAMETER Eth
No description available.
.PARAMETER Enabled
No description available.
.PARAMETER NetworkInterfaceGroup
No description available.
.OUTPUTS

NetworkInterfacePatch<PSCustomObject>
#>

function Initialize-PSFNetworkInterfacePatch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DisplayName},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Eth},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Enabled},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${NetworkInterfaceGroup}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFNetworkInterfacePatch' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "display_name" = ${DisplayName}
            "eth" = ${Eth}
            "enabled" = ${Enabled}
            "network_interface_group" = ${NetworkInterfaceGroup}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NetworkInterfacePatch<PSCustomObject>

.DESCRIPTION

Convert from JSON to NetworkInterfacePatch<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NetworkInterfacePatch<PSCustomObject>
#>
function ConvertFrom-PSFJsonToNetworkInterfacePatch {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFNetworkInterfacePatch' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFNetworkInterfacePatch
        $AllProperties = ("display_name", "eth", "enabled", "network_interface_group")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "eth"))) { #optional property not found
            $Eth = $null
        } else {
            $Eth = $JsonParameters.PSobject.Properties["eth"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) { #optional property not found
            $Enabled = $null
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "network_interface_group"))) { #optional property not found
            $NetworkInterfaceGroup = $null
        } else {
            $NetworkInterfaceGroup = $JsonParameters.PSobject.Properties["network_interface_group"].value
        }

        $PSO = [PSCustomObject]@{
            "display_name" = ${DisplayName}
            "eth" = ${Eth}
            "enabled" = ${Enabled}
            "network_interface_group" = ${NetworkInterfaceGroup}
        }

        return $PSO
    }

}

