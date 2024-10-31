// Compiled shader for Android

//////////////////////////////////////////////////////////////////////////
// 
// NOTE: This is *not* a valid shader file, the contents are provided just
// for information and for debugging purposes only.
// 
//////////////////////////////////////////////////////////////////////////
// Skipping shader variants that would not be included into build of current scene.

Shader "Custom/DepthMask" {
SubShader { 
 Tags { "QUEUE"="Geometry-1" }
 Pass {
  Tags { "QUEUE"="Geometry-1" }
  ColorMask 0
  //////////////////////////////////
  //                              //
  //      Compiled programs       //
  //                              //
  //////////////////////////////////
//////////////////////////////////////////////////////
Keywords: <none>
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles3":
Constant Buffer "$Globals" (128 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_MatrixVP at 64
}

Shader Disassembly:
#ifdef VERTEX
#version 300 es

#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
#define UNITY_UNIFORM
#else
#define UNITY_UNIFORM uniform
#endif
#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
#if UNITY_SUPPORTS_UNIFORM_LOCATION
#define UNITY_LOCATION(x) layout(location = x)
#define UNITY_BINDING(x) layout(binding = x, std140)
#else
#define UNITY_LOCATION(x)
#define UNITY_BINDING(x) layout(std140)
#endif
uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
in highp vec3 in_POSITION0;
in mediump vec4 in_COLOR0;
out mediump vec4 vs_COLOR0;
vec4 u_xlat0;
vec4 u_xlat1;
void main()
{
    vs_COLOR0 = in_COLOR0;
    vs_COLOR0 = clamp(vs_COLOR0, 0.0, 1.0);
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp float;
precision highp int;
in mediump vec4 vs_COLOR0;
layout(location = 0) out mediump vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif


//////////////////////////////////////////////////////
Keywords: <none>
-- Hardware tier variant: Tier 2
-- Vertex shader for "gles3":
Constant Buffer "$Globals" (128 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_MatrixVP at 64
}

Shader Disassembly:
#ifdef VERTEX
#version 300 es

#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
#define UNITY_UNIFORM
#else
#define UNITY_UNIFORM uniform
#endif
#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
#if UNITY_SUPPORTS_UNIFORM_LOCATION
#define UNITY_LOCATION(x) layout(location = x)
#define UNITY_BINDING(x) layout(binding = x, std140)
#else
#define UNITY_LOCATION(x)
#define UNITY_BINDING(x) layout(std140)
#endif
uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
in highp vec3 in_POSITION0;
in mediump vec4 in_COLOR0;
out mediump vec4 vs_COLOR0;
vec4 u_xlat0;
vec4 u_xlat1;
void main()
{
    vs_COLOR0 = in_COLOR0;
    vs_COLOR0 = clamp(vs_COLOR0, 0.0, 1.0);
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp float;
precision highp int;
in mediump vec4 vs_COLOR0;
layout(location = 0) out mediump vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif


//////////////////////////////////////////////////////
Keywords: <none>
-- Hardware tier variant: Tier 3
-- Vertex shader for "gles3":
Constant Buffer "$Globals" (128 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_MatrixVP at 64
}

Shader Disassembly:
#ifdef VERTEX
#version 300 es

#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
#define UNITY_UNIFORM
#else
#define UNITY_UNIFORM uniform
#endif
#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
#if UNITY_SUPPORTS_UNIFORM_LOCATION
#define UNITY_LOCATION(x) layout(location = x)
#define UNITY_BINDING(x) layout(binding = x, std140)
#else
#define UNITY_LOCATION(x)
#define UNITY_BINDING(x) layout(std140)
#endif
uniform 	vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
in highp vec3 in_POSITION0;
in mediump vec4 in_COLOR0;
out mediump vec4 vs_COLOR0;
vec4 u_xlat0;
vec4 u_xlat1;
void main()
{
    vs_COLOR0 = in_COLOR0;
    vs_COLOR0 = clamp(vs_COLOR0, 0.0, 1.0);
    u_xlat0 = in_POSITION0.yyyy * hlslcc_mtx4x4unity_ObjectToWorld[1];
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = hlslcc_mtx4x4unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    gl_Position = hlslcc_mtx4x4unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp float;
precision highp int;
in mediump vec4 vs_COLOR0;
layout(location = 0) out mediump vec4 SV_Target0;
void main()
{
    SV_Target0 = vs_COLOR0;
    return;
}

#endif


//////////////////////////////////////////////////////
Keywords: <none>
-- Hardware tier variant: Tier 1
-- Vertex shader for "vulkan":
Uses vertex data channel "Color"
Uses vertex data channel "Vertex"

Constant Buffer "VGlobals2027484424" (128 bytes) on set: 1, binding: 0, used in: Vertex  {
  Matrix4x4 unity_MatrixVP at 64
  Matrix4x4 unity_ObjectToWorld at 0
}

Shader Disassembly:
Disassembly for Vertex:
// Module Version 10000
// Generated by (magic number): 8000a
// Id's are bound by 111

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Vertex 4  "main" 9 11 23 84
                              Decorate 9 RelaxedPrecision
                              Decorate 9 Location 0
                              Decorate 11 RelaxedPrecision
                              Decorate 11 Location 1
                              Decorate 12 RelaxedPrecision
                              Decorate 13 RelaxedPrecision
                              Decorate 16 RelaxedPrecision
                              Decorate 17 RelaxedPrecision
                              Decorate 18 RelaxedPrecision
                              Decorate 23 Location 0
                              Decorate 28 ArrayStride 16
                              Decorate 29 ArrayStride 16
                              MemberDecorate 30 0 Offset 0
                              MemberDecorate 30 1 Offset 64
                              Decorate 30 Block
                              Decorate 32 DescriptorSet 1
                              Decorate 32 Binding 0
                              MemberDecorate 82 0 BuiltIn Position
                              MemberDecorate 82 1 BuiltIn PointSize
                              MemberDecorate 82 2 BuiltIn ClipDistance
                              Decorate 82 Block
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Output 7(fvec4)
               9:      8(ptr) Variable Output
              10:             TypePointer Input 7(fvec4)
              11:     10(ptr) Variable Input
              14:    6(float) Constant 0
              15:    6(float) Constant 1065353216
              19:             TypePointer Private 7(fvec4)
              20:     19(ptr) Variable Private
              21:             TypeVector 6(float) 3
              22:             TypePointer Input 21(fvec3)
              23:     22(ptr) Variable Input
              26:             TypeInt 32 0
              27:     26(int) Constant 4
              28:             TypeArray 7(fvec4) 27
              29:             TypeArray 7(fvec4) 27
              30:             TypeStruct 28 29
              31:             TypePointer Uniform 30(struct)
              32:     31(ptr) Variable Uniform
              33:             TypeInt 32 1
              34:     33(int) Constant 0
              35:     33(int) Constant 1
              36:             TypePointer Uniform 7(fvec4)
              47:     33(int) Constant 2
              56:     33(int) Constant 3
              60:     19(ptr) Variable Private
              80:     26(int) Constant 1
              81:             TypeArray 6(float) 80
              82:             TypeStruct 7(fvec4) 6(float) 81
              83:             TypePointer Output 82(struct)
              84:     83(ptr) Variable Output
              93:             TypePointer Output 6(float)
              99:             TypePointer Function 7(fvec4)
             101:             TypeVector 33(int) 4
             102:             TypePointer Function 101(ivec4)
             104:             TypeBool
             105:             TypeVector 104(bool) 4
             106:             TypePointer Function 105(bvec4)
             108:             TypeVector 26(int) 4
             109:             TypePointer Function 108(ivec4)
               4:           2 Function None 3
               5:             Label
             100:     99(ptr) Variable Function
             103:    102(ptr) Variable Function
             107:    106(ptr) Variable Function
             110:    109(ptr) Variable Function
              12:    7(fvec4) Load 11
                              Store 9 12
              13:    7(fvec4) Load 9
              16:    7(fvec4) CompositeConstruct 14 14 14 14
              17:    7(fvec4) CompositeConstruct 15 15 15 15
              18:    7(fvec4) ExtInst 1(GLSL.std.450) 43(FClamp) 13 16 17
                              Store 9 18
              24:   21(fvec3) Load 23
              25:    7(fvec4) VectorShuffle 24 24 1 1 1 1
              37:     36(ptr) AccessChain 32 34 35
              38:    7(fvec4) Load 37
              39:    7(fvec4) FMul 25 38
                              Store 20 39
              40:     36(ptr) AccessChain 32 34 34
              41:    7(fvec4) Load 40
              42:   21(fvec3) Load 23
              43:    7(fvec4) VectorShuffle 42 42 0 0 0 0
              44:    7(fvec4) FMul 41 43
              45:    7(fvec4) Load 20
              46:    7(fvec4) FAdd 44 45
                              Store 20 46
              48:     36(ptr) AccessChain 32 34 47
              49:    7(fvec4) Load 48
              50:   21(fvec3) Load 23
              51:    7(fvec4) VectorShuffle 50 50 2 2 2 2
              52:    7(fvec4) FMul 49 51
              53:    7(fvec4) Load 20
              54:    7(fvec4) FAdd 52 53
                              Store 20 54
              55:    7(fvec4) Load 20
              57:     36(ptr) AccessChain 32 34 56
              58:    7(fvec4) Load 57
              59:    7(fvec4) FAdd 55 58
                              Store 20 59
              61:    7(fvec4) Load 20
              62:    7(fvec4) VectorShuffle 61 61 1 1 1 1
              63:     36(ptr) AccessChain 32 35 35
              64:    7(fvec4) Load 63
              65:    7(fvec4) FMul 62 64
                              Store 60 65
              66:     36(ptr) AccessChain 32 35 34
              67:    7(fvec4) Load 66
              68:    7(fvec4) Load 20
              69:    7(fvec4) VectorShuffle 68 68 0 0 0 0
              70:    7(fvec4) FMul 67 69
              71:    7(fvec4) Load 60
              72:    7(fvec4) FAdd 70 71
                              Store 60 72
              73:     36(ptr) AccessChain 32 35 47
              74:    7(fvec4) Load 73
              75:    7(fvec4) Load 20
              76:    7(fvec4) VectorShuffle 75 75 2 2 2 2
              77:    7(fvec4) FMul 74 76
              78:    7(fvec4) Load 60
              79:    7(fvec4) FAdd 77 78
                              Store 60 79
              85:     36(ptr) AccessChain 32 35 56
              86:    7(fvec4) Load 85
              87:    7(fvec4) Load 20
              88:    7(fvec4) VectorShuffle 87 87 3 3 3 3
              89:    7(fvec4) FMul 86 88
              90:    7(fvec4) Load 60
              91:    7(fvec4) FAdd 89 90
              92:      8(ptr) AccessChain 84 34
                              Store 92 91
              94:     93(ptr) AccessChain 84 34 80
              95:    6(float) Load 94
              96:    6(float) FNegate 95
              97:     93(ptr) AccessChain 84 34 80
                              Store 97 96
                              Return
                              FunctionEnd

Disassembly for Fragment:
// Module Version 10000
// Generated by (magic number): 8000a
// Id's are bound by 28

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Fragment 4  "main" 9 11
                              ExecutionMode 4 OriginUpperLeft
                              Decorate 9 RelaxedPrecision
                              Decorate 9 Location 0
                              Decorate 11 RelaxedPrecision
                              Decorate 11 Location 0
                              Decorate 12 RelaxedPrecision
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Output 7(fvec4)
               9:      8(ptr) Variable Output
              10:             TypePointer Input 7(fvec4)
              11:     10(ptr) Variable Input
              14:             TypePointer Function 7(fvec4)
              16:             TypeInt 32 1
              17:             TypeVector 16(int) 4
              18:             TypePointer Function 17(ivec4)
              20:             TypeBool
              21:             TypeVector 20(bool) 4
              22:             TypePointer Function 21(bvec4)
              24:             TypeInt 32 0
              25:             TypeVector 24(int) 4
              26:             TypePointer Function 25(ivec4)
               4:           2 Function None 3
               5:             Label
              15:     14(ptr) Variable Function
              19:     18(ptr) Variable Function
              23:     22(ptr) Variable Function
              27:     26(ptr) Variable Function
              12:    7(fvec4) Load 11
                              Store 9 12
                              Return
                              FunctionEnd

Disassembly for Hull:
Not present.



//////////////////////////////////////////////////////
Keywords: <none>
-- Hardware tier variant: Tier 2
-- Vertex shader for "vulkan":
Uses vertex data channel "Color"
Uses vertex data channel "Vertex"

Constant Buffer "VGlobals2027484424" (128 bytes) on set: 1, binding: 0, used in: Vertex  {
  Matrix4x4 unity_MatrixVP at 64
  Matrix4x4 unity_ObjectToWorld at 0
}

Shader Disassembly:
Disassembly for Vertex:
// Module Version 10000
// Generated by (magic number): 8000a
// Id's are bound by 111

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Vertex 4  "main" 9 11 23 84
                              Decorate 9 RelaxedPrecision
                              Decorate 9 Location 0
                              Decorate 11 RelaxedPrecision
                              Decorate 11 Location 1
                              Decorate 12 RelaxedPrecision
                              Decorate 13 RelaxedPrecision
                              Decorate 16 RelaxedPrecision
                              Decorate 17 RelaxedPrecision
                              Decorate 18 RelaxedPrecision
                              Decorate 23 Location 0
                              Decorate 28 ArrayStride 16
                              Decorate 29 ArrayStride 16
                              MemberDecorate 30 0 Offset 0
                              MemberDecorate 30 1 Offset 64
                              Decorate 30 Block
                              Decorate 32 DescriptorSet 1
                              Decorate 32 Binding 0
                              MemberDecorate 82 0 BuiltIn Position
                              MemberDecorate 82 1 BuiltIn PointSize
                              MemberDecorate 82 2 BuiltIn ClipDistance
                              Decorate 82 Block
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Output 7(fvec4)
               9:      8(ptr) Variable Output
              10:             TypePointer Input 7(fvec4)
              11:     10(ptr) Variable Input
              14:    6(float) Constant 0
              15:    6(float) Constant 1065353216
              19:             TypePointer Private 7(fvec4)
              20:     19(ptr) Variable Private
              21:             TypeVector 6(float) 3
              22:             TypePointer Input 21(fvec3)
              23:     22(ptr) Variable Input
              26:             TypeInt 32 0
              27:     26(int) Constant 4
              28:             TypeArray 7(fvec4) 27
              29:             TypeArray 7(fvec4) 27
              30:             TypeStruct 28 29
              31:             TypePointer Uniform 30(struct)
              32:     31(ptr) Variable Uniform
              33:             TypeInt 32 1
              34:     33(int) Constant 0
              35:     33(int) Constant 1
              36:             TypePointer Uniform 7(fvec4)
              47:     33(int) Constant 2
              56:     33(int) Constant 3
              60:     19(ptr) Variable Private
              80:     26(int) Constant 1
              81:             TypeArray 6(float) 80
              82:             TypeStruct 7(fvec4) 6(float) 81
              83:             TypePointer Output 82(struct)
              84:     83(ptr) Variable Output
              93:             TypePointer Output 6(float)
              99:             TypePointer Function 7(fvec4)
             101:             TypeVector 33(int) 4
             102:             TypePointer Function 101(ivec4)
             104:             TypeBool
             105:             TypeVector 104(bool) 4
             106:             TypePointer Function 105(bvec4)
             108:             TypeVector 26(int) 4
             109:             TypePointer Function 108(ivec4)
               4:           2 Function None 3
               5:             Label
             100:     99(ptr) Variable Function
             103:    102(ptr) Variable Function
             107:    106(ptr) Variable Function
             110:    109(ptr) Variable Function
              12:    7(fvec4) Load 11
                              Store 9 12
              13:    7(fvec4) Load 9
              16:    7(fvec4) CompositeConstruct 14 14 14 14
              17:    7(fvec4) CompositeConstruct 15 15 15 15
              18:    7(fvec4) ExtInst 1(GLSL.std.450) 43(FClamp) 13 16 17
                              Store 9 18
              24:   21(fvec3) Load 23
              25:    7(fvec4) VectorShuffle 24 24 1 1 1 1
              37:     36(ptr) AccessChain 32 34 35
              38:    7(fvec4) Load 37
              39:    7(fvec4) FMul 25 38
                              Store 20 39
              40:     36(ptr) AccessChain 32 34 34
              41:    7(fvec4) Load 40
              42:   21(fvec3) Load 23
              43:    7(fvec4) VectorShuffle 42 42 0 0 0 0
              44:    7(fvec4) FMul 41 43
              45:    7(fvec4) Load 20
              46:    7(fvec4) FAdd 44 45
                              Store 20 46
              48:     36(ptr) AccessChain 32 34 47
              49:    7(fvec4) Load 48
              50:   21(fvec3) Load 23
              51:    7(fvec4) VectorShuffle 50 50 2 2 2 2
              52:    7(fvec4) FMul 49 51
              53:    7(fvec4) Load 20
              54:    7(fvec4) FAdd 52 53
                              Store 20 54
              55:    7(fvec4) Load 20
              57:     36(ptr) AccessChain 32 34 56
              58:    7(fvec4) Load 57
              59:    7(fvec4) FAdd 55 58
                              Store 20 59
              61:    7(fvec4) Load 20
              62:    7(fvec4) VectorShuffle 61 61 1 1 1 1
              63:     36(ptr) AccessChain 32 35 35
              64:    7(fvec4) Load 63
              65:    7(fvec4) FMul 62 64
                              Store 60 65
              66:     36(ptr) AccessChain 32 35 34
              67:    7(fvec4) Load 66
              68:    7(fvec4) Load 20
              69:    7(fvec4) VectorShuffle 68 68 0 0 0 0
              70:    7(fvec4) FMul 67 69
              71:    7(fvec4) Load 60
              72:    7(fvec4) FAdd 70 71
                              Store 60 72
              73:     36(ptr) AccessChain 32 35 47
              74:    7(fvec4) Load 73
              75:    7(fvec4) Load 20
              76:    7(fvec4) VectorShuffle 75 75 2 2 2 2
              77:    7(fvec4) FMul 74 76
              78:    7(fvec4) Load 60
              79:    7(fvec4) FAdd 77 78
                              Store 60 79
              85:     36(ptr) AccessChain 32 35 56
              86:    7(fvec4) Load 85
              87:    7(fvec4) Load 20
              88:    7(fvec4) VectorShuffle 87 87 3 3 3 3
              89:    7(fvec4) FMul 86 88
              90:    7(fvec4) Load 60
              91:    7(fvec4) FAdd 89 90
              92:      8(ptr) AccessChain 84 34
                              Store 92 91
              94:     93(ptr) AccessChain 84 34 80
              95:    6(float) Load 94
              96:    6(float) FNegate 95
              97:     93(ptr) AccessChain 84 34 80
                              Store 97 96
                              Return
                              FunctionEnd

Disassembly for Fragment:
// Module Version 10000
// Generated by (magic number): 8000a
// Id's are bound by 28

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Fragment 4  "main" 9 11
                              ExecutionMode 4 OriginUpperLeft
                              Decorate 9 RelaxedPrecision
                              Decorate 9 Location 0
                              Decorate 11 RelaxedPrecision
                              Decorate 11 Location 0
                              Decorate 12 RelaxedPrecision
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Output 7(fvec4)
               9:      8(ptr) Variable Output
              10:             TypePointer Input 7(fvec4)
              11:     10(ptr) Variable Input
              14:             TypePointer Function 7(fvec4)
              16:             TypeInt 32 1
              17:             TypeVector 16(int) 4
              18:             TypePointer Function 17(ivec4)
              20:             TypeBool
              21:             TypeVector 20(bool) 4
              22:             TypePointer Function 21(bvec4)
              24:             TypeInt 32 0
              25:             TypeVector 24(int) 4
              26:             TypePointer Function 25(ivec4)
               4:           2 Function None 3
               5:             Label
              15:     14(ptr) Variable Function
              19:     18(ptr) Variable Function
              23:     22(ptr) Variable Function
              27:     26(ptr) Variable Function
              12:    7(fvec4) Load 11
                              Store 9 12
                              Return
                              FunctionEnd

Disassembly for Hull:
Not present.



//////////////////////////////////////////////////////
Keywords: <none>
-- Hardware tier variant: Tier 3
-- Vertex shader for "vulkan":
Uses vertex data channel "Color"
Uses vertex data channel "Vertex"

Constant Buffer "VGlobals2027484424" (128 bytes) on set: 1, binding: 0, used in: Vertex  {
  Matrix4x4 unity_MatrixVP at 64
  Matrix4x4 unity_ObjectToWorld at 0
}

Shader Disassembly:
Disassembly for Vertex:
// Module Version 10000
// Generated by (magic number): 8000a
// Id's are bound by 111

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Vertex 4  "main" 9 11 23 84
                              Decorate 9 RelaxedPrecision
                              Decorate 9 Location 0
                              Decorate 11 RelaxedPrecision
                              Decorate 11 Location 1
                              Decorate 12 RelaxedPrecision
                              Decorate 13 RelaxedPrecision
                              Decorate 16 RelaxedPrecision
                              Decorate 17 RelaxedPrecision
                              Decorate 18 RelaxedPrecision
                              Decorate 23 Location 0
                              Decorate 28 ArrayStride 16
                              Decorate 29 ArrayStride 16
                              MemberDecorate 30 0 Offset 0
                              MemberDecorate 30 1 Offset 64
                              Decorate 30 Block
                              Decorate 32 DescriptorSet 1
                              Decorate 32 Binding 0
                              MemberDecorate 82 0 BuiltIn Position
                              MemberDecorate 82 1 BuiltIn PointSize
                              MemberDecorate 82 2 BuiltIn ClipDistance
                              Decorate 82 Block
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Output 7(fvec4)
               9:      8(ptr) Variable Output
              10:             TypePointer Input 7(fvec4)
              11:     10(ptr) Variable Input
              14:    6(float) Constant 0
              15:    6(float) Constant 1065353216
              19:             TypePointer Private 7(fvec4)
              20:     19(ptr) Variable Private
              21:             TypeVector 6(float) 3
              22:             TypePointer Input 21(fvec3)
              23:     22(ptr) Variable Input
              26:             TypeInt 32 0
              27:     26(int) Constant 4
              28:             TypeArray 7(fvec4) 27
              29:             TypeArray 7(fvec4) 27
              30:             TypeStruct 28 29
              31:             TypePointer Uniform 30(struct)
              32:     31(ptr) Variable Uniform
              33:             TypeInt 32 1
              34:     33(int) Constant 0
              35:     33(int) Constant 1
              36:             TypePointer Uniform 7(fvec4)
              47:     33(int) Constant 2
              56:     33(int) Constant 3
              60:     19(ptr) Variable Private
              80:     26(int) Constant 1
              81:             TypeArray 6(float) 80
              82:             TypeStruct 7(fvec4) 6(float) 81
              83:             TypePointer Output 82(struct)
              84:     83(ptr) Variable Output
              93:             TypePointer Output 6(float)
              99:             TypePointer Function 7(fvec4)
             101:             TypeVector 33(int) 4
             102:             TypePointer Function 101(ivec4)
             104:             TypeBool
             105:             TypeVector 104(bool) 4
             106:             TypePointer Function 105(bvec4)
             108:             TypeVector 26(int) 4
             109:             TypePointer Function 108(ivec4)
               4:           2 Function None 3
               5:             Label
             100:     99(ptr) Variable Function
             103:    102(ptr) Variable Function
             107:    106(ptr) Variable Function
             110:    109(ptr) Variable Function
              12:    7(fvec4) Load 11
                              Store 9 12
              13:    7(fvec4) Load 9
              16:    7(fvec4) CompositeConstruct 14 14 14 14
              17:    7(fvec4) CompositeConstruct 15 15 15 15
              18:    7(fvec4) ExtInst 1(GLSL.std.450) 43(FClamp) 13 16 17
                              Store 9 18
              24:   21(fvec3) Load 23
              25:    7(fvec4) VectorShuffle 24 24 1 1 1 1
              37:     36(ptr) AccessChain 32 34 35
              38:    7(fvec4) Load 37
              39:    7(fvec4) FMul 25 38
                              Store 20 39
              40:     36(ptr) AccessChain 32 34 34
              41:    7(fvec4) Load 40
              42:   21(fvec3) Load 23
              43:    7(fvec4) VectorShuffle 42 42 0 0 0 0
              44:    7(fvec4) FMul 41 43
              45:    7(fvec4) Load 20
              46:    7(fvec4) FAdd 44 45
                              Store 20 46
              48:     36(ptr) AccessChain 32 34 47
              49:    7(fvec4) Load 48
              50:   21(fvec3) Load 23
              51:    7(fvec4) VectorShuffle 50 50 2 2 2 2
              52:    7(fvec4) FMul 49 51
              53:    7(fvec4) Load 20
              54:    7(fvec4) FAdd 52 53
                              Store 20 54
              55:    7(fvec4) Load 20
              57:     36(ptr) AccessChain 32 34 56
              58:    7(fvec4) Load 57
              59:    7(fvec4) FAdd 55 58
                              Store 20 59
              61:    7(fvec4) Load 20
              62:    7(fvec4) VectorShuffle 61 61 1 1 1 1
              63:     36(ptr) AccessChain 32 35 35
              64:    7(fvec4) Load 63
              65:    7(fvec4) FMul 62 64
                              Store 60 65
              66:     36(ptr) AccessChain 32 35 34
              67:    7(fvec4) Load 66
              68:    7(fvec4) Load 20
              69:    7(fvec4) VectorShuffle 68 68 0 0 0 0
              70:    7(fvec4) FMul 67 69
              71:    7(fvec4) Load 60
              72:    7(fvec4) FAdd 70 71
                              Store 60 72
              73:     36(ptr) AccessChain 32 35 47
              74:    7(fvec4) Load 73
              75:    7(fvec4) Load 20
              76:    7(fvec4) VectorShuffle 75 75 2 2 2 2
              77:    7(fvec4) FMul 74 76
              78:    7(fvec4) Load 60
              79:    7(fvec4) FAdd 77 78
                              Store 60 79
              85:     36(ptr) AccessChain 32 35 56
              86:    7(fvec4) Load 85
              87:    7(fvec4) Load 20
              88:    7(fvec4) VectorShuffle 87 87 3 3 3 3
              89:    7(fvec4) FMul 86 88
              90:    7(fvec4) Load 60
              91:    7(fvec4) FAdd 89 90
              92:      8(ptr) AccessChain 84 34
                              Store 92 91
              94:     93(ptr) AccessChain 84 34 80
              95:    6(float) Load 94
              96:    6(float) FNegate 95
              97:     93(ptr) AccessChain 84 34 80
                              Store 97 96
                              Return
                              FunctionEnd

Disassembly for Fragment:
// Module Version 10000
// Generated by (magic number): 8000a
// Id's are bound by 28

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Fragment 4  "main" 9 11
                              ExecutionMode 4 OriginUpperLeft
                              Decorate 9 RelaxedPrecision
                              Decorate 9 Location 0
                              Decorate 11 RelaxedPrecision
                              Decorate 11 Location 0
                              Decorate 12 RelaxedPrecision
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Output 7(fvec4)
               9:      8(ptr) Variable Output
              10:             TypePointer Input 7(fvec4)
              11:     10(ptr) Variable Input
              14:             TypePointer Function 7(fvec4)
              16:             TypeInt 32 1
              17:             TypeVector 16(int) 4
              18:             TypePointer Function 17(ivec4)
              20:             TypeBool
              21:             TypeVector 20(bool) 4
              22:             TypePointer Function 21(bvec4)
              24:             TypeInt 32 0
              25:             TypeVector 24(int) 4
              26:             TypePointer Function 25(ivec4)
               4:           2 Function None 3
               5:             Label
              15:     14(ptr) Variable Function
              19:     18(ptr) Variable Function
              23:     22(ptr) Variable Function
              27:     26(ptr) Variable Function
              12:    7(fvec4) Load 11
                              Store 9 12
                              Return
                              FunctionEnd

Disassembly for Hull:
Not present.



 }
}
}