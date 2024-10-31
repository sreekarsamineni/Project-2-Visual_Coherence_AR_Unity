// Compiled shader for Android

//////////////////////////////////////////////////////////////////////////
// 
// NOTE: This is *not* a valid shader file, the contents are provided just
// for information and for debugging purposes only.
// 
//////////////////////////////////////////////////////////////////////////
// Skipping shader variants that would not be included into build of current scene.

Shader "Unlit/DepthMask" {
Properties {
 _MainTex ("Texture", 2D) = "white" { }
}
SubShader { 
 LOD 100
 Tags { "RenderType"="Opaque" }
 Pass {
  Tags { "RenderType"="Opaque" }
  //////////////////////////////////
  //                              //
  //      Compiled programs       //
  //                              //
  //////////////////////////////////
//////////////////////////////////////////////////////
Keywords: <none>
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles3":
Set 2D Texture "_MainTex" to slot 0

Constant Buffer "$Globals" (144 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_MatrixVP at 64
  Vector4 _MainTex_ST at 128
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
uniform 	vec4 _MainTex_ST;
in highp vec4 in_POSITION0;
in highp vec2 in_TEXCOORD0;
out highp vec2 vs_TEXCOORD0;
vec4 u_xlat0;
vec4 u_xlat1;
void main()
{
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
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
#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
#if UNITY_SUPPORTS_UNIFORM_LOCATION
#define UNITY_LOCATION(x) layout(location = x)
#define UNITY_BINDING(x) layout(binding = x, std140)
#else
#define UNITY_LOCATION(x)
#define UNITY_BINDING(x) layout(std140)
#endif
UNITY_LOCATION(0) uniform mediump sampler2D _MainTex;
in highp vec2 vs_TEXCOORD0;
layout(location = 0) out mediump vec4 SV_Target0;
mediump vec4 u_xlat16_0;
void main()
{
    u_xlat16_0 = texture(_MainTex, vs_TEXCOORD0.xy);
    SV_Target0 = u_xlat16_0;
    return;
}

#endif


//////////////////////////////////////////////////////
Keywords: <none>
-- Hardware tier variant: Tier 2
-- Vertex shader for "gles3":
Set 2D Texture "_MainTex" to slot 0

Constant Buffer "$Globals" (144 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_MatrixVP at 64
  Vector4 _MainTex_ST at 128
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
uniform 	vec4 _MainTex_ST;
in highp vec4 in_POSITION0;
in highp vec2 in_TEXCOORD0;
out highp vec2 vs_TEXCOORD0;
vec4 u_xlat0;
vec4 u_xlat1;
void main()
{
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
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
#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
#if UNITY_SUPPORTS_UNIFORM_LOCATION
#define UNITY_LOCATION(x) layout(location = x)
#define UNITY_BINDING(x) layout(binding = x, std140)
#else
#define UNITY_LOCATION(x)
#define UNITY_BINDING(x) layout(std140)
#endif
UNITY_LOCATION(0) uniform mediump sampler2D _MainTex;
in highp vec2 vs_TEXCOORD0;
layout(location = 0) out mediump vec4 SV_Target0;
mediump vec4 u_xlat16_0;
void main()
{
    u_xlat16_0 = texture(_MainTex, vs_TEXCOORD0.xy);
    SV_Target0 = u_xlat16_0;
    return;
}

#endif


//////////////////////////////////////////////////////
Keywords: <none>
-- Hardware tier variant: Tier 3
-- Vertex shader for "gles3":
Set 2D Texture "_MainTex" to slot 0

Constant Buffer "$Globals" (144 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_MatrixVP at 64
  Vector4 _MainTex_ST at 128
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
uniform 	vec4 _MainTex_ST;
in highp vec4 in_POSITION0;
in highp vec2 in_TEXCOORD0;
out highp vec2 vs_TEXCOORD0;
vec4 u_xlat0;
vec4 u_xlat1;
void main()
{
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
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
#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
#if UNITY_SUPPORTS_UNIFORM_LOCATION
#define UNITY_LOCATION(x) layout(location = x)
#define UNITY_BINDING(x) layout(binding = x, std140)
#else
#define UNITY_LOCATION(x)
#define UNITY_BINDING(x) layout(std140)
#endif
UNITY_LOCATION(0) uniform mediump sampler2D _MainTex;
in highp vec2 vs_TEXCOORD0;
layout(location = 0) out mediump vec4 SV_Target0;
mediump vec4 u_xlat16_0;
void main()
{
    u_xlat16_0 = texture(_MainTex, vs_TEXCOORD0.xy);
    SV_Target0 = u_xlat16_0;
    return;
}

#endif


//////////////////////////////////////////////////////
Keywords: <none>
-- Hardware tier variant: Tier 1
-- Vertex shader for "vulkan":
Uses vertex data channel "TexCoord0"
Uses vertex data channel "Vertex"

Set 2D Texture "_MainTex" to set: 0, binding: 0, used in: Fragment  no sampler

Constant Buffer "VGlobals73290999" (144 bytes) on set: 1, binding: 0, used in: Vertex  {
  Matrix4x4 unity_MatrixVP at 64
  Matrix4x4 unity_ObjectToWorld at 0
  Vector4 _MainTex_ST at 128
}

Shader Disassembly:
Disassembly for Vertex:
// Module Version 10000
// Generated by (magic number): 8000a
// Id's are bound by 114

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Vertex 4  "main" 9 11 35 86
                              Name 9  "vs_TEXCOORD0"
                              Decorate 9(vs_TEXCOORD0) Location 0
                              Decorate 11 Location 1
                              Decorate 16 ArrayStride 16
                              Decorate 17 ArrayStride 16
                              MemberDecorate 18 0 Offset 0
                              MemberDecorate 18 1 Offset 64
                              MemberDecorate 18 2 Offset 128
                              Decorate 18 Block
                              Decorate 20 DescriptorSet 1
                              Decorate 20 Binding 0
                              Decorate 35 Location 0
                              MemberDecorate 84 0 BuiltIn Position
                              MemberDecorate 84 1 BuiltIn PointSize
                              MemberDecorate 84 2 BuiltIn ClipDistance
                              Decorate 84 Block
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 2
               8:             TypePointer Output 7(fvec2)
 9(vs_TEXCOORD0):      8(ptr) Variable Output
              10:             TypePointer Input 7(fvec2)
              11:     10(ptr) Variable Input
              13:             TypeVector 6(float) 4
              14:             TypeInt 32 0
              15:     14(int) Constant 4
              16:             TypeArray 13(fvec4) 15
              17:             TypeArray 13(fvec4) 15
              18:             TypeStruct 16 17 13(fvec4)
              19:             TypePointer Uniform 18(struct)
              20:     19(ptr) Variable Uniform
              21:             TypeInt 32 1
              22:     21(int) Constant 2
              23:             TypePointer Uniform 13(fvec4)
              32:             TypePointer Private 13(fvec4)
              33:     32(ptr) Variable Private
              34:             TypePointer Input 13(fvec4)
              35:     34(ptr) Variable Input
              38:     21(int) Constant 0
              39:     21(int) Constant 1
              58:     21(int) Constant 3
              62:     32(ptr) Variable Private
              82:     14(int) Constant 1
              83:             TypeArray 6(float) 82
              84:             TypeStruct 13(fvec4) 6(float) 83
              85:             TypePointer Output 84(struct)
              86:     85(ptr) Variable Output
              94:             TypePointer Output 13(fvec4)
              96:             TypePointer Output 6(float)
             102:             TypePointer Function 13(fvec4)
             104:             TypeVector 21(int) 4
             105:             TypePointer Function 104(ivec4)
             107:             TypeBool
             108:             TypeVector 107(bool) 4
             109:             TypePointer Function 108(bvec4)
             111:             TypeVector 14(int) 4
             112:             TypePointer Function 111(ivec4)
               4:           2 Function None 3
               5:             Label
             103:    102(ptr) Variable Function
             106:    105(ptr) Variable Function
             110:    109(ptr) Variable Function
             113:    112(ptr) Variable Function
              12:    7(fvec2) Load 11
              24:     23(ptr) AccessChain 20 22
              25:   13(fvec4) Load 24
              26:    7(fvec2) VectorShuffle 25 25 0 1
              27:    7(fvec2) FMul 12 26
              28:     23(ptr) AccessChain 20 22
              29:   13(fvec4) Load 28
              30:    7(fvec2) VectorShuffle 29 29 2 3
              31:    7(fvec2) FAdd 27 30
                              Store 9(vs_TEXCOORD0) 31
              36:   13(fvec4) Load 35
              37:   13(fvec4) VectorShuffle 36 36 1 1 1 1
              40:     23(ptr) AccessChain 20 38 39
              41:   13(fvec4) Load 40
              42:   13(fvec4) FMul 37 41
                              Store 33 42
              43:     23(ptr) AccessChain 20 38 38
              44:   13(fvec4) Load 43
              45:   13(fvec4) Load 35
              46:   13(fvec4) VectorShuffle 45 45 0 0 0 0
              47:   13(fvec4) FMul 44 46
              48:   13(fvec4) Load 33
              49:   13(fvec4) FAdd 47 48
                              Store 33 49
              50:     23(ptr) AccessChain 20 38 22
              51:   13(fvec4) Load 50
              52:   13(fvec4) Load 35
              53:   13(fvec4) VectorShuffle 52 52 2 2 2 2
              54:   13(fvec4) FMul 51 53
              55:   13(fvec4) Load 33
              56:   13(fvec4) FAdd 54 55
                              Store 33 56
              57:   13(fvec4) Load 33
              59:     23(ptr) AccessChain 20 38 58
              60:   13(fvec4) Load 59
              61:   13(fvec4) FAdd 57 60
                              Store 33 61
              63:   13(fvec4) Load 33
              64:   13(fvec4) VectorShuffle 63 63 1 1 1 1
              65:     23(ptr) AccessChain 20 39 39
              66:   13(fvec4) Load 65
              67:   13(fvec4) FMul 64 66
                              Store 62 67
              68:     23(ptr) AccessChain 20 39 38
              69:   13(fvec4) Load 68
              70:   13(fvec4) Load 33
              71:   13(fvec4) VectorShuffle 70 70 0 0 0 0
              72:   13(fvec4) FMul 69 71
              73:   13(fvec4) Load 62
              74:   13(fvec4) FAdd 72 73
                              Store 62 74
              75:     23(ptr) AccessChain 20 39 22
              76:   13(fvec4) Load 75
              77:   13(fvec4) Load 33
              78:   13(fvec4) VectorShuffle 77 77 2 2 2 2
              79:   13(fvec4) FMul 76 78
              80:   13(fvec4) Load 62
              81:   13(fvec4) FAdd 79 80
                              Store 62 81
              87:     23(ptr) AccessChain 20 39 58
              88:   13(fvec4) Load 87
              89:   13(fvec4) Load 33
              90:   13(fvec4) VectorShuffle 89 89 3 3 3 3
              91:   13(fvec4) FMul 88 90
              92:   13(fvec4) Load 62
              93:   13(fvec4) FAdd 91 92
              95:     94(ptr) AccessChain 86 38
                              Store 95 93
              97:     96(ptr) AccessChain 86 38 82
              98:    6(float) Load 97
              99:    6(float) FNegate 98
             100:     96(ptr) AccessChain 86 38 82
                              Store 100 99
                              Return
                              FunctionEnd

Disassembly for Fragment:
// Module Version 10000
// Generated by (magic number): 8000a
// Id's are bound by 38

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Fragment 4  "main" 17 21
                              ExecutionMode 4 OriginUpperLeft
                              Name 17  "vs_TEXCOORD0"
                              Decorate 9 RelaxedPrecision
                              Decorate 13 RelaxedPrecision
                              Decorate 13 DescriptorSet 0
                              Decorate 13 Binding 0
                              Decorate 14 RelaxedPrecision
                              Decorate 17(vs_TEXCOORD0) Location 0
                              Decorate 19 RelaxedPrecision
                              Decorate 21 RelaxedPrecision
                              Decorate 21 Location 0
                              Decorate 22 RelaxedPrecision
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypeImage 6(float) 2D sampled format:Unknown
              11:             TypeSampledImage 10
              12:             TypePointer UniformConstant 11
              13:     12(ptr) Variable UniformConstant
              15:             TypeVector 6(float) 2
              16:             TypePointer Input 15(fvec2)
17(vs_TEXCOORD0):     16(ptr) Variable Input
              20:             TypePointer Output 7(fvec4)
              21:     20(ptr) Variable Output
              24:             TypePointer Function 7(fvec4)
              26:             TypeInt 32 1
              27:             TypeVector 26(int) 4
              28:             TypePointer Function 27(ivec4)
              30:             TypeBool
              31:             TypeVector 30(bool) 4
              32:             TypePointer Function 31(bvec4)
              34:             TypeInt 32 0
              35:             TypeVector 34(int) 4
              36:             TypePointer Function 35(ivec4)
               4:           2 Function None 3
               5:             Label
              25:     24(ptr) Variable Function
              29:     28(ptr) Variable Function
              33:     32(ptr) Variable Function
              37:     36(ptr) Variable Function
              14:          11 Load 13
              18:   15(fvec2) Load 17(vs_TEXCOORD0)
              19:    7(fvec4) ImageSampleImplicitLod 14 18
                              Store 9 19
              22:    7(fvec4) Load 9
                              Store 21 22
                              Return
                              FunctionEnd

Disassembly for Hull:
Not present.



//////////////////////////////////////////////////////
Keywords: <none>
-- Hardware tier variant: Tier 2
-- Vertex shader for "vulkan":
Uses vertex data channel "TexCoord0"
Uses vertex data channel "Vertex"

Set 2D Texture "_MainTex" to set: 0, binding: 0, used in: Fragment  no sampler

Constant Buffer "VGlobals73290999" (144 bytes) on set: 1, binding: 0, used in: Vertex  {
  Matrix4x4 unity_MatrixVP at 64
  Matrix4x4 unity_ObjectToWorld at 0
  Vector4 _MainTex_ST at 128
}

Shader Disassembly:
Disassembly for Vertex:
// Module Version 10000
// Generated by (magic number): 8000a
// Id's are bound by 114

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Vertex 4  "main" 9 11 35 86
                              Name 9  "vs_TEXCOORD0"
                              Decorate 9(vs_TEXCOORD0) Location 0
                              Decorate 11 Location 1
                              Decorate 16 ArrayStride 16
                              Decorate 17 ArrayStride 16
                              MemberDecorate 18 0 Offset 0
                              MemberDecorate 18 1 Offset 64
                              MemberDecorate 18 2 Offset 128
                              Decorate 18 Block
                              Decorate 20 DescriptorSet 1
                              Decorate 20 Binding 0
                              Decorate 35 Location 0
                              MemberDecorate 84 0 BuiltIn Position
                              MemberDecorate 84 1 BuiltIn PointSize
                              MemberDecorate 84 2 BuiltIn ClipDistance
                              Decorate 84 Block
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 2
               8:             TypePointer Output 7(fvec2)
 9(vs_TEXCOORD0):      8(ptr) Variable Output
              10:             TypePointer Input 7(fvec2)
              11:     10(ptr) Variable Input
              13:             TypeVector 6(float) 4
              14:             TypeInt 32 0
              15:     14(int) Constant 4
              16:             TypeArray 13(fvec4) 15
              17:             TypeArray 13(fvec4) 15
              18:             TypeStruct 16 17 13(fvec4)
              19:             TypePointer Uniform 18(struct)
              20:     19(ptr) Variable Uniform
              21:             TypeInt 32 1
              22:     21(int) Constant 2
              23:             TypePointer Uniform 13(fvec4)
              32:             TypePointer Private 13(fvec4)
              33:     32(ptr) Variable Private
              34:             TypePointer Input 13(fvec4)
              35:     34(ptr) Variable Input
              38:     21(int) Constant 0
              39:     21(int) Constant 1
              58:     21(int) Constant 3
              62:     32(ptr) Variable Private
              82:     14(int) Constant 1
              83:             TypeArray 6(float) 82
              84:             TypeStruct 13(fvec4) 6(float) 83
              85:             TypePointer Output 84(struct)
              86:     85(ptr) Variable Output
              94:             TypePointer Output 13(fvec4)
              96:             TypePointer Output 6(float)
             102:             TypePointer Function 13(fvec4)
             104:             TypeVector 21(int) 4
             105:             TypePointer Function 104(ivec4)
             107:             TypeBool
             108:             TypeVector 107(bool) 4
             109:             TypePointer Function 108(bvec4)
             111:             TypeVector 14(int) 4
             112:             TypePointer Function 111(ivec4)
               4:           2 Function None 3
               5:             Label
             103:    102(ptr) Variable Function
             106:    105(ptr) Variable Function
             110:    109(ptr) Variable Function
             113:    112(ptr) Variable Function
              12:    7(fvec2) Load 11
              24:     23(ptr) AccessChain 20 22
              25:   13(fvec4) Load 24
              26:    7(fvec2) VectorShuffle 25 25 0 1
              27:    7(fvec2) FMul 12 26
              28:     23(ptr) AccessChain 20 22
              29:   13(fvec4) Load 28
              30:    7(fvec2) VectorShuffle 29 29 2 3
              31:    7(fvec2) FAdd 27 30
                              Store 9(vs_TEXCOORD0) 31
              36:   13(fvec4) Load 35
              37:   13(fvec4) VectorShuffle 36 36 1 1 1 1
              40:     23(ptr) AccessChain 20 38 39
              41:   13(fvec4) Load 40
              42:   13(fvec4) FMul 37 41
                              Store 33 42
              43:     23(ptr) AccessChain 20 38 38
              44:   13(fvec4) Load 43
              45:   13(fvec4) Load 35
              46:   13(fvec4) VectorShuffle 45 45 0 0 0 0
              47:   13(fvec4) FMul 44 46
              48:   13(fvec4) Load 33
              49:   13(fvec4) FAdd 47 48
                              Store 33 49
              50:     23(ptr) AccessChain 20 38 22
              51:   13(fvec4) Load 50
              52:   13(fvec4) Load 35
              53:   13(fvec4) VectorShuffle 52 52 2 2 2 2
              54:   13(fvec4) FMul 51 53
              55:   13(fvec4) Load 33
              56:   13(fvec4) FAdd 54 55
                              Store 33 56
              57:   13(fvec4) Load 33
              59:     23(ptr) AccessChain 20 38 58
              60:   13(fvec4) Load 59
              61:   13(fvec4) FAdd 57 60
                              Store 33 61
              63:   13(fvec4) Load 33
              64:   13(fvec4) VectorShuffle 63 63 1 1 1 1
              65:     23(ptr) AccessChain 20 39 39
              66:   13(fvec4) Load 65
              67:   13(fvec4) FMul 64 66
                              Store 62 67
              68:     23(ptr) AccessChain 20 39 38
              69:   13(fvec4) Load 68
              70:   13(fvec4) Load 33
              71:   13(fvec4) VectorShuffle 70 70 0 0 0 0
              72:   13(fvec4) FMul 69 71
              73:   13(fvec4) Load 62
              74:   13(fvec4) FAdd 72 73
                              Store 62 74
              75:     23(ptr) AccessChain 20 39 22
              76:   13(fvec4) Load 75
              77:   13(fvec4) Load 33
              78:   13(fvec4) VectorShuffle 77 77 2 2 2 2
              79:   13(fvec4) FMul 76 78
              80:   13(fvec4) Load 62
              81:   13(fvec4) FAdd 79 80
                              Store 62 81
              87:     23(ptr) AccessChain 20 39 58
              88:   13(fvec4) Load 87
              89:   13(fvec4) Load 33
              90:   13(fvec4) VectorShuffle 89 89 3 3 3 3
              91:   13(fvec4) FMul 88 90
              92:   13(fvec4) Load 62
              93:   13(fvec4) FAdd 91 92
              95:     94(ptr) AccessChain 86 38
                              Store 95 93
              97:     96(ptr) AccessChain 86 38 82
              98:    6(float) Load 97
              99:    6(float) FNegate 98
             100:     96(ptr) AccessChain 86 38 82
                              Store 100 99
                              Return
                              FunctionEnd

Disassembly for Fragment:
// Module Version 10000
// Generated by (magic number): 8000a
// Id's are bound by 38

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Fragment 4  "main" 17 21
                              ExecutionMode 4 OriginUpperLeft
                              Name 17  "vs_TEXCOORD0"
                              Decorate 9 RelaxedPrecision
                              Decorate 13 RelaxedPrecision
                              Decorate 13 DescriptorSet 0
                              Decorate 13 Binding 0
                              Decorate 14 RelaxedPrecision
                              Decorate 17(vs_TEXCOORD0) Location 0
                              Decorate 19 RelaxedPrecision
                              Decorate 21 RelaxedPrecision
                              Decorate 21 Location 0
                              Decorate 22 RelaxedPrecision
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypeImage 6(float) 2D sampled format:Unknown
              11:             TypeSampledImage 10
              12:             TypePointer UniformConstant 11
              13:     12(ptr) Variable UniformConstant
              15:             TypeVector 6(float) 2
              16:             TypePointer Input 15(fvec2)
17(vs_TEXCOORD0):     16(ptr) Variable Input
              20:             TypePointer Output 7(fvec4)
              21:     20(ptr) Variable Output
              24:             TypePointer Function 7(fvec4)
              26:             TypeInt 32 1
              27:             TypeVector 26(int) 4
              28:             TypePointer Function 27(ivec4)
              30:             TypeBool
              31:             TypeVector 30(bool) 4
              32:             TypePointer Function 31(bvec4)
              34:             TypeInt 32 0
              35:             TypeVector 34(int) 4
              36:             TypePointer Function 35(ivec4)
               4:           2 Function None 3
               5:             Label
              25:     24(ptr) Variable Function
              29:     28(ptr) Variable Function
              33:     32(ptr) Variable Function
              37:     36(ptr) Variable Function
              14:          11 Load 13
              18:   15(fvec2) Load 17(vs_TEXCOORD0)
              19:    7(fvec4) ImageSampleImplicitLod 14 18
                              Store 9 19
              22:    7(fvec4) Load 9
                              Store 21 22
                              Return
                              FunctionEnd

Disassembly for Hull:
Not present.



//////////////////////////////////////////////////////
Keywords: <none>
-- Hardware tier variant: Tier 3
-- Vertex shader for "vulkan":
Uses vertex data channel "TexCoord0"
Uses vertex data channel "Vertex"

Set 2D Texture "_MainTex" to set: 0, binding: 0, used in: Fragment  no sampler

Constant Buffer "VGlobals73290999" (144 bytes) on set: 1, binding: 0, used in: Vertex  {
  Matrix4x4 unity_MatrixVP at 64
  Matrix4x4 unity_ObjectToWorld at 0
  Vector4 _MainTex_ST at 128
}

Shader Disassembly:
Disassembly for Vertex:
// Module Version 10000
// Generated by (magic number): 8000a
// Id's are bound by 114

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Vertex 4  "main" 9 11 35 86
                              Name 9  "vs_TEXCOORD0"
                              Decorate 9(vs_TEXCOORD0) Location 0
                              Decorate 11 Location 1
                              Decorate 16 ArrayStride 16
                              Decorate 17 ArrayStride 16
                              MemberDecorate 18 0 Offset 0
                              MemberDecorate 18 1 Offset 64
                              MemberDecorate 18 2 Offset 128
                              Decorate 18 Block
                              Decorate 20 DescriptorSet 1
                              Decorate 20 Binding 0
                              Decorate 35 Location 0
                              MemberDecorate 84 0 BuiltIn Position
                              MemberDecorate 84 1 BuiltIn PointSize
                              MemberDecorate 84 2 BuiltIn ClipDistance
                              Decorate 84 Block
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 2
               8:             TypePointer Output 7(fvec2)
 9(vs_TEXCOORD0):      8(ptr) Variable Output
              10:             TypePointer Input 7(fvec2)
              11:     10(ptr) Variable Input
              13:             TypeVector 6(float) 4
              14:             TypeInt 32 0
              15:     14(int) Constant 4
              16:             TypeArray 13(fvec4) 15
              17:             TypeArray 13(fvec4) 15
              18:             TypeStruct 16 17 13(fvec4)
              19:             TypePointer Uniform 18(struct)
              20:     19(ptr) Variable Uniform
              21:             TypeInt 32 1
              22:     21(int) Constant 2
              23:             TypePointer Uniform 13(fvec4)
              32:             TypePointer Private 13(fvec4)
              33:     32(ptr) Variable Private
              34:             TypePointer Input 13(fvec4)
              35:     34(ptr) Variable Input
              38:     21(int) Constant 0
              39:     21(int) Constant 1
              58:     21(int) Constant 3
              62:     32(ptr) Variable Private
              82:     14(int) Constant 1
              83:             TypeArray 6(float) 82
              84:             TypeStruct 13(fvec4) 6(float) 83
              85:             TypePointer Output 84(struct)
              86:     85(ptr) Variable Output
              94:             TypePointer Output 13(fvec4)
              96:             TypePointer Output 6(float)
             102:             TypePointer Function 13(fvec4)
             104:             TypeVector 21(int) 4
             105:             TypePointer Function 104(ivec4)
             107:             TypeBool
             108:             TypeVector 107(bool) 4
             109:             TypePointer Function 108(bvec4)
             111:             TypeVector 14(int) 4
             112:             TypePointer Function 111(ivec4)
               4:           2 Function None 3
               5:             Label
             103:    102(ptr) Variable Function
             106:    105(ptr) Variable Function
             110:    109(ptr) Variable Function
             113:    112(ptr) Variable Function
              12:    7(fvec2) Load 11
              24:     23(ptr) AccessChain 20 22
              25:   13(fvec4) Load 24
              26:    7(fvec2) VectorShuffle 25 25 0 1
              27:    7(fvec2) FMul 12 26
              28:     23(ptr) AccessChain 20 22
              29:   13(fvec4) Load 28
              30:    7(fvec2) VectorShuffle 29 29 2 3
              31:    7(fvec2) FAdd 27 30
                              Store 9(vs_TEXCOORD0) 31
              36:   13(fvec4) Load 35
              37:   13(fvec4) VectorShuffle 36 36 1 1 1 1
              40:     23(ptr) AccessChain 20 38 39
              41:   13(fvec4) Load 40
              42:   13(fvec4) FMul 37 41
                              Store 33 42
              43:     23(ptr) AccessChain 20 38 38
              44:   13(fvec4) Load 43
              45:   13(fvec4) Load 35
              46:   13(fvec4) VectorShuffle 45 45 0 0 0 0
              47:   13(fvec4) FMul 44 46
              48:   13(fvec4) Load 33
              49:   13(fvec4) FAdd 47 48
                              Store 33 49
              50:     23(ptr) AccessChain 20 38 22
              51:   13(fvec4) Load 50
              52:   13(fvec4) Load 35
              53:   13(fvec4) VectorShuffle 52 52 2 2 2 2
              54:   13(fvec4) FMul 51 53
              55:   13(fvec4) Load 33
              56:   13(fvec4) FAdd 54 55
                              Store 33 56
              57:   13(fvec4) Load 33
              59:     23(ptr) AccessChain 20 38 58
              60:   13(fvec4) Load 59
              61:   13(fvec4) FAdd 57 60
                              Store 33 61
              63:   13(fvec4) Load 33
              64:   13(fvec4) VectorShuffle 63 63 1 1 1 1
              65:     23(ptr) AccessChain 20 39 39
              66:   13(fvec4) Load 65
              67:   13(fvec4) FMul 64 66
                              Store 62 67
              68:     23(ptr) AccessChain 20 39 38
              69:   13(fvec4) Load 68
              70:   13(fvec4) Load 33
              71:   13(fvec4) VectorShuffle 70 70 0 0 0 0
              72:   13(fvec4) FMul 69 71
              73:   13(fvec4) Load 62
              74:   13(fvec4) FAdd 72 73
                              Store 62 74
              75:     23(ptr) AccessChain 20 39 22
              76:   13(fvec4) Load 75
              77:   13(fvec4) Load 33
              78:   13(fvec4) VectorShuffle 77 77 2 2 2 2
              79:   13(fvec4) FMul 76 78
              80:   13(fvec4) Load 62
              81:   13(fvec4) FAdd 79 80
                              Store 62 81
              87:     23(ptr) AccessChain 20 39 58
              88:   13(fvec4) Load 87
              89:   13(fvec4) Load 33
              90:   13(fvec4) VectorShuffle 89 89 3 3 3 3
              91:   13(fvec4) FMul 88 90
              92:   13(fvec4) Load 62
              93:   13(fvec4) FAdd 91 92
              95:     94(ptr) AccessChain 86 38
                              Store 95 93
              97:     96(ptr) AccessChain 86 38 82
              98:    6(float) Load 97
              99:    6(float) FNegate 98
             100:     96(ptr) AccessChain 86 38 82
                              Store 100 99
                              Return
                              FunctionEnd

Disassembly for Fragment:
// Module Version 10000
// Generated by (magic number): 8000a
// Id's are bound by 38

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Fragment 4  "main" 17 21
                              ExecutionMode 4 OriginUpperLeft
                              Name 17  "vs_TEXCOORD0"
                              Decorate 9 RelaxedPrecision
                              Decorate 13 RelaxedPrecision
                              Decorate 13 DescriptorSet 0
                              Decorate 13 Binding 0
                              Decorate 14 RelaxedPrecision
                              Decorate 17(vs_TEXCOORD0) Location 0
                              Decorate 19 RelaxedPrecision
                              Decorate 21 RelaxedPrecision
                              Decorate 21 Location 0
                              Decorate 22 RelaxedPrecision
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypeImage 6(float) 2D sampled format:Unknown
              11:             TypeSampledImage 10
              12:             TypePointer UniformConstant 11
              13:     12(ptr) Variable UniformConstant
              15:             TypeVector 6(float) 2
              16:             TypePointer Input 15(fvec2)
17(vs_TEXCOORD0):     16(ptr) Variable Input
              20:             TypePointer Output 7(fvec4)
              21:     20(ptr) Variable Output
              24:             TypePointer Function 7(fvec4)
              26:             TypeInt 32 1
              27:             TypeVector 26(int) 4
              28:             TypePointer Function 27(ivec4)
              30:             TypeBool
              31:             TypeVector 30(bool) 4
              32:             TypePointer Function 31(bvec4)
              34:             TypeInt 32 0
              35:             TypeVector 34(int) 4
              36:             TypePointer Function 35(ivec4)
               4:           2 Function None 3
               5:             Label
              25:     24(ptr) Variable Function
              29:     28(ptr) Variable Function
              33:     32(ptr) Variable Function
              37:     36(ptr) Variable Function
              14:          11 Load 13
              18:   15(fvec2) Load 17(vs_TEXCOORD0)
              19:    7(fvec4) ImageSampleImplicitLod 14 18
                              Store 9 19
              22:    7(fvec4) Load 9
                              Store 21 22
                              Return
                              FunctionEnd

Disassembly for Hull:
Not present.



 }
}
}