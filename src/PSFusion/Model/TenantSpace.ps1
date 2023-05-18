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

.PARAMETER Id
An immutable, globally unique, system generated identifier.
.PARAMETER Name
The name of the resource, supplied by the user at creation, and used in the URI path of a resource.
.PARAMETER SelfLink
The URI of the resource.
.PARAMETER DisplayName
The display name of the resource.
.PARAMETER Tenant
No description available.
.PARAMETER VolumesLink
No description available.
.PARAMETER SnapshotsLink
No description available.
.PARAMETER PlacementGroupsLink
No description available.
.OUTPUTS

TenantSpace<PSCustomObject>
#>

function Initialize-PSFTenantSpace {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SelfLink},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Tenant},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VolumesLink},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SnapshotsLink},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PlacementGroupsLink}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFTenantSpace' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $SelfLink) {
            throw "invalid value for 'SelfLink', 'SelfLink' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "self_link" = ${SelfLink}
            "display_name" = ${DisplayName}
            "tenant" = ${Tenant}
            "volumes_link" = ${VolumesLink}
            "snapshots_link" = ${SnapshotsLink}
            "placement_groups_link" = ${PlacementGroupsLink}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TenantSpace<PSCustomObject>

.DESCRIPTION

Convert from JSON to TenantSpace<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TenantSpace<PSCustomObject>
#>
function ConvertFrom-PSFJsonToTenantSpace {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFTenantSpace' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFTenantSpace
        $AllProperties = ("id", "name", "self_link", "display_name", "tenant", "volumes_link", "snapshots_link", "placement_groups_link")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self_link"))) {
            throw "Error! JSON cannot be serialized due to the required property 'self_link' missing."
        } else {
            $SelfLink = $JsonParameters.PSobject.Properties["self_link"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "display_name"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["display_name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tenant"))) { #optional property not found
            $Tenant = $null
        } else {
            $Tenant = $JsonParameters.PSobject.Properties["tenant"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "volumes_link"))) { #optional property not found
            $VolumesLink = $null
        } else {
            $VolumesLink = $JsonParameters.PSobject.Properties["volumes_link"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "snapshots_link"))) { #optional property not found
            $SnapshotsLink = $null
        } else {
            $SnapshotsLink = $JsonParameters.PSobject.Properties["snapshots_link"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "placement_groups_link"))) { #optional property not found
            $PlacementGroupsLink = $null
        } else {
            $PlacementGroupsLink = $JsonParameters.PSobject.Properties["placement_groups_link"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "self_link" = ${SelfLink}
            "display_name" = ${DisplayName}
            "tenant" = ${Tenant}
            "volumes_link" = ${VolumesLink}
            "snapshots_link" = ${SnapshotsLink}
            "placement_groups_link" = ${PlacementGroupsLink}
        }

        return $PSO
    }

}

