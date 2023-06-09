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

.PARAMETER Name
The name of the resource, supplied by the user at creation, and used in the URI path of a resource.
.PARAMETER DisplayName
The display name of the resource.
.PARAMETER Size
The size of the volume to provision
.PARAMETER StorageClass
The name of the Storage Class
.PARAMETER PlacementGroup
The name of the Placement Group
.PARAMETER ProtectionPolicy
The name of the Protection Policy
.PARAMETER SourceLink
The link to copy data from. Supported sources - VolumeSnapshot, Volume
.OUTPUTS

VolumePost<PSCustomObject>
#>

function Initialize-PSFVolumePost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Size},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${StorageClass},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PlacementGroup},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProtectionPolicy},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceLink}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFVolumePost' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($Size -and $Size -lt 1048576) {
          throw "invalid value for 'Size', must be greater than or equal to 1048576."
        }

        if ($null -eq $StorageClass) {
            throw "invalid value for 'StorageClass', 'StorageClass' cannot be null."
        }

        if ($null -eq $PlacementGroup) {
            throw "invalid value for 'PlacementGroup', 'PlacementGroup' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "display_name" = ${DisplayName}
            "size" = ${Size}
            "storage_class" = ${StorageClass}
            "placement_group" = ${PlacementGroup}
            "protection_policy" = ${ProtectionPolicy}
            "source_link" = ${SourceLink}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VolumePost<PSCustomObject>

.DESCRIPTION

Convert from JSON to VolumePost<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VolumePost<PSCustomObject>
#>
function ConvertFrom-PSFJsonToVolumePost {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFVolumePost' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFVolumePost
        $AllProperties = ("name", "display_name", "size", "storage_class", "placement_group", "protection_policy", "source_link")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "storage_class"))) {
            throw "Error! JSON cannot be serialized due to the required property 'storage_class' missing."
        } else {
            $StorageClass = $JsonParameters.PSobject.Properties["storage_class"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "placement_group"))) {
            throw "Error! JSON cannot be serialized due to the required property 'placement_group' missing."
        } else {
            $PlacementGroup = $JsonParameters.PSobject.Properties["placement_group"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "display_name"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["display_name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "size"))) { #optional property not found
            $Size = $null
        } else {
            $Size = $JsonParameters.PSobject.Properties["size"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "protection_policy"))) { #optional property not found
            $ProtectionPolicy = $null
        } else {
            $ProtectionPolicy = $JsonParameters.PSobject.Properties["protection_policy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source_link"))) { #optional property not found
            $SourceLink = $null
        } else {
            $SourceLink = $JsonParameters.PSobject.Properties["source_link"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "display_name" = ${DisplayName}
            "size" = ${Size}
            "storage_class" = ${StorageClass}
            "placement_group" = ${PlacementGroup}
            "protection_policy" = ${ProtectionPolicy}
            "source_link" = ${SourceLink}
        }

        return $PSO
    }

}

