#/**********************************************************\ 
# Auto-generated Mac project definition file for the
# DepthJS Plugin project
#\**********************************************************/

# Mac template platform definition CMake file
# Included from ../CMakeLists.txt

# remember that the current source dir is the project root; this file is in Mac/
file (GLOB PLATFORM RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}
    Mac/[^.]*.cpp
    Mac/[^.]*.h
    Mac/[^.]*.cmake
	Mac/[^.]*.mm
    )

# use this to add preprocessor definitions
add_definitions(
    
)

find_library(OPENGL_FRAMEWORK OpenGL)
find_library(QUARTZ_CORE_FRAMEWORK QuartzCore)
find_library(CORE_FOUNDATION_FRAMEWORK CoreFoundation)

include_directories(${CORE_FOUNDATION_FRAMEWORK})
include_directories("/Users/royshilkrot/Downloads/NITE-Bin-MacOSX-v1.4.1.2/Include")
include_directories("/Users/royshilkrot/Downloads/OpenNI-Bin-MacOSX-v1.3.2.3/Include")
 
set(OPENNI_XML_FILE "/Users/royshilkrot/Downloads/NITE-Bin-MacOSX-v1.4.1.2/Data/Sample-Tracking.xml")
set_source_files_properties(
	${OPENNI_XML_FILE}
	PROPERTIES
	MACOSX_PACKAGE_LOCATION "Resources"
)

SOURCE_GROUP(Mac FILES ${PLATFORM})

set (SOURCES
    ${SOURCES}
    ${PLATFORM}
	${OPENNI_XML_FILE}
    )

set(PLIST "Mac/bundle_template/Info.plist")
set(STRINGS "Mac/bundle_template/InfoPlist.strings")
set(LOCALIZED "Mac/bundle_template/Localized.r")

add_mac_plugin(${PROJECT_NAME} ${PLIST} ${STRINGS} ${LOCALIZED} SOURCES)


# add library dependencies here; leave ${PLUGIN_INTERNAL_DEPS} there unless you know what you're doing!
target_link_libraries(${PROJECT_NAME}
    ${PLUGIN_INTERNAL_DEPS}
	${OPENGL_FRAMEWORK}
	${QUARTZ_CORE_FRAMEWORK}
	${CORE_FOUNDATION_FRAMEWORK}
	/Users/royshilkrot/Downloads/OpenNI-Bin-MacOSX-v1.3.2.3/Lib/libOpenNI.dylib
	/Users/royshilkrot/Downloads/NITE-Bin-MacOSX-v1.4.1.2/Bin/libXnVNite_1_4_1.dylib
	/Users/royshilkrot/Downloads/NITE-Bin-MacOSX-v1.4.1.2/Bin/libXnVHandGenerator_1_4_1.dylib
    )
