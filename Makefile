C_FLAGS=-Wall `pkg-config --cflags glfw3`
LINK_FLAGS=-lGL -lGLEW `pkg-config --static --libs glfw3`
TARGET=target/

all:exe

main.o: src/main.cpp shaders/
	clang++ $(C_FLAGS) -c -o $(TARGET)main.o src/main.cpp 

read_shader.o: src/read_shader.cpp
	clang++ $(C_FLAGS) -c -o $(TARGET)read_shader.o src/read_shader.cpp

exe: main.o read_shader.o
	clang++ $(C_FLAGS) -o $(TARGET)exe $(TARGET)main.o $(TARGET)read_shader.o $(LINK_FLAGS)

clean:
	rm *.o exe
