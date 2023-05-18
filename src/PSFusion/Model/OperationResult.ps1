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

Contains the result of the operation: a resource reference. Note that if the resource no longer exists, only the resource's id and kind is returned (name and self_link will be empty).

.PARAMETER Resource
No description available.
.OUTPUTS

OperationResult<PSCustomObject>
#>

function Initialize-PSFOperationResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Resource}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFOperationResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "resource" = ${Resource}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OperationResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to OperationResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OperationResult<PSCustomObject>
#>
function ConvertFrom-PSFJsonToOperationResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFOperationResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFOperationResult
        $AllProperties = ("resource")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "resource"))) { #optional property not found
            $Resource = $null
        } else {
            $Resource = $JsonParameters.PSobject.Properties["resource"].value
        }

        $PSO = [PSCustomObject]@{
            "resource" = ${Resource}
        }

        return $PSO
    }

}

