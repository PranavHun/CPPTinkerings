cmake_minimum_required (VERSION 3.8.2)

project (date)

find_library(isPHstlstats NAMES PHstlstats HINTS ${CMAKE_PREFIX_PATH}/lib})

if(isPHstlstats)
        message(STATUS "PHstlstats found")
else(isPHstlstats)
        message(FATAL_ERROR "PHstlstats not found")
endif(isPHstlstats)

add_executable(example_PHstlstats example_stlstats.cpp)
target_include_directories (example_PHstlstats PUBLIC ${CMAKE_PREFIX_PATH}/include)
target_link_libraries (example_PHstlstats PUBLIC ${isPHstlstats})

install (TARGETS example_PHstlstats DESTINATION bin/stlstats)

