set (EXECUTABLE_NAME gtestexe)

# add the binary tree to the search path for include files
# so that we will find TutorialConfig.h
include_directories("${PROJECT_BINARY_DIR}/src")

# add the sources to the include directive
include_directories("../lib")

if (BUILD_LIB_TEST)
	enable_testing()
	find_package(GTest REQUIRED)
	include_directories(
	    ${GTEST_INCLUDE_DIR}
	)

	# add the executable
	add_executable(${EXECUTABLE_NAME} main.cpp)
	SET_TARGET_PROPERTIES(${EXECUTABLE_NAME} PROPERTIES LINKER_LANGUAGE CXX)
	target_link_libraries(${EXECUTABLE_NAME} ${GTEST_BOTH_LIBRARIES})
endif()
