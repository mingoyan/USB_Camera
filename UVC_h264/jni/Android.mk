# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

include $(CLEAR_VARS)  
LOCAL_MODULE := x264      # name it whatever
LOCAL_SRC_FILES := x264/lib/libx264.a
include $(PREBUILT_STATIC_LIBRARY)    #or PREBUILT_STATIC_LIBRARY

include $(CLEAR_VARS)
LOCAL_C_INCLUDES+=	$(LOCAL_PATH)/x264/include
LOCAL_STATIC_LIBRARIES := x264

LOCAL_MODULE    := ImageProc
LOCAL_SRC_FILES := ImageProc.cpp video_process.cpp video_writer.cpp video_capture.cpp	\
					 h264encoder.cpp utils.cpp color.cpp avilib.cpp
					 
LOCAL_LDLIBS    := -lm -llog -ljnigraphics 
					

include $(BUILD_SHARED_LIBRARY)
