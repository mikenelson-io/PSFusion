#
# Pure Fusion API
# Pure Fusion is fully API-driven. Most APIs which change the system (POST, PATCH, DELETE) return an Operation in status ""Pending"" or ""Running"". You can poll (GET) the operation to check its status, waiting for it to change to ""Succeeded"" or ""Failed"". 
# Version: 1.1
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Gets a specific Role.

.DESCRIPTION

No description available.

.PARAMETER RoleName
The Role name

.PARAMETER XRequestID
The Request ID supplied with the request, used to perform operations idempotently.

.PARAMETER Authorization
Access token (in JWT format) required to use any API endpoint.

.PARAMETER XCorrelationID
The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

Role
#>
function Get-PSFRole {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${RoleName},
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
        'Calling method: Get-PSFRole' | Write-Debug
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

        $LocalVarUri = '/roles/{role_name}'
        if (!$RoleName) {
            throw "Error! The required parameter `RoleName` missing when calling getRole."
        }
        $LocalVarUri = $LocalVarUri.replace('{role_name}', [System.Web.HTTPUtility]::UrlEncode($RoleName))

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
                                -ReturnType "Role" `
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

Gets a specific Role.

.DESCRIPTION

No description available.

.PARAMETER RoleId
The Role ID

.PARAMETER XRequestID
The Request ID supplied with the request, used to perform operations idempotently.

.PARAMETER Authorization
Access token (in JWT format) required to use any API endpoint.

.PARAMETER XCorrelationID
The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

Role
#>
function Get-PSFRoleById {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${RoleId},
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
        'Calling method: Get-PSFRoleById' | Write-Debug
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

        $LocalVarUri = '/resources/roles/{role_id}'
        if (!$RoleId) {
            throw "Error! The required parameter `RoleId` missing when calling getRoleById."
        }
        $LocalVarUri = $LocalVarUri.replace('{role_id}', [System.Web.HTTPUtility]::UrlEncode($RoleId))

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
                                -ReturnType "Role" `
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

Gets a list of all Roles.

.DESCRIPTION

No description available.

.PARAMETER XRequestID
The Request ID supplied with the request, used to perform operations idempotently.

.PARAMETER Authorization
Access token (in JWT format) required to use any API endpoint.

.PARAMETER XCorrelationID
The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow.

.PARAMETER AssignableScope
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

Role[]
#>
function Invoke-PSFListRoles {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XRequestID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Authorization},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCorrelationID},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${AssignableScope},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-PSFListRoles' | Write-Debug
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

        $LocalVarUri = '/roles'

        if ($XRequestID) {
            $LocalVarHeaderParameters['X-Request-ID'] = $XRequestID
        }

        if ($Authorization) {
            $LocalVarHeaderParameters['Authorization'] = $Authorization
        }

        if ($XCorrelationID) {
            $LocalVarHeaderParameters['X-Correlation-ID'] = $XCorrelationID
        }

        if ($AssignableScope) {
            $LocalVarQueryParameters['assignable_scope'] = $AssignableScope
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
                                -ReturnType "Role[]" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}
