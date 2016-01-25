#!/bin/bash

# based on http://www.streamcomputing.eu/blog/2011-06-24/install-opencl-on-debianubuntu-orderly/

DIR=include

for VERSION in 1.1 1.2; do
        echo "Downloading headers for version ${VERSION}..."

        mkdir -p "${DIR}/CL-${VERSION}"
        cd "${DIR}/CL-${VERSION}"

        wget -q http://www.khronos.org/registry/cl/api/${VERSION}/cl_d3d10.h \
                http://www.khronos.org/registry/cl/api/${VERSION}/cl_d3d11.h \
                http://www.khronos.org/registry/cl/api/${VERSION}/cl_dx9_media_sharing.h \
                http://www.khronos.org/registry/cl/api/${VERSION}/cl_ext.h \
                http://www.khronos.org/registry/cl/api/${VERSION}/cl_gl_ext.h \
                http://www.khronos.org/registry/cl/api/${VERSION}/cl_gl.h \
                http://www.khronos.org/registry/cl/api/${VERSION}/cl.h \
                http://www.khronos.org/registry/cl/api/${VERSION}/cl_platform.h \
                http://www.khronos.org/registry/cl/api/${VERSION}/opencl.h \
                http://www.khronos.org/registry/cl/api/${VERSION}/cl.hpp

done

