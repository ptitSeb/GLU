#GLU-9.0.0 Android port
#ptitSeb

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := GLU

APP_PLATFORM := android-14

#include $(GLU_CONFIG)

LOCAL_CFLAGS += -fsigned-char -DLIBRARYBUILD

LOCAL_CONLYFLAGS += -std=c99

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/src/include \
	$(LOCAL_PATH)/src/libnurbs/internals \
	$(LOCAL_PATH)/src/libnurbs/interface \
	$(LOCAL_PATH)/src/libnurbs/nurbtess

LOCAL_SRC_FILES := \
	src/libutil/error.c					\
	src/libutil/glue.c					\
	src/libutil/mipmap.c					\
	src/libutil/project.c					\
	src/libutil/quad.c					\
	src/libutil/registry.c					\
	src/libtess/dict.c					\
	src/libtess/geom.c					\
	src/libtess/memalloc.c					\
	src/libtess/mesh.c					\
	src/libtess/normal.c					\
	src/libtess/priorityq.c					\
	src/libtess/render.c					\
	src/libtess/sweep.c					\
	src/libtess/tess.c					\
	src/libtess/tessmono.c					\
	src/libnurbs/interface/bezierEval.cc			\
	src/libnurbs/interface/bezierPatch.cc			\
	src/libnurbs/interface/bezierPatchMesh.cc		\
	src/libnurbs/interface/glcurveval.cc			\
	src/libnurbs/interface/glinterface.cc			\
	src/libnurbs/interface/glrenderer.cc			\
	src/libnurbs/interface/glsurfeval.cc			\
	src/libnurbs/interface/incurveeval.cc			\
	src/libnurbs/interface/insurfeval.cc			\
	src/libnurbs/internals/arc.cc				\
	src/libnurbs/internals/arcsorter.cc			\
	src/libnurbs/internals/arctess.cc			\
	src/libnurbs/internals/backend.cc			\
	src/libnurbs/internals/basiccrveval.cc			\
	src/libnurbs/internals/basicsurfeval.cc			\
	src/libnurbs/internals/bin.cc				\
	src/libnurbs/internals/bufpool.cc			\
	src/libnurbs/internals/cachingeval.cc			\
	src/libnurbs/internals/ccw.cc				\
	src/libnurbs/internals/coveandtiler.cc			\
	src/libnurbs/internals/curve.cc				\
	src/libnurbs/internals/curvelist.cc			\
	src/libnurbs/internals/curvesub.cc			\
	src/libnurbs/internals/dataTransform.cc			\
	src/libnurbs/internals/displaylist.cc			\
	src/libnurbs/internals/flist.cc				\
	src/libnurbs/internals/flistsorter.cc			\
	src/libnurbs/internals/hull.cc				\
	src/libnurbs/internals/intersect.cc			\
	src/libnurbs/internals/knotvector.cc			\
	src/libnurbs/internals/mapdesc.cc			\
	src/libnurbs/internals/mapdescv.cc			\
	src/libnurbs/internals/maplist.cc			\
	src/libnurbs/internals/mesher.cc			\
	src/libnurbs/internals/monoTriangulationBackend.cc	\
	src/libnurbs/internals/monotonizer.cc			\
	src/libnurbs/internals/mycode.cc			\
	src/libnurbs/internals/nurbsinterfac.cc			\
	src/libnurbs/internals/nurbstess.cc			\
	src/libnurbs/internals/patch.cc				\
	src/libnurbs/internals/patchlist.cc			\
	src/libnurbs/internals/quilt.cc				\
	src/libnurbs/internals/reader.cc			\
	src/libnurbs/internals/renderhints.cc			\
	src/libnurbs/internals/slicer.cc			\
	src/libnurbs/internals/sorter.cc			\
	src/libnurbs/internals/splitarcs.cc			\
	src/libnurbs/internals/subdivider.cc			\
	src/libnurbs/internals/tobezier.cc			\
	src/libnurbs/internals/trimline.cc			\
	src/libnurbs/internals/trimregion.cc			\
	src/libnurbs/internals/trimvertpool.cc			\
	src/libnurbs/internals/uarray.cc			\
	src/libnurbs/internals/varray.cc			\
	src/libnurbs/nurbtess/directedLine.cc			\
	src/libnurbs/nurbtess/gridWrap.cc			\
	src/libnurbs/nurbtess/monoChain.cc			\
	src/libnurbs/nurbtess/monoPolyPart.cc			\
	src/libnurbs/nurbtess/monoTriangulation.cc		\
	src/libnurbs/nurbtess/partitionX.cc			\
	src/libnurbs/nurbtess/partitionY.cc			\
	src/libnurbs/nurbtess/polyDBG.cc			\
	src/libnurbs/nurbtess/polyUtil.cc			\
	src/libnurbs/nurbtess/primitiveStream.cc		\
	src/libnurbs/nurbtess/quicksort.cc			\
	src/libnurbs/nurbtess/rectBlock.cc			\
	src/libnurbs/nurbtess/sampleComp.cc			\
	src/libnurbs/nurbtess/sampleCompBot.cc			\
	src/libnurbs/nurbtess/sampleCompRight.cc		\
	src/libnurbs/nurbtess/sampleCompTop.cc			\
	src/libnurbs/nurbtess/sampleMonoPoly.cc			\
	src/libnurbs/nurbtess/sampledLine.cc			\
	src/libnurbs/nurbtess/searchTree.cc

#LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
#LOCAL_LDLIBS := -ldl -llog

#include $(BUILD_SHARED_LIBRARY)

include $(BUILD_STATIC_LIBRARY)
