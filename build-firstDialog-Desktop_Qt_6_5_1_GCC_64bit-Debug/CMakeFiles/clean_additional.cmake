# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appfirstDialog_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appfirstDialog_autogen.dir/ParseCache.txt"
  "appfirstDialog_autogen"
  )
endif()
