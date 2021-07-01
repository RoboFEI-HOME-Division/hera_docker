#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/workspace/dockerfile/catkin_hera/src/simulation_system/agent"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/workspace/dockerfile/catkin_hera/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/workspace/dockerfile/catkin_hera/install/lib/python2.7/dist-packages:/workspace/dockerfile/catkin_hera/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/workspace/dockerfile/catkin_hera/build" \
    "/usr/bin/python2" \
    "/workspace/dockerfile/catkin_hera/src/simulation_system/agent/setup.py" \
     \
    build --build-base "/workspace/dockerfile/catkin_hera/build/simulation_system/agent" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/workspace/dockerfile/catkin_hera/install" --install-scripts="/workspace/dockerfile/catkin_hera/install/bin"
