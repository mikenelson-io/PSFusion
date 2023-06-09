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

.PARAMETER Id
An immutable, globally unique, system generated identifier.
.PARAMETER Name
The name of the resource, supplied by the user at creation, and used in the URI path of a resource.
.PARAMETER SelfLink
The URI of the resource.
.PARAMETER DisplayName
The display name of the resource.
.PARAMETER Region
No description available.
.PARAMETER AvailabilityZone
No description available.
.PARAMETER GroupType
The type of this Network Interface Group.
.PARAMETER Eth
No description available.
.OUTPUTS

NetworkInterfaceGroup<PSCustomObject>
#>

function Initialize-PSFNetworkInterfaceGroup {
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
        ${Region},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AvailabilityZone},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("eth")]
        [String]
        ${GroupType},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Eth}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFNetworkInterfaceGroup' | Write-Debug
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

        if ($null -eq $GroupType) {
            throw "invalid value for 'GroupType', 'GroupType' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "self_link" = ${SelfLink}
            "display_name" = ${DisplayName}
            "region" = ${Region}
            "availability_zone" = ${AvailabilityZone}
            "group_type" = ${GroupType}
            "eth" = ${Eth}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NetworkInterfaceGroup<PSCustomObject>

.DESCRIPTION

Convert from JSON to NetworkInterfaceGroup<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NetworkInterfaceGroup<PSCustomObject>
#>
function ConvertFrom-PSFJsonToNetworkInterfaceGroup {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFNetworkInterfaceGroup' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFNetworkInterfaceGroup
        $AllProperties = ("id", "name", "self_link", "display_name", "region", "availability_zone", "group_type", "eth")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "group_type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'group_type' missing."
        } else {
            $GroupType = $JsonParameters.PSobject.Properties["group_type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "display_name"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["display_name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "region"))) { #optional property not found
            $Region = $null
        } else {
            $Region = $JsonParameters.PSobject.Properties["region"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "availability_zone"))) { #optional property not found
            $AvailabilityZone = $null
        } else {
            $AvailabilityZone = $JsonParameters.PSobject.Properties["availability_zone"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "eth"))) { #optional property not found
            $Eth = $null
        } else {
            $Eth = $JsonParameters.PSobject.Properties["eth"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "self_link" = ${SelfLink}
            "display_name" = ${DisplayName}
            "region" = ${Region}
            "availability_zone" = ${AvailabilityZone}
            "group_type" = ${GroupType}
            "eth" = ${Eth}
        }

        return $PSO
    }

}

