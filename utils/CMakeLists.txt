cmake_minimum_required(VERSION 3.10 FATAL_ERROR)
project(BsswUtils NONE)
if (PROJECT_SOURCE_DIR STREQUAL PROJECT_BINARY_DIR)
  message(FATAL_ERROR "Error, in-source builds not allowed!")
endif()
include(CTest)
enable_testing()
message("Version of bssw.io repo being tested:")
execute_process(COMMAND git log
  "--pretty=format:%Cgreen%h%Creset \"%s\"%nAuthor: %an <%ae>%nDate:   %ad (%cr)%n" -1)
add_subdirectory(tests)
