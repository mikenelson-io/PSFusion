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

Data protection retention policy objective.

.PARAMETER Type
Type of the objective. ""RPO"" or ""Retention"".
.PARAMETER After
Rentenion period: how long the snapshots will be retained.  Format: only support subset of **Durations** format in https://en.wikipedia.org/wiki/ISO_8601. 1. The time designators(P,T,H,M,S) must be capital letters.  2. Only accepts whole numbers.  3. Leading zeroes are not required.
.OUTPUTS

Retention<PSCustomObject>
#>

function Initialize-PSFRetention {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("RPO", "Retention")]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^PT(?!$)(\d+H)?(\d+M)?(\d+S)?$")]
        [String]
        ${After}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFRetention' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $After) {
            throw "invalid value for 'After', 'After' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "after" = ${After}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Retention<PSCustomObject>

.DESCRIPTION

Convert from JSON to Retention<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Retention<PSCustomObject>
#>
function ConvertFrom-PSFJsonToRetention {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFRetention' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFRetention
        $AllProperties = ("type", "after")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "after"))) {
            throw "Error! JSON cannot be serialized due to the required property 'after' missing."
        } else {
            $After = $JsonParameters.PSobject.Properties["after"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "after" = ${After}
        }

        return $PSO
    }

}
