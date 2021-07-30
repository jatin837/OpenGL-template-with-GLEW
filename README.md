# OpenGL-template-with-GLEW
a simple template for opengl with glew extension loader library

## Prerequisite
- **Cmake**
- **GLFW**
  ### download GLFW3 source code from [here](https://github.com/glfw/glfw)
  ### Then, inside the git repository
  ```console
  mkdir build
  cd build
  cmake ..
  make
  sudo make install
  ````
  This will compile and place libglfw3 header files and library into system directory(like /usr/lib/GLFW
  But this template contains the necessary header file for glfw3, and glew as well.
- **GLEW**
  ### The libGLEW must be available through package manager(on fedora34, i used 
  ```console
  sudo dnf install libGLEW*
  ```
  )
  
