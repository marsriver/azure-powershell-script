function GetRealValue
{
  param ($x)
  
  if ($x.PropertyType -eq "String")
  {
    return $x.StringValue
  }

  if ($x.PropertyType -eq "Int32")
  {
    return $x.Int32Value
  }

  if ($x.PropertyType -eq "Boolean")
  {
    return $x.BooleanValue
  }

  if ($x.PropertyType -eq "DateTimeOffset")
  {
    return $x.DateTimeOffsetValue
  }

  if ($x.PropertyType -eq "Guid")
  {
    return $x.GuidValue
  }

  if ($x.PropertyType -eq "Int64")
  {
    return $x.Int64Value
  }

 if ($x.PropertyType -eq "Double")
  {
    return $x.DoubleValue
  }
  
  if ($x.PropertyType -eq "Binary")
  {
    return $x.BinaryValue
  }

  if ($x.PropertyType -eq "DateTime")
  {
       return $x.DateTimeOffsetValue
  }
   
  $x.PropertyType
  return "Unknown Datatype"

}

function outputTable
{
    param ($r)
	
    foreach($e in $r)
    {
       $propList = $e.Properties
        foreach($k in $propList.Keys)
        {
            $v=GetRealValue($propList[$k])
            write-host $k":                 " $v
        }
    }
}
