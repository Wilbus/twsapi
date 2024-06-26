cmake_minimum_required(VERSION 3.10)
project(mytwsapi)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++20")

add_library(${PROJECT_NAME} SHARED
    ${CMAKE_CURRENT_LIST_DIR}/ContractCondition.cpp
    ${CMAKE_CURRENT_LIST_DIR}/Decimal.cpp
    ${CMAKE_CURRENT_LIST_DIR}/DefaultEWrapper.cpp

    ${CMAKE_CURRENT_LIST_DIR}/EClient.cpp
    ${CMAKE_CURRENT_LIST_DIR}/EClientSocket.cpp
    ${CMAKE_CURRENT_LIST_DIR}/EDecoder.cpp
    ${CMAKE_CURRENT_LIST_DIR}/EMessage.cpp
    ${CMAKE_CURRENT_LIST_DIR}/EMutex.cpp
    ${CMAKE_CURRENT_LIST_DIR}/EOrderDecoder.cpp
    ${CMAKE_CURRENT_LIST_DIR}/EReader.cpp
    ${CMAKE_CURRENT_LIST_DIR}/EReaderOSSignal.cpp
    ${CMAKE_CURRENT_LIST_DIR}/ESocket.cpp
    ${CMAKE_CURRENT_LIST_DIR}/executioncondition.cpp
    ${CMAKE_CURRENT_LIST_DIR}/MarginCondition.cpp
    ${CMAKE_CURRENT_LIST_DIR}/OperatorCondition.cpp
    ${CMAKE_CURRENT_LIST_DIR}/OrderCondition.cpp
    ${CMAKE_CURRENT_LIST_DIR}/PercentChangeCondition.cpp
    ${CMAKE_CURRENT_LIST_DIR}/PriceCondition.cpp
    ${CMAKE_CURRENT_LIST_DIR}/SoftDollarTier.cpp
    ${CMAKE_CURRENT_LIST_DIR}/StdAfx.cpp
    ${CMAKE_CURRENT_LIST_DIR}/TimeCondition.cpp
    ${CMAKE_CURRENT_LIST_DIR}/Utils.cpp
    ${CMAKE_CURRENT_LIST_DIR}/VolumeCondition.cpp
)

target_include_directories(mytwsapi PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}
)



target_compile_options(mytwsapi PRIVATE -Wall -Wextra -Wfatal-errors -Wunused-parameter -Wunused-variable -DLOG_FORMAT_VERIFICATION)

#get the libintelrdfpmath-dev_2.0u2-6_amd64.deb package and install first
target_link_libraries(mytwsapi /usr/lib/x86_64-linux-gnu/libbidgcc000.a)
