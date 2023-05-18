#
# Pure Fusion API
# Pure Fusion is fully API-driven. Most APIs which change the system (POST, PATCH, DELETE) return an Operation in status ""Pending"" or ""Running"". You can poll (GET) the operation to check its status, waiting for it to change to ""Succeeded"" or ""Failed"". 
# Version: 1.1
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Gets a specific Volume Snapshot.

.DESCRIPTION

No description available.

.PARAMETER TenantName
The Tenant name

.PARAMETER TenantSpaceName
The Tenant Space name

.PARAMETER SnapshotName
The Snapshot name

.PARAMETER VolumeSnapshotName
The Volume Snapshot name

.PARAMETER XRequestID
The Request ID supplied with the request, used to perform operations idempotently.

.PARAMETER Authorization
Access token (in JWT format) required to use any API endpoint.

.PARAMETER XCorrelationID
The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

VolumeSnapshot
#>
function Get-PSFVolumeSnapshot {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TenantName},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TenantSpaceName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${SnapshotName},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${VolumeSnapshotName},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XRequestID},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Authorization},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCorrelationID},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-PSFVolumeSnapshot' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-PSFConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/tenants/{tenant_name}/tenant-spaces/{tenant_space_name}/snapshots/{snapshot_name}/volume-snapshots/{volume_snapshot_name}'
        if (!$TenantName) {
            throw "Error! The required parameter `TenantName` missing when calling getVolumeSnapshot."
        }
        $LocalVarUri = $LocalVarUri.replace('{tenant_name}', [System.Web.HTTPUtility]::UrlEncode($TenantName))
        if (!$TenantSpaceName) {
            throw "Error! The required parameter `TenantSpaceName` missing when calling getVolumeSnapshot."
        }
        $LocalVarUri = $LocalVarUri.replace('{tenant_space_name}', [System.Web.HTTPUtility]::UrlEncode($TenantSpaceName))
        if (!$SnapshotName) {
            throw "Error! The required parameter `SnapshotName` missing when calling getVolumeSnapshot."
        }
        $LocalVarUri = $LocalVarUri.replace('{snapshot_name}', [System.Web.HTTPUtility]::UrlEncode($SnapshotName))
        if (!$VolumeSnapshotName) {
            throw "Error! The required parameter `VolumeSnapshotName` missing when calling getVolumeSnapshot."
        }
        $LocalVarUri = $LocalVarUri.replace('{volume_snapshot_name}', [System.Web.HTTPUtility]::UrlEncode($VolumeSnapshotName))

        if ($XRequestID) {
            $LocalVarHeaderParameters['X-Request-ID'] = $XRequestID
        }

        if ($Authorization) {
            $LocalVarHeaderParameters['Authorization'] = $Authorization
        }

        if ($XCorrelationID) {
            $LocalVarHeaderParameters['X-Correlation-ID'] = $XCorrelationID
        }

        if ($Configuration["AccessToken"]) {
            $LocalVarHeaderParameters['Authorization'] = "Bearer " + $Configuration["AccessToken"]
            Write-Verbose ("Using Bearer authentication in {0}" -f $MyInvocation.MyCommand)
        }


        $LocalVarResult = Invoke-PSFApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "VolumeSnapshot" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Gets a specific Volume Snapshot.

.DESCRIPTION

No description available.

.PARAMETER VolumeSnapshotId
The Volume Snapshot ID

.PARAMETER XRequestID
The Request ID supplied with the request, used to perform operations idempotently.

.PARAMETER Authorization
Access token (in JWT format) required to use any API endpoint.

.PARAMETER XCorrelationID
The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

VolumeSnapshot
#>
function Get-PSFVolumeSnapshotById {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${VolumeSnapshotId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XRequestID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Authorization},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCorrelationID},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-PSFVolumeSnapshotById' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-PSFConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/resources/volume-snapshots/{volume_snapshot_id}'
        if (!$VolumeSnapshotId) {
            throw "Error! The required parameter `VolumeSnapshotId` missing when calling getVolumeSnapshotById."
        }
        $LocalVarUri = $LocalVarUri.replace('{volume_snapshot_id}', [System.Web.HTTPUtility]::UrlEncode($VolumeSnapshotId))

        if ($XRequestID) {
            $LocalVarHeaderParameters['X-Request-ID'] = $XRequestID
        }

        if ($Authorization) {
            $LocalVarHeaderParameters['Authorization'] = $Authorization
        }

        if ($XCorrelationID) {
            $LocalVarHeaderParameters['X-Correlation-ID'] = $XCorrelationID
        }

        if ($Configuration["AccessToken"]) {
            $LocalVarHeaderParameters['Authorization'] = "Bearer " + $Configuration["AccessToken"]
            Write-Verbose ("Using Bearer authentication in {0}" -f $MyInvocation.MyCommand)
        }


        $LocalVarResult = Invoke-PSFApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "VolumeSnapshot" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Gets a list of all Volume snapshots in a Snapshot.

.DESCRIPTION

No description available.

.PARAMETER TenantName
The Tenant name

.PARAMETER TenantSpaceName
The Tenant Space name

.PARAMETER SnapshotName
The Snapshot name

.PARAMETER XRequestID
The Request ID supplied with the request, used to perform operations idempotently.

.PARAMETER Authorization
Access token (in JWT format) required to use any API endpoint.

.PARAMETER XCorrelationID
The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow.

.PARAMETER Filter
filter should use expression language for filtering

.PARAMETER Sort
Returns the response items in the order specified. Set sort to the field(s) in the response by which to sort. Sorting can be performed on any of the fields in the response, and the items can be sorted in ascending or descending order by these fields. By default, the response items are sorted in ascending order. To sort in descending order, append the minus sign (-) to the field. A single request can be sorted on multiple fields. For example, you can sort all volumes from largest to smallest volume size, and then sort volumes of the same size in ascending order by volume name. To sort on multiple fields, list the fields as comma-separated values. (E.g. ""sort=size-,name"")

.PARAMETER Limit
No description available.

.PARAMETER Offset
No description available.

.PARAMETER Id
No description available.

.PARAMETER Name
No description available.

.PARAMETER DisplayName
No description available.

.PARAMETER Destroyed
No description available.

.PARAMETER VolumeId
No description available.

.PARAMETER TimeRemaining
No description available.

.PARAMETER VolumeSerialNumber
No description available.

.PARAMETER PlacementGroupId
No description available.

.PARAMETER ProtectionPolicyId
No description available.

.PARAMETER CreatedAt
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

VolumeSnapshotList
#>
function Invoke-PSFListVolumeSnapshots {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TenantName},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TenantSpaceName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${SnapshotName},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XRequestID},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Authorization},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCorrelationID},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Filter},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Sort},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Limit},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Offset},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Id},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Name},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${DisplayName},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${Destroyed},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${VolumeId},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int64]]
        ${TimeRemaining},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${VolumeSerialNumber},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${PlacementGroupId},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ProtectionPolicyId},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int64]]
        ${CreatedAt},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-PSFListVolumeSnapshots' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-PSFConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/tenants/{tenant_name}/tenant-spaces/{tenant_space_name}/snapshots/{snapshot_name}/volume-snapshots'
        if (!$TenantName) {
            throw "Error! The required parameter `TenantName` missing when calling listVolumeSnapshots."
        }
        $LocalVarUri = $LocalVarUri.replace('{tenant_name}', [System.Web.HTTPUtility]::UrlEncode($TenantName))
        if (!$TenantSpaceName) {
            throw "Error! The required parameter `TenantSpaceName` missing when calling listVolumeSnapshots."
        }
        $LocalVarUri = $LocalVarUri.replace('{tenant_space_name}', [System.Web.HTTPUtility]::UrlEncode($TenantSpaceName))
        if (!$SnapshotName) {
            throw "Error! The required parameter `SnapshotName` missing when calling listVolumeSnapshots."
        }
        $LocalVarUri = $LocalVarUri.replace('{snapshot_name}', [System.Web.HTTPUtility]::UrlEncode($SnapshotName))

        if ($XRequestID) {
            $LocalVarHeaderParameters['X-Request-ID'] = $XRequestID
        }

        if ($Authorization) {
            $LocalVarHeaderParameters['Authorization'] = $Authorization
        }

        if ($XCorrelationID) {
            $LocalVarHeaderParameters['X-Correlation-ID'] = $XCorrelationID
        }

        if ($Filter) {
            $LocalVarQueryParameters['filter'] = $Filter
        }

        if ($Sort) {
            $LocalVarQueryParameters['sort'] = $Sort
        }

        if ($Limit) {
            $LocalVarQueryParameters['limit'] = $Limit
        }

        if ($Offset) {
            $LocalVarQueryParameters['offset'] = $Offset
        }

        if ($Id) {
            $LocalVarQueryParameters['id'] = $Id
        }

        if ($Name) {
            $LocalVarQueryParameters['name'] = $Name
        }

        if ($DisplayName) {
            $LocalVarQueryParameters['display_name'] = $DisplayName
        }

        if ($Destroyed) {
            $LocalVarQueryParameters['destroyed'] = $Destroyed
        }

        if ($VolumeId) {
            $LocalVarQueryParameters['volume_id'] = $VolumeId
        }

        if ($TimeRemaining) {
            $LocalVarQueryParameters['time_remaining'] = $TimeRemaining
        }

        if ($VolumeSerialNumber) {
            $LocalVarQueryParameters['volume_serial_number'] = $VolumeSerialNumber
        }

        if ($PlacementGroupId) {
            $LocalVarQueryParameters['placement_group_id'] = $PlacementGroupId
        }

        if ($ProtectionPolicyId) {
            $LocalVarQueryParameters['protection_policy_id'] = $ProtectionPolicyId
        }

        if ($CreatedAt) {
            $LocalVarQueryParameters['created_at'] = $CreatedAt
        }

        if ($Configuration["AccessToken"]) {
            $LocalVarHeaderParameters['Authorization'] = "Bearer " + $Configuration["AccessToken"]
            Write-Verbose ("Using Bearer authentication in {0}" -f $MyInvocation.MyCommand)
        }


        $LocalVarResult = Invoke-PSFApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "VolumeSnapshotList" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

(Opt-in) Get all Volume Snapshots in the org. Provide a filter to search for specific volume snapshots.

.DESCRIPTION

No description available.

.PARAMETER Filter
filter should use expression language for filtering

.PARAMETER Sort
Returns the response items in the order specified. Set sort to the field(s) in the response by which to sort. Sorting can be performed on any of the fields in the response, and the items can be sorted in ascending or descending order by these fields. By default, the response items are sorted in ascending order. To sort in descending order, append the minus sign (-) to the field. A single request can be sorted on multiple fields. For example, you can sort all volumes from largest to smallest volume size, and then sort volumes of the same size in ascending order by volume name. To sort on multiple fields, list the fields as comma-separated values. (E.g. ""sort=size-,name"")

.PARAMETER Limit
No description available.

.PARAMETER Offset
No description available.

.PARAMETER Id
No description available.

.PARAMETER Name
No description available.

.PARAMETER DisplayName
No description available.

.PARAMETER TenantSpaceId
No description available.

.PARAMETER TenantId
No description available.

.PARAMETER Destroyed
No description available.

.PARAMETER SnapshotId
No description available.

.PARAMETER VolumeId
No description available.

.PARAMETER TimeRemaining
No description available.

.PARAMETER VolumeSerialNumber
No description available.

.PARAMETER PlacementGroupId
No description available.

.PARAMETER ProtectionPolicyId
No description available.

.PARAMETER CreatedAt
No description available.

.PARAMETER XRequestID
The Request ID supplied with the request, used to perform operations idempotently.

.PARAMETER Authorization
Access token (in JWT format) required to use any API endpoint.

.PARAMETER XCorrelationID
The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

VolumeSnapshotList
#>
function Invoke-PSFQueryVolumeSnapshots {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Filter},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Sort},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Limit},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Offset},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Id},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Name},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${DisplayName},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TenantSpaceId},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TenantId},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${Destroyed},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${SnapshotId},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${VolumeId},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int64]]
        ${TimeRemaining},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${VolumeSerialNumber},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${PlacementGroupId},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ProtectionPolicyId},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int64]]
        ${CreatedAt},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XRequestID},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Authorization},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCorrelationID},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-PSFQueryVolumeSnapshots' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-PSFConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/resources/volume-snapshots'

        if ($XRequestID) {
            $LocalVarHeaderParameters['X-Request-ID'] = $XRequestID
        }

        if ($Authorization) {
            $LocalVarHeaderParameters['Authorization'] = $Authorization
        }

        if ($XCorrelationID) {
            $LocalVarHeaderParameters['X-Correlation-ID'] = $XCorrelationID
        }

        if ($Filter) {
            $LocalVarQueryParameters['filter'] = $Filter
        }

        if ($Sort) {
            $LocalVarQueryParameters['sort'] = $Sort
        }

        if ($Limit) {
            $LocalVarQueryParameters['limit'] = $Limit
        }

        if ($Offset) {
            $LocalVarQueryParameters['offset'] = $Offset
        }

        if ($Id) {
            $LocalVarQueryParameters['id'] = $Id
        }

        if ($Name) {
            $LocalVarQueryParameters['name'] = $Name
        }

        if ($DisplayName) {
            $LocalVarQueryParameters['display_name'] = $DisplayName
        }

        if ($TenantSpaceId) {
            $LocalVarQueryParameters['tenant_space_id'] = $TenantSpaceId
        }

        if ($TenantId) {
            $LocalVarQueryParameters['tenant_id'] = $TenantId
        }

        if ($Destroyed) {
            $LocalVarQueryParameters['destroyed'] = $Destroyed
        }

        if ($SnapshotId) {
            $LocalVarQueryParameters['snapshot_id'] = $SnapshotId
        }

        if ($VolumeId) {
            $LocalVarQueryParameters['volume_id'] = $VolumeId
        }

        if ($TimeRemaining) {
            $LocalVarQueryParameters['time_remaining'] = $TimeRemaining
        }

        if ($VolumeSerialNumber) {
            $LocalVarQueryParameters['volume_serial_number'] = $VolumeSerialNumber
        }

        if ($PlacementGroupId) {
            $LocalVarQueryParameters['placement_group_id'] = $PlacementGroupId
        }

        if ($ProtectionPolicyId) {
            $LocalVarQueryParameters['protection_policy_id'] = $ProtectionPolicyId
        }

        if ($CreatedAt) {
            $LocalVarQueryParameters['created_at'] = $CreatedAt
        }

        if ($Configuration["AccessToken"]) {
            $LocalVarHeaderParameters['Authorization'] = "Bearer " + $Configuration["AccessToken"]
            Write-Verbose ("Using Bearer authentication in {0}" -f $MyInvocation.MyCommand)
        }


        $LocalVarResult = Invoke-PSFApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "VolumeSnapshotList" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

