DEG_SYM = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEG_SYM}%02d'%02d"), minutes, seconds)
end


# accept a floating number that is between 0 and 360
# the degree is the integer version of the number (to_i)
# multiply the decimal portion by 60
# the Integer given in answer is the minutes
# Take remaining decimal and multiply by 60, that's the seconds
# round that one up to nearest 10th
# format the numbers to have proper symbols and two places
# with 0 as placeholders as needed


p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")