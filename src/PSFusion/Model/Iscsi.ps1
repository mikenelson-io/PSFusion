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

.PARAMETER Iqn
The iSCSI qualified name (IQN) for the target.
.PARAMETER Addresses
The IP addresses for the iSCSI target.
.OUTPUTS

Iscsi<PSCustomObject>
#>

function Initialize-PSFIscsi {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Iqn},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Addresses}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFIscsi' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "iqn" = ${Iqn}
            "addresses" = ${Addresses}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Iscsi<PSCustomObject>

.DESCRIPTION

Convert from JSON to Iscsi<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Iscsi<PSCustomObject>
#>
function ConvertFrom-PSFJsonToIscsi {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFIscsi' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFIscsi
        $AllProperties = ("iqn", "addresses")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "iqn"))) { #optional property not found
            $Iqn = $null
        } else {
            $Iqn = $JsonParameters.PSobject.Properties["iqn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "addresses"))) { #optional property not found
            $Addresses = $null
        } else {
            $Addresses = $JsonParameters.PSobject.Properties["addresses"].value
        }

        $PSO = [PSCustomObject]@{
            "iqn" = ${Iqn}
            "addresses" = ${Addresses}
        }

        return $PSO
    }

}

