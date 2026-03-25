function(add_lib target_name)
    set(options)
    set(oneValueArgs)
    set(multiValueArgs SOURCES PUBLIC_HEADERS)
    cmake_parse_arguments(ARG "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN})

    add_library(${target_name} ${ARG_SOURCES} ${ARG_PUBLIC_HEADERS})
    add_library(${PROJECT_NAME}::${target_name} ALIAS ${target_name})

    target_include_directories(${target_name}
        PUBLIC
            ${CMAKE_CURRENT_SOURCE_DIR}/include
    )

    set_target_properties(${target_name} PROPERTIES
        CXX_STANDARD 20
        CXX_STANDARD_REQUIRED ON
    )
endfunction()