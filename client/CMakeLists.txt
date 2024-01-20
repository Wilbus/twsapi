cmake_minimum_required(VERSION 3.10)
project(mytwsapi)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++20")

add_library(${PROJECT_NAME} SHARED
    #${CMAKE_CURRENT_LIST_DIR}/trading-api/charting/src/CandleStick.cpp
    ${CMAKE_CURRENT_LIST_DIR}/EClient.cpp
)

target_include_directories(mytwsapi PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}
)



target_compile_options(${PROJECT_NAME} PRIVATE -Wall -Wextra -Wfatal-errors -Wunused-parameter -Wunused-variable -DLOG_FORMAT_VERIFICATION)

#target_link_libraries(${PROJECT_NAME} ${CMAKE_CURRENT_LIST_DIR}/lib/libbid.so)
