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

A reference to a Protection Policy.

.PARAMETER Id
An immutable, globally unique, system generated identifier.
.PARAMETER Name
The name of the resource, supplied by the user at creation, and used in the URI path of a resource.
.PARAMETER Kind
The kind of the resource (e.g., Volume).
.PARAMETER SelfLink
The URI of the resource.
.OUTPUTS

ProtectionPolicyRef<PSCustomObject>
#>

function Initialize-PSFProtectionPolicyRef {
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
        ${Kind},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SelfLink}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFProtectionPolicyRef' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $Kind) {
            throw "invalid value for 'Kind', 'Kind' cannot be null."
        }

        if ($null -eq $SelfLink) {
            throw "invalid value for 'SelfLink', 'SelfLink' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "kind" = ${Kind}
            "self_link" = ${SelfLink}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProtectionPolicyRef<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProtectionPolicyRef<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProtectionPolicyRef<PSCustomObject>
#>
function ConvertFrom-PSFJsonToProtectionPolicyRef {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFProtectionPolicyRef' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFProtectionPolicyRef
        $AllProperties = ("id", "name", "kind", "self_link")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "kind"))) {
            throw "Error! JSON cannot be serialized due to the required property 'kind' missing."
        } else {
            $Kind = $JsonParameters.PSobject.Properties["kind"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self_link"))) {
            throw "Error! JSON cannot be serialized due to the required property 'self_link' missing."
        } else {
            $SelfLink = $JsonParameters.PSobject.Properties["self_link"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "kind" = ${Kind}
            "self_link" = ${SelfLink}
        }

        return $PSO
    }

}

