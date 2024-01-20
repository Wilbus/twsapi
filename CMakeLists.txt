cmake_minimum_required(VERSION 3.10)
project(mytwsapi)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++20")

#set(FLATBUFFERS_MAX_PARSING_DEPTH 1000)

#add_library(${PROJECT_NAME} SHARED
#    #${CMAKE_CURRENT_LIST_DIR}/trading-api/charting/src/CandleStick.cpp
#)

#target_include_directories(mytwsapi PUBLIC
#    #${CMAKE_CURRENT_LIST_DIR}/schemas
#)


#set(Boost_USE_MULTITHREADED ON)  
#find_package(RapidJSON)
#find_package(ZLIB)
#find_package(InfluxDB)
#find_package(Boost)

#set(OPENSSL_USE_STATIC_LIBS TRUE)
#find_package(OpenSSL REQUIRED)

add_subdirectory(client)

target_compile_options(${PROJECT_NAME} PRIVATE -Wall -Wextra -Wfatal-errors -Wunused-parameter -Wunused-variable -DLOG_FORMAT_VERIFICATION)
#target_link_libraries(${PROJECT_NAME} libta_lib.so)

