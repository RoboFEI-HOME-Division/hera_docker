execute_process(COMMAND "/workspace/dockerfile/catkin_hera/build/speech_recognition/gtts_ros/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/workspace/dockerfile/catkin_hera/build/speech_recognition/gtts_ros/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
