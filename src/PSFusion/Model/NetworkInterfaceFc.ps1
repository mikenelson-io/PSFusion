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

A Fibre Channel port on an Array

.PARAMETER Wwn
World Wide Name of the specified Fibre Channel port.
.OUTPUTS

NetworkInterfaceFc<PSCustomObject>
#>

function Initialize-PSFNetworkInterfaceFc {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Wwn}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFNetworkInterfaceFc' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "wwn" = ${Wwn}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NetworkInterfaceFc<PSCustomObject>

.DESCRIPTION

Convert from JSON to NetworkInterfaceFc<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NetworkInterfaceFc<PSCustomObject>
#>
function ConvertFrom-PSFJsonToNetworkInterfaceFc {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFNetworkInterfaceFc' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFNetworkInterfaceFc
        $AllProperties = ("wwn")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "wwn"))) { #optional property not found
            $Wwn = $null
        } else {
            $Wwn = $JsonParameters.PSobject.Properties["wwn"].value
        }

        $PSO = [PSCustomObject]@{
            "wwn" = ${Wwn}
        }

        return $PSO
    }

}

