function(link_libharu target MOD)
    target_link_libraries(${target} ${MOD} ${PROJECT_SOURCE_DIR}/thirdparty/libharu/lib/libharu.so)
    target_include_directories(${target} SYSTEM ${MOD} ${PROJECT_SOURCE_DIR}/thirdparty/libharu/include)
endfunction()
