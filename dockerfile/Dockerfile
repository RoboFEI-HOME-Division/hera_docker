FROM ros:melodic-ros-base

SHELL ["/bin/bash", "-c"]

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y curl wget apt-transport-https python-pip && \
    apt-get clean

RUN sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list' && \
    curl -L http://packages.osrfoundation.org/gazebo.key | apt-key add -

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install --no-install-recommends -y \
    python-pip\
    espeak\
    mpg321\
    xterm\
    ros-melodic-gazebo-ros ros-melodic-gazebo-plugins ros-melodic-gazebo-ros-control libgazebo9-dev libignition-transport4-dev libpoco-dev python-scipy libgsl-dev \
    ros-melodic-dwa-local-planner \
    ros-melodic-eigen-conversions \
    ros-melodic-robot-state-publisher \
    ros-melodic-moveit-chomp-optimizer-adapter\                          
    ros-melodic-moveit-ros-benchmarks\
    ros-melodic-moveit-chomp-optimizer-adapter-dbgsym\                   
    ros-melodic-moveit-ros-benchmarks-dbgsym\
    ros-melodic-moveit-commander\                                        
    ros-melodic-moveit-ros-control-interface\
    ros-melodic-moveit-controller-manager-example\                       
    ros-melodic-moveit-ros-control-interface-dbgsym\
    ros-melodic-moveit-controller-manager-example-dbgsym\                
    ros-melodic-moveit-ros-manipulation\
    ros-melodic-moveit-core\                                             
    ros-melodic-moveit-ros-manipulation-dbgsym\
    ros-melodic-moveit-core-dbgsym\                                      
    ros-melodic-moveit-ros-move-group\
    ros-melodic-moveit-ros\
    ros-melodic-moveit-experimental\                                     
    ros-melodic-moveit-ros-move-group-dbgsym\
    ros-melodic-moveit-fake-controller-manager\                         
    ros-melodic-moveit-ros-occupancy-map-monitor\
    ros-melodic-moveit-fake-controller-manager-dbgsym\                   
    ros-melodic-moveit-ros-occupancy-map-monitor-dbgsym\
    ros-melodic-moveit-kinematics\                                       
    ros-melodic-moveit-kinematics-dbgsym\                                
    ros-melodic-moveit-ros-perception-dbgsym\
    ros-melodic-moveit-msgs\                                             
    ros-melodic-moveit-ros-planning\
    ros-melodic-moveit-opw-kinematics-plugin\                            
    ros-melodic-moveit-ros-planning-dbgsym\
    ros-melodic-moveit-opw-kinematics-plugin-dbgsym\                    
    ros-melodic-moveit-ros-planning-interface\
    ros-melodic-moveit-planners\                                         
    ros-melodic-moveit-ros-planning-interface-dbgsym\
    ros-melodic-moveit-planners-chomp\                                   
    ros-melodic-moveit-ros-robot-interaction\
    ros-melodic-moveit-planners-chomp-dbgsym\                            
    ros-melodic-moveit-ros-robot-interaction-dbgsym\
    ros-melodic-moveit-planners-ompl\                                  
    ros-melodic-moveit-ros-visualization\
    ros-melodic-moveit-planners-ompl-dbgsym\                             
    ros-melodic-moveit-ros-visualization-dbgsym\
    ros-melodic-moveit-plugins\                                          
    ros-melodic-moveit-ros-warehouse\
    ros-melodic-moveit-pr2\                                              
    ros-melodic-moveit-ros-warehouse-dbgsym\
    ros-melodic-moveit-python\                                           
    ros-melodic-moveit-runtime\
    ros-melodic-moveit-resources\                                        
    ros-melodic-moveit-servo\
    ros-melodic-moveit-resources-fanuc-description\                     
    ros-melodic-moveit-servo-dbgsym\
    ros-melodic-moveit-resources-fanuc-moveit-config\                    
    ros-melodic-moveit-setup-assistant \
    ros-melodic-moveit-resources-panda-description \                     
    ros-melodic-moveit-setup-assistant-dbgsym \
    ros-melodic-moveit-resources-panda-moveit-config \                    
    ros-melodic-moveit-sim-controller \
    ros-melodic-moveit-resources-pr2-description \                        
    ros-melodic-moveit-sim-controller-dbgsym \
    ros-melodic-moveit-resources-prbt-ikfast-manipulator-plugin \         
    ros-melodic-moveit-simple-controller-manager \
    ros-melodic-moveit-resources-prbt-ikfast-manipulator-plugin-dbgsym \  
    ros-melodic-moveit-simple-controller-manager-dbgsym \
    ros-melodic-moveit-resources-prbt-moveit-config \             
    ros-melodic-moveit-visual-tools\
    ros-melodic-moveit-resources-prbt-pg70-support \                      
    ros-melodic-moveit-visual-tools-dbgsym\
    ros-melodic-moveit-resources-prbt-support\
    ros-melodic-urdfdom-py \
    ros-melodic-roslint \
    ros-melodic-joint-state-controller \
    ros-melodic-joint-trajectory-controller \
    ros-melodic-move-base \
    ros-melodic-base-local-planner \
    ros-melodic-teleop-twist-keyboard \
    ros-melodic-ros-control ros-melodic-ros-controllers \
    ros-melodic-amcl\
    ros-melodic-trac-ik-kinematics-plugin\
    ros-melodic-map-server\
    ros-melodic-xacro \
    ros-melodic-joint-state-publisher \
    liburdfdom-tools \
    ros-melodic-image-proc \
    ros-melodic-depth-image-proc \
    ros-melodic-effort-controllers \
    ros-melodic-ros-controllers \
    ros-melodic-people-msgs\
    ros-melodic-pcl-ros \
    ros-melodic-tf-conversions \
    ros-melodic-object-recognition-msgs \
    ros-melodic-moveit-ros-perception && \
    pip install -U --ignore-installed pyassimp supervisor supervisor_twiddler && \
    #pip install SpeechRecognition \
    #pip install face-recognition \
   # pip install --upgrade pip setuptools wheel \
   # pip install --upgrade pocketsphinx \
   # pip install jellyfish \
   # pip install deepspeech==0.4.1 \
   # pip2 install -U gTTS \
   # pip2 install --upgrade cryptography \
    #python -m easy_install --upgrade pyOpenSSL \
    apt-get autoremove -y && \
    apt-get clean

    

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install --no-install-recommends -y \
    ros-melodic-tf2-bullet \
    ros-melodic-interactive-markers \
    ros-melodic-sound-play \
    ros-melodic-rviz && \
    apt-get autoremove -y && \
    apt-get clean

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install --no-install-recommends -y \
    ros-melodic-joy \
    ros-melodic-pointcloud-to-laserscan\
    ros-melodic-amcl \
    ros-melodic-map-server \
    ros-melodic-gmapping && \
    apt-get autoremove -y && \
    apt-get clean

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install --no-install-recommends -y \
    qt4-default \
    unzip && \
    apt-get autoremove -y && \
    apt-get clean

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install --no-install-recommends -y \
    ros-melodic-opencv* \
    libpcl-dev && \
    apt-get autoremove -y && \
    apt-get clean

RUN wget https://sourceforge.net/projects/opencvlibrary/files/opencv-unix/3.3.1/opencv-3.3.1.zip && unzip opencv-3.3.1.zip && wget https://github.com/opencv/opencv_contrib/archive/3.3.1.zip && mv 3.3.1.zip opencv_contrib-3.3.1.zip && unzip opencv_contrib-3.3.1.zip && mkdir /opencv-3.3.1/build && cd /opencv-3.3.1/build && cmake -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=OFF -D BUILD_EXAMPLES=OFF -D WITH_QT=ON -D WITH_OPEPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON -D WITH_VTK=ON -D WITH_OPENNI=OFF -D WITH_OPENCL=OFF -D CMAKE_BUILD_TYPE=RELEASE FORCE_VTK=ON -D WITH_CUBLAS=ON -D -DBUILD_opencv_cudalegacy=OFF CUDA_NVCC_FLAGS="-D_FORCE_INLINES" -D WITH_GDAL=ON -D WITH_XINE=ON -D BUILD_EXAMPLES=OFF -D OPENCV_EXTRA_MODULES_PATH=/opencv_contrib-3.3.1/modules .. && make -j4 && make install && touch /etc/ld.so.conf.d/opencv.conf && /bin/su -c "echo '/usr/local/lib' >> /etc/ld.so.conf.d/opencv.conf" && ldconfig && rm /opencv-3.3.1.zip && rm /opencv_contrib-3.3.1.zip && rm /opencv_contrib-3.3.1 -R && rm /opencv-3.3.1 -R && cp /usr/local/lib/libopencv_* /usr/lib/x86_64-linux-gnu/

#RUN mkdir /opencv-3.3.1 && mkdir /opencv_contrib-3.3.1
#ADD opencv-3.3.1/ /opencv-3.3.1
#ADD opencv_contrib-3.3.1/ /opencv_contrib-3.3.1
#RUN mkdir /opencv-3.3.1/build && cd /opencv-3.3.1/build && \
#    cmake -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON -D WITH_VTK=ON -D WITH_OPENNI=ON -D WITH_OPENCL=OFF -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib-3.3.1/modules .. && \
#    make -j4 && make install && touch /etc/ld.so.conf.d/opencv.conf && \
#    /bin/su -c "echo '/usr/local/lib' >> /etc/ld.so.conf.d/opencv.conf" && \
#    ldconfig
#RUN rm -rf /opencv-3.3.1 /opencv_contrib-3.3.1

#RUN mkdir /OpenNI
#ADD OpenNI /OpenNI
#RUN cd /OpenNI/Platform/Linux/CreateRedist/ && ./RedistMaker
#RUN cd /OpenNI/Platform/Linux/Redist/OpenNI-Bin-Dev-Linux-x64-v1.5.8.5/ && ./install.sh
#RUN rm -rf /OpenNI

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install --no-install-recommends -y \
    ros-melodic-opencv* \
    libpcl-dev && \
    apt-get autoremove -y && \
    apt-get clean

RUN mkdir /catkin_hera 

ADD catkin_hera/src /catkin_hera/src

RUN cd /catkin_hera/src && source /opt/ros/melodic/setup.bash && catkin_init_workspace || true

RUN cd /catkin_hera && source /opt/ros/melodic/setup.bash && catkin_make install -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/ros/melodic -DCATKIN_ENABLE_TESTING=0

RUN cd /opt/ros/melodic/lib && mkdir shared_libs
RUN cp /opt/ros/melodic/lib/libpcl_ros_tf.so /opt/ros/melodic/lib/shared_libs && \
    cp /opt/ros/melodic/lib/libpcl_ros_filter.so /opt/ros/melodic/lib/shared_libs && \
#   cp /opt/ros/melodic/lib/libgrid_utils.so /opt/ros/melodic/lib/shared_libs && \
    cp /opt/ros/melodic/lib/libmap_server_image_loader.so /opt/ros/melodic/lib/shared_libs && \
    cp /opt/ros/melodic/lib/libamcl_sensors.so /opt/ros/melodic/lib/shared_libs && \
    cp /opt/ros/melodic/lib/libamcl_map.so /opt/ros/melodic/lib/shared_libs && \
    cp /opt/ros/melodic/lib/libamcl_pf.so /opt/ros/melodic/lib/shared_libs && \
    cp /usr/lib/x86_64-linux-gnu/libSDL-1.2.so.0.11.4 /opt/ros/melodic/lib/shared_libs && \
    cp /usr/lib/x86_64-linux-gnu/libSDL_image-1.2.so.0.8.4 /opt/ros/melodic/lib/shared_libs && \
    cp /usr/lib/x86_64-linux-gnu/libpulse-simple.so.0.1.1 /opt/ros/melodic/lib/shared_libs && \
    cp /usr/lib/x86_64-linux-gnu/libpulse.so.0.20.2 /opt/ros/melodic/lib/shared_libs && \
    cp /usr/lib/x86_64-linux-gnu/libsndfile.so.1.0.28 /opt/ros/melodic/lib/shared_libs && \
    cp /usr/lib/x86_64-linux-gnu/libasyncns.so.0.3.1 /opt/ros/melodic/lib/shared_libs && \
    cp /lib/x86_64-linux-gnu/libwrap.so.0.7.6 /opt/ros/melodic/lib/shared_libs && \
    cp /usr/lib/x86_64-linux-gnu/pulseaudio/libpulsecommon-11.1.so /opt/ros/melodic/lib/shared_libs && \
    cp /usr/lib/x86_64-linux-gnu/libpcl_common.so.1.8.1 /opt/ros/melodic/lib/shared_libs && \
    cp /usr/lib/x86_64-linux-gnu/libvtkGUISupportQt-6.3.so.6.3.0 /opt/ros/melodic/lib/shared_libs && \
    cp /usr/lib/x86_64-linux-gnu/libvtkGUISupportQtOpenGL-6.3.so.6.3.0 /opt/ros/melodic/lib/shared_libs && \
    cp /usr/lib/x86_64-linux-gnu/libvtkGUISupportQtSQL-6.3.so.6.3.0 /opt/ros/melodic/lib/shared_libs && \
    cp /usr/lib/x86_64-linux-gnu/libvtkGUISupportQtWebkit-6.3.so.6.3.0 /opt/ros/melodic/lib/shared_libs
#   cp /opt/ros/melodic/lib/libjustina_tools.so /opt/ros/melodic/lib/shared_libs

#RUN cd /opt/ros/melodic/lib && mkdir opencv_libs
#RUN cp /usr/local/lib/libopencv_viz.so.3.3.1 /opt/ros/melodic/lib/opencv_libs && \
#    cp /usr/local/lib/libopencv_videoio.so.3.3.1 /opt/ros/melodic/lib/opencv_libs && \
#    cp /usr/local/lib/libopencv_highgui.so.3.3.1 /opt/ros/melodic/lib/opencv_libs && \
#    cp /usr/local/lib/libopencv_imgproc.so.3.3.1 /opt/ros/melodic/lib/opencv_libs && \
#    cp /usr/local/lib/libopencv_core.so.3.3.1 /opt/ros/melodic/lib/opencv_libs && \
#    cp /usr/local/lib/libopencv_imgcodecs.so.3.3.1 /opt/ros/melodic/lib/opencv_libs

RUN cp /usr/lib/x86_64-linux-gnu/libpcl* /usr/local/lib -P
    #cp /usr/lib/libOpenNI2.so* /usr/local/lib/ -P && \
    #cp /usr/lib/libOpenNI.so* /usr/local/lib/ -P && \
    #cp /usr/lib/libvtkWrappingTools-6.3.a /usr/local/lib/ -P

RUN cp /usr/lib/x86_64-linux-gnu/libvtkViewsQt-6.3.so.6.3.0 /opt/ros/melodic/lib/shared_libs && \
    cp /usr/lib/x86_64-linux-gnu/libvtkRenderingQt-6.3.so.6.3.0 /opt/ros/melodic/lib/shared_libs && \
    cp /usr/lib/x86_64-linux-gnu/libhdf5_openmpi.so /opt/ros/melodic/lib/shared_libs

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

RUN source /opt/ros/melodic/setup.bash 

ADD supervisord.conf /etc/supervisor/supervisord.conf

VOLUME [ "/opt/ros/melodic/share/actionlib", "/opt/ros/melodic/share/actionlib_msgs", "/opt/ros/melodic/share/actionlib_tutorials", "/opt/ros/melodic/share/amcl", "/opt/ros/melodic/share/base_local_planner", "/opt/ros/melodic/share/catkin", "/opt/ros/melodic/share/clear_costmap_recovery", "/opt/ros/melodic/share/cmake_modules", "/opt/ros/melodic/share/common-lisp", "/opt/ros/melodic/share/common_msgs", "/opt/ros/melodic/share/common_tutorials", "/opt/ros/melodic/share/controller_interface", "/opt/ros/melodic/share/controller_manager", "/opt/ros/melodic/share/controller_manager_msgs", "/opt/ros/melodic/share/control_msgs", "/opt/ros/melodic/share/cpp_common", "/opt/ros/melodic/share/cv_bridge", "/opt/ros/melodic/share/depth_image_proc", "/opt/ros/melodic/share/desktop", "/opt/ros/melodic/share/doc", "/opt/ros/melodic/share/dynamic_reconfigure", "/opt/ros/melodic/share/effort_controllers", "/opt/ros/melodic/share/gazebo_dev", "/opt/ros/melodic/share/gazebo_msgs", "/opt/ros/melodic/share/gazebo_plugins", "/opt/ros/melodic/share/gazebo_ros", "/opt/ros/melodic/share/gazebo_ros_control", "/opt/ros/melodic/share/gazebo_ros_pkgs", "/opt/ros/melodic/share/gencpp", "/opt/ros/melodic/share/geneus", "/opt/ros/melodic/share/genlisp", "/opt/ros/melodic/share/genmsg", "/opt/ros/melodic/share/gennodejs", "/opt/ros/melodic/share/genpy", "/opt/ros/melodic/share/geometric_shapes", "/opt/ros/melodic/share/geometry", "/opt/ros/melodic/share/geometry_msgs", "/opt/ros/melodic/share/geometry_tutorials", "/opt/ros/melodic/share/graph_msgs", "/opt/ros/melodic/share/gripper_action_controller", "/opt/ros/melodic/share/hardware_interface", "/opt/ros/melodic/share/image_common", "/opt/ros/melodic/share/image_geometry", "/opt/ros/melodic/share/image_pipeline", "/opt/ros/melodic/share/image_proc", "/opt/ros/melodic/share/image_publisher", "/opt/ros/melodic/share/image_rotate", "/opt/ros/melodic/share/image_transport", "/opt/ros/melodic/share/image_transport_plugins", "/opt/ros/melodic/share/image_view", "/opt/ros/melodic/share/joint_limits_interface", "/opt/ros/melodic/share/joint_state_controller", "/opt/ros/melodic/share/joint_state_publisher", "/opt/ros/melodic/share/joint_state_publisher_gui", "/opt/ros/melodic/share/joint_trajectory_controller", "/opt/ros/melodic/share/joy_teleop", "/opt/ros/melodic/share/message_filters", "/opt/ros/melodic/share/message_generation", "/opt/ros/melodic/share/message_runtime", "/opt/ros/melodic/share/move_base", "/opt/ros/melodic/share/move_base_msgs", "/opt/ros/melodic/share/moveit", "/opt/ros/melodic/share/moveit_chomp_optimizer_adapter", "/opt/ros/melodic/share/moveit_commander", "/opt/ros/melodic/share/moveit_controller_manager_example", "/opt/ros/melodic/share/moveit_core", "/opt/ros/melodic/share/moveit_experimental", "/opt/ros/melodic/share/moveit_fake_controller_manager", "/opt/ros/melodic/share/moveit_kinematics", "/opt/ros/melodic/share/moveit_msgs", "/opt/ros/melodic/share/moveit_opw_kinematics_plugin", "/opt/ros/melodic/share/moveit_planners", "/opt/ros/melodic/share/moveit_planners_chomp", "/opt/ros/melodic/share/moveit_planners_ompl", "/opt/ros/melodic/share/moveit_plugins", "/opt/ros/melodic/share/moveit_pr2", "/opt/ros/melodic/share/moveit_python", "/opt/ros/melodic/share/moveit_resources", "/opt/ros/melodic/share/moveit_resources_fanuc_description", "/opt/ros/melodic/share/moveit_resources_fanuc_moveit_config", "/opt/ros/melodic/share/moveit_resources_panda_description", "/opt/ros/melodic/share/moveit_resources_panda_moveit_config", "/opt/ros/melodic/share/moveit_resources_pr2_description", "/opt/ros/melodic/share/moveit_resources_prbt_ikfast_manipulator_plugin", "/opt/ros/melodic/share/moveit_resources_prbt_moveit_config", "/opt/ros/melodic/share/moveit_resources_prbt_pg70_support", "/opt/ros/melodic/share/moveit_resources_prbt_support", "/opt/ros/melodic/share/moveit_ros", "/opt/ros/melodic/share/moveit_ros_benchmarks", "/opt/ros/melodic/share/moveit_ros_control_interface", "/opt/ros/melodic/share/moveit_ros_manipulation", "/opt/ros/melodic/share/moveit_ros_move_group", "/opt/ros/melodic/share/moveit_ros_occupancy_map_monitor", "/opt/ros/melodic/share/moveit_ros_perception", "/opt/ros/melodic/share/moveit_ros_planning", "/opt/ros/melodic/share/moveit_ros_planning_interface", "/opt/ros/melodic/share/moveit_ros_robot_interaction", "/opt/ros/melodic/share/moveit_ros_visualization", "/opt/ros/melodic/share/moveit_ros_warehouse", "/opt/ros/melodic/share/moveit_runtime", "/opt/ros/melodic/share/moveit_servo", "/opt/ros/melodic/share/moveit_setup_assistant", "/opt/ros/melodic/share/moveit_sim_controller", "/opt/ros/melodic/share/moveit_simple_controller_manager", "/opt/ros/melodic/share/moveit_visual_tools", "/opt/ros/melodic/share/nav_core", "/opt/ros/melodic/share/navfn", "/opt/ros/melodic/share/nav_msgs", "/opt/ros/melodic/share/object_recognition_msgs", "/opt/ros/melodic/share/octomap", "/opt/ros/melodic/share/octomap_msgs", "/opt/ros/melodic/share/pcl_conversions", "/opt/ros/melodic/share/pcl_msgs", "/opt/ros/melodic/share/pcl_ros", "/opt/ros/melodic/share/people_msgs", "/opt/ros/melodic/share/perception", "/opt/ros/melodic/share/perception_pcl", "/opt/ros/melodic/share/pluginlib", "/opt/ros/melodic/share/pluginlib_tutorials", "/opt/ros/melodic/share/position_controllers", "/opt/ros/melodic/share/pr2_controllers_msgs", "/opt/ros/melodic/share/pr2_description", "/opt/ros/melodic/share/pr2_mechanism_msgs", "/opt/ros/melodic/share/pr2_moveit_config", "/opt/ros/melodic/share/pr2_moveit_plugins", "/opt/ros/melodic/share/python_qt_binding", "/opt/ros/melodic/share/robot", "/opt/ros/melodic/share/robot_state_publisher", "/opt/ros/melodic/share/ros", "/opt/ros/melodic/share/rosbag", "/opt/ros/melodic/share/rosbag_migration_rule", "/opt/ros/melodic/share/rosbag_storage", "/opt/ros/melodic/share/ros_base", "/opt/ros/melodic/share/rosbash", "/opt/ros/melodic/share/rosboost_cfg", "/opt/ros/melodic/share/rosbuild", "/opt/ros/melodic/share/rosclean", "/opt/ros/melodic/share/ros_comm", "/opt/ros/melodic/share/rosconsole", "/opt/ros/melodic/share/rosconsole_bridge", "/opt/ros/melodic/share/ros_control", "/opt/ros/melodic/share/ros_control_boilerplate", "/opt/ros/melodic/share/ros_controllers", "/opt/ros/melodic/share/ros_core", "/opt/ros/melodic/share/roscpp", "/opt/ros/melodic/share/roscpp_core", "/opt/ros/melodic/share/roscpp_serialization", "/opt/ros/melodic/share/roscpp_traits", "/opt/ros/melodic/share/roscpp_tutorials", "/opt/ros/melodic/share/roscreate", "/opt/ros/melodic/share/ros_environment", "/opt/ros/melodic/share/roseus", "/opt/ros/melodic/share/rosgraph", "/opt/ros/melodic/share/rosgraph_msgs", "/opt/ros/melodic/share/roslang", "/opt/ros/melodic/share/roslaunch", "/opt/ros/melodic/share/roslib", "/opt/ros/melodic/share/roslint", "/opt/ros/melodic/share/roslisp", "/opt/ros/melodic/share/roslz4", "/opt/ros/melodic/share/rosmake", "/opt/ros/melodic/share/rosmaster", "/opt/ros/melodic/share/rosmsg", "/opt/ros/melodic/share/rosnode", "/opt/ros/melodic/share/rosout", "/opt/ros/melodic/share/rospack", "/opt/ros/melodic/share/rosparam", "/opt/ros/melodic/share/rosparam_shortcuts", "/opt/ros/melodic/share/rospy", "/opt/ros/melodic/share/rospy_tutorials", "/opt/ros/melodic/share/rosservice", "/opt/ros/melodic/share/rostest", "/opt/ros/melodic/share/rostime", "/opt/ros/melodic/share/rostopic", "/opt/ros/melodic/share/ros_tutorials", "/opt/ros/melodic/share/rosunit", "/opt/ros/melodic/share/roswtf", "/opt/ros/melodic/share/rotate_recovery", "/opt/ros/melodic/share/rqt_action", "/opt/ros/melodic/share/rqt_bag", "/opt/ros/melodic/share/rqt_bag_plugins", "/opt/ros/melodic/share/rqt_common_plugins", "/opt/ros/melodic/share/rqt_console", "/opt/ros/melodic/share/rqt_dep", "/opt/ros/melodic/share/rqt_graph", "/opt/ros/melodic/share/rqt_gui", "/opt/ros/melodic/share/rqt_gui_cpp", "/opt/ros/melodic/share/rqt_gui_py", "/opt/ros/melodic/share/rqt_image_view", "/opt/ros/melodic/share/rqt_launch", "/opt/ros/melodic/share/rqt_logger_level", "/opt/ros/melodic/share/rqt_moveit", "/opt/ros/melodic/share/rqt_msg", "/opt/ros/melodic/share/rqt_nav_view", "/opt/ros/melodic/share/rqt_plot", "/opt/ros/melodic/share/rqt_pose_view", "/opt/ros/melodic/share/rqt_publisher", "/opt/ros/melodic/share/rqt_py_common", "/opt/ros/melodic/share/rqt_py_console", "/opt/ros/melodic/share/rqt_reconfigure", "/opt/ros/melodic/share/rqt_robot_dashboard", "/opt/ros/melodic/share/rqt_robot_monitor", "/opt/ros/melodic/share/rqt_robot_plugins", "/opt/ros/melodic/share/rqt_robot_steering", "/opt/ros/melodic/share/rqt_runtime_monitor", "/opt/ros/melodic/share/rqt_rviz", "/opt/ros/melodic/share/rqt_service_caller", "/opt/ros/melodic/share/rqt_shell", "/opt/ros/melodic/share/rqt_srv", "/opt/ros/melodic/share/rqt_tf_tree", "/opt/ros/melodic/share/rqt_top", "/opt/ros/melodic/share/rqt_topic", "/opt/ros/melodic/share/rqt_web", "/opt/ros/melodic/share/rviz", "/opt/ros/melodic/share/rviz_plugin_tutorials", "/opt/ros/melodic/share/rviz_python_tutorial", "/opt/ros/melodic/share/rviz_visual_tools", "/opt/ros/melodic/share/sensor_msgs", "/opt/ros/melodic/share/simulators", "/opt/ros/melodic/share/std_msgs", "/opt/ros/melodic/share/std_srvs", "/opt/ros/melodic/share/stereo_image_proc", "/opt/ros/melodic/share/stereo_msgs", "/opt/ros/melodic/share/teleop_tools_msgs", "/opt/ros/melodic/share/teleop_twist_keyboard", "/opt/ros/melodic/share/tf", "/opt/ros/melodic/share/tf2", "/opt/ros/melodic/share/tf2_eigen", "/opt/ros/melodic/share/tf2_geometry_msgs", "/opt/ros/melodic/share/tf2_kdl", "/opt/ros/melodic/share/tf2_msgs", "/opt/ros/melodic/share/tf2_py", "/opt/ros/melodic/share/tf2_ros", "/opt/ros/melodic/share/tf_conversions", "/opt/ros/melodic/share/theora_image_transport", "/opt/ros/melodic/share/topic_tools", "/opt/ros/melodic/share/trac_ik_kinematics_plugin", "/opt/ros/melodic/share/trac_ik_lib", "/opt/ros/melodic/share/trajectory_msgs", "/opt/ros/melodic/share/transmission_interface", "/opt/ros/melodic/share/urdf", "/opt/ros/melodic/share/urdfdom_py", "/opt/ros/melodic/share/urdf_parser_plugin", "/opt/ros/melodic/share/urdf_sim_tutorial", "/opt/ros/melodic/share/urdf_tutorial", "/opt/ros/melodic/share/velocity_controllers", "/opt/ros/melodic/share/vision_opencv", "/opt/ros/melodic/share/visualization_marker_tutorials", "/opt/ros/melodic/share/visualization_msgs", "/opt/ros/melodic/share/visualization_tutorials", "/opt/ros/melodic/share/viz", "/opt/ros/melodic/share/warehouse_ros", "/opt/ros/melodic/share/xacro", "/opt/ros/melodic/share/xmlrpcpp"]

VOLUME [ "/opt/ros/melodic/lib/actionlib","/opt/ros/melodic/lib/actionlib_msgs","/opt/ros/melodic/lib/actionlib_tutorials","/opt/ros/melodic/lib/amcl","/opt/ros/melodic/lib/base_local_planner","/opt/ros/melodic/lib/catkin","/opt/ros/melodic/lib/clear_costmap_recovery","/opt/ros/melodic/lib/cmake_modules","/opt/ros/melodic/lib/common-lisp","/opt/ros/melodic/lib/common_msgs","/opt/ros/melodic/lib/common_tutorials","/opt/ros/melodic/lib/controller_interface","/opt/ros/melodic/lib/controller_manager","/opt/ros/melodic/lib/controller_manager_msgs","/opt/ros/melodic/lib/control_msgs","/opt/ros/melodic/lib/cpp_common","/opt/ros/melodic/lib/cv_bridge","/opt/ros/melodic/lib/depth_image_proc","/opt/ros/melodic/lib/desktop","/opt/ros/melodic/lib/doc","/opt/ros/melodic/lib/dynamic_reconfigure","/opt/ros/melodic/lib/effort_controllers","/opt/ros/melodic/lib/gazebo_dev","/opt/ros/melodic/lib/gazebo_msgs","/opt/ros/melodic/lib/gazebo_plugins","/opt/ros/melodic/lib/gazebo_ros","/opt/ros/melodic/lib/gazebo_ros_control","/opt/ros/melodic/lib/gazebo_ros_pkgs","/opt/ros/melodic/lib/gencpp","/opt/ros/melodic/lib/geneus","/opt/ros/melodic/lib/genlisp","/opt/ros/melodic/lib/genmsg","/opt/ros/melodic/lib/gennodejs","/opt/ros/melodic/lib/genpy","/opt/ros/melodic/lib/geometric_shapes","/opt/ros/melodic/lib/geometry","/opt/ros/melodic/lib/geometry_msgs","/opt/ros/melodic/lib/geometry_tutorials","/opt/ros/melodic/lib/graph_msgs","/opt/ros/melodic/lib/gripper_action_controller","/opt/ros/melodic/lib/hardware_interface","/opt/ros/melodic/lib/image_common","/opt/ros/melodic/lib/image_geometry","/opt/ros/melodic/lib/image_pipeline","/opt/ros/melodic/lib/image_proc","/opt/ros/melodic/lib/image_publisher","/opt/ros/melodic/lib/image_rotate","/opt/ros/melodic/lib/image_transport","/opt/ros/melodic/lib/image_transport_plugins","/opt/ros/melodic/lib/image_view","/opt/ros/melodic/lib/joint_limits_interface","/opt/ros/melodic/lib/joint_state_controller","/opt/ros/melodic/lib/joint_state_publisher","/opt/ros/melodic/lib/joint_state_publisher_gui","/opt/ros/melodic/lib/joint_trajectory_controller","/opt/ros/melodic/lib/joy_teleop","/opt/ros/melodic/lib/message_filters","/opt/ros/melodic/lib/message_generation","/opt/ros/melodic/lib/message_runtime","/opt/ros/melodic/lib/move_base","/opt/ros/melodic/lib/move_base_msgs","/opt/ros/melodic/lib/moveit","/opt/ros/melodic/lib/moveit_chomp_optimizer_adapter","/opt/ros/melodic/lib/moveit_commander","/opt/ros/melodic/lib/moveit_controller_manager_example","/opt/ros/melodic/lib/moveit_core","/opt/ros/melodic/lib/moveit_experimental","/opt/ros/melodic/lib/moveit_fake_controller_manager","/opt/ros/melodic/lib/moveit_kinematics","/opt/ros/melodic/lib/moveit_msgs","/opt/ros/melodic/lib/moveit_opw_kinematics_plugin","/opt/ros/melodic/lib/moveit_planners","/opt/ros/melodic/lib/moveit_planners_chomp","/opt/ros/melodic/lib/moveit_planners_ompl","/opt/ros/melodic/lib/moveit_plugins","/opt/ros/melodic/lib/moveit_pr2","/opt/ros/melodic/lib/moveit_python","/opt/ros/melodic/lib/moveit_resources","/opt/ros/melodic/lib/moveit_resources_fanuc_description","/opt/ros/melodic/lib/moveit_resources_fanuc_moveit_config","/opt/ros/melodic/lib/moveit_resources_panda_description","/opt/ros/melodic/lib/moveit_resources_panda_moveit_config","/opt/ros/melodic/lib/moveit_resources_pr2_description","/opt/ros/melodic/lib/moveit_resources_prbt_ikfast_manipulator_plugin","/opt/ros/melodic/lib/moveit_resources_prbt_moveit_config","/opt/ros/melodic/lib/moveit_resources_prbt_pg70_support","/opt/ros/melodic/lib/moveit_resources_prbt_support","/opt/ros/melodic/lib/moveit_ros","/opt/ros/melodic/lib/moveit_ros_benchmarks","/opt/ros/melodic/lib/moveit_ros_control_interface","/opt/ros/melodic/lib/moveit_ros_manipulation","/opt/ros/melodic/lib/moveit_ros_move_group","/opt/ros/melodic/lib/moveit_ros_occupancy_map_monitor","/opt/ros/melodic/lib/moveit_ros_perception","/opt/ros/melodic/lib/moveit_ros_planning","/opt/ros/melodic/lib/moveit_ros_planning_interface","/opt/ros/melodic/lib/moveit_ros_robot_interaction","/opt/ros/melodic/lib/moveit_ros_visualization","/opt/ros/melodic/lib/moveit_ros_warehouse","/opt/ros/melodic/lib/moveit_runtime","/opt/ros/melodic/lib/moveit_servo","/opt/ros/melodic/lib/moveit_setup_assistant","/opt/ros/melodic/lib/moveit_sim_controller","/opt/ros/melodic/lib/moveit_simple_controller_manager","/opt/ros/melodic/lib/moveit_visual_tools","/opt/ros/melodic/lib/nav_core","/opt/ros/melodic/lib/navfn","/opt/ros/melodic/lib/nav_msgs","/opt/ros/melodic/lib/object_recognition_msgs","/opt/ros/melodic/lib/octomap","/opt/ros/melodic/lib/octomap_msgs","/opt/ros/melodic/lib/pcl_conversions","/opt/ros/melodic/lib/pcl_msgs","/opt/ros/melodic/lib/pcl_ros","/opt/ros/melodic/lib/people_msgs","/opt/ros/melodic/lib/perception","/opt/ros/melodic/lib/perception_pcl","/opt/ros/melodic/lib/pluginlib","/opt/ros/melodic/lib/pluginlib_tutorials","/opt/ros/melodic/lib/position_controllers","/opt/ros/melodic/lib/pr2_controllers_msgs","/opt/ros/melodic/lib/pr2_description","/opt/ros/melodic/lib/pr2_mechanism_msgs","/opt/ros/melodic/lib/pr2_moveit_config","/opt/ros/melodic/lib/pr2_moveit_plugins","/opt/ros/melodic/lib/python_qt_binding","/opt/ros/melodic/lib/robot","/opt/ros/melodic/lib/robot_state_publisher","/opt/ros/melodic/lib/ros","/opt/ros/melodic/lib/rosbag","/opt/ros/melodic/lib/rosbag_migration_rule","/opt/ros/melodic/lib/rosbag_storage","/opt/ros/melodic/lib/ros_base","/opt/ros/melodic/lib/rosbash","/opt/ros/melodic/lib/rosboost_cfg","/opt/ros/melodic/lib/rosbuild","/opt/ros/melodic/lib/rosclean","/opt/ros/melodic/lib/ros_comm","/opt/ros/melodic/lib/rosconsole","/opt/ros/melodic/lib/rosconsole_bridge","/opt/ros/melodic/lib/ros_control","/opt/ros/melodic/lib/ros_control_boilerplate","/opt/ros/melodic/lib/ros_controllers","/opt/ros/melodic/lib/ros_core","/opt/ros/melodic/lib/roscpp","/opt/ros/melodic/lib/roscpp_core","/opt/ros/melodic/lib/roscpp_serialization","/opt/ros/melodic/lib/roscpp_traits","/opt/ros/melodic/lib/roscpp_tutorials","/opt/ros/melodic/lib/roscreate","/opt/ros/melodic/lib/ros_environment","/opt/ros/melodic/lib/roseus","/opt/ros/melodic/lib/rosgraph","/opt/ros/melodic/lib/rosgraph_msgs","/opt/ros/melodic/lib/roslang","/opt/ros/melodic/lib/roslaunch","/opt/ros/melodic/lib/roslib","/opt/ros/melodic/lib/roslint","/opt/ros/melodic/lib/roslisp","/opt/ros/melodic/lib/roslz4","/opt/ros/melodic/lib/rosmake","/opt/ros/melodic/lib/rosmaster","/opt/ros/melodic/lib/rosmsg","/opt/ros/melodic/lib/rosnode","/opt/ros/melodic/lib/rosout","/opt/ros/melodic/lib/rospack","/opt/ros/melodic/lib/rosparam","/opt/ros/melodic/lib/rosparam_shortcuts","/opt/ros/melodic/lib/rospy","/opt/ros/melodic/lib/rospy_tutorials","/opt/ros/melodic/lib/rosservice","/opt/ros/melodic/lib/rostest","/opt/ros/melodic/lib/rostime","/opt/ros/melodic/lib/rostopic","/opt/ros/melodic/lib/ros_tutorials","/opt/ros/melodic/lib/rosunit","/opt/ros/melodic/lib/roswtf","/opt/ros/melodic/lib/rotate_recovery","/opt/ros/melodic/lib/rqt_action","/opt/ros/melodic/lib/rqt_bag","/opt/ros/melodic/lib/rqt_bag_plugins","/opt/ros/melodic/lib/rqt_common_plugins","/opt/ros/melodic/lib/rqt_console","/opt/ros/melodic/lib/rqt_dep","/opt/ros/melodic/lib/rqt_graph","/opt/ros/melodic/lib/rqt_gui","/opt/ros/melodic/lib/rqt_gui_cpp","/opt/ros/melodic/lib/rqt_gui_py","/opt/ros/melodic/lib/rqt_image_view","/opt/ros/melodic/lib/rqt_launch","/opt/ros/melodic/lib/rqt_logger_level","/opt/ros/melodic/lib/rqt_moveit","/opt/ros/melodic/lib/rqt_msg","/opt/ros/melodic/lib/rqt_nav_view","/opt/ros/melodic/lib/rqt_plot","/opt/ros/melodic/lib/rqt_pose_view","/opt/ros/melodic/lib/rqt_publisher","/opt/ros/melodic/lib/rqt_py_common","/opt/ros/melodic/lib/rqt_py_console","/opt/ros/melodic/lib/rqt_reconfigure","/opt/ros/melodic/lib/rqt_robot_dashboard","/opt/ros/melodic/lib/rqt_robot_monitor","/opt/ros/melodic/lib/rqt_robot_plugins","/opt/ros/melodic/lib/rqt_robot_steering","/opt/ros/melodic/lib/rqt_runtime_monitor","/opt/ros/melodic/lib/rqt_rviz","/opt/ros/melodic/lib/rqt_service_caller","/opt/ros/melodic/lib/rqt_shell","/opt/ros/melodic/lib/rqt_srv","/opt/ros/melodic/lib/rqt_tf_tree","/opt/ros/melodic/lib/rqt_top","/opt/ros/melodic/lib/rqt_topic","/opt/ros/melodic/lib/rqt_web","/opt/ros/melodic/lib/rviz","/opt/ros/melodic/lib/rviz_plugin_tutorials","/opt/ros/melodic/lib/rviz_python_tutorial","/opt/ros/melodic/lib/rviz_visual_tools","/opt/ros/melodic/lib/sensor_msgs","/opt/ros/melodic/lib/simulators","/opt/ros/melodic/lib/std_msgs","/opt/ros/melodic/lib/std_srvs","/opt/ros/melodic/lib/stereo_image_proc","/opt/ros/melodic/lib/stereo_msgs","/opt/ros/melodic/lib/teleop_tools_msgs","/opt/ros/melodic/lib/teleop_twist_keyboard","/opt/ros/melodic/lib/tf","/opt/ros/melodic/lib/tf2","/opt/ros/melodic/lib/tf2_eigen","/opt/ros/melodic/lib/tf2_geometry_msgs","/opt/ros/melodic/lib/tf2_kdl","/opt/ros/melodic/lib/tf2_msgs","/opt/ros/melodic/lib/tf2_py","/opt/ros/melodic/lib/tf2_ros","/opt/ros/melodic/lib/tf_conversions","/opt/ros/melodic/lib/theora_image_transport","/opt/ros/melodic/lib/topic_tools","/opt/ros/melodic/lib/trac_ik_kinematics_plugin","/opt/ros/melodic/lib/trac_ik_lib","/opt/ros/melodic/lib/trajectory_msgs","/opt/ros/melodic/lib/transmission_interface","/opt/ros/melodic/lib/urdf","/opt/ros/melodic/lib/urdfdom_py","/opt/ros/melodic/lib/urdf_parser_plugin","/opt/ros/melodic/lib/urdf_sim_tutorial","/opt/ros/melodic/lib/urdf_tutorial","/opt/ros/melodic/lib/velocity_controllers","/opt/ros/melodic/lib/vision_opencv","/opt/ros/melodic/lib/visualization_marker_tutorials","/opt/ros/melodic/lib/visualization_msgs","/opt/ros/melodic/lib/visualization_tutorials","/opt/ros/melodic/lib/viz","/opt/ros/melodic/lib/warehouse_ros","/opt/ros/melodic/lib/xacro","/opt/ros/melodic/lib/xmlrpcpp"]

VOLUME [ "/opt/ros/melodic/include/actioninclude","/opt/ros/melodic/include/actioninclude_msgs","/opt/ros/melodic/include/actioninclude_tutorials","/opt/ros/melodic/include/amcl","/opt/ros/melodic/include/base_local_planner","/opt/ros/melodic/include/catkin","/opt/ros/melodic/include/clear_costmap_recovery","/opt/ros/melodic/include/cmake_modules","/opt/ros/melodic/include/common-lisp","/opt/ros/melodic/include/common_msgs","/opt/ros/melodic/include/common_tutorials","/opt/ros/melodic/include/controller_interface","/opt/ros/melodic/include/controller_manager","/opt/ros/melodic/include/controller_manager_msgs","/opt/ros/melodic/include/control_msgs","/opt/ros/melodic/include/cpp_common","/opt/ros/melodic/include/cv_bridge","/opt/ros/melodic/include/depth_image_proc","/opt/ros/melodic/include/desktop","/opt/ros/melodic/include/doc","/opt/ros/melodic/include/dynamic_reconfigure","/opt/ros/melodic/include/effort_controllers","/opt/ros/melodic/include/gazebo_dev","/opt/ros/melodic/include/gazebo_msgs","/opt/ros/melodic/include/gazebo_plugins","/opt/ros/melodic/include/gazebo_ros","/opt/ros/melodic/include/gazebo_ros_control","/opt/ros/melodic/include/gazebo_ros_pkgs","/opt/ros/melodic/include/gencpp","/opt/ros/melodic/include/geneus","/opt/ros/melodic/include/genlisp","/opt/ros/melodic/include/genmsg","/opt/ros/melodic/include/gennodejs","/opt/ros/melodic/include/genpy","/opt/ros/melodic/include/geometric_shapes","/opt/ros/melodic/include/geometry","/opt/ros/melodic/include/geometry_msgs","/opt/ros/melodic/include/geometry_tutorials","/opt/ros/melodic/include/graph_msgs","/opt/ros/melodic/include/gripper_action_controller","/opt/ros/melodic/include/hardware_interface","/opt/ros/melodic/include/image_common","/opt/ros/melodic/include/image_geometry","/opt/ros/melodic/include/image_pipeline","/opt/ros/melodic/include/image_proc","/opt/ros/melodic/include/image_publisher","/opt/ros/melodic/include/image_rotate","/opt/ros/melodic/include/image_transport","/opt/ros/melodic/include/image_transport_plugins","/opt/ros/melodic/include/image_view","/opt/ros/melodic/include/joint_limits_interface","/opt/ros/melodic/include/joint_state_controller","/opt/ros/melodic/include/joint_state_publisher","/opt/ros/melodic/include/joint_state_publisher_gui","/opt/ros/melodic/include/joint_trajectory_controller","/opt/ros/melodic/include/joy_teleop","/opt/ros/melodic/include/message_filters","/opt/ros/melodic/include/message_generation","/opt/ros/melodic/include/message_runtime","/opt/ros/melodic/include/move_base","/opt/ros/melodic/include/move_base_msgs","/opt/ros/melodic/include/moveit","/opt/ros/melodic/include/moveit_chomp_optimizer_adapter","/opt/ros/melodic/include/moveit_commander","/opt/ros/melodic/include/moveit_controller_manager_example","/opt/ros/melodic/include/moveit_core","/opt/ros/melodic/include/moveit_experimental","/opt/ros/melodic/include/moveit_fake_controller_manager","/opt/ros/melodic/include/moveit_kinematics","/opt/ros/melodic/include/moveit_msgs","/opt/ros/melodic/include/moveit_opw_kinematics_plugin","/opt/ros/melodic/include/moveit_planners","/opt/ros/melodic/include/moveit_planners_chomp","/opt/ros/melodic/include/moveit_planners_ompl","/opt/ros/melodic/include/moveit_plugins","/opt/ros/melodic/include/moveit_pr2","/opt/ros/melodic/include/moveit_python","/opt/ros/melodic/include/moveit_resources","/opt/ros/melodic/include/moveit_resources_fanuc_description","/opt/ros/melodic/include/moveit_resources_fanuc_moveit_config","/opt/ros/melodic/include/moveit_resources_panda_description","/opt/ros/melodic/include/moveit_resources_panda_moveit_config","/opt/ros/melodic/include/moveit_resources_pr2_description","/opt/ros/melodic/include/moveit_resources_prbt_ikfast_manipulator_plugin","/opt/ros/melodic/include/moveit_resources_prbt_moveit_config","/opt/ros/melodic/include/moveit_resources_prbt_pg70_support","/opt/ros/melodic/include/moveit_resources_prbt_support","/opt/ros/melodic/include/moveit_ros","/opt/ros/melodic/include/moveit_ros_benchmarks","/opt/ros/melodic/include/moveit_ros_control_interface","/opt/ros/melodic/include/moveit_ros_manipulation","/opt/ros/melodic/include/moveit_ros_move_group","/opt/ros/melodic/include/moveit_ros_occupancy_map_monitor","/opt/ros/melodic/include/moveit_ros_perception","/opt/ros/melodic/include/moveit_ros_planning","/opt/ros/melodic/include/moveit_ros_planning_interface","/opt/ros/melodic/include/moveit_ros_robot_interaction","/opt/ros/melodic/include/moveit_ros_visualization","/opt/ros/melodic/include/moveit_ros_warehouse","/opt/ros/melodic/include/moveit_runtime","/opt/ros/melodic/include/moveit_servo","/opt/ros/melodic/include/moveit_setup_assistant","/opt/ros/melodic/include/moveit_sim_controller","/opt/ros/melodic/include/moveit_simple_controller_manager","/opt/ros/melodic/include/moveit_visual_tools","/opt/ros/melodic/include/nav_core","/opt/ros/melodic/include/navfn","/opt/ros/melodic/include/nav_msgs","/opt/ros/melodic/include/object_recognition_msgs","/opt/ros/melodic/include/octomap","/opt/ros/melodic/include/octomap_msgs","/opt/ros/melodic/include/pcl_conversions","/opt/ros/melodic/include/pcl_msgs","/opt/ros/melodic/include/pcl_ros","/opt/ros/melodic/include/people_msgs","/opt/ros/melodic/include/perception","/opt/ros/melodic/include/perception_pcl","/opt/ros/melodic/include/plugininclude","/opt/ros/melodic/include/plugininclude_tutorials","/opt/ros/melodic/include/position_controllers","/opt/ros/melodic/include/pr2_controllers_msgs","/opt/ros/melodic/include/pr2_description","/opt/ros/melodic/include/pr2_mechanism_msgs","/opt/ros/melodic/include/pr2_moveit_config","/opt/ros/melodic/include/pr2_moveit_plugins","/opt/ros/melodic/include/python_qt_binding","/opt/ros/melodic/include/robot","/opt/ros/melodic/include/robot_state_publisher","/opt/ros/melodic/include/ros","/opt/ros/melodic/include/rosbag","/opt/ros/melodic/include/rosbag_migration_rule","/opt/ros/melodic/include/rosbag_storage","/opt/ros/melodic/include/ros_base","/opt/ros/melodic/include/rosbash","/opt/ros/melodic/include/rosboost_cfg","/opt/ros/melodic/include/rosbuild","/opt/ros/melodic/include/rosclean","/opt/ros/melodic/include/ros_comm","/opt/ros/melodic/include/rosconsole","/opt/ros/melodic/include/rosconsole_bridge","/opt/ros/melodic/include/ros_control","/opt/ros/melodic/include/ros_control_boilerplate","/opt/ros/melodic/include/ros_controllers","/opt/ros/melodic/include/ros_core","/opt/ros/melodic/include/roscpp","/opt/ros/melodic/include/roscpp_core","/opt/ros/melodic/include/roscpp_serialization","/opt/ros/melodic/include/roscpp_traits","/opt/ros/melodic/include/roscpp_tutorials","/opt/ros/melodic/include/roscreate","/opt/ros/melodic/include/ros_environment","/opt/ros/melodic/include/roseus","/opt/ros/melodic/include/rosgraph","/opt/ros/melodic/include/rosgraph_msgs","/opt/ros/melodic/include/roslang","/opt/ros/melodic/include/roslaunch","/opt/ros/melodic/include/rosinclude","/opt/ros/melodic/include/roslint","/opt/ros/melodic/include/roslisp","/opt/ros/melodic/include/roslz4","/opt/ros/melodic/include/rosmake","/opt/ros/melodic/include/rosmaster","/opt/ros/melodic/include/rosmsg","/opt/ros/melodic/include/rosnode","/opt/ros/melodic/include/rosout","/opt/ros/melodic/include/rospack","/opt/ros/melodic/include/rosparam","/opt/ros/melodic/include/rosparam_shortcuts","/opt/ros/melodic/include/rospy","/opt/ros/melodic/include/rospy_tutorials","/opt/ros/melodic/include/rosservice","/opt/ros/melodic/include/rostest","/opt/ros/melodic/include/rostime","/opt/ros/melodic/include/rostopic","/opt/ros/melodic/include/ros_tutorials","/opt/ros/melodic/include/rosunit","/opt/ros/melodic/include/roswtf","/opt/ros/melodic/include/rotate_recovery","/opt/ros/melodic/include/rqt_action","/opt/ros/melodic/include/rqt_bag","/opt/ros/melodic/include/rqt_bag_plugins","/opt/ros/melodic/include/rqt_common_plugins","/opt/ros/melodic/include/rqt_console","/opt/ros/melodic/include/rqt_dep","/opt/ros/melodic/include/rqt_graph","/opt/ros/melodic/include/rqt_gui","/opt/ros/melodic/include/rqt_gui_cpp","/opt/ros/melodic/include/rqt_gui_py","/opt/ros/melodic/include/rqt_image_view","/opt/ros/melodic/include/rqt_launch","/opt/ros/melodic/include/rqt_logger_level","/opt/ros/melodic/include/rqt_moveit","/opt/ros/melodic/include/rqt_msg","/opt/ros/melodic/include/rqt_nav_view","/opt/ros/melodic/include/rqt_plot","/opt/ros/melodic/include/rqt_pose_view","/opt/ros/melodic/include/rqt_publisher","/opt/ros/melodic/include/rqt_py_common","/opt/ros/melodic/include/rqt_py_console","/opt/ros/melodic/include/rqt_reconfigure","/opt/ros/melodic/include/rqt_robot_dashboard","/opt/ros/melodic/include/rqt_robot_monitor","/opt/ros/melodic/include/rqt_robot_plugins","/opt/ros/melodic/include/rqt_robot_steering","/opt/ros/melodic/include/rqt_runtime_monitor","/opt/ros/melodic/include/rqt_rviz","/opt/ros/melodic/include/rqt_service_caller","/opt/ros/melodic/include/rqt_shell","/opt/ros/melodic/include/rqt_srv","/opt/ros/melodic/include/rqt_tf_tree","/opt/ros/melodic/include/rqt_top","/opt/ros/melodic/include/rqt_topic","/opt/ros/melodic/include/rqt_web","/opt/ros/melodic/include/rviz","/opt/ros/melodic/include/rviz_plugin_tutorials","/opt/ros/melodic/include/rviz_python_tutorial","/opt/ros/melodic/include/rviz_visual_tools","/opt/ros/melodic/include/sensor_msgs","/opt/ros/melodic/include/simulators","/opt/ros/melodic/include/std_msgs","/opt/ros/melodic/include/std_srvs","/opt/ros/melodic/include/stereo_image_proc","/opt/ros/melodic/include/stereo_msgs","/opt/ros/melodic/include/teleop_tools_msgs","/opt/ros/melodic/include/teleop_twist_keyboard","/opt/ros/melodic/include/tf","/opt/ros/melodic/include/tf2","/opt/ros/melodic/include/tf2_eigen","/opt/ros/melodic/include/tf2_geometry_msgs","/opt/ros/melodic/include/tf2_kdl","/opt/ros/melodic/include/tf2_msgs","/opt/ros/melodic/include/tf2_py","/opt/ros/melodic/include/tf2_ros","/opt/ros/melodic/include/tf_conversions","/opt/ros/melodic/include/theora_image_transport","/opt/ros/melodic/include/topic_tools","/opt/ros/melodic/include/trac_ik_kinematics_plugin","/opt/ros/melodic/include/trac_ik_include","/opt/ros/melodic/include/trajectory_msgs","/opt/ros/melodic/include/transmission_interface","/opt/ros/melodic/include/urdf","/opt/ros/melodic/include/urdfdom_py","/opt/ros/melodic/include/urdf_parser_plugin","/opt/ros/melodic/include/urdf_sim_tutorial","/opt/ros/melodic/include/urdf_tutorial","/opt/ros/melodic/include/velocity_controllers","/opt/ros/melodic/include/vision_opencv","/opt/ros/melodic/include/visualization_marker_tutorials","/opt/ros/melodic/include/visualization_msgs","/opt/ros/melodic/include/visualization_tutorials","/opt/ros/melodic/include/viz","/opt/ros/melodic/include/warehouse_ros","/opt/ros/melodic/include/xacro","/opt/ros/melodic/include/xmlrpcpp"]

#VOLUME ["/opt/ros/melodic/share/hsrb_meshes", "/opt/ros/melodic/share/justina_plugins", "/opt/ros/melodic/share/gazebo_ros", "/opt/ros/melodic/lib/gazebo_ros", "/opt/ros/melodic/lib/python2.7/dist-packages/gazebo_ros", "/opt/ros/melodic/lib/python2.7/dist-packages/gazebo_msgs", "/opt/ros/melodic/share/tmc_control_msgs", "/opt/ros/melodic/lib/python2.7/dist-packages/tmc_control_msgs", "/opt/ros/melodic/include/tmc_control_msgs", "/opt/ros/melodic/lib/justina_tools", "/opt/ros/melodic/share/justina_tools", "/opt/ros/melodic/include/justina_tools", "/opt/ros/melodic/include/manip_msgs", "/opt/ros/melodic/share/manip_msgs", "/opt/ros/melodic/lib/python2.7/dist-packages/manip_msgs", "/opt/ros/melodic/include/navig_msgs", "/opt/ros/melodic/share/navig_msgs", "/opt/ros/melodic/lib/python2.7/dist-packages/navig_msgs", "/opt/ros/melodic/include/vision_msgs", "/opt/ros/melodic/share/vision_msgs", "/opt/ros/melodic/lib/python2.7/dist-packages/vision_msgs", "/opt/ros/melodic/include/visualization_msgs", "/opt/ros/melodic/share/visualization_msgs", "/opt/ros/melodic/lib/python2.7/dist-packages/visualization_msgs", "/opt/ros/melodic/include/knowledge_msgs", "/opt/ros/melodic/share/knowledge_msgs", "/opt/ros/melodic/lib/python2.7/dist-packages/knowledge_msgs", "/opt/ros/melodic/include/env_msgs", "/opt/ros/melodic/share/env_msgs", "/opt/ros/melodic/lib/python2.7/dist-packages/env_msgs", "/opt/ros/melodic/lib/kinect_man", "/opt/ros/melodic/share/kinect_man", "/opt/ros/melodic/lib/gmapping /opt/ros/melodic/share/gmapping", "/opt/ros/melodic/lib/joy", "/opt/ros/melodic/share/joy", "/opt/ros/melodic/include/bbros_bridge", "/opt/ros/melodic/share/bbros_bridge", "/opt/ros/melodic/lib/python2.7/dist-packages/bbros_bridge", "/opt/ros/melodic/lib/head", "/opt/ros/melodic/share/head", "/opt/ros/melodic/lib/arms", "/opt/ros/melodic/share/arms", "/opt/ros/melodic/lib/laser_manager", "/opt/ros/melodic/share/laser_manager", "/opt/ros/melodic/lib/shared_libs", "/opt/ros/melodic/share/obj_reco", "/opt/ros/melodic/lib/obj_reco", "/usr/local/lib"]
#
#VOLUME ["/opt/ros/melodic/share/tmc_gazebo_task_evaluators", "/opt/ros/melodic/lib/tmc_gazebo_task_evaluators"]
#VOLUME ["/opt/ros/melodic/share/tmc_wrs_gazebo_worlds", "/opt/ros/melodic/lib/tmc_wrs_gazebo_worlds", "/usr/lib/python2.7/dist-packages/scipy"]
#
#VOLUME ["/opt/ros/melodic/include/hri_msgs", "/opt/ros/melodic/share/hri_msgs", "/opt/ros/melodic/lib/python2.7/dist-packages/hri_msgs"]
#
#VOLUME ["/opt/ros/melodic/lib/pointcloud_to_laserscan", "/opt/ros/melodic/share/pointcloud_to_laserscan", "/opt/ros/melodic/lib/laser_mixer", "/opt/ros/melodic/share/laser_mixer", "/opt/ros/melodic/lib/jrviz", "/opt/ros/melodic/share/jrviz", "/opt/ros/melodic/lib/map_server", "/opt/ros/melodic/share/map_server", "/opt/ros/melodic/lib/amcl", "/opt/ros/melodic/share/amcl"]
#
#VOLUME ["/opt/ros/melodic/share/obs_detect", "/opt/ros/melodic/lib/obs_detect", "/opt/ros/melodic/share/mvn_pln", "/opt/ros/melodic/lib/mvn_pln"]
#
#VOLUME ["/opt/ros/melodic/share/pcl_conversions", "/opt/ros/melodic/include/pcl_conversions", "/opt/ros/melodic/lib/python2.7/dist-packages/pcl_conversions", "/usr/include/pcl-1.8", "/usr/include/ni", "/usr/include/openni2", "/usr/include/vtk-6.3", "/usr/include/freetype2", "/usr/include/hdf5", "/usr/include/libxml2", "/usr/include/jsoncpp", "/usr/include/tcl", "/opt/ros/melodic/share/pcl_msgs", "/opt/ros/melodic/include/pcl_msgs", "/opt/ros/melodic/lib/python2.7/dist-packages/pcl_msgs", "/opt/ros/melodic/share/pcl_ros", "/opt/ros/melodic/lib/pcl_ros", "/opt/ros/melodic/include/pcl_ros", "/opt/ros/melodic/lib/python2.7/dist-packages/pcl_ros"]
#
#VOLUME ["/opt/ros/melodic/include/point_cloud_manager", "/opt/ros/melodic/share/point_cloud_manager", "/opt/ros/melodic/lib/point_cloud_manager"]
#VOLUME ["/opt/ros/melodic/include/sound_play", "/opt/ros/melodic/share/sound_play", "/opt/ros/melodic/lib/sound_play"]
VOLUME ["/usr/lib/x86_64-linux-gnu/hdf5", "/usr/lib/python2.7/dist-packages/scipy", "/usr/include/pcl-1.8", "/usr/include/ni", "/usr/include/openni2", "/usr/include/vtk-6.3", "/usr/include/freetype2", "/usr/include/hdf5", "/usr/include/libxml2", "/usr/include/jsoncpp"]
#VOLUME ["/usr/lib/libOpenNI2.so", "/usr/lib/libOpenNI2.so.0"]

#VOLUME [ /opt/ros/melodic/share/obj_reco /opt/ros/melodic/lib/obj_reco ]

CMD ["/usr/local/bin/supervisord", "-n", "-c", "/etc/supervisor/supervisord.conf"]
