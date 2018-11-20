# test argument type 

function test-argumentType {

    [CmdletBinding()]
    Param(
        [Int]
        $MyParam
    )

    write-host $MyParam

}

# Validate Set 

function Get-IceCream {

    [CmdletBinding()]
    Param(
        [ValidateSet("Fraise","Vanille","Pistache")]
        [String]
        $MyParam
    )

    write-host $MyParam

}

# Validate Script 
function  get-MyDate {

    [CmdletBinding()]
    Param(
        [parameter()]
        [ValidateScript({$_ -ge (Get-Date)})]
        [DateTime]
        $MyParam
    )

    write-host $MyParam 
}

# Validate Range 
function  get-MyRange {

    [CmdletBinding()]
    Param(
        [parameter()]
        [ValidateRange(1,15)]
        [int]
        $MyParam
    )

    write-host $MyParam 
}

function get-Mandatory {

    [CmdletBinding()]
    Param(
        [parameter(Mandatory=$true)]
        [String]
        $MyParam
    )

    write-host $MyParam 

}