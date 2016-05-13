#----------------------------------------------------------------
# Generated CMake target import file for configuration "".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "armadillo" for configuration ""
set_property(TARGET armadillo APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(armadillo PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NOCONFIG "/usr/lib64/atlas/libatlas.so;/usr/lib64/libblas.so;/usr/lib64/liblapack.so;/home/eegrad/khe/locker/gitlab/FEM_current_density/SuperLU_4.3/lib/libsuperlu_4.3.a"
  IMPORTED_LOCATION_NOCONFIG "/usr/lib64/libarmadillo.so.6.700.5"
  IMPORTED_SONAME_NOCONFIG "libarmadillo.so.6"
  )

list(APPEND _IMPORT_CHECK_TARGETS armadillo )
list(APPEND _IMPORT_CHECK_FILES_FOR_armadillo "/usr/lib64/libarmadillo.so.6.700.5" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
