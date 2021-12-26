-- mod-version:2 -- lite-xl 2.0
pcall(require, "plugins.language_c")

local syntax = require "core.syntax"

syntax.add {
  name = "C++",
  files = {
    "%.h$", "%.inl$", "%.cpp$", "%.cc$", "%.C$", "%.cxx$",
    "%.c++$", "%.hh$", "%.H$", "%.hxx$", "%.hpp$", "%.h++$"
  },
  comment = "//",
  block_comment = { "/*", "*/" },
  patterns = {
    { pattern = "//.-\n",                   type = "comment" },
    { pattern = { "/%*", "%*/" },           type = "comment" },
    { pattern = { '"', '"', '\\' },         type = "string"  },
    { pattern = { "'", "'", '\\' },         type = "string"  },
    { pattern = "0x%x+",                    type = "number"  },
    { pattern = "%d+[%d%.eE]*f?",           type = "number"  },
    { pattern = "%.?%d+f?",                 type = "number"  },
    { pattern = "[%+%-=/%*%^%%<>!~|&]",     type = "operator" },
    { pattern = "struct%s()[%a_][%w_]*",    type = {"keyword", "keyword2"} },
    { pattern = "class%s()[%a_][%w_]*",     type = {"keyword", "keyword2"} },
    { pattern = "union%s()[%a_][%w_]*",     type = {"keyword", "keyword2"} },
    { pattern = "namespace%s()[%a_][%w_]*", type = {"keyword", "keyword2"} },
    { pattern = "[%a_][%w_]*::",            type = "symbol" },
    { pattern = "::",                       type = "symbol" },
    { pattern = "[%a_][%w_]*",              type = "symbol" },
    { pattern = "#include%s()<.->",         type = {"keyword", "string"} },
    { pattern = "#[%a_][%w_]*",             type = "keyword" },
  },
  symbols = {
    ["alignof"]  = "keyword",
    ["alignas"]  = "keyword",
    ["private"]  = "keyword",
    ["protected"] = "keyword",
    ["public"]   = "keyword",
    ["register"] = "keyword",
    ["nullptr"]  = "keyword",
    ["operator"] = "keyword",
    ["asm"]      = "keyword",
    ["catch"]    = "keyword",
    ["throw"]    = "keyword",
    ["try"]      = "keyword",
    ["compl"]    = "keyword",
    ["explicit"] = "keyword",
    ["export"]   = "keyword",
    ["concept"]  = "keyword",
    ["consteval"] = "keyword",
    ["constexpr"] = "keyword",
    ["constinit"] = "keyword",
    ["const_cast"] = "keyword",
    ["dynamic_cast"] = "keyword",
    ["reinterpret_cast"] = "keyword",
    ["static_cast"] = "keyword",
    ["static_assert"] = "keyword",
    ["template"]  = "keyword",
    ["this"]      = "keyword",
    ["thread_local"] = "keyword",
    ["requires"]  = "keyword",
    ["co_wait"]   = "keyword",
    ["co_return"] = "keyword",
    ["co_yield"]  = "keyword",
    ["decltype"] = "keyword",
    ["delete"]   = "keyword",
    ["export"]   = "keyword",
    ["friend"]   = "keyword",
    ["typeid"]   = "keyword",
    ["typename"] = "keyword",
    ["mutable"]  = "keyword",
    ["override"] = "keyword",
    ["virtual"]  = "keyword",
    ["using"]    = "keyword",
    ["new"]      = "keyword",
    ["noexcept"] = "keyword",
    ["if"]       = "keyword",
    ["then"]     = "keyword",
    ["else"]     = "keyword",
    ["elseif"]   = "keyword",
    ["do"]       = "keyword",
    ["while"]    = "keyword",
    ["for"]      = "keyword",
    ["break"]    = "keyword",
    ["continue"] = "keyword",
    ["return"]   = "keyword",
    ["goto"]     = "keyword",
    ["typedef"]  = "keyword",
    ["enum"]     = "keyword",
    ["extern"]   = "keyword",
    ["static"]   = "keyword",
    ["volatile"] = "keyword",
    ["const"]    = "keyword",
    ["inline"]   = "keyword",
    ["switch"]   = "keyword",
    ["case"]     = "keyword",
    ["default"]  = "keyword",
    ["auto"]     = "keyword",
    ["const"]    = "keyword",
    ["void"]     = "keyword2",
    ["int"]      = "keyword2",
    ["short"]    = "keyword2",
    ["long"]     = "keyword2",
    ["float"]    = "keyword2",
    ["double"]   = "keyword2",
    ["char"]     = "keyword2",
    ["unsigned"] = "keyword2",
    ["bool"]     = "keyword2",
    ["true"]     = "keyword2",
    ["false"]    = "keyword2",
    ["#include"] = "keyword",
    ["#if"]      = "keyword",
    ["#ifdef"]   = "keyword",
    ["#ifndef"]  = "keyword",
    ["#else"]    = "keyword",
    ["#elseif"]  = "keyword",
    ["#endif"]   = "keyword",
    ["#define"]  = "keyword",
    ["#warning"] = "keyword",
    ["#error"]   = "keyword",
    ["#pragma"]  = "keyword",
   },
}

