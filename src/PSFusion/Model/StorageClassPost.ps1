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
.PARAMETER SizeLimit
The maximum size allowed
.PARAMETER IopsLimit
The maximum IOPS allowed
.PARAMETER BandwidthLimit
The maximum bandwidth allowed
.OUTPUTS

StorageClassPost<PSCustomObject>
#>

function Initialize-PSFStorageClassPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${SizeLimit},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${IopsLimit},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${BandwidthLimit}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFStorageClassPost' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $SizeLimit) {
            throw "invalid value for 'SizeLimit', 'SizeLimit' cannot be null."
        }

        if ($null -eq $IopsLimit) {
            throw "invalid value for 'IopsLimit', 'IopsLimit' cannot be null."
        }

        if ($null -eq $BandwidthLimit) {
            throw "invalid value for 'BandwidthLimit', 'BandwidthLimit' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "display_name" = ${DisplayName}
            "size_limit" = ${SizeLimit}
            "iops_limit" = ${IopsLimit}
            "bandwidth_limit" = ${BandwidthLimit}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StorageClassPost<PSCustomObject>

.DESCRIPTION

Convert from JSON to StorageClassPost<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StorageClassPost<PSCustomObject>
#>
function ConvertFrom-PSFJsonToStorageClassPost {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFStorageClassPost' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFStorageClassPost
        $AllProperties = ("name", "display_name", "size_limit", "iops_limit", "bandwidth_limit")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "size_limit"))) {
            throw "Error! JSON cannot be serialized due to the required property 'size_limit' missing."
        } else {
            $SizeLimit = $JsonParameters.PSobject.Properties["size_limit"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "iops_limit"))) {
            throw "Error! JSON cannot be serialized due to the required property 'iops_limit' missing."
        } else {
            $IopsLimit = $JsonParameters.PSobject.Properties["iops_limit"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bandwidth_limit"))) {
            throw "Error! JSON cannot be serialized due to the required property 'bandwidth_limit' missing."
        } else {
            $BandwidthLimit = $JsonParameters.PSobject.Properties["bandwidth_limit"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "display_name"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["display_name"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "display_name" = ${DisplayName}
            "size_limit" = ${SizeLimit}
            "iops_limit" = ${IopsLimit}
            "bandwidth_limit" = ${BandwidthLimit}
        }

        return $PSO
    }

}

