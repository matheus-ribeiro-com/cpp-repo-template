function(add_test_target target_name)
    set(options)
    set(oneValueArgs)
    set(multiValueArgs SOURCES LIBS)
    cmake_parse_arguments(ARG "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN})

    add_executable(${target_name} ${ARG_SOURCES})
    target_link_libraries(${target_name} PRIVATE ${ARG_LIBS} GTest::gtest_main)

    include(GoogleTest)
    gtest_discover_tests(${target_name})
endfunction()