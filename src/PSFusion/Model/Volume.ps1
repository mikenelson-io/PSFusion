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
.PARAMETER Size
The size of the volume
.PARAMETER Tenant
No description available.
.PARAMETER TenantSpace
No description available.
.PARAMETER StorageClass
No description available.
.PARAMETER ProtectionPolicy
No description available.
.PARAMETER PlacementGroup
No description available.
.PARAMETER Array
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER SourceVolumeSnapshot
No description available.
.PARAMETER Source
No description available.
.PARAMETER HostAccessPolicies
No description available.
.PARAMETER SerialNumber
Volume Serial Numbers, aka LUN Serial Numbers. This will be visible to initiators that connect to the volume.
.PARAMETER Target
No description available.
.PARAMETER TimeRemaining
The amount of time left until the destroyed volume is permanently eradicated. Only valid when destroyed is true. Measured in milliseconds. Before the time_remaining period has elapsed, the destroyed volume can be recovered by setting destroyed=false. An expired but not yet eradicated volume has destroyed=true and time_remaining=0.
.PARAMETER Destroyed
True if the volume has been destroyed and is pending eradication. The time_remaining value displays the amount of time left until the destroyed volume is permanently eradicated. Before the time_remaining period has elapsed, the destroyed volume can be recovered by setting destroyed=false. Once the time_remaining period has elapsed, the volume is permanently eradicated and can no longer be recovered.
.OUTPUTS

Volume<PSCustomObject>
#>

function Initialize-PSFVolume {
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
        [System.Nullable[Int64]]
        ${Size},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Tenant},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TenantSpace},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${StorageClass},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ProtectionPolicy},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PlacementGroup},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Array},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${CreatedAt},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SourceVolumeSnapshot},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Source},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${HostAccessPolicies},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SerialNumber},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Target},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${TimeRemaining},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Destroyed}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFVolume' | Write-Debug
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

        if ($Size -and $Size -lt 1048576) {
          throw "invalid value for 'Size', must be greater than or equal to 1048576."
        }

        if ($null -eq $Tenant) {
            throw "invalid value for 'Tenant', 'Tenant' cannot be null."
        }

        if ($null -eq $TenantSpace) {
            throw "invalid value for 'TenantSpace', 'TenantSpace' cannot be null."
        }

        if ($null -eq $StorageClass) {
            throw "invalid value for 'StorageClass', 'StorageClass' cannot be null."
        }

        if ($null -eq $SerialNumber) {
            throw "invalid value for 'SerialNumber', 'SerialNumber' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "self_link" = ${SelfLink}
            "display_name" = ${DisplayName}
            "size" = ${Size}
            "tenant" = ${Tenant}
            "tenant_space" = ${TenantSpace}
            "storage_class" = ${StorageClass}
            "protection_policy" = ${ProtectionPolicy}
            "placement_group" = ${PlacementGroup}
            "array" = ${Array}
            "created_at" = ${CreatedAt}
            "source_volume_snapshot" = ${SourceVolumeSnapshot}
            "source" = ${Source}
            "host_access_policies" = ${HostAccessPolicies}
            "serial_number" = ${SerialNumber}
            "target" = ${Target}
            "time_remaining" = ${TimeRemaining}
            "destroyed" = ${Destroyed}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Volume<PSCustomObject>

.DESCRIPTION

Convert from JSON to Volume<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Volume<PSCustomObject>
#>
function ConvertFrom-PSFJsonToVolume {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFVolume' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFVolume
        $AllProperties = ("id", "name", "self_link", "display_name", "size", "tenant", "tenant_space", "storage_class", "protection_policy", "placement_group", "array", "created_at", "source_volume_snapshot", "source", "host_access_policies", "serial_number", "target", "time_remaining", "destroyed")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tenant"))) {
            throw "Error! JSON cannot be serialized due to the required property 'tenant' missing."
        } else {
            $Tenant = $JsonParameters.PSobject.Properties["tenant"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tenant_space"))) {
            throw "Error! JSON cannot be serialized due to the required property 'tenant_space' missing."
        } else {
            $TenantSpace = $JsonParameters.PSobject.Properties["tenant_space"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "storage_class"))) {
            throw "Error! JSON cannot be serialized due to the required property 'storage_class' missing."
        } else {
            $StorageClass = $JsonParameters.PSobject.Properties["storage_class"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "serial_number"))) {
            throw "Error! JSON cannot be serialized due to the required property 'serial_number' missing."
        } else {
            $SerialNumber = $JsonParameters.PSobject.Properties["serial_number"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "placement_group"))) { #optional property not found
            $PlacementGroup = $null
        } else {
            $PlacementGroup = $JsonParameters.PSobject.Properties["placement_group"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "array"))) { #optional property not found
            $Array = $null
        } else {
            $Array = $JsonParameters.PSobject.Properties["array"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created_at"))) { #optional property not found
            $CreatedAt = $null
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["created_at"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source_volume_snapshot"))) { #optional property not found
            $SourceVolumeSnapshot = $null
        } else {
            $SourceVolumeSnapshot = $JsonParameters.PSobject.Properties["source_volume_snapshot"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source"))) { #optional property not found
            $Source = $null
        } else {
            $Source = $JsonParameters.PSobject.Properties["source"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "host_access_policies"))) { #optional property not found
            $HostAccessPolicies = $null
        } else {
            $HostAccessPolicies = $JsonParameters.PSobject.Properties["host_access_policies"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "target"))) { #optional property not found
            $Target = $null
        } else {
            $Target = $JsonParameters.PSobject.Properties["target"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "time_remaining"))) { #optional property not found
            $TimeRemaining = $null
        } else {
            $TimeRemaining = $JsonParameters.PSobject.Properties["time_remaining"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "destroyed"))) { #optional property not found
            $Destroyed = $null
        } else {
            $Destroyed = $JsonParameters.PSobject.Properties["destroyed"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "self_link" = ${SelfLink}
            "display_name" = ${DisplayName}
            "size" = ${Size}
            "tenant" = ${Tenant}
            "tenant_space" = ${TenantSpace}
            "storage_class" = ${StorageClass}
            "protection_policy" = ${ProtectionPolicy}
            "placement_group" = ${PlacementGroup}
            "array" = ${Array}
            "created_at" = ${CreatedAt}
            "source_volume_snapshot" = ${SourceVolumeSnapshot}
            "source" = ${Source}
            "host_access_policies" = ${HostAccessPolicies}
            "serial_number" = ${SerialNumber}
            "target" = ${Target}
            "time_remaining" = ${TimeRemaining}
            "destroyed" = ${Destroyed}
        }

        return $PSO
    }

}

