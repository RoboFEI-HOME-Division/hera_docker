execute_process(COMMAND "/workspace/dockerfile/catkin_hera/build/simulation_system/agent/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/workspace/dockerfile/catkin_hera/build/simulation_system/agent/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
