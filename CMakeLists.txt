cmake_minimum_required(VERSION 3.25)

project(cpp_repo_template
    VERSION 0.1.0
    DESCRIPTION "Professional C++ project template"
    LANGUAGES C CXX
)

set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

option(ENABLE_TESTING "Enable tests" ON)
option(ENABLE_WARNINGS "Enable compiler warnings" ON)
option(ENABLE_SANITIZERS "Enable sanitizers" OFF)
option(ENABLE_BENCHMARKS "Enable benchmarks" ON)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake/modules")

include(standard_project_settings)
include(compiler_warnings)
include(sanitizers)
include(add_lib)
include(add_app)
include(add_test)

add_lib(project_core
    SOURCES
        src/version.cpp
    PUBLIC_HEADERS
        include/project_name/version.hpp
)

target_include_directories(project_core
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_compile_features(project_core PUBLIC cxx_std_20)

if(ENABLE_WARNINGS)
    set_project_warnings(project_core)
endif()

if(ENABLE_SANITIZERS)
    enable_sanitizers(project_core)
endif()

add_subdirectory(apps/demo_app)

if(ENABLE_TESTING)
    enable_testing()
    add_subdirectory(tests)
endif()

if(ENABLE_BENCHMARKS)
    add_subdirectory(benchmarks)
endif()