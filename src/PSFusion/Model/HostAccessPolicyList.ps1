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

.PARAMETER Count
count of items in the list
.PARAMETER MoreItemsRemaining
True if not all items in the search were returned in the provided array.
.PARAMETER Items
A JSON array of Host Access Policies
.OUTPUTS

HostAccessPolicyList<PSCustomObject>
#>

function Initialize-PSFHostAccessPolicyList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${Count},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${MoreItemsRemaining},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Items}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFHostAccessPolicyList' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Count) {
            throw "invalid value for 'Count', 'Count' cannot be null."
        }

        if ($null -eq $Items) {
            throw "invalid value for 'Items', 'Items' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "count" = ${Count}
            "more_items_remaining" = ${MoreItemsRemaining}
            "items" = ${Items}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HostAccessPolicyList<PSCustomObject>

.DESCRIPTION

Convert from JSON to HostAccessPolicyList<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HostAccessPolicyList<PSCustomObject>
#>
function ConvertFrom-PSFJsonToHostAccessPolicyList {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFHostAccessPolicyList' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFHostAccessPolicyList
        $AllProperties = ("count", "more_items_remaining", "items")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'count' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "count"))) {
            throw "Error! JSON cannot be serialized due to the required property 'count' missing."
        } else {
            $Count = $JsonParameters.PSobject.Properties["count"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "items"))) {
            throw "Error! JSON cannot be serialized due to the required property 'items' missing."
        } else {
            $Items = $JsonParameters.PSobject.Properties["items"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "more_items_remaining"))) { #optional property not found
            $MoreItemsRemaining = $null
        } else {
            $MoreItemsRemaining = $JsonParameters.PSobject.Properties["more_items_remaining"].value
        }

        $PSO = [PSCustomObject]@{
            "count" = ${Count}
            "more_items_remaining" = ${MoreItemsRemaining}
            "items" = ${Items}
        }

        return $PSO
    }

}

