#include "Base32.hpp"
#include "Base64.hpp"

std::string strCoded;
const char* __stdcall GetBase32Encode(char* plain)
{
    strCoded = Base32::Encode(plain);
    const char* cstr = strCoded.c_str();
    return cstr;

}

const char* __stdcall GetBase64Encode(char* plain)
{
    strCoded = Base64::Encode(plain);
    const char* cstr = strCoded.c_str();
    return cstr;

}

std::string strPlain;
const char* __stdcall GetBase32Decode(char* coded)
{
    strPlain = Base32::Decode(coded);
    const char* cstr = strPlain.c_str();
    return cstr;
}

const char* __stdcall GetBase64Decode(char* coded)
{
    strPlain = Base64::Decode(coded);
    const char* cstr = strPlain.c_str();
    return cstr;
}
