#
# Pure Fusion API
# Pure Fusion is fully API-driven. Most APIs which change the system (POST, PATCH, DELETE) return an Operation in status ""Pending"" or ""Running"". You can poll (GET) the operation to check its status, waiting for it to change to ""Succeeded"" or ""Failed"". 
# Version: 1.1
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

(Provider) Gets a specific Hardware Type.

.DESCRIPTION

No description available.

.PARAMETER HardwareTypeName
(Provider) The Hardware Type name

.PARAMETER XRequestID
The Request ID supplied with the request, used to perform operations idempotently.

.PARAMETER Authorization
Access token (in JWT format) required to use any API endpoint.

.PARAMETER XCorrelationID
The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

HardwareType
#>
function Get-PSFHardwareType {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${HardwareTypeName},
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
        'Calling method: Get-PSFHardwareType' | Write-Debug
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

        $LocalVarUri = '/hardware-types/{hardware_type_name}'
        if (!$HardwareTypeName) {
            throw "Error! The required parameter `HardwareTypeName` missing when calling getHardwareType."
        }
        $LocalVarUri = $LocalVarUri.replace('{hardware_type_name}', [System.Web.HTTPUtility]::UrlEncode($HardwareTypeName))

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
                                -ReturnType "HardwareType" `
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

(Provider) Gets a specific Hardware Type.

.DESCRIPTION

No description available.

.PARAMETER HardwareTypeId
(Provider) The Hardware Type ID

.PARAMETER XRequestID
The Request ID supplied with the request, used to perform operations idempotently.

.PARAMETER Authorization
Access token (in JWT format) required to use any API endpoint.

.PARAMETER XCorrelationID
The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

HardwareType
#>
function Get-PSFHardwareTypeById {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${HardwareTypeId},
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
        'Calling method: Get-PSFHardwareTypeById' | Write-Debug
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

        $LocalVarUri = '/resources/hardware-types/{hardware_type_id}'
        if (!$HardwareTypeId) {
            throw "Error! The required parameter `HardwareTypeId` missing when calling getHardwareTypeById."
        }
        $LocalVarUri = $LocalVarUri.replace('{hardware_type_id}', [System.Web.HTTPUtility]::UrlEncode($HardwareTypeId))

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
                                -ReturnType "HardwareType" `
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

(Provider) Gets a list of all hardware types.

.DESCRIPTION

No description available.

.PARAMETER XRequestID
The Request ID supplied with the request, used to perform operations idempotently.

.PARAMETER Authorization
Access token (in JWT format) required to use any API endpoint.

.PARAMETER XCorrelationID
The Correlation ID provided will be added to log messages and can be used for support. The same Correlation ID may be used for separate requests, to track a higher level workflow.

.PARAMETER MediaType
Return only hardware types matching the given media type

.PARAMETER ArrayType
Return only hardware types matching the given array type

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

HardwareTypeList
#>
function Invoke-PSFListHardwareTypes {
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
        ${MediaType},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ArrayType},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-PSFListHardwareTypes' | Write-Debug
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

        $LocalVarUri = '/hardware-types'

        if ($XRequestID) {
            $LocalVarHeaderParameters['X-Request-ID'] = $XRequestID
        }

        if ($Authorization) {
            $LocalVarHeaderParameters['Authorization'] = $Authorization
        }

        if ($XCorrelationID) {
            $LocalVarHeaderParameters['X-Correlation-ID'] = $XCorrelationID
        }

        if ($MediaType) {
            $LocalVarQueryParameters['mediaType'] = $MediaType
        }

        if ($ArrayType) {
            $LocalVarQueryParameters['arrayType'] = $ArrayType
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
                                -ReturnType "HardwareTypeList" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}
