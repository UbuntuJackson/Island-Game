cmake_minimum_required(VERSION 3.10)

project(Island)
add_subdirectory(external/UFO-Cells) #CMakeLists.txt for engine is in folder called "engine"

file(
    GLOB SRC
    src/*.cpp
)
target_link_libraries(${CMAKE_PROJECT_NAME} PUBLIC UFOCells)
add_executable(${CMAKE_PROJECT_NAME}, ${SRC})
