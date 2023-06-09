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

.PARAMETER Role
No description available.
.PARAMETER Scope
No description available.
.PARAMETER Principal
The unique id of the principal (User or API Client) assigned to the role.
.OUTPUTS

RoleAssignmentAllOf<PSCustomObject>
#>

function Initialize-PSFRoleAssignmentAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Role},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Scope},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Principal}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFRoleAssignmentAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Role) {
            throw "invalid value for 'Role', 'Role' cannot be null."
        }

        if ($null -eq $Scope) {
            throw "invalid value for 'Scope', 'Scope' cannot be null."
        }

        if ($null -eq $Principal) {
            throw "invalid value for 'Principal', 'Principal' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "role" = ${Role}
            "scope" = ${Scope}
            "principal" = ${Principal}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleAssignmentAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleAssignmentAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleAssignmentAllOf<PSCustomObject>
#>
function ConvertFrom-PSFJsonToRoleAssignmentAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFRoleAssignmentAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFRoleAssignmentAllOf
        $AllProperties = ("role", "scope", "principal")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'role' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "role"))) {
            throw "Error! JSON cannot be serialized due to the required property 'role' missing."
        } else {
            $Role = $JsonParameters.PSobject.Properties["role"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scope"))) {
            throw "Error! JSON cannot be serialized due to the required property 'scope' missing."
        } else {
            $Scope = $JsonParameters.PSobject.Properties["scope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "principal"))) {
            throw "Error! JSON cannot be serialized due to the required property 'principal' missing."
        } else {
            $Principal = $JsonParameters.PSobject.Properties["principal"].value
        }

        $PSO = [PSCustomObject]@{
            "role" = ${Role}
            "scope" = ${Scope}
            "principal" = ${Principal}
        }

        return $PSO
    }

}

