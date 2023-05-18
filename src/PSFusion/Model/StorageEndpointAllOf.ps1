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

.PARAMETER Region
No description available.
.PARAMETER AvailabilityZone
No description available.
.PARAMETER EndpointType
The endpoint type.
.PARAMETER Iscsi
No description available.
.PARAMETER CbsAzureIscsi
No description available.
.OUTPUTS

StorageEndpointAllOf<PSCustomObject>
#>

function Initialize-PSFStorageEndpointAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Region},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AvailabilityZone},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("iscsi", "cbs-azure-iscsi")]
        [String]
        ${EndpointType},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Iscsi},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CbsAzureIscsi}
    )

    Process {
        'Creating PSCustomObject: PSFusion => PSFStorageEndpointAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $EndpointType) {
            throw "invalid value for 'EndpointType', 'EndpointType' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "region" = ${Region}
            "availability_zone" = ${AvailabilityZone}
            "endpoint_type" = ${EndpointType}
            "iscsi" = ${Iscsi}
            "cbs_azure_iscsi" = ${CbsAzureIscsi}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StorageEndpointAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to StorageEndpointAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StorageEndpointAllOf<PSCustomObject>
#>
function ConvertFrom-PSFJsonToStorageEndpointAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSFusion => PSFStorageEndpointAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSFStorageEndpointAllOf
        $AllProperties = ("region", "availability_zone", "endpoint_type", "iscsi", "cbs_azure_iscsi")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'endpoint_type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "endpoint_type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'endpoint_type' missing."
        } else {
            $EndpointType = $JsonParameters.PSobject.Properties["endpoint_type"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "iscsi"))) { #optional property not found
            $Iscsi = $null
        } else {
            $Iscsi = $JsonParameters.PSobject.Properties["iscsi"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cbs_azure_iscsi"))) { #optional property not found
            $CbsAzureIscsi = $null
        } else {
            $CbsAzureIscsi = $JsonParameters.PSobject.Properties["cbs_azure_iscsi"].value
        }

        $PSO = [PSCustomObject]@{
            "region" = ${Region}
            "availability_zone" = ${AvailabilityZone}
            "endpoint_type" = ${EndpointType}
            "iscsi" = ${Iscsi}
            "cbs_azure_iscsi" = ${CbsAzureIscsi}
        }

        return $PSO
    }

}
