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

.PARAMETER SerialNumber
A serial number generated by the system when the volume snapshot is created. The serial number is unique across all arrays.
.PARAMETER VolumeSerialNumber
The serial number of the volume this volume snapshot is created from.
.PARAMETER CreatedAt
The volume snapshot creation time. Measured in milliseconds since the UNIX epoch.
.PARAMETER ConsistencyId
Volume snapshots with the same consistency_id are crash consistency.
.PARAMETER Destroyed
True if the volume snapshot has been destroyed and is pending eradication. The time_remaining value displays the amount of time left until the destroyed volume snapshot is permanently eradicated.
.PARAMETER TimeRemaining
The amount of time left until the destroyed volume snapshot is permanently eradicated. Only valid when destroyed is true. Measured in milliseconds. An expired but not yet eradicated volume snapshot has destroyed=true and time_remaining=0.
.PARAMETER Size
The virtual size of the volume snapshot. Measured in bytes.
.PARAMETER Tenant
No description available.
.PARAMETER TenantSpace
No description available.
.PARAMETER Snapshot
No description available.
.PARAMETER Volume
No description available.
.PARAMETER ProtectionPolicy
No description available.
.PARAMETER PlacementGroup
No description available.
.OUTPUTS

VolumeSnapshotAllOf<PSCustomObject>
#>

function Initialize-PSFVolumeSnapshotAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SerialNumber},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VolumeSerialNumber},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${CreatedAt},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConsistencyId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Destroyed},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${TimeRemaining},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${Size},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Tenant},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TenantSpace},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Snapshot},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Volume},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ProtectionPolicy},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PlacementGroup}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFVolumeSnapshotAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $SerialNumber) {
            throw "invalid value for 'SerialNumber', 'SerialNumber' cannot be null."
        }

        if ($null -eq $VolumeSerialNumber) {
            throw "invalid value for 'VolumeSerialNumber', 'VolumeSerialNumber' cannot be null."
        }

        if ($null -eq $CreatedAt) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($null -eq $ConsistencyId) {
            throw "invalid value for 'ConsistencyId', 'ConsistencyId' cannot be null."
        }

        if ($null -eq $Size) {
            throw "invalid value for 'Size', 'Size' cannot be null."
        }

        if ($Size -lt 1048576) {
          throw "invalid value for 'Size', must be greater than or equal to 1048576."
        }

        if ($null -eq $Tenant) {
            throw "invalid value for 'Tenant', 'Tenant' cannot be null."
        }

        if ($null -eq $TenantSpace) {
            throw "invalid value for 'TenantSpace', 'TenantSpace' cannot be null."
        }

        if ($null -eq $Snapshot) {
            throw "invalid value for 'Snapshot', 'Snapshot' cannot be null."
        }

        if ($null -eq $PlacementGroup) {
            throw "invalid value for 'PlacementGroup', 'PlacementGroup' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "serial_number" = ${SerialNumber}
            "volume_serial_number" = ${VolumeSerialNumber}
            "created_at" = ${CreatedAt}
            "consistency_id" = ${ConsistencyId}
            "destroyed" = ${Destroyed}
            "time_remaining" = ${TimeRemaining}
            "size" = ${Size}
            "tenant" = ${Tenant}
            "tenant_space" = ${TenantSpace}
            "snapshot" = ${Snapshot}
            "volume" = ${Volume}
            "protection_policy" = ${ProtectionPolicy}
            "placement_group" = ${PlacementGroup}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VolumeSnapshotAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to VolumeSnapshotAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VolumeSnapshotAllOf<PSCustomObject>
#>
function ConvertFrom-PSFJsonToVolumeSnapshotAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFVolumeSnapshotAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFVolumeSnapshotAllOf
        $AllProperties = ("serial_number", "volume_serial_number", "created_at", "consistency_id", "destroyed", "time_remaining", "size", "tenant", "tenant_space", "snapshot", "volume", "protection_policy", "placement_group")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'serial_number' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "serial_number"))) {
            throw "Error! JSON cannot be serialized due to the required property 'serial_number' missing."
        } else {
            $SerialNumber = $JsonParameters.PSobject.Properties["serial_number"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "volume_serial_number"))) {
            throw "Error! JSON cannot be serialized due to the required property 'volume_serial_number' missing."
        } else {
            $VolumeSerialNumber = $JsonParameters.PSobject.Properties["volume_serial_number"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created_at"))) {
            throw "Error! JSON cannot be serialized due to the required property 'created_at' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["created_at"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "consistency_id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'consistency_id' missing."
        } else {
            $ConsistencyId = $JsonParameters.PSobject.Properties["consistency_id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "size"))) {
            throw "Error! JSON cannot be serialized due to the required property 'size' missing."
        } else {
            $Size = $JsonParameters.PSobject.Properties["size"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "snapshot"))) {
            throw "Error! JSON cannot be serialized due to the required property 'snapshot' missing."
        } else {
            $Snapshot = $JsonParameters.PSobject.Properties["snapshot"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "placement_group"))) {
            throw "Error! JSON cannot be serialized due to the required property 'placement_group' missing."
        } else {
            $PlacementGroup = $JsonParameters.PSobject.Properties["placement_group"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "destroyed"))) { #optional property not found
            $Destroyed = $null
        } else {
            $Destroyed = $JsonParameters.PSobject.Properties["destroyed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "time_remaining"))) { #optional property not found
            $TimeRemaining = $null
        } else {
            $TimeRemaining = $JsonParameters.PSobject.Properties["time_remaining"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "volume"))) { #optional property not found
            $Volume = $null
        } else {
            $Volume = $JsonParameters.PSobject.Properties["volume"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "protection_policy"))) { #optional property not found
            $ProtectionPolicy = $null
        } else {
            $ProtectionPolicy = $JsonParameters.PSobject.Properties["protection_policy"].value
        }

        $PSO = [PSCustomObject]@{
            "serial_number" = ${SerialNumber}
            "volume_serial_number" = ${VolumeSerialNumber}
            "created_at" = ${CreatedAt}
            "consistency_id" = ${ConsistencyId}
            "destroyed" = ${Destroyed}
            "time_remaining" = ${TimeRemaining}
            "size" = ${Size}
            "tenant" = ${Tenant}
            "tenant_space" = ${TenantSpace}
            "snapshot" = ${Snapshot}
            "volume" = ${Volume}
            "protection_policy" = ${ProtectionPolicy}
            "placement_group" = ${PlacementGroup}
        }

        return $PSO
    }

}

