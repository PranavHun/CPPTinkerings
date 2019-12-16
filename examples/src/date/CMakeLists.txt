cmake_minimum_required (VERSION 3.8.2)

project (date)

find_library(isPHdate NAMES PHdate HINTS ${CMAKE_PREFIX_PATH}/lib})

if(isPHdate)
        message(STATUS "PHdate found")
else(isPHdate)
        message(FATAL_ERROR "PHdate not found")
endif(isPHdate)

add_executable(example_PHdate example_date.cpp)
target_include_directories (example_PHdate PUBLIC ${CMAKE_PREFIX_PATH}/include)
target_link_libraries (example_PHdate PUBLIC ${isPHdate})

install (TARGETS example_PHdate DESTINATION bin/date)

