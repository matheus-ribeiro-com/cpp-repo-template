function(enable_sanitizers target_name)
    if(MSVC)
        message(STATUS "Sanitizers not configured for MSVC in this template")
    else()
        target_compile_options(${target_name} PRIVATE
            -fsanitize=address,undefined
            -fno-omit-frame-pointer
        )
        target_link_options(${target_name} PRIVATE
            -fsanitize=address,undefined
        )
    endif()
endfunction()