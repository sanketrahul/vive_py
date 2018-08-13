# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vive_py: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ivive_py:/home/baxter2/ros_ws/src/vive_py/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vive_py_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/baxter2/ros_ws/src/vive_py/msg/Num.msg" NAME_WE)
add_custom_target(_vive_py_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vive_py" "/home/baxter2/ros_ws/src/vive_py/msg/Num.msg" ""
)

get_filename_component(_filename "/home/baxter2/ros_ws/src/vive_py/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_vive_py_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vive_py" "/home/baxter2/ros_ws/src/vive_py/srv/AddTwoInts.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vive_py
  "/home/baxter2/ros_ws/src/vive_py/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vive_py
)

### Generating Services
_generate_srv_cpp(vive_py
  "/home/baxter2/ros_ws/src/vive_py/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vive_py
)

### Generating Module File
_generate_module_cpp(vive_py
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vive_py
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vive_py_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vive_py_generate_messages vive_py_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/baxter2/ros_ws/src/vive_py/msg/Num.msg" NAME_WE)
add_dependencies(vive_py_generate_messages_cpp _vive_py_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/baxter2/ros_ws/src/vive_py/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(vive_py_generate_messages_cpp _vive_py_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vive_py_gencpp)
add_dependencies(vive_py_gencpp vive_py_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vive_py_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(vive_py
  "/home/baxter2/ros_ws/src/vive_py/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vive_py
)

### Generating Services
_generate_srv_eus(vive_py
  "/home/baxter2/ros_ws/src/vive_py/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vive_py
)

### Generating Module File
_generate_module_eus(vive_py
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vive_py
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(vive_py_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(vive_py_generate_messages vive_py_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/baxter2/ros_ws/src/vive_py/msg/Num.msg" NAME_WE)
add_dependencies(vive_py_generate_messages_eus _vive_py_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/baxter2/ros_ws/src/vive_py/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(vive_py_generate_messages_eus _vive_py_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vive_py_geneus)
add_dependencies(vive_py_geneus vive_py_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vive_py_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vive_py
  "/home/baxter2/ros_ws/src/vive_py/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vive_py
)

### Generating Services
_generate_srv_lisp(vive_py
  "/home/baxter2/ros_ws/src/vive_py/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vive_py
)

### Generating Module File
_generate_module_lisp(vive_py
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vive_py
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vive_py_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vive_py_generate_messages vive_py_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/baxter2/ros_ws/src/vive_py/msg/Num.msg" NAME_WE)
add_dependencies(vive_py_generate_messages_lisp _vive_py_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/baxter2/ros_ws/src/vive_py/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(vive_py_generate_messages_lisp _vive_py_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vive_py_genlisp)
add_dependencies(vive_py_genlisp vive_py_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vive_py_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(vive_py
  "/home/baxter2/ros_ws/src/vive_py/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vive_py
)

### Generating Services
_generate_srv_nodejs(vive_py
  "/home/baxter2/ros_ws/src/vive_py/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vive_py
)

### Generating Module File
_generate_module_nodejs(vive_py
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vive_py
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(vive_py_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(vive_py_generate_messages vive_py_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/baxter2/ros_ws/src/vive_py/msg/Num.msg" NAME_WE)
add_dependencies(vive_py_generate_messages_nodejs _vive_py_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/baxter2/ros_ws/src/vive_py/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(vive_py_generate_messages_nodejs _vive_py_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vive_py_gennodejs)
add_dependencies(vive_py_gennodejs vive_py_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vive_py_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vive_py
  "/home/baxter2/ros_ws/src/vive_py/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vive_py
)

### Generating Services
_generate_srv_py(vive_py
  "/home/baxter2/ros_ws/src/vive_py/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vive_py
)

### Generating Module File
_generate_module_py(vive_py
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vive_py
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vive_py_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vive_py_generate_messages vive_py_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/baxter2/ros_ws/src/vive_py/msg/Num.msg" NAME_WE)
add_dependencies(vive_py_generate_messages_py _vive_py_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/baxter2/ros_ws/src/vive_py/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(vive_py_generate_messages_py _vive_py_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vive_py_genpy)
add_dependencies(vive_py_genpy vive_py_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vive_py_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vive_py)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vive_py
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(vive_py_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vive_py)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vive_py
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(vive_py_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vive_py)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vive_py
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(vive_py_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vive_py)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vive_py
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(vive_py_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vive_py)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vive_py\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vive_py
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(vive_py_generate_messages_py std_msgs_generate_messages_py)
endif()
