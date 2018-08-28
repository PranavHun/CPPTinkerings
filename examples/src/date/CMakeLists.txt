cmake_minimum_required (VERSION 3.11)

project (date)

find_library(isPHdate NAMES PHdate HINTS ${CMAKE_PREFIX_PATH}/lib})

if(isPHdate)
        message(STATUS "isPHdate found")
else(isPHdate)
        message(FATAL_ERROR "isPHdate not found")
endif(isPHdate)

add_executable(test_PHdate test_date.cpp)
target_include_directories (test_PHdate PUBLIC ${CMAKE_PREFIX_PATH}/include)
target_link_libraries (test_PHdate PUBLIC ${isPHdate})

install (TARGETS test_PHdate DESTINATION bin/date)

