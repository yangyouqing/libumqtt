cmake_minimum_required(VERSION 3.0)

project(libumqtt C)
set(CMAKE_INSTALL_PREFIX, ${CMAKE_CURRENT_SOURCE_DIR})
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake/Modules/")

#set(CMAKE_VERBOSE_MAKEFILE ON)

add_definitions(-D_GNU_SOURCE)
add_compile_options(-O -Wall -Werror --std=gnu99)

option(BUILD_STATIC "Build static library" OFF)

option(BUILD_EXAMPLE "Build example" ON)

if(BUILD_STATIC)
    set(CMAKE_FIND_LIBRARY_SUFFIXES ".a")
endif()


#set(Libev_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../libev)
set(CMAKE_PREFIX_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../libev)
find_package(Libev REQUIRED)

add_subdirectory(src/ssl)

add_subdirectory(src)

if(BUILD_EXAMPLE)
    add_subdirectory(example)
endif()
