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

.PARAMETER Name
The name of the resource, supplied by the user at creation, and used in the URI path of a resource.
.PARAMETER DisplayName
The display name of the resource.
.PARAMETER HardwareTypes
List of Hardware Types supported for this Storage Service
.OUTPUTS

StorageServicePost<PSCustomObject>
#>

function Initialize-PSFStorageServicePost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${HardwareTypes}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFStorageServicePost' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $HardwareTypes) {
            throw "invalid value for 'HardwareTypes', 'HardwareTypes' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "display_name" = ${DisplayName}
            "hardware_types" = ${HardwareTypes}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StorageServicePost<PSCustomObject>

.DESCRIPTION

Convert from JSON to StorageServicePost<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StorageServicePost<PSCustomObject>
#>
function ConvertFrom-PSFJsonToStorageServicePost {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFStorageServicePost' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFStorageServicePost
        $AllProperties = ("name", "display_name", "hardware_types")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hardware_types"))) {
            throw "Error! JSON cannot be serialized due to the required property 'hardware_types' missing."
        } else {
            $HardwareTypes = $JsonParameters.PSobject.Properties["hardware_types"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "display_name"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["display_name"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "display_name" = ${DisplayName}
            "hardware_types" = ${HardwareTypes}
        }

        return $PSO
    }

}

