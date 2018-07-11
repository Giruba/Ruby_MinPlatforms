# Minimum number of platforms needed
puts "Minimum number of platforms needed!";
arrivals = [900, 940, 950, 1100, 
                                 1500, 1800];
departures = [910, 1200, 1120, 1130, 
                                 1900, 2000];
arrivals = arrivals.sort
departures = departures.sort

$temp_platforms = 1
$actual_platforms = 1

#Applying merge of merge sort
$index = 1
$previndex = 0

while $index < 6 && $previndex < 6 do
    if arrivals.at($index) <= departures.at($previndex)
        $temp_platforms+=1
        $index+=1
        if $temp_platforms > $actual_platforms
            $actual_platforms = $temp_platforms
        end
    else
        $temp_platforms-=1
        $previndex+=1
    end
end
puts $actual_platforms
