# Define compiler
CXX = clang++

# Compiler flags
CXXFLAGS = -g -Wall -Wextra

# Build target executable
TARGET = main

# Add all cpp files you want to compile
SRCS = main.cpp graph.cpp

# Object files
OBJS = $(SRCS:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS)

.cpp.o:
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	$(RM) $(TARGET) $(OBJS)

