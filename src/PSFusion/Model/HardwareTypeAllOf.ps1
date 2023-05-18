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

.PARAMETER ArrayType
No description available.
.PARAMETER MediaType
No description available.
.OUTPUTS

HardwareTypeAllOf<PSCustomObject>
#>

function Initialize-PSFHardwareTypeAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ArrayType},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MediaType}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFHardwareTypeAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "array_type" = ${ArrayType}
            "media_type" = ${MediaType}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HardwareTypeAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to HardwareTypeAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HardwareTypeAllOf<PSCustomObject>
#>
function ConvertFrom-PSFJsonToHardwareTypeAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFHardwareTypeAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFHardwareTypeAllOf
        $AllProperties = ("array_type", "media_type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "array_type"))) { #optional property not found
            $ArrayType = $null
        } else {
            $ArrayType = $JsonParameters.PSobject.Properties["array_type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "media_type"))) { #optional property not found
            $MediaType = $null
        } else {
            $MediaType = $JsonParameters.PSobject.Properties["media_type"].value
        }

        $PSO = [PSCustomObject]@{
            "array_type" = ${ArrayType}
            "media_type" = ${MediaType}
        }

        return $PSO
    }

}

