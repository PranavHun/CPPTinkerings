cmake_minimum_required (VERSION 3.8.2)

project (csv)

find_library(isPHcsv NAMES PHcsv HINTS ${CMAKE_PREFIX_PATH}/lib})

if(isPHcsv)
        message(STATUS "isPHcsv found")
else(isPHcsv)
        message(FATAL_ERROR "isPHcsv not found")
endif(isPHcsv)

add_executable(example_PHcsv example_csv.cpp)
target_include_directories (example_PHcsv PUBLIC ${CMAKE_PREFIX_PATH}/include)
target_link_libraries (example_PHcsv PUBLIC ${isPHcsv})

install (TARGETS example_PHcsv DESTINATION bin/csv)

