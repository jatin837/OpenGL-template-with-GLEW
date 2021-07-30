#include <iostream>
#include <string>
#include <fstream>
#include <sstream>

std::string read_shader (std::string shader_file)
{
    // no feedback is provided for stream errors / exceptions.

    std::ifstream file (shader_file);
    if (!file) return std::string ();

    auto size = file.gcount();

    if (size > 0x10000) // 64KiB sanity check for shaders:
        return std::string ();

    file.clear();
    file.seekg(0, std::ios_base::beg);

    std::stringstream sstr;
    sstr << file.rdbuf();
    file.close();

    return sstr.str();
}
