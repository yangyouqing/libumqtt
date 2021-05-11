set(LIBS ${LIBEV_LIBRARY} umqtt)

if(SSL_SUPPORT)
    list(APPEND LIBS ${SSL_LIBS})
endif()

include_directories(
    ${CMAKE_SOURCE_DIR}/src
    ${CMAKE_SOURCE_DIR}/src/buffer
    ${CMAKE_BINARY_DIR}/src
    ${LIBEV_INCLUDE_DIR})

add_executable(example example.c)
add_executable(umqtt_pub umqtt_pub.c)
add_executable(umqtt_sub umqtt_sub.c)
target_link_libraries(example PRIVATE ${LIBS})
target_link_libraries(umqtt_pub PRIVATE ${LIBS})
target_link_libraries(umqtt_sub PRIVATE ${LIBS})
