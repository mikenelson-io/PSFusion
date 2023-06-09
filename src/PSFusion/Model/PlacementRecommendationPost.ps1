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

(Provider) Request a Placement Recommendation report. If PlacementEngine is set to ""pure1meta"", in addition to Placement Recommendations, load and capacity projections will also be included in the report.

.PARAMETER Name
The name of the resource, supplied by the user at creation, and used in the URI path of a resource.
.PARAMETER DisplayName
The display name of the resource.
.PARAMETER PlacementGroupLink
Deprecated. Use placement_group instead. The link to the placement group that we would like to generate a placement recommendation report on
.PARAMETER PlacementGroup
Placement Group you would like to generate a placement recommendation report on. For placement of new placement group, leave this blank, and instead fill in simulated_placement
.PARAMETER Tenant
Tenant that Placement Group belongs to. For placement of new placement group, enter Tenant where the Placement Group would have been created in
.PARAMETER TenantSpace
Tenant Space that Placement Group belongs to. For placement of new placement group, enter TenantSpace where Placement Group would have been created in
.PARAMETER PlacementEngine
No description available.
.PARAMETER SimulatedPlacement
No description available.
.PARAMETER TargetArrays
Optional argument. If provided, specify a list of array names to constraint the list of arrays under consideration for placement recommendations
.OUTPUTS

PlacementRecommendationPost<PSCustomObject>
#>

function Initialize-PSFPlacementRecommendationPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PlacementGroupLink},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PlacementGroup},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Tenant},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TenantSpace},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("pure1meta", "heuristics")]
        [PSCustomObject]
        ${PlacementEngine},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SimulatedPlacement},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${TargetArrays}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFPlacementRecommendationPost' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $Tenant) {
            throw "invalid value for 'Tenant', 'Tenant' cannot be null."
        }

        if ($null -eq $TenantSpace) {
            throw "invalid value for 'TenantSpace', 'TenantSpace' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "display_name" = ${DisplayName}
            "placement_group_link" = ${PlacementGroupLink}
            "placement_group" = ${PlacementGroup}
            "tenant" = ${Tenant}
            "tenant_space" = ${TenantSpace}
            "placement_engine" = ${PlacementEngine}
            "simulated_placement" = ${SimulatedPlacement}
            "target_arrays" = ${TargetArrays}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PlacementRecommendationPost<PSCustomObject>

.DESCRIPTION

Convert from JSON to PlacementRecommendationPost<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PlacementRecommendationPost<PSCustomObject>
#>
function ConvertFrom-PSFJsonToPlacementRecommendationPost {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFPlacementRecommendationPost' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFPlacementRecommendationPost
        $AllProperties = ("name", "display_name", "placement_group_link", "placement_group", "tenant", "tenant_space", "placement_engine", "simulated_placement", "target_arrays")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tenant"))) {
            throw "Error! JSON cannot be serialized due to the required property 'tenant' missing."
        } else {
            $Tenant = $JsonParameters.PSobject.Properties["tenant"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tenant_space"))) {
            throw "Error! JSON cannot be serialized due to the required property 'tenant_space' missing."
        } else {
            $TenantSpace = $JsonParameters.PSobject.Properties["tenant_space"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "display_name"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["display_name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "placement_group_link"))) { #optional property not found
            $PlacementGroupLink = $null
        } else {
            $PlacementGroupLink = $JsonParameters.PSobject.Properties["placement_group_link"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "placement_group"))) { #optional property not found
            $PlacementGroup = $null
        } else {
            $PlacementGroup = $JsonParameters.PSobject.Properties["placement_group"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "placement_engine"))) { #optional property not found
            $PlacementEngine = $null
        } else {
            $PlacementEngine = $JsonParameters.PSobject.Properties["placement_engine"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "simulated_placement"))) { #optional property not found
            $SimulatedPlacement = $null
        } else {
            $SimulatedPlacement = $JsonParameters.PSobject.Properties["simulated_placement"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "target_arrays"))) { #optional property not found
            $TargetArrays = $null
        } else {
            $TargetArrays = $JsonParameters.PSobject.Properties["target_arrays"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "display_name" = ${DisplayName}
            "placement_group_link" = ${PlacementGroupLink}
            "placement_group" = ${PlacementGroup}
            "tenant" = ${Tenant}
            "tenant_space" = ${TenantSpace}
            "placement_engine" = ${PlacementEngine}
            "simulated_placement" = ${SimulatedPlacement}
            "target_arrays" = ${TargetArrays}
        }

        return $PSO
    }

}

