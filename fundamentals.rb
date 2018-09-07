trains = [
    {train: "72C", frequency_in_minutes: 15, direction: "north"},
    {train: "72D", frequency_in_minutes: 15, direction: "south"},
    {train: "610", frequency_in_minutes: 5, direction: "north"},
    {train: "611", frequency_in_minutes: 5, direction: "south"},
    {train: "80A", frequency_in_minutes: 30, direction: "east"},
    {train: "80B", frequency_in_minutes: 30, direction: "west"},
    {train: "110", frequency_in_minutes: 15, direction: "north"},
    {train: "111", frequency_in_minutes: 15, direction: "south"}
]

# Itirate over the array, and save the value of "direction" into a variable if the train value = 111.
direction_111 = 0;
trains.each do |train|
    if train[:train] == "111"
        direction_111 = train[:direction]
    end
end

frequency_80B = 0;
trains.each do |train|
    if train[:train] == "80B"
        frequency_80B = train[:frequency_in_minutes]
    end
end

direction_610 = 0;
trains.each do |train|
    if train[:train] == "610"
        direction_610 = train[:direction]
    end
end

northbound = Array.new()
trains.each do |train|
    if train[:direction] == "north"
        northbound << train[:train]
    end
end