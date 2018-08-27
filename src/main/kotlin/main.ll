; ModuleID = 'main.bc'
source_filename = "out"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ContainerHeader = type { i32, i32 }
%struct.TypeInfo = type { %struct.TypeInfo*, %struct.GlobalHash, i32, %struct.TypeInfo*, i32*, i32, %struct.TypeInfo**, i32, %struct.MethodTableRecord*, i32, %struct.FieldTableRecord*, i32, %struct.ObjHeader*, %struct.ObjHeader*, i32, %struct.ExtendedTypeInfo* }
%struct.GlobalHash = type { [20 x i8] }
%struct.MethodTableRecord = type { i64, i8* }
%struct.FieldTableRecord = type { i64, i32 }
%struct.ObjHeader = type { %struct.TypeInfo*, %struct.ContainerHeader* }
%struct.ExtendedTypeInfo = type { i32, i32*, i8*, i8** }
%struct.ArrayHeader = type { %struct.TypeInfo*, %struct.ContainerHeader*, i32 }
%struct.InitNode = type { void (i32)*, %struct.InitNode* }
%"kclassbody:Comissao#internal" = type { float, double, %struct.ObjHeader* }
%"kclassbody:Pedido#internal" = type { i32, i32, double }

@theStaticObjectsContainer = external global %struct.ContainerHeader
@"ktypeglobal:Comissao#internal" = internal constant { %struct.TypeInfo, [3 x i8*] } { %struct.TypeInfo { %struct.TypeInfo* @"ktype:Comissao", %struct.GlobalHash { [20 x i8] c"-\95[\1C\03\D8\FB\01\C8E'\F3\F8~\EA\7F\85\C0\AA\04" }, i32 24, %struct.TypeInfo* @"ktype:kotlin.Any", i32* getelementptr inbounds ([1 x i32], [1 x i32]* @"krefs:Comissao", i32 0, i32 0), i32 1, %struct.TypeInfo** null, i32 0, %struct.MethodTableRecord* getelementptr inbounds ([3 x %struct.MethodTableRecord], [3 x %struct.MethodTableRecord]* @"kmethods:Comissao", i32 0, i32 0), i32 3, %struct.FieldTableRecord* getelementptr inbounds ([3 x %struct.FieldTableRecord], [3 x %struct.FieldTableRecord]* @"kfields:Comissao", i32 0, i32 0), i32 3, %struct.ObjHeader* @"kstr:2jmj7l5rSw0yVb/vlWAYkK/YBwk=", %struct.ObjHeader* @"kstr:LZVbHAPY+wHIRSfz+H7qf4XAqgQ=", i32 0, %struct.ExtendedTypeInfo* @6 }, [3 x i8*] [i8* bitcast (i32 (%struct.ObjHeader*)* @"kfun:Comissao.hashCode()ValueType" to i8*), i8* bitcast (%struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:Comissao.toString()kotlin.String" to i8*), i8* bitcast (i1 (%struct.ObjHeader*, %struct.ObjHeader*)* @"kfun:Comissao.equals(kotlin.Any?)ValueType" to i8*)] }
@"ktypeglobal:Comissao.Companion#internal" = internal constant { %struct.TypeInfo, [3 x i8*] } { %struct.TypeInfo { %struct.TypeInfo* @"ktype:Comissao.Companion", %struct.GlobalHash { [20 x i8] c"\B3-\16\D4\FD#\B7hL\D0\B4*\A3\FEm\1D\8E\CF\DBi" }, i32 0, %struct.TypeInfo* @"ktype:kotlin.Any", i32* null, i32 0, %struct.TypeInfo** null, i32 0, %struct.MethodTableRecord* getelementptr inbounds ([3 x %struct.MethodTableRecord], [3 x %struct.MethodTableRecord]* @"kmethods:Comissao.Companion", i32 0, i32 0), i32 3, %struct.FieldTableRecord* null, i32 0, %struct.ObjHeader* @"kstr:2jmj7l5rSw0yVb/vlWAYkK/YBwk=", %struct.ObjHeader* @"kstr:sy0W1P0jt2hM0LQqo/5tHY7P22k=", i32 0, %struct.ExtendedTypeInfo* @0 }, [3 x i8*] [i8* bitcast (i32 (%struct.ObjHeader*)* @Kotlin_Any_hashCode to i8*), i8* bitcast (%struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:kotlin.Any.toString()kotlin.String" to i8*), i8* bitcast (i1 (%struct.ObjHeader*, %struct.ObjHeader*)* @Kotlin_Any_equals to i8*)] }
@"kobjref:Comissao.Companion" = global %struct.ObjHeader* null
@"kshadowobjref:Comissao.Companion" = thread_local global %struct.ObjHeader* null
@"ktypeglobal:Pedido#internal" = internal constant { %struct.TypeInfo, [3 x i8*] } { %struct.TypeInfo { %struct.TypeInfo* @"ktype:Pedido", %struct.GlobalHash { [20 x i8] c"|\01\D4{\D2\AD\1A\92\1C\00\E7\98\D6^\AFA\F4OY\05" }, i32 16, %struct.TypeInfo* @"ktype:kotlin.Any", i32* null, i32 0, %struct.TypeInfo** null, i32 0, %struct.MethodTableRecord* getelementptr inbounds ([3 x %struct.MethodTableRecord], [3 x %struct.MethodTableRecord]* @"kmethods:Pedido", i32 0, i32 0), i32 3, %struct.FieldTableRecord* getelementptr inbounds ([3 x %struct.FieldTableRecord], [3 x %struct.FieldTableRecord]* @"kfields:Pedido", i32 0, i32 0), i32 3, %struct.ObjHeader* @"kstr:2jmj7l5rSw0yVb/vlWAYkK/YBwk=", %struct.ObjHeader* @"kstr:fAHUe9KtGpIcAOeY1l6vQfRPWQU=", i32 0, %struct.ExtendedTypeInfo* @11 }, [3 x i8*] [i8* bitcast (i32 (%struct.ObjHeader*)* @"kfun:Pedido.hashCode()ValueType" to i8*), i8* bitcast (%struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:Pedido.toString()kotlin.String" to i8*), i8* bitcast (i1 (%struct.ObjHeader*, %struct.ObjHeader*)* @"kfun:Pedido.equals(kotlin.Any?)ValueType" to i8*)] }
@"ktype:kotlin.Any" = external global %struct.TypeInfo
@"kmethods:Comissao.Companion" = internal constant [3 x %struct.MethodTableRecord] [%struct.MethodTableRecord { i64 -2736455629551344358, i8* bitcast (i32 (%struct.ObjHeader*)* @Kotlin_Any_hashCode to i8*) }, %struct.MethodTableRecord { i64 6427546586457099539, i8* bitcast (%struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:kotlin.Any.toString()kotlin.String" to i8*) }, %struct.MethodTableRecord { i64 8167271683181294621, i8* bitcast (i1 (%struct.ObjHeader*, %struct.ObjHeader*)* @Kotlin_Any_equals to i8*) }]
@0 = internal global %struct.ExtendedTypeInfo zeroinitializer
@"ktype:kotlin.String" = external global %struct.TypeInfo
@1 = internal global { %struct.ArrayHeader, [0 x i8] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 0 }, [0 x i8] zeroinitializer }
@2 = internal global { %struct.ArrayHeader, [18 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 18 }, [18 x i16] [i16 67, i16 111, i16 109, i16 105, i16 115, i16 115, i16 97, i16 111, i16 46, i16 67, i16 111, i16 109, i16 112, i16 97, i16 110, i16 105, i16 111, i16 110] }
@"krefs:Comissao" = internal constant [1 x i32] [i32 16]
@"kfields:Comissao" = internal constant [3 x %struct.FieldTableRecord] [%struct.FieldTableRecord { i64 467870850172754785, i32 0 }, %struct.FieldTableRecord { i64 2605096385554649852, i32 8 }, %struct.FieldTableRecord { i64 3833114037443369700, i32 16 }]
@"kmethods:Comissao" = internal constant [3 x %struct.MethodTableRecord] [%struct.MethodTableRecord { i64 -2736455629551344358, i8* bitcast (i32 (%struct.ObjHeader*)* @"kfun:Comissao.hashCode()ValueType" to i8*) }, %struct.MethodTableRecord { i64 6427546586457099539, i8* bitcast (%struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:Comissao.toString()kotlin.String" to i8*) }, %struct.MethodTableRecord { i64 8167271683181294621, i8* bitcast (i1 (%struct.ObjHeader*, %struct.ObjHeader*)* @"kfun:Comissao.equals(kotlin.Any?)ValueType" to i8*) }]
@"kextoff:Comissao" = internal constant [3 x i32] [i32 0, i32 8, i32 16]
@"kexttype:Comissao" = internal constant [3 x i8] c"\06\07\01"
@3 = internal constant [12 x i8] c"porcentagem\00"
@4 = internal constant [6 x i8] c"valor\00"
@5 = internal constant [7 x i8] c"pedido\00"
@"kextname:Comissao" = internal constant [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0)]
@6 = internal global %struct.ExtendedTypeInfo { i32 3, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @"kextoff:Comissao", i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"kexttype:Comissao", i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @"kextname:Comissao", i32 0, i32 0) }
@7 = internal global { %struct.ArrayHeader, [8 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 8 }, [8 x i16] [i16 67, i16 111, i16 109, i16 105, i16 115, i16 115, i16 97, i16 111] }
@"kfields:Pedido" = internal constant [3 x %struct.FieldTableRecord] [%struct.FieldTableRecord { i64 -523409708966532361, i32 0 }, %struct.FieldTableRecord { i64 4296599859203630516, i32 4 }, %struct.FieldTableRecord { i64 5418718444176491037, i32 8 }]
@"kmethods:Pedido" = internal constant [3 x %struct.MethodTableRecord] [%struct.MethodTableRecord { i64 -2736455629551344358, i8* bitcast (i32 (%struct.ObjHeader*)* @"kfun:Pedido.hashCode()ValueType" to i8*) }, %struct.MethodTableRecord { i64 6427546586457099539, i8* bitcast (%struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:Pedido.toString()kotlin.String" to i8*) }, %struct.MethodTableRecord { i64 8167271683181294621, i8* bitcast (i1 (%struct.ObjHeader*, %struct.ObjHeader*)* @"kfun:Pedido.equals(kotlin.Any?)ValueType" to i8*) }]
@"kextoff:Pedido" = internal constant [3 x i32] [i32 0, i32 4, i32 8]
@"kexttype:Pedido" = internal constant [3 x i8] c"\04\04\07"
@8 = internal constant [7 x i8] c"codigo\00"
@9 = internal constant [11 x i8] c"quantidade\00"
@10 = internal constant [6 x i8] c"valor\00"
@"kextname:Pedido" = internal constant [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @10, i32 0, i32 0)]
@11 = internal global %struct.ExtendedTypeInfo { i32 3, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @"kextoff:Pedido", i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"kexttype:Pedido", i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @"kextname:Pedido", i32 0, i32 0) }
@12 = internal global { %struct.ArrayHeader, [6 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 6 }, [6 x i16] [i16 80, i16 101, i16 100, i16 105, i16 100, i16 111] }
@theUnitInstance = external global %struct.ObjHeader
@"ktype:kotlin.text.StringBuilder" = external global %struct.TypeInfo
@13 = internal global { %struct.ArrayHeader, [8 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 8 }, [8 x i16] [i16 67, i16 111, i16 100, i16 105, i16 103, i16 111, i16 58, i16 32] }
@14 = internal global { %struct.ArrayHeader, [1 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 1 }, [1 x i16] [i16 32] }
@15 = internal global { %struct.ArrayHeader, [1 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 1 }, [1 x i16] [i16 10] }
@16 = internal global { %struct.ArrayHeader, [10 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 10 }, [10 x i16] [i16 67, i16 111, i16 109, i16 105, i16 115, i16 115, i16 227, i16 111, i16 58, i16 32] }
@17 = internal global { %struct.ArrayHeader, [12 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 12 }, [12 x i16] [i16 81, i16 117, i16 97, i16 110, i16 116, i16 105, i16 100, i16 97, i16 100, i16 101, i16 58, i16 32] }
@18 = internal global { %struct.ArrayHeader, [13 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 13 }, [13 x i16] [i16 80, i16 111, i16 114, i16 99, i16 101, i16 110, i16 116, i16 97, i16 103, i16 101, i16 109, i16 58, i16 32] }
@init_node = internal global %struct.InitNode { void (i32)* @33, %struct.InitNode* null }
@19 = internal global { %struct.ArrayHeader, [7 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 7 }, [7 x i16] [i16 86, i16 97, i16 108, i16 111, i16 114, i16 58, i16 32] }
@"private_classes_<stdlib>_konan.internal.DoubleBox_112" = external global %struct.TypeInfo
@"ktype:konan.internal.KClassImpl" = external global %struct.TypeInfo
@"ktype:kotlin.collections.ArrayList" = external global %struct.TypeInfo
@20 = internal global { %struct.ArrayHeader, [7 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 7 }, [7 x i16] [i16 84, i16 101, i16 115, i16 116, i16 101, i16 58, i16 32] }
@21 = internal global { %struct.ArrayHeader, [45 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 45 }, [45 x i16] [i16 86, i16 97, i16 109, i16 111, i16 115, i16 32, i16 102, i16 97, i16 122, i16 101, i16 114, i16 32, i16 97, i16 108, i16 103, i16 117, i16 110, i16 115, i16 32, i16 99, i16 225, i16 108, i16 99, i16 117, i16 108, i16 111, i16 115, i16 32, i16 115, i16 111, i16 98, i16 114, i16 101, i16 32, i16 111, i16 115, i16 32, i16 112, i16 101, i16 100, i16 105, i16 100, i16 111, i16 115, i16 46] }
@22 = internal global { %struct.ArrayHeader, [47 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 47 }, [47 x i16] [i16 68, i16 105, i16 103, i16 105, i16 116, i16 101, i16 32, i16 111, i16 32, i16 110, i16 250, i16 109, i16 101, i16 114, i16 111, i16 32, i16 100, i16 101, i16 32, i16 112, i16 101, i16 100, i16 105, i16 100, i16 111, i16 115, i16 32, i16 97, i16 32, i16 115, i16 101, i16 114, i16 101, i16 109, i16 32, i16 99, i16 97, i16 108, i16 99, i16 117, i16 108, i16 97, i16 100, i16 111, i16 115, i16 58, i16 32] }
@"ktype:kotlin.NumberFormatException" = external global %struct.TypeInfo
@23 = internal global { %struct.ArrayHeader, [8 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 8 }, [8 x i16] [i16 67, i16 243, i16 100, i16 105, i16 103, i16 111, i16 58, i16 32] }
@"kobjref:konan.internal.FloatingPointParser" = external global %struct.ObjHeader*
@"ktype:konan.internal.FloatingPointParser" = external global %struct.TypeInfo
@"kshadowobjref:konan.internal.FloatingPointParser" = external thread_local global %struct.ObjHeader*
@"private_classes_<stdlib>_kotlin.collections.ArrayList_285" = external global %struct.TypeInfo
@"private_classes_<stdlib>_kotlin.collections.ArrayList.Itr_655" = external global %struct.TypeInfo
@24 = internal global { %struct.ArrayHeader, [39 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 39 }, [39 x i16] [i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45, i16 45] }
@25 = internal global { %struct.ArrayHeader, [36 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 36 }, [36 x i16] [i16 80, i16 101, i16 100, i16 105, i16 100, i16 111, i16 115, i16 32, i16 101, i16 32, i16 115, i16 101, i16 117, i16 115, i16 32, i16 118, i16 97, i16 108, i16 111, i16 114, i16 101, i16 115, i16 32, i16 100, i16 101, i16 32, i16 99, i16 111, i16 109, i16 105, i16 115, i16 115, i16 227, i16 111, i16 58, i16 32] }
@"private_classes_<stdlib>_kotlin.collections.AbstractList.IteratorImpl_270" = external global %struct.TypeInfo
@"private_classes_<stdlib>_kotlin.collections.EmptyIterator_282" = external global %struct.TypeInfo
@26 = internal global { %struct.ArrayHeader, [28 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 28 }, [28 x i16] [i16 84, i16 111, i16 116, i16 97, i16 108, i16 32, i16 100, i16 101, i16 32, i16 86, i16 101, i16 110, i16 100, i16 97, i16 32, i16 100, i16 111, i16 115, i16 32, i16 112, i16 101, i16 100, i16 105, i16 100, i16 111, i16 115, i16 58, i16 32] }
@27 = internal global { %struct.ArrayHeader, [42 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 42 }, [42 x i16] [i16 84, i16 111, i16 116, i16 97, i16 108, i16 32, i16 100, i16 101, i16 32, i16 99, i16 111, i16 109, i16 105, i16 115, i16 115, i16 227, i16 111, i16 32, i16 112, i16 97, i16 103, i16 97, i16 32, i16 112, i16 111, i16 114, i16 32, i16 114, i16 101, i16 112, i16 114, i16 101, i16 115, i16 101, i16 110, i16 116, i16 97, i16 110, i16 116, i16 101, i16 58, i16 32] }
@"ktype:kotlin.collections.HashMap" = external global %struct.TypeInfo
@"private_classes_<stdlib>_kotlin.collections.HashMap_298" = external global %struct.TypeInfo
@"private_classes_<stdlib>_kotlin.collections.HashMapEntrySet_666" = external global %struct.TypeInfo
@"private_classes_<stdlib>_kotlin.collections.HashMap.EntriesItr_671" = external global %struct.TypeInfo
@"private_classes_<stdlib>_kotlin.collections.HashMap.KeysItr_668" = external global %struct.TypeInfo
@"ktype:kotlin.Pair" = external global %struct.TypeInfo
@28 = internal global { %struct.ArrayHeader, [10 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 10 }, [10 x i16] [i16 86, i16 101, i16 110, i16 100, i16 101, i16 100, i16 111, i16 114, i16 58, i16 32] }
@29 = internal global { %struct.ArrayHeader, [16 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 16 }, [16 x i16] [i16 67, i16 111, i16 109, i16 105, i16 115, i16 115, i16 227, i16 111, i16 32, i16 84, i16 111, i16 116, i16 97, i16 108, i16 58, i16 32] }
@30 = internal global { %struct.ArrayHeader, [24 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 24 }, [24 x i16] [i16 84, i16 111, i16 116, i16 97, i16 108, i16 32, i16 112, i16 97, i16 103, i16 111, i16 32, i16 100, i16 101, i16 32, i16 99, i16 111, i16 109, i16 105, i16 115, i16 115, i16 227, i16 111, i16 58, i16 32] }
@"kobjref:kotlinx.cinterop.nativeHeap" = external global %struct.ObjHeader*
@"ktype:kotlinx.cinterop.nativeHeap" = external global %struct.TypeInfo
@"kshadowobjref:kotlinx.cinterop.nativeHeap" = external thread_local global %struct.ObjHeader*
@"kobjref:kotlinx.cinterop.ByteVarOf.Companion" = external global %struct.ObjHeader*
@"ktype:kotlinx.cinterop.ByteVarOf.Companion" = external global %struct.TypeInfo
@"kshadowobjref:kotlinx.cinterop.ByteVarOf.Companion" = external thread_local global %struct.ObjHeader*
@"private_classes_<stdlib>_kotlinx.cinterop.nativeHeap_32" = external global %struct.TypeInfo
@31 = internal global { %struct.ArrayHeader, [2 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 2 }, [2 x i16] [i16 37, i16 46] }
@32 = internal global { %struct.ArrayHeader, [1 x i16] } { %struct.ArrayHeader { %struct.TypeInfo* @"ktype:kotlin.String", %struct.ContainerHeader* @theStaticObjectsContainer, i32 1 }, [1 x i16] [i16 102] }
@"ktype:kotlin.Array" = external global %struct.TypeInfo
@init_node.1 = internal global %struct.InitNode { void (i32)* @35, %struct.InitNode* null }
@Konan_init_guard = private global i32 0

@"ktype:Comissao" = alias %struct.TypeInfo, getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:Comissao#internal", i32 0, i32 0)
@"ktype:Comissao.Companion" = alias %struct.TypeInfo, getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:Comissao.Companion#internal", i32 0, i32 0)
@"ktype:Pedido" = alias %struct.TypeInfo, getelementptr inbounds ({ %struct.TypeInfo, [3 x i8*] }, { %struct.TypeInfo, [3 x i8*] }* @"ktypeglobal:Pedido#internal", i32 0, i32 0)
@"kstr:2jmj7l5rSw0yVb/vlWAYkK/YBwk=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [0 x i8] }* @1 to %struct.ObjHeader*)
@"kstr:sy0W1P0jt2hM0LQqo/5tHY7P22k=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [18 x i16] }* @2 to %struct.ObjHeader*)
@"kstr:LZVbHAPY+wHIRSfz+H7qf4XAqgQ=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [8 x i16] }* @7 to %struct.ObjHeader*)
@"kstr:fAHUe9KtGpIcAOeY1l6vQfRPWQU=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [6 x i16] }* @12 to %struct.ObjHeader*)
@"private_functions_<main>_kfun:Comissao.hashCode()ValueType_0" = alias i32 (%struct.ObjHeader*), i32 (%struct.ObjHeader*)* @"kfun:Comissao.hashCode()ValueType"
@"private_functions_<main>_kfun:Comissao.toString()kotlin.String_1" = alias %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**), %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:Comissao.toString()kotlin.String"
@"private_functions_<main>_kfun:Comissao.equals(kotlin.Any?)ValueType_2" = alias i1 (%struct.ObjHeader*, %struct.ObjHeader*), i1 (%struct.ObjHeader*, %struct.ObjHeader*)* @"kfun:Comissao.equals(kotlin.Any?)ValueType"
@"private_functions_<main>_kfun:Pedido.hashCode()ValueType_3" = alias i32 (%struct.ObjHeader*), i32 (%struct.ObjHeader*)* @"kfun:Pedido.hashCode()ValueType"
@"private_functions_<main>_kfun:Pedido.toString()kotlin.String_4" = alias %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**), %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)* @"kfun:Pedido.toString()kotlin.String"
@"private_functions_<main>_kfun:Pedido.equals(kotlin.Any?)ValueType_5" = alias i1 (%struct.ObjHeader*, %struct.ObjHeader*), i1 (%struct.ObjHeader*, %struct.ObjHeader*)* @"kfun:Pedido.equals(kotlin.Any?)ValueType"
@"private_classes_<main>_Comissao_0" = alias %struct.TypeInfo, %struct.TypeInfo* @"ktype:Comissao"
@"private_classes_<main>_Pedido_1" = alias %struct.TypeInfo, %struct.TypeInfo* @"ktype:Pedido"
@"private_classes_<main>_Comissao.Companion_2" = alias %struct.TypeInfo, %struct.TypeInfo* @"ktype:Comissao.Companion"
@"kstr:YcsDPIg6T4s/JXhgbzkxrp0KiWk=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [8 x i16] }* @13 to %struct.ObjHeader*)
@"kstr:uFjLKCYX+wlW2WAhXI6E0cz5CcY=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [1 x i16] }* @14 to %struct.ObjHeader*)
@"kstr:rcg7GeeTSRscbqD9i0bNnzLlkvw=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [1 x i16] }* @15 to %struct.ObjHeader*)
@"kstr:enLrfDIh7yYbuKvfgKu4fxZWnbQ=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [10 x i16] }* @16 to %struct.ObjHeader*)
@"kstr:VS8QwHhMu6cXlIYM4hDRmdunwks=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [12 x i16] }* @17 to %struct.ObjHeader*)
@"kstr:iXGgnMNaUKOfE/aS8HQkAqRNq/c=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [13 x i16] }* @18 to %struct.ObjHeader*)
@"kstr:NHkBTcsZwK+l/I4x4rr9YYBSt0o=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [7 x i16] }* @19 to %struct.ObjHeader*)
@"kstr:9uXvwB1lM0r/wPnZBsZ/rAsCqxc=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [7 x i16] }* @20 to %struct.ObjHeader*)
@"kstr:SoP/+mJKdwOzRxebMbLKpOl35L4=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [45 x i16] }* @21 to %struct.ObjHeader*)
@"kstr:IqzVnKF1/MkFqfLQwqEmyQNgOqY=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [47 x i16] }* @22 to %struct.ObjHeader*)
@"kstr:LrDIzKLRITE5NXYUNs0oXgGYI9U=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [8 x i16] }* @23 to %struct.ObjHeader*)
@"kstr:1kstNoHxVFiIrergpZzO061I+gk=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [39 x i16] }* @24 to %struct.ObjHeader*)
@"kstr:S17nW+yc6ozhyTGOlLwkV0hr55A=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [36 x i16] }* @25 to %struct.ObjHeader*)
@"kstr:GOZPn92W8RIOVskjDi4VulXk9c8=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [28 x i16] }* @26 to %struct.ObjHeader*)
@"kstr:8W7bC9lLk1qP2vMqgu62TfkM3+g=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [42 x i16] }* @27 to %struct.ObjHeader*)
@"kstr:ZpgmF7tV2NeVKh5m+gLbgdYWayc=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [10 x i16] }* @28 to %struct.ObjHeader*)
@"kstr:+PBn6EMPaf1nAiEJ7yAGVZCAKOE=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [16 x i16] }* @29 to %struct.ObjHeader*)
@"kstr:2hn6Ro3KLgH+GxrdP+5jKsDQL7k=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [24 x i16] }* @30 to %struct.ObjHeader*)
@"kstr:R4bdQtmAdIMDVbjCKOoakgMIPqo=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [2 x i16] }* @31 to %struct.ObjHeader*)
@"kstr:SgoZIY4IKjQ6GxflMzQJr52Y8PU=" = weak alias %struct.ObjHeader, bitcast ({ %struct.ArrayHeader, [1 x i16] }* @32 to %struct.ObjHeader*)

; Function Attrs: nounwind uwtable
declare %struct.ObjHeader* @AllocInstance(%struct.TypeInfo*, %struct.ObjHeader**) #0

; Function Attrs: nounwind uwtable
declare %struct.ObjHeader* @AllocArrayInstance(%struct.TypeInfo*, i32, %struct.ObjHeader**) #0

; Function Attrs: uwtable
declare %struct.ObjHeader* @InitInstance(%struct.ObjHeader**, %struct.TypeInfo*, void (%struct.ObjHeader*)*, %struct.ObjHeader**) #1

; Function Attrs: uwtable
declare %struct.ObjHeader* @InitSharedInstance(%struct.ObjHeader**, %struct.ObjHeader**, %struct.TypeInfo*, void (%struct.ObjHeader*)*, %struct.ObjHeader**) #1

; Function Attrs: nounwind uwtable
declare void @UpdateReturnRef(%struct.ObjHeader**, %struct.ObjHeader*) #0

; Function Attrs: nounwind uwtable
declare void @UpdateRef(%struct.ObjHeader**, %struct.ObjHeader*) #0

; Function Attrs: norecurse nounwind readnone uwtable
declare void @EnterFrame(%struct.ObjHeader**, i32, i32) #2

; Function Attrs: nounwind uwtable
declare void @LeaveFrame(%struct.ObjHeader**, i32, i32) #0

; Function Attrs: norecurse nounwind readnone uwtable
declare %struct.ObjHeader** @GetReturnSlotIfArena(%struct.ObjHeader**, %struct.ObjHeader**) #2

; Function Attrs: norecurse nounwind readonly uwtable
declare %struct.ObjHeader** @GetParamSlotIfArena(%struct.ObjHeader*, %struct.ObjHeader**) #3

; Function Attrs: nounwind readnone uwtable
declare i8* @LookupOpenMethod(%struct.TypeInfo*, i64) #4

; Function Attrs: nounwind readonly uwtable
declare i1 @IsInstance(%struct.ObjHeader*, %struct.TypeInfo*) #5

; Function Attrs: uwtable
declare void @CheckInstance(%struct.ObjHeader*, %struct.TypeInfo*) #1

; Function Attrs: noreturn uwtable
declare void @ThrowException(%struct.ObjHeader*) #6

; Function Attrs: norecurse nounwind uwtable
declare void @AppendToInitializersTail(%struct.InitNode*) #7

; Function Attrs: uwtable
declare void @Kotlin_initRuntimeIfNeeded() #1

; Function Attrs: uwtable
declare void @MutationCheck(%struct.ObjHeader*) #1

; Function Attrs: nounwind
declare i32 @__gxx_personality_v0(...) #8

; Function Attrs: nounwind
declare i8* @__cxa_begin_catch(i8*) #8

; Function Attrs: nounwind
declare void @__cxa_end_catch() #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #9

define void @"kfun:Comissao.<init>(Pedido)Comissao"(%struct.ObjHeader*, %struct.ObjHeader*) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %2 = alloca %struct.ObjHeader*, i32 6
  %3 = bitcast %struct.ObjHeader** %2 to i8*
  call void @llvm.memset.p0i8.i32(i8* %3, i8 0, i32 48, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %2, i32 2, i32 6)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %4 = phi %struct.ObjHeader** [ %2, %prologue ]
  %5 = ptrtoint %struct.ObjHeader** %4 to i64
  %6 = or i64 %5, 1
  %7 = inttoptr i64 %6 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  %p-pedido = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 2
  store %struct.ObjHeader* %1, %struct.ObjHeader** %p-pedido
  %8 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 3
  %9 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 4
  %10 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 5
  br label %entry

entry:                                            ; preds = %locals_init
  %11 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  invoke void @"kfun:kotlin.Any.<init>()kotlin.Any"(%struct.ObjHeader* %11)
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %entry
  %12 = load %struct.ObjHeader*, %struct.ObjHeader** %p-pedido
  %13 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  invoke void @MutationCheck(%struct.ObjHeader* %13)
          to label %call_success1 unwind label %cleanup_landingpad

call_success1:                                    ; preds = %call_success
  %14 = getelementptr %struct.ObjHeader, %struct.ObjHeader* %13, i32 1
  %15 = bitcast %struct.ObjHeader* %14 to %"kclassbody:Comissao#internal"*
  %16 = getelementptr inbounds %"kclassbody:Comissao#internal", %"kclassbody:Comissao#internal"* %15, i32 0, i32 2
  call void @UpdateRef(%struct.ObjHeader** %16, %struct.ObjHeader* %12)
  %17 = load %struct.ObjHeader*, %struct.ObjHeader** @"kobjref:Comissao.Companion"
  %18 = ptrtoint %struct.ObjHeader* %17 to i64
  %19 = icmp ugt i64 %18, 1
  br i1 %19, label %label_continue, label %label_init

label_continue:                                   ; preds = %call_success2, %call_success1
  %20 = phi %struct.ObjHeader* [ %17, %call_success1 ], [ %39, %call_success2 ]
  %21 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %22 = invoke %struct.ObjHeader* @"kfun:Comissao.<get-pedido>()Pedido"(%struct.ObjHeader* %21, %struct.ObjHeader** %9)
          to label %call_success3 unwind label %cleanup_landingpad

call_success3:                                    ; preds = %label_continue
  %23 = invoke i32 @"kfun:Pedido.<get-quantidade>()ValueType"(%struct.ObjHeader* %22)
          to label %call_success4 unwind label %cleanup_landingpad

call_success4:                                    ; preds = %call_success3
  %24 = invoke float @"kfun:Comissao.Companion.percentage(kotlin.Int)ValueType"(%struct.ObjHeader* %20, i32 %23)
          to label %call_success5 unwind label %cleanup_landingpad

call_success5:                                    ; preds = %call_success4
  %25 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  invoke void @MutationCheck(%struct.ObjHeader* %25)
          to label %call_success6 unwind label %cleanup_landingpad

call_success6:                                    ; preds = %call_success5
  %26 = getelementptr %struct.ObjHeader, %struct.ObjHeader* %25, i32 1
  %27 = bitcast %struct.ObjHeader* %26 to %"kclassbody:Comissao#internal"*
  %28 = getelementptr inbounds %"kclassbody:Comissao#internal", %"kclassbody:Comissao#internal"* %27, i32 0, i32 0
  store float %24, float* %28
  %29 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %30 = invoke float @"kfun:Comissao.<get-porcentagem>()ValueType"(%struct.ObjHeader* %29)
          to label %call_success7 unwind label %cleanup_landingpad

call_success7:                                    ; preds = %call_success6
  %31 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %32 = invoke %struct.ObjHeader* @"kfun:Comissao.<get-pedido>()Pedido"(%struct.ObjHeader* %31, %struct.ObjHeader** %10)
          to label %call_success8 unwind label %cleanup_landingpad

call_success8:                                    ; preds = %call_success7
  %33 = invoke double @"kfun:Pedido.<get-valor>()ValueType"(%struct.ObjHeader* %32)
          to label %call_success9 unwind label %cleanup_landingpad

call_success9:                                    ; preds = %call_success8
  %34 = invoke double @Kotlin_Float_times_Double(float %30, double %33)
          to label %call_success10 unwind label %cleanup_landingpad

call_success10:                                   ; preds = %call_success9
  %35 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  invoke void @MutationCheck(%struct.ObjHeader* %35)
          to label %call_success11 unwind label %cleanup_landingpad

call_success11:                                   ; preds = %call_success10
  %36 = getelementptr %struct.ObjHeader, %struct.ObjHeader* %35, i32 1
  %37 = bitcast %struct.ObjHeader* %36 to %"kclassbody:Comissao#internal"*
  %38 = getelementptr inbounds %"kclassbody:Comissao#internal", %"kclassbody:Comissao#internal"* %37, i32 0, i32 1
  store double %34, double* %38
  br label %epilogue

label_init:                                       ; preds = %call_success1
  %39 = invoke %struct.ObjHeader* @InitSharedInstance(%struct.ObjHeader** @"kobjref:Comissao.Companion", %struct.ObjHeader** @"kshadowobjref:Comissao.Companion", %struct.TypeInfo* @"ktype:Comissao.Companion", void (%struct.ObjHeader*)* @"kfun:Comissao.Companion.<init>()Comissao.Companion", %struct.ObjHeader** %8)
          to label %call_success2 unwind label %cleanup_landingpad

call_success2:                                    ; preds = %label_init
  br label %label_continue

epilogue:                                         ; preds = %call_success11
  call void @LeaveFrame(%struct.ObjHeader** %4, i32 2, i32 6)
  ret void

cleanup_landingpad:                               ; preds = %label_init, %call_success10, %call_success9, %call_success8, %call_success7, %call_success6, %call_success5, %call_success4, %call_success3, %label_continue, %call_success, %entry
  %40 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %4, i32 2, i32 6)
  resume { i8*, i32 } %40
}

define %struct.ObjHeader* @"kfun:Comissao.<get-pedido>()Pedido"(%struct.ObjHeader*, %struct.ObjHeader**) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %2 = alloca %struct.ObjHeader*, i32 2
  %3 = bitcast %struct.ObjHeader** %2 to i8*
  call void @llvm.memset.p0i8.i32(i8* %3, i8 0, i32 16, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %2, i32 1, i32 2)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %4 = phi %struct.ObjHeader** [ %2, %prologue ]
  %5 = ptrtoint %struct.ObjHeader** %4 to i64
  %6 = or i64 %5, 1
  %7 = inttoptr i64 %6 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  br label %entry

entry:                                            ; preds = %locals_init
  %8 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %9 = getelementptr %struct.ObjHeader, %struct.ObjHeader* %8, i32 1
  %10 = bitcast %struct.ObjHeader* %9 to %"kclassbody:Comissao#internal"*
  %11 = getelementptr inbounds %"kclassbody:Comissao#internal", %"kclassbody:Comissao#internal"* %10, i32 0, i32 2
  %12 = load %struct.ObjHeader*, %struct.ObjHeader** %11
  br label %epilogue

epilogue:                                         ; preds = %entry
  %13 = phi %struct.ObjHeader* [ %12, %entry ]
  call void @UpdateReturnRef(%struct.ObjHeader** %1, %struct.ObjHeader* %13)
  call void @LeaveFrame(%struct.ObjHeader** %4, i32 1, i32 2)
  ret %struct.ObjHeader* %13

cleanup_landingpad:                               ; No predecessors!
  %14 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %4, i32 1, i32 2)
  resume { i8*, i32 } %14
}

define float @"kfun:Comissao.<get-porcentagem>()ValueType"(%struct.ObjHeader*) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %1 = alloca %struct.ObjHeader*, i32 2
  %2 = bitcast %struct.ObjHeader** %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* %2, i8 0, i32 16, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %1, i32 1, i32 2)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %3 = phi %struct.ObjHeader** [ %1, %prologue ]
  %4 = ptrtoint %struct.ObjHeader** %3 to i64
  %5 = or i64 %4, 1
  %6 = inttoptr i64 %5 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  br label %entry

entry:                                            ; preds = %locals_init
  %7 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %8 = getelementptr %struct.ObjHeader, %struct.ObjHeader* %7, i32 1
  %9 = bitcast %struct.ObjHeader* %8 to %"kclassbody:Comissao#internal"*
  %10 = getelementptr inbounds %"kclassbody:Comissao#internal", %"kclassbody:Comissao#internal"* %9, i32 0, i32 0
  %11 = load float, float* %10
  br label %epilogue

epilogue:                                         ; preds = %entry
  %12 = phi float [ %11, %entry ]
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 2)
  ret float %12

cleanup_landingpad:                               ; No predecessors!
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 2)
  resume { i8*, i32 } %13
}

define double @"kfun:Comissao.<get-valor>()ValueType"(%struct.ObjHeader*) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %1 = alloca %struct.ObjHeader*, i32 2
  %2 = bitcast %struct.ObjHeader** %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* %2, i8 0, i32 16, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %1, i32 1, i32 2)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %3 = phi %struct.ObjHeader** [ %1, %prologue ]
  %4 = ptrtoint %struct.ObjHeader** %3 to i64
  %5 = or i64 %4, 1
  %6 = inttoptr i64 %5 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  br label %entry

entry:                                            ; preds = %locals_init
  %7 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %8 = getelementptr %struct.ObjHeader, %struct.ObjHeader* %7, i32 1
  %9 = bitcast %struct.ObjHeader* %8 to %"kclassbody:Comissao#internal"*
  %10 = getelementptr inbounds %"kclassbody:Comissao#internal", %"kclassbody:Comissao#internal"* %9, i32 0, i32 1
  %11 = load double, double* %10
  br label %epilogue

epilogue:                                         ; preds = %entry
  %12 = phi double [ %11, %entry ]
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 2)
  ret double %12

cleanup_landingpad:                               ; No predecessors!
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 2)
  resume { i8*, i32 } %13
}

define void @"kfun:Comissao.Companion.<init>()Comissao.Companion"(%struct.ObjHeader*) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %1 = alloca %struct.ObjHeader*, i32 2
  %2 = bitcast %struct.ObjHeader** %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* %2, i8 0, i32 16, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %1, i32 1, i32 2)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %3 = phi %struct.ObjHeader** [ %1, %prologue ]
  %4 = ptrtoint %struct.ObjHeader** %3 to i64
  %5 = or i64 %4, 1
  %6 = inttoptr i64 %5 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  br label %entry

entry:                                            ; preds = %locals_init
  %7 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  invoke void @"kfun:kotlin.Any.<init>()kotlin.Any"(%struct.ObjHeader* %7)
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %entry
  br label %epilogue

epilogue:                                         ; preds = %call_success
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 2)
  ret void

cleanup_landingpad:                               ; preds = %entry
  %8 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 2)
  resume { i8*, i32 } %8
}

define float @"kfun:Comissao.Companion.percentage(kotlin.Int)ValueType"(%struct.ObjHeader*, i32) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %p-quantidade = alloca i32
  %2 = alloca %struct.ObjHeader*, i32 4
  %3 = bitcast %struct.ObjHeader** %2 to i8*
  call void @llvm.memset.p0i8.i32(i8* %3, i8 0, i32 32, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %2, i32 1, i32 4)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %4 = phi %struct.ObjHeader** [ %2, %prologue ]
  %5 = ptrtoint %struct.ObjHeader** %4 to i64
  %6 = or i64 %5, 1
  %7 = inttoptr i64 %6 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  store i32 %1, i32* %p-quantidade
  %8 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 2
  %9 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 3
  br label %entry

entry:                                            ; preds = %locals_init
  %10 = load i32, i32* %p-quantidade
  %11 = icmp slt i32 %10, 20
  br i1 %11, label %when_case, label %when_next

when_case:                                        ; preds = %entry
  br label %epilogue

when_next:                                        ; preds = %entry
  %12 = invoke %struct.ObjHeader* @"kfun:kotlin.Int.rangeTo(kotlin.Int)kotlin.ranges.IntRange"(i32 20, i32 49, %struct.ObjHeader** %8)
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %when_next
  %13 = load i32, i32* %p-quantidade
  %14 = invoke i1 @"kfun:kotlin.ranges.IntRange.contains(kotlin.Int)ValueType"(%struct.ObjHeader* %12, i32 %13)
          to label %call_success3 unwind label %cleanup_landingpad

call_success3:                                    ; preds = %call_success
  br i1 %14, label %when_case2, label %when_next1

when_case2:                                       ; preds = %call_success3
  br label %epilogue

when_next1:                                       ; preds = %call_success3
  %15 = invoke %struct.ObjHeader* @"kfun:kotlin.Int.rangeTo(kotlin.Int)kotlin.ranges.IntRange"(i32 50, i32 74, %struct.ObjHeader** %9)
          to label %call_success6 unwind label %cleanup_landingpad

call_success6:                                    ; preds = %when_next1
  %16 = load i32, i32* %p-quantidade
  %17 = invoke i1 @"kfun:kotlin.ranges.IntRange.contains(kotlin.Int)ValueType"(%struct.ObjHeader* %15, i32 %16)
          to label %call_success7 unwind label %cleanup_landingpad

call_success7:                                    ; preds = %call_success6
  br i1 %17, label %when_case5, label %when_next4

when_case5:                                       ; preds = %call_success7
  br label %epilogue

when_next4:                                       ; preds = %call_success7
  %18 = load i32, i32* %p-quantidade
  %19 = icmp sge i32 %18, 75
  br i1 %19, label %when_case8, label %when_exit

when_case8:                                       ; preds = %when_next4
  br label %epilogue

when_exit:                                        ; preds = %when_next4
  br label %epilogue

epilogue:                                         ; preds = %when_exit, %when_case8, %when_case5, %when_case2, %when_case
  %20 = phi float [ 0x3FB99999A0000000, %when_case ], [ 0x3FC3333340000000, %when_case2 ], [ 0x3FC99999A0000000, %when_case5 ], [ 2.500000e-01, %when_case8 ], [ 0.000000e+00, %when_exit ]
  call void @LeaveFrame(%struct.ObjHeader** %4, i32 1, i32 4)
  ret float %20

cleanup_landingpad:                               ; preds = %call_success6, %when_next1, %call_success, %when_next
  %21 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %4, i32 1, i32 4)
  resume { i8*, i32 } %21
}

define %struct.ObjHeader* @"kfun:Comissao.toString()kotlin.String"(%struct.ObjHeader*, %struct.ObjHeader**) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %2 = alloca %struct.ObjHeader*, i32 31
  %3 = bitcast %struct.ObjHeader** %2 to i8*
  call void @llvm.memset.p0i8.i32(i8* %3, i8 0, i32 248, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %2, i32 1, i32 31)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %4 = phi %struct.ObjHeader** [ %2, %prologue ]
  %5 = ptrtoint %struct.ObjHeader** %4 to i64
  %6 = or i64 %5, 1
  %7 = inttoptr i64 %6 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  %8 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 2
  %9 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 3
  %10 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 4
  %11 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 5
  %12 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 6
  %13 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 7
  %14 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 8
  %15 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 9
  %16 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 10
  %17 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 11
  %18 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 12
  %19 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 13
  %20 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 14
  %21 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 15
  %22 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 16
  %23 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 17
  %24 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 18
  %25 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 19
  %26 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 20
  %27 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 21
  %28 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 22
  %29 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 23
  %30 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 24
  %31 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 25
  %32 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 26
  %33 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 27
  %34 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 28
  %35 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 29
  %36 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 30
  br label %entry

entry:                                            ; preds = %locals_init
  %37 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.text.StringBuilder", %struct.ObjHeader** %8)
  invoke void @"kfun:kotlin.text.StringBuilder.<init>()kotlin.text.StringBuilder"(%struct.ObjHeader* %37)
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %entry
  %38 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %37, %struct.ObjHeader* @"kstr:YcsDPIg6T4s/JXhgbzkxrp0KiWk=", %struct.ObjHeader** %9)
          to label %call_success1 unwind label %cleanup_landingpad

call_success1:                                    ; preds = %call_success
  %39 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %40 = invoke %struct.ObjHeader* @"kfun:Comissao.<get-pedido>()Pedido"(%struct.ObjHeader* %39, %struct.ObjHeader** %10)
          to label %call_success2 unwind label %cleanup_landingpad

call_success2:                                    ; preds = %call_success1
  %41 = invoke i32 @"kfun:Pedido.<get-codigo>()ValueType"(%struct.ObjHeader* %40)
          to label %call_success3 unwind label %cleanup_landingpad

call_success3:                                    ; preds = %call_success2
  %42 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.Int)kotlin.text.StringBuilder"(%struct.ObjHeader* %37, i32 %41, %struct.ObjHeader** %11)
          to label %call_success4 unwind label %cleanup_landingpad

call_success4:                                    ; preds = %call_success3
  %43 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %37, %struct.ObjHeader* @"kstr:uFjLKCYX+wlW2WAhXI6E0cz5CcY=", %struct.ObjHeader** %12)
          to label %call_success5 unwind label %cleanup_landingpad

call_success5:                                    ; preds = %call_success4
  %44 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %37, %struct.ObjHeader* @"kstr:rcg7GeeTSRscbqD9i0bNnzLlkvw=", %struct.ObjHeader** %13)
          to label %call_success6 unwind label %cleanup_landingpad

call_success6:                                    ; preds = %call_success5
  %45 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.toString()kotlin.String"(%struct.ObjHeader* %37, %struct.ObjHeader** %14)
          to label %call_success7 unwind label %cleanup_landingpad

call_success7:                                    ; preds = %call_success6
  %46 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.text.StringBuilder", %struct.ObjHeader** %15)
  invoke void @"kfun:kotlin.text.StringBuilder.<init>()kotlin.text.StringBuilder"(%struct.ObjHeader* %46)
          to label %call_success8 unwind label %cleanup_landingpad

call_success8:                                    ; preds = %call_success7
  %47 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %46, %struct.ObjHeader* @"kstr:enLrfDIh7yYbuKvfgKu4fxZWnbQ=", %struct.ObjHeader** %16)
          to label %call_success9 unwind label %cleanup_landingpad

call_success9:                                    ; preds = %call_success8
  %48 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %49 = invoke double @"kfun:Comissao.<get-valor>()ValueType"(%struct.ObjHeader* %48)
          to label %call_success10 unwind label %cleanup_landingpad

call_success10:                                   ; preds = %call_success9
  %50 = invoke %struct.ObjHeader* @"kfun:toPrecision@kotlin.Double.(kotlin.Int)kotlin.String"(double %49, i32 2, %struct.ObjHeader** %17)
          to label %call_success11 unwind label %cleanup_landingpad

call_success11:                                   ; preds = %call_success10
  %51 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %46, %struct.ObjHeader* %50, %struct.ObjHeader** %18)
          to label %call_success12 unwind label %cleanup_landingpad

call_success12:                                   ; preds = %call_success11
  %52 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %46, %struct.ObjHeader* @"kstr:uFjLKCYX+wlW2WAhXI6E0cz5CcY=", %struct.ObjHeader** %19)
          to label %call_success13 unwind label %cleanup_landingpad

call_success13:                                   ; preds = %call_success12
  %53 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %46, %struct.ObjHeader* @"kstr:rcg7GeeTSRscbqD9i0bNnzLlkvw=", %struct.ObjHeader** %20)
          to label %call_success14 unwind label %cleanup_landingpad

call_success14:                                   ; preds = %call_success13
  %54 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.toString()kotlin.String"(%struct.ObjHeader* %46, %struct.ObjHeader** %21)
          to label %call_success15 unwind label %cleanup_landingpad

call_success15:                                   ; preds = %call_success14
  %55 = invoke %struct.ObjHeader* @"kfun:kotlin.String.plus(kotlin.Any?)kotlin.String"(%struct.ObjHeader* %45, %struct.ObjHeader* %54, %struct.ObjHeader** %22)
          to label %call_success16 unwind label %cleanup_landingpad

call_success16:                                   ; preds = %call_success15
  %56 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.text.StringBuilder", %struct.ObjHeader** %23)
  invoke void @"kfun:kotlin.text.StringBuilder.<init>()kotlin.text.StringBuilder"(%struct.ObjHeader* %56)
          to label %call_success17 unwind label %cleanup_landingpad

call_success17:                                   ; preds = %call_success16
  %57 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %56, %struct.ObjHeader* @"kstr:VS8QwHhMu6cXlIYM4hDRmdunwks=", %struct.ObjHeader** %24)
          to label %call_success18 unwind label %cleanup_landingpad

call_success18:                                   ; preds = %call_success17
  %58 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %59 = invoke %struct.ObjHeader* @"kfun:Comissao.<get-pedido>()Pedido"(%struct.ObjHeader* %58, %struct.ObjHeader** %25)
          to label %call_success19 unwind label %cleanup_landingpad

call_success19:                                   ; preds = %call_success18
  %60 = invoke i32 @"kfun:Pedido.<get-quantidade>()ValueType"(%struct.ObjHeader* %59)
          to label %call_success20 unwind label %cleanup_landingpad

call_success20:                                   ; preds = %call_success19
  %61 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.Int)kotlin.text.StringBuilder"(%struct.ObjHeader* %56, i32 %60, %struct.ObjHeader** %26)
          to label %call_success21 unwind label %cleanup_landingpad

call_success21:                                   ; preds = %call_success20
  %62 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %56, %struct.ObjHeader* @"kstr:uFjLKCYX+wlW2WAhXI6E0cz5CcY=", %struct.ObjHeader** %27)
          to label %call_success22 unwind label %cleanup_landingpad

call_success22:                                   ; preds = %call_success21
  %63 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %56, %struct.ObjHeader* @"kstr:rcg7GeeTSRscbqD9i0bNnzLlkvw=", %struct.ObjHeader** %28)
          to label %call_success23 unwind label %cleanup_landingpad

call_success23:                                   ; preds = %call_success22
  %64 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.toString()kotlin.String"(%struct.ObjHeader* %56, %struct.ObjHeader** %29)
          to label %call_success24 unwind label %cleanup_landingpad

call_success24:                                   ; preds = %call_success23
  %65 = invoke %struct.ObjHeader* @"kfun:kotlin.String.plus(kotlin.Any?)kotlin.String"(%struct.ObjHeader* %55, %struct.ObjHeader* %64, %struct.ObjHeader** %30)
          to label %call_success25 unwind label %cleanup_landingpad

call_success25:                                   ; preds = %call_success24
  %66 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.text.StringBuilder", %struct.ObjHeader** %31)
  invoke void @"kfun:kotlin.text.StringBuilder.<init>()kotlin.text.StringBuilder"(%struct.ObjHeader* %66)
          to label %call_success26 unwind label %cleanup_landingpad

call_success26:                                   ; preds = %call_success25
  %67 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %66, %struct.ObjHeader* @"kstr:iXGgnMNaUKOfE/aS8HQkAqRNq/c=", %struct.ObjHeader** %32)
          to label %call_success27 unwind label %cleanup_landingpad

call_success27:                                   ; preds = %call_success26
  %68 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %69 = invoke float @"kfun:Comissao.<get-porcentagem>()ValueType"(%struct.ObjHeader* %68)
          to label %call_success28 unwind label %cleanup_landingpad

call_success28:                                   ; preds = %call_success27
  %70 = invoke float @Kotlin_Float_times_Int(float %69, i32 100)
          to label %call_success29 unwind label %cleanup_landingpad

call_success29:                                   ; preds = %call_success28
  %71 = invoke %struct.ObjHeader* @"kfun:toPrecision@kotlin.Float.(kotlin.Int)kotlin.String"(float %70, i32 2, %struct.ObjHeader** %33)
          to label %call_success30 unwind label %cleanup_landingpad

call_success30:                                   ; preds = %call_success29
  %72 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %66, %struct.ObjHeader* %71, %struct.ObjHeader** %34)
          to label %call_success31 unwind label %cleanup_landingpad

call_success31:                                   ; preds = %call_success30
  %73 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.toString()kotlin.String"(%struct.ObjHeader* %66, %struct.ObjHeader** %35)
          to label %call_success32 unwind label %cleanup_landingpad

call_success32:                                   ; preds = %call_success31
  %74 = invoke %struct.ObjHeader* @"kfun:kotlin.String.plus(kotlin.Any?)kotlin.String"(%struct.ObjHeader* %65, %struct.ObjHeader* %73, %struct.ObjHeader** %36)
          to label %call_success33 unwind label %cleanup_landingpad

call_success33:                                   ; preds = %call_success32
  br label %epilogue

epilogue:                                         ; preds = %call_success33
  %75 = phi %struct.ObjHeader* [ %74, %call_success33 ]
  call void @UpdateReturnRef(%struct.ObjHeader** %1, %struct.ObjHeader* %75)
  call void @LeaveFrame(%struct.ObjHeader** %4, i32 1, i32 31)
  ret %struct.ObjHeader* %75

cleanup_landingpad:                               ; preds = %call_success32, %call_success31, %call_success30, %call_success29, %call_success28, %call_success27, %call_success26, %call_success25, %call_success24, %call_success23, %call_success22, %call_success21, %call_success20, %call_success19, %call_success18, %call_success17, %call_success16, %call_success15, %call_success14, %call_success13, %call_success12, %call_success11, %call_success10, %call_success9, %call_success8, %call_success7, %call_success6, %call_success5, %call_success4, %call_success3, %call_success2, %call_success1, %call_success, %entry
  %76 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %4, i32 1, i32 31)
  resume { i8*, i32 } %76
}

define %struct.ObjHeader* @"kfun:Comissao.component1()Pedido"(%struct.ObjHeader*, %struct.ObjHeader**) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %2 = alloca %struct.ObjHeader*, i32 3
  %3 = bitcast %struct.ObjHeader** %2 to i8*
  call void @llvm.memset.p0i8.i32(i8* %3, i8 0, i32 24, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %2, i32 1, i32 3)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %4 = phi %struct.ObjHeader** [ %2, %prologue ]
  %5 = ptrtoint %struct.ObjHeader** %4 to i64
  %6 = or i64 %5, 1
  %7 = inttoptr i64 %6 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  %8 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 2
  br label %entry

entry:                                            ; preds = %locals_init
  %9 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %10 = invoke %struct.ObjHeader* @"kfun:Comissao.<get-pedido>()Pedido"(%struct.ObjHeader* %9, %struct.ObjHeader** %8)
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %entry
  br label %epilogue

epilogue:                                         ; preds = %call_success
  %11 = phi %struct.ObjHeader* [ %10, %call_success ]
  call void @UpdateReturnRef(%struct.ObjHeader** %1, %struct.ObjHeader* %11)
  call void @LeaveFrame(%struct.ObjHeader** %4, i32 1, i32 3)
  ret %struct.ObjHeader* %11

cleanup_landingpad:                               ; preds = %entry
  %12 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %4, i32 1, i32 3)
  resume { i8*, i32 } %12
}

define %struct.ObjHeader* @"kfun:Comissao.copy(Pedido)Comissao"(%struct.ObjHeader*, %struct.ObjHeader*, %struct.ObjHeader**) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %3 = alloca %struct.ObjHeader*, i32 4
  %4 = bitcast %struct.ObjHeader** %3 to i8*
  call void @llvm.memset.p0i8.i32(i8* %4, i8 0, i32 32, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %3, i32 2, i32 4)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %5 = phi %struct.ObjHeader** [ %3, %prologue ]
  %6 = ptrtoint %struct.ObjHeader** %5 to i64
  %7 = or i64 %6, 1
  %8 = inttoptr i64 %7 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  %p-pedido = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 2
  store %struct.ObjHeader* %1, %struct.ObjHeader** %p-pedido
  %9 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 3
  br label %entry

entry:                                            ; preds = %locals_init
  %10 = load %struct.ObjHeader*, %struct.ObjHeader** %p-pedido
  %11 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:Comissao", %struct.ObjHeader** %9)
  invoke void @"kfun:Comissao.<init>(Pedido)Comissao"(%struct.ObjHeader* %11, %struct.ObjHeader* %10)
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %entry
  br label %epilogue

epilogue:                                         ; preds = %call_success
  %12 = phi %struct.ObjHeader* [ %11, %call_success ]
  call void @UpdateReturnRef(%struct.ObjHeader** %2, %struct.ObjHeader* %12)
  call void @LeaveFrame(%struct.ObjHeader** %5, i32 2, i32 4)
  ret %struct.ObjHeader* %12

cleanup_landingpad:                               ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %5, i32 2, i32 4)
  resume { i8*, i32 } %13
}

define %struct.ObjHeader* @"kfun:Comissao.copy$default(Pedido;kotlin.Int)Comissao"(%struct.ObjHeader*, %struct.ObjHeader*, i32, %struct.ObjHeader**) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %"p-$mask0" = alloca i32
  %4 = alloca %struct.ObjHeader*, i32 5
  %5 = bitcast %struct.ObjHeader** %4 to i8*
  call void @llvm.memset.p0i8.i32(i8* %5, i8 0, i32 40, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %4, i32 2, i32 5)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %6 = phi %struct.ObjHeader** [ %4, %prologue ]
  %7 = ptrtoint %struct.ObjHeader** %6 to i64
  %8 = or i64 %7, 1
  %9 = inttoptr i64 %8 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %6, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  %p-pedido = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %6, i32 2
  store %struct.ObjHeader* %1, %struct.ObjHeader** %p-pedido
  store i32 %2, i32* %"p-$mask0"
  %10 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %6, i32 3
  %11 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %6, i32 4
  br label %entry

entry:                                            ; preds = %locals_init
  %12 = load i32, i32* %"p-$mask0"
  %13 = invoke i32 @Kotlin_Int_and_Int(i32 %12, i32 1)
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %entry
  %14 = icmp eq i32 %13, 0
  %15 = icmp ne i1 %14, true
  br i1 %15, label %when_case, label %when_next

when_case:                                        ; preds = %call_success
  %16 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %17 = invoke %struct.ObjHeader* @"kfun:Comissao.<get-pedido>()Pedido"(%struct.ObjHeader* %16, %struct.ObjHeader** %10)
          to label %call_success1 unwind label %cleanup_landingpad

call_success1:                                    ; preds = %when_case
  br label %when_exit

when_next:                                        ; preds = %call_success
  %18 = load %struct.ObjHeader*, %struct.ObjHeader** %p-pedido
  br label %when_exit

when_exit:                                        ; preds = %when_next, %call_success1
  %19 = phi %struct.ObjHeader* [ %17, %call_success1 ], [ %18, %when_next ]
  %20 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %21 = invoke %struct.ObjHeader* @"kfun:Comissao.copy(Pedido)Comissao"(%struct.ObjHeader* %20, %struct.ObjHeader* %19, %struct.ObjHeader** %11)
          to label %call_success2 unwind label %cleanup_landingpad

call_success2:                                    ; preds = %when_exit
  br label %epilogue

epilogue:                                         ; preds = %call_success2
  %22 = phi %struct.ObjHeader* [ %21, %call_success2 ]
  call void @UpdateReturnRef(%struct.ObjHeader** %3, %struct.ObjHeader* %22)
  call void @LeaveFrame(%struct.ObjHeader** %6, i32 2, i32 5)
  ret %struct.ObjHeader* %22

cleanup_landingpad:                               ; preds = %when_exit, %when_case, %entry
  %23 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %6, i32 2, i32 5)
  resume { i8*, i32 } %23
}

define i32 @"kfun:Comissao.hashCode()ValueType"(%struct.ObjHeader*) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %tmp0_result = alloca i32
  %1 = alloca %struct.ObjHeader*, i32 3
  %2 = bitcast %struct.ObjHeader** %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* %2, i8 0, i32 24, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %1, i32 1, i32 3)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %3 = phi %struct.ObjHeader** [ %1, %prologue ]
  %4 = ptrtoint %struct.ObjHeader** %3 to i64
  %5 = or i64 %4, 1
  %6 = inttoptr i64 %5 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  %7 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 2
  br label %entry

entry:                                            ; preds = %locals_init
  store i32 0, i32* %tmp0_result
  %8 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %9 = invoke %struct.ObjHeader* @"kfun:Comissao.<get-pedido>()Pedido"(%struct.ObjHeader* %8, %struct.ObjHeader** %7)
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %entry
  %10 = invoke i32 @"kfun:Pedido.hashCode()ValueType"(%struct.ObjHeader* %9)
          to label %call_success1 unwind label %cleanup_landingpad

call_success1:                                    ; preds = %call_success
  store i32 %10, i32* %tmp0_result
  %11 = load i32, i32* %tmp0_result
  br label %epilogue

epilogue:                                         ; preds = %call_success1
  %12 = phi i32 [ %11, %call_success1 ]
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 3)
  ret i32 %12

cleanup_landingpad:                               ; preds = %call_success, %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 3)
  resume { i8*, i32 } %13
}

define i1 @"kfun:Comissao.equals(kotlin.Any?)ValueType"(%struct.ObjHeader*, %struct.ObjHeader*) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %2 = alloca %struct.ObjHeader*, i32 6
  %3 = bitcast %struct.ObjHeader** %2 to i8*
  call void @llvm.memset.p0i8.i32(i8* %3, i8 0, i32 48, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %2, i32 2, i32 6)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %4 = phi %struct.ObjHeader** [ %2, %prologue ]
  %5 = ptrtoint %struct.ObjHeader** %4 to i64
  %6 = or i64 %5, 1
  %7 = inttoptr i64 %6 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  %p-other = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 2
  store %struct.ObjHeader* %1, %struct.ObjHeader** %p-other
  %8 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 3
  %9 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 4
  %10 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 5
  br label %entry

entry:                                            ; preds = %locals_init
  %11 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %12 = load %struct.ObjHeader*, %struct.ObjHeader** %p-other
  %13 = icmp eq %struct.ObjHeader* %11, %12
  br i1 %13, label %when_case, label %when_exit

when_case:                                        ; preds = %entry
  br label %epilogue

when_exit:                                        ; preds = %entry
  %14 = load %struct.ObjHeader*, %struct.ObjHeader** %p-other
  %15 = icmp eq %struct.ObjHeader* %14, null
  br i1 %15, label %instance_of_null, label %instance_of_notnull

instance_of_null:                                 ; preds = %when_exit
  br label %instance_of_exit

instance_of_notnull:                              ; preds = %when_exit
  %16 = call i1 @IsInstance(%struct.ObjHeader* %14, %struct.TypeInfo* @"ktype:Comissao")
  br label %instance_of_exit

instance_of_exit:                                 ; preds = %instance_of_notnull, %instance_of_null
  %17 = phi i1 [ false, %instance_of_null ], [ %16, %instance_of_notnull ]
  %18 = xor i1 %17, true
  br i1 %18, label %when_case2, label %when_exit1

when_case2:                                       ; preds = %instance_of_exit
  br label %epilogue

when_exit1:                                       ; preds = %instance_of_exit
  %19 = load %struct.ObjHeader*, %struct.ObjHeader** %p-other
  %20 = icmp eq %struct.ObjHeader* %19, null
  br i1 %20, label %when_case4, label %when_next

when_case4:                                       ; preds = %when_exit1
  %21 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowTypeCastException()kotlin.Nothing"(%struct.ObjHeader** %8)
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %when_case4
  unreachable

when_next:                                        ; preds = %when_exit1
  invoke void @CheckInstance(%struct.ObjHeader* %19, %struct.TypeInfo* @"ktype:Comissao")
          to label %call_success5 unwind label %cleanup_landingpad

call_success5:                                    ; preds = %when_next
  br label %when_exit3

when_exit3:                                       ; preds = %call_success5
  %22 = phi %struct.ObjHeader* [ %19, %call_success5 ]
  %23 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %24 = invoke %struct.ObjHeader* @"kfun:Comissao.<get-pedido>()Pedido"(%struct.ObjHeader* %23, %struct.ObjHeader** %9)
          to label %call_success8 unwind label %cleanup_landingpad

call_success8:                                    ; preds = %when_exit3
  %25 = invoke %struct.ObjHeader* @"kfun:Comissao.<get-pedido>()Pedido"(%struct.ObjHeader* %22, %struct.ObjHeader** %10)
          to label %call_success9 unwind label %cleanup_landingpad

call_success9:                                    ; preds = %call_success8
  %26 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %24, i32 0, i32 0
  %27 = load %struct.TypeInfo*, %struct.TypeInfo** %26
  %28 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %27, i32 0, i32 0
  %29 = load %struct.TypeInfo*, %struct.TypeInfo** %28
  %30 = getelementptr %struct.TypeInfo, %struct.TypeInfo* %29, i32 1
  %31 = bitcast %struct.TypeInfo* %30 to i8**
  %32 = getelementptr i8*, i8** %31, i32 2
  %33 = load i8*, i8** %32
  %34 = bitcast i8* %33 to i1 (%struct.ObjHeader*, %struct.ObjHeader*)*
  %35 = invoke i1 %34(%struct.ObjHeader* %24, %struct.ObjHeader* %25)
          to label %call_success10 unwind label %cleanup_landingpad

call_success10:                                   ; preds = %call_success9
  %36 = icmp ne i1 %35, true
  br i1 %36, label %when_case7, label %when_exit6

when_case7:                                       ; preds = %call_success10
  br label %epilogue

when_exit6:                                       ; preds = %call_success10
  br label %epilogue

epilogue:                                         ; preds = %when_exit6, %when_case7, %when_case2, %when_case
  %37 = phi i1 [ true, %when_case ], [ false, %when_case2 ], [ false, %when_case7 ], [ true, %when_exit6 ]
  call void @LeaveFrame(%struct.ObjHeader** %4, i32 2, i32 6)
  ret i1 %37

cleanup_landingpad:                               ; preds = %call_success9, %call_success8, %when_exit3, %when_next, %when_case4
  %38 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %4, i32 2, i32 6)
  resume { i8*, i32 } %38
}

define void @"kfun:Pedido.<init>(kotlin.Int;kotlin.Int;kotlin.Double)Pedido"(%struct.ObjHeader*, i32, i32, double) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %p-codigo = alloca i32
  %p-quantidade = alloca i32
  %p-valor = alloca double
  %4 = alloca %struct.ObjHeader*, i32 2
  %5 = bitcast %struct.ObjHeader** %4 to i8*
  call void @llvm.memset.p0i8.i32(i8* %5, i8 0, i32 16, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %4, i32 1, i32 2)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %6 = phi %struct.ObjHeader** [ %4, %prologue ]
  %7 = ptrtoint %struct.ObjHeader** %6 to i64
  %8 = or i64 %7, 1
  %9 = inttoptr i64 %8 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %6, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  store i32 %1, i32* %p-codigo
  store i32 %2, i32* %p-quantidade
  store double %3, double* %p-valor
  br label %entry

entry:                                            ; preds = %locals_init
  %10 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  invoke void @"kfun:kotlin.Any.<init>()kotlin.Any"(%struct.ObjHeader* %10)
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %entry
  %11 = load i32, i32* %p-codigo
  %12 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  invoke void @MutationCheck(%struct.ObjHeader* %12)
          to label %call_success1 unwind label %cleanup_landingpad

call_success1:                                    ; preds = %call_success
  %13 = getelementptr %struct.ObjHeader, %struct.ObjHeader* %12, i32 1
  %14 = bitcast %struct.ObjHeader* %13 to %"kclassbody:Pedido#internal"*
  %15 = getelementptr inbounds %"kclassbody:Pedido#internal", %"kclassbody:Pedido#internal"* %14, i32 0, i32 0
  store i32 %11, i32* %15
  %16 = load i32, i32* %p-quantidade
  %17 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  invoke void @MutationCheck(%struct.ObjHeader* %17)
          to label %call_success2 unwind label %cleanup_landingpad

call_success2:                                    ; preds = %call_success1
  %18 = getelementptr %struct.ObjHeader, %struct.ObjHeader* %17, i32 1
  %19 = bitcast %struct.ObjHeader* %18 to %"kclassbody:Pedido#internal"*
  %20 = getelementptr inbounds %"kclassbody:Pedido#internal", %"kclassbody:Pedido#internal"* %19, i32 0, i32 1
  store i32 %16, i32* %20
  %21 = load double, double* %p-valor
  %22 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  invoke void @MutationCheck(%struct.ObjHeader* %22)
          to label %call_success3 unwind label %cleanup_landingpad

call_success3:                                    ; preds = %call_success2
  %23 = getelementptr %struct.ObjHeader, %struct.ObjHeader* %22, i32 1
  %24 = bitcast %struct.ObjHeader* %23 to %"kclassbody:Pedido#internal"*
  %25 = getelementptr inbounds %"kclassbody:Pedido#internal", %"kclassbody:Pedido#internal"* %24, i32 0, i32 2
  store double %21, double* %25
  br label %epilogue

epilogue:                                         ; preds = %call_success3
  call void @LeaveFrame(%struct.ObjHeader** %6, i32 1, i32 2)
  ret void

cleanup_landingpad:                               ; preds = %call_success2, %call_success1, %call_success, %entry
  %26 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %6, i32 1, i32 2)
  resume { i8*, i32 } %26
}

define i32 @"kfun:Pedido.<get-codigo>()ValueType"(%struct.ObjHeader*) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %1 = alloca %struct.ObjHeader*, i32 2
  %2 = bitcast %struct.ObjHeader** %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* %2, i8 0, i32 16, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %1, i32 1, i32 2)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %3 = phi %struct.ObjHeader** [ %1, %prologue ]
  %4 = ptrtoint %struct.ObjHeader** %3 to i64
  %5 = or i64 %4, 1
  %6 = inttoptr i64 %5 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  br label %entry

entry:                                            ; preds = %locals_init
  %7 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %8 = getelementptr %struct.ObjHeader, %struct.ObjHeader* %7, i32 1
  %9 = bitcast %struct.ObjHeader* %8 to %"kclassbody:Pedido#internal"*
  %10 = getelementptr inbounds %"kclassbody:Pedido#internal", %"kclassbody:Pedido#internal"* %9, i32 0, i32 0
  %11 = load i32, i32* %10
  br label %epilogue

epilogue:                                         ; preds = %entry
  %12 = phi i32 [ %11, %entry ]
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 2)
  ret i32 %12

cleanup_landingpad:                               ; No predecessors!
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 2)
  resume { i8*, i32 } %13
}

define i32 @"kfun:Pedido.<get-quantidade>()ValueType"(%struct.ObjHeader*) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %1 = alloca %struct.ObjHeader*, i32 2
  %2 = bitcast %struct.ObjHeader** %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* %2, i8 0, i32 16, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %1, i32 1, i32 2)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %3 = phi %struct.ObjHeader** [ %1, %prologue ]
  %4 = ptrtoint %struct.ObjHeader** %3 to i64
  %5 = or i64 %4, 1
  %6 = inttoptr i64 %5 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  br label %entry

entry:                                            ; preds = %locals_init
  %7 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %8 = getelementptr %struct.ObjHeader, %struct.ObjHeader* %7, i32 1
  %9 = bitcast %struct.ObjHeader* %8 to %"kclassbody:Pedido#internal"*
  %10 = getelementptr inbounds %"kclassbody:Pedido#internal", %"kclassbody:Pedido#internal"* %9, i32 0, i32 1
  %11 = load i32, i32* %10
  br label %epilogue

epilogue:                                         ; preds = %entry
  %12 = phi i32 [ %11, %entry ]
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 2)
  ret i32 %12

cleanup_landingpad:                               ; No predecessors!
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 2)
  resume { i8*, i32 } %13
}

define double @"kfun:Pedido.<get-valor>()ValueType"(%struct.ObjHeader*) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %1 = alloca %struct.ObjHeader*, i32 2
  %2 = bitcast %struct.ObjHeader** %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* %2, i8 0, i32 16, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %1, i32 1, i32 2)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %3 = phi %struct.ObjHeader** [ %1, %prologue ]
  %4 = ptrtoint %struct.ObjHeader** %3 to i64
  %5 = or i64 %4, 1
  %6 = inttoptr i64 %5 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  br label %entry

entry:                                            ; preds = %locals_init
  %7 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %8 = getelementptr %struct.ObjHeader, %struct.ObjHeader* %7, i32 1
  %9 = bitcast %struct.ObjHeader* %8 to %"kclassbody:Pedido#internal"*
  %10 = getelementptr inbounds %"kclassbody:Pedido#internal", %"kclassbody:Pedido#internal"* %9, i32 0, i32 2
  %11 = load double, double* %10
  br label %epilogue

epilogue:                                         ; preds = %entry
  %12 = phi double [ %11, %entry ]
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 2)
  ret double %12

cleanup_landingpad:                               ; No predecessors!
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 2)
  resume { i8*, i32 } %13
}

define %struct.ObjHeader* @"kfun:Pedido.toString()kotlin.String"(%struct.ObjHeader*, %struct.ObjHeader**) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %2 = alloca %struct.ObjHeader*, i32 20
  %3 = bitcast %struct.ObjHeader** %2 to i8*
  call void @llvm.memset.p0i8.i32(i8* %3, i8 0, i32 160, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %2, i32 1, i32 20)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %4 = phi %struct.ObjHeader** [ %2, %prologue ]
  %5 = ptrtoint %struct.ObjHeader** %4 to i64
  %6 = or i64 %5, 1
  %7 = inttoptr i64 %6 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  %8 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 2
  %9 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 3
  %10 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 4
  %11 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 5
  %12 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 6
  %13 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 7
  %14 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 8
  %15 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 9
  %16 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 10
  %17 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 11
  %18 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 12
  %19 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 13
  %20 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 14
  %21 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 15
  %22 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 16
  %23 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 17
  %24 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 18
  %25 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 19
  br label %entry

entry:                                            ; preds = %locals_init
  %26 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.text.StringBuilder", %struct.ObjHeader** %8)
  invoke void @"kfun:kotlin.text.StringBuilder.<init>()kotlin.text.StringBuilder"(%struct.ObjHeader* %26)
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %entry
  %27 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %26, %struct.ObjHeader* @"kstr:YcsDPIg6T4s/JXhgbzkxrp0KiWk=", %struct.ObjHeader** %9)
          to label %call_success1 unwind label %cleanup_landingpad

call_success1:                                    ; preds = %call_success
  %28 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %29 = invoke i32 @"kfun:Pedido.<get-codigo>()ValueType"(%struct.ObjHeader* %28)
          to label %call_success2 unwind label %cleanup_landingpad

call_success2:                                    ; preds = %call_success1
  %30 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.Int)kotlin.text.StringBuilder"(%struct.ObjHeader* %26, i32 %29, %struct.ObjHeader** %10)
          to label %call_success3 unwind label %cleanup_landingpad

call_success3:                                    ; preds = %call_success2
  %31 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %26, %struct.ObjHeader* @"kstr:uFjLKCYX+wlW2WAhXI6E0cz5CcY=", %struct.ObjHeader** %11)
          to label %call_success4 unwind label %cleanup_landingpad

call_success4:                                    ; preds = %call_success3
  %32 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %26, %struct.ObjHeader* @"kstr:rcg7GeeTSRscbqD9i0bNnzLlkvw=", %struct.ObjHeader** %12)
          to label %call_success5 unwind label %cleanup_landingpad

call_success5:                                    ; preds = %call_success4
  %33 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.toString()kotlin.String"(%struct.ObjHeader* %26, %struct.ObjHeader** %13)
          to label %call_success6 unwind label %cleanup_landingpad

call_success6:                                    ; preds = %call_success5
  %34 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.text.StringBuilder", %struct.ObjHeader** %14)
  invoke void @"kfun:kotlin.text.StringBuilder.<init>()kotlin.text.StringBuilder"(%struct.ObjHeader* %34)
          to label %call_success7 unwind label %cleanup_landingpad

call_success7:                                    ; preds = %call_success6
  %35 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %34, %struct.ObjHeader* @"kstr:VS8QwHhMu6cXlIYM4hDRmdunwks=", %struct.ObjHeader** %15)
          to label %call_success8 unwind label %cleanup_landingpad

call_success8:                                    ; preds = %call_success7
  %36 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %37 = invoke i32 @"kfun:Pedido.<get-quantidade>()ValueType"(%struct.ObjHeader* %36)
          to label %call_success9 unwind label %cleanup_landingpad

call_success9:                                    ; preds = %call_success8
  %38 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.Int)kotlin.text.StringBuilder"(%struct.ObjHeader* %34, i32 %37, %struct.ObjHeader** %16)
          to label %call_success10 unwind label %cleanup_landingpad

call_success10:                                   ; preds = %call_success9
  %39 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %34, %struct.ObjHeader* @"kstr:uFjLKCYX+wlW2WAhXI6E0cz5CcY=", %struct.ObjHeader** %17)
          to label %call_success11 unwind label %cleanup_landingpad

call_success11:                                   ; preds = %call_success10
  %40 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %34, %struct.ObjHeader* @"kstr:rcg7GeeTSRscbqD9i0bNnzLlkvw=", %struct.ObjHeader** %18)
          to label %call_success12 unwind label %cleanup_landingpad

call_success12:                                   ; preds = %call_success11
  %41 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.toString()kotlin.String"(%struct.ObjHeader* %34, %struct.ObjHeader** %19)
          to label %call_success13 unwind label %cleanup_landingpad

call_success13:                                   ; preds = %call_success12
  %42 = invoke %struct.ObjHeader* @"kfun:kotlin.String.plus(kotlin.Any?)kotlin.String"(%struct.ObjHeader* %33, %struct.ObjHeader* %41, %struct.ObjHeader** %20)
          to label %call_success14 unwind label %cleanup_landingpad

call_success14:                                   ; preds = %call_success13
  %43 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.text.StringBuilder", %struct.ObjHeader** %21)
  invoke void @"kfun:kotlin.text.StringBuilder.<init>()kotlin.text.StringBuilder"(%struct.ObjHeader* %43)
          to label %call_success15 unwind label %cleanup_landingpad

call_success15:                                   ; preds = %call_success14
  %44 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %43, %struct.ObjHeader* @"kstr:NHkBTcsZwK+l/I4x4rr9YYBSt0o=", %struct.ObjHeader** %22)
          to label %call_success16 unwind label %cleanup_landingpad

call_success16:                                   ; preds = %call_success15
  %45 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %46 = invoke double @"kfun:Pedido.<get-valor>()ValueType"(%struct.ObjHeader* %45)
          to label %call_success17 unwind label %cleanup_landingpad

call_success17:                                   ; preds = %call_success16
  %47 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.Double)kotlin.text.StringBuilder"(%struct.ObjHeader* %43, double %46, %struct.ObjHeader** %23)
          to label %call_success18 unwind label %cleanup_landingpad

call_success18:                                   ; preds = %call_success17
  %48 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.toString()kotlin.String"(%struct.ObjHeader* %43, %struct.ObjHeader** %24)
          to label %call_success19 unwind label %cleanup_landingpad

call_success19:                                   ; preds = %call_success18
  %49 = invoke %struct.ObjHeader* @"kfun:kotlin.String.plus(kotlin.Any?)kotlin.String"(%struct.ObjHeader* %42, %struct.ObjHeader* %48, %struct.ObjHeader** %25)
          to label %call_success20 unwind label %cleanup_landingpad

call_success20:                                   ; preds = %call_success19
  br label %epilogue

epilogue:                                         ; preds = %call_success20
  %50 = phi %struct.ObjHeader* [ %49, %call_success20 ]
  call void @UpdateReturnRef(%struct.ObjHeader** %1, %struct.ObjHeader* %50)
  call void @LeaveFrame(%struct.ObjHeader** %4, i32 1, i32 20)
  ret %struct.ObjHeader* %50

cleanup_landingpad:                               ; preds = %call_success19, %call_success18, %call_success17, %call_success16, %call_success15, %call_success14, %call_success13, %call_success12, %call_success11, %call_success10, %call_success9, %call_success8, %call_success7, %call_success6, %call_success5, %call_success4, %call_success3, %call_success2, %call_success1, %call_success, %entry
  %51 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %4, i32 1, i32 20)
  resume { i8*, i32 } %51
}

define i32 @"kfun:Pedido.component1()ValueType"(%struct.ObjHeader*) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %1 = alloca %struct.ObjHeader*, i32 2
  %2 = bitcast %struct.ObjHeader** %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* %2, i8 0, i32 16, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %1, i32 1, i32 2)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %3 = phi %struct.ObjHeader** [ %1, %prologue ]
  %4 = ptrtoint %struct.ObjHeader** %3 to i64
  %5 = or i64 %4, 1
  %6 = inttoptr i64 %5 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  br label %entry

entry:                                            ; preds = %locals_init
  %7 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %8 = invoke i32 @"kfun:Pedido.<get-codigo>()ValueType"(%struct.ObjHeader* %7)
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %entry
  br label %epilogue

epilogue:                                         ; preds = %call_success
  %9 = phi i32 [ %8, %call_success ]
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 2)
  ret i32 %9

cleanup_landingpad:                               ; preds = %entry
  %10 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 2)
  resume { i8*, i32 } %10
}

define i32 @"kfun:Pedido.component2()ValueType"(%struct.ObjHeader*) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %1 = alloca %struct.ObjHeader*, i32 2
  %2 = bitcast %struct.ObjHeader** %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* %2, i8 0, i32 16, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %1, i32 1, i32 2)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %3 = phi %struct.ObjHeader** [ %1, %prologue ]
  %4 = ptrtoint %struct.ObjHeader** %3 to i64
  %5 = or i64 %4, 1
  %6 = inttoptr i64 %5 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  br label %entry

entry:                                            ; preds = %locals_init
  %7 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %8 = invoke i32 @"kfun:Pedido.<get-quantidade>()ValueType"(%struct.ObjHeader* %7)
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %entry
  br label %epilogue

epilogue:                                         ; preds = %call_success
  %9 = phi i32 [ %8, %call_success ]
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 2)
  ret i32 %9

cleanup_landingpad:                               ; preds = %entry
  %10 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 2)
  resume { i8*, i32 } %10
}

define double @"kfun:Pedido.component3()ValueType"(%struct.ObjHeader*) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %1 = alloca %struct.ObjHeader*, i32 2
  %2 = bitcast %struct.ObjHeader** %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* %2, i8 0, i32 16, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %1, i32 1, i32 2)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %3 = phi %struct.ObjHeader** [ %1, %prologue ]
  %4 = ptrtoint %struct.ObjHeader** %3 to i64
  %5 = or i64 %4, 1
  %6 = inttoptr i64 %5 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  br label %entry

entry:                                            ; preds = %locals_init
  %7 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %8 = invoke double @"kfun:Pedido.<get-valor>()ValueType"(%struct.ObjHeader* %7)
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %entry
  br label %epilogue

epilogue:                                         ; preds = %call_success
  %9 = phi double [ %8, %call_success ]
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 2)
  ret double %9

cleanup_landingpad:                               ; preds = %entry
  %10 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 2)
  resume { i8*, i32 } %10
}

define %struct.ObjHeader* @"kfun:Pedido.copy(kotlin.Int;kotlin.Int;kotlin.Double)Pedido"(%struct.ObjHeader*, i32, i32, double, %struct.ObjHeader**) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %p-codigo = alloca i32
  %p-quantidade = alloca i32
  %p-valor = alloca double
  %5 = alloca %struct.ObjHeader*, i32 3
  %6 = bitcast %struct.ObjHeader** %5 to i8*
  call void @llvm.memset.p0i8.i32(i8* %6, i8 0, i32 24, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %5, i32 1, i32 3)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %7 = phi %struct.ObjHeader** [ %5, %prologue ]
  %8 = ptrtoint %struct.ObjHeader** %7 to i64
  %9 = or i64 %8, 1
  %10 = inttoptr i64 %9 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %7, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  store i32 %1, i32* %p-codigo
  store i32 %2, i32* %p-quantidade
  store double %3, double* %p-valor
  %11 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %7, i32 2
  br label %entry

entry:                                            ; preds = %locals_init
  %12 = load i32, i32* %p-codigo
  %13 = load i32, i32* %p-quantidade
  %14 = load double, double* %p-valor
  %15 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:Pedido", %struct.ObjHeader** %11)
  invoke void @"kfun:Pedido.<init>(kotlin.Int;kotlin.Int;kotlin.Double)Pedido"(%struct.ObjHeader* %15, i32 %12, i32 %13, double %14)
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %entry
  br label %epilogue

epilogue:                                         ; preds = %call_success
  %16 = phi %struct.ObjHeader* [ %15, %call_success ]
  call void @UpdateReturnRef(%struct.ObjHeader** %4, %struct.ObjHeader* %16)
  call void @LeaveFrame(%struct.ObjHeader** %7, i32 1, i32 3)
  ret %struct.ObjHeader* %16

cleanup_landingpad:                               ; preds = %entry
  %17 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %7, i32 1, i32 3)
  resume { i8*, i32 } %17
}

define %struct.ObjHeader* @"kfun:Pedido.copy$default(kotlin.Int;kotlin.Int;kotlin.Double;kotlin.Int)Pedido"(%struct.ObjHeader*, i32, i32, double, i32, %struct.ObjHeader**) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %p-codigo = alloca i32
  %p-quantidade = alloca i32
  %p-valor = alloca double
  %"p-$mask0" = alloca i32
  %6 = alloca %struct.ObjHeader*, i32 3
  %7 = bitcast %struct.ObjHeader** %6 to i8*
  call void @llvm.memset.p0i8.i32(i8* %7, i8 0, i32 24, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %6, i32 1, i32 3)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %8 = phi %struct.ObjHeader** [ %6, %prologue ]
  %9 = ptrtoint %struct.ObjHeader** %8 to i64
  %10 = or i64 %9, 1
  %11 = inttoptr i64 %10 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %8, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  store i32 %1, i32* %p-codigo
  store i32 %2, i32* %p-quantidade
  store double %3, double* %p-valor
  store i32 %4, i32* %"p-$mask0"
  %12 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %8, i32 2
  br label %entry

entry:                                            ; preds = %locals_init
  %13 = load i32, i32* %"p-$mask0"
  %14 = invoke i32 @Kotlin_Int_and_Int(i32 %13, i32 1)
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %entry
  %15 = icmp eq i32 %14, 0
  %16 = icmp ne i1 %15, true
  br i1 %16, label %when_case, label %when_next

when_case:                                        ; preds = %call_success
  %17 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %18 = invoke i32 @"kfun:Pedido.<get-codigo>()ValueType"(%struct.ObjHeader* %17)
          to label %call_success1 unwind label %cleanup_landingpad

call_success1:                                    ; preds = %when_case
  br label %when_exit

when_next:                                        ; preds = %call_success
  %19 = load i32, i32* %p-codigo
  br label %when_exit

when_exit:                                        ; preds = %when_next, %call_success1
  %20 = phi i32 [ %18, %call_success1 ], [ %19, %when_next ]
  %21 = load i32, i32* %"p-$mask0"
  %22 = invoke i32 @Kotlin_Int_and_Int(i32 %21, i32 2)
          to label %call_success5 unwind label %cleanup_landingpad

call_success5:                                    ; preds = %when_exit
  %23 = icmp eq i32 %22, 0
  %24 = icmp ne i1 %23, true
  br i1 %24, label %when_case4, label %when_next3

when_case4:                                       ; preds = %call_success5
  %25 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %26 = invoke i32 @"kfun:Pedido.<get-quantidade>()ValueType"(%struct.ObjHeader* %25)
          to label %call_success6 unwind label %cleanup_landingpad

call_success6:                                    ; preds = %when_case4
  br label %when_exit2

when_next3:                                       ; preds = %call_success5
  %27 = load i32, i32* %p-quantidade
  br label %when_exit2

when_exit2:                                       ; preds = %when_next3, %call_success6
  %28 = phi i32 [ %26, %call_success6 ], [ %27, %when_next3 ]
  %29 = load i32, i32* %"p-$mask0"
  %30 = invoke i32 @Kotlin_Int_and_Int(i32 %29, i32 4)
          to label %call_success10 unwind label %cleanup_landingpad

call_success10:                                   ; preds = %when_exit2
  %31 = icmp eq i32 %30, 0
  %32 = icmp ne i1 %31, true
  br i1 %32, label %when_case9, label %when_next8

when_case9:                                       ; preds = %call_success10
  %33 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %34 = invoke double @"kfun:Pedido.<get-valor>()ValueType"(%struct.ObjHeader* %33)
          to label %call_success11 unwind label %cleanup_landingpad

call_success11:                                   ; preds = %when_case9
  br label %when_exit7

when_next8:                                       ; preds = %call_success10
  %35 = load double, double* %p-valor
  br label %when_exit7

when_exit7:                                       ; preds = %when_next8, %call_success11
  %36 = phi double [ %34, %call_success11 ], [ %35, %when_next8 ]
  %37 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %38 = invoke %struct.ObjHeader* @"kfun:Pedido.copy(kotlin.Int;kotlin.Int;kotlin.Double)Pedido"(%struct.ObjHeader* %37, i32 %20, i32 %28, double %36, %struct.ObjHeader** %12)
          to label %call_success12 unwind label %cleanup_landingpad

call_success12:                                   ; preds = %when_exit7
  br label %epilogue

epilogue:                                         ; preds = %call_success12
  %39 = phi %struct.ObjHeader* [ %38, %call_success12 ]
  call void @UpdateReturnRef(%struct.ObjHeader** %5, %struct.ObjHeader* %39)
  call void @LeaveFrame(%struct.ObjHeader** %8, i32 1, i32 3)
  ret %struct.ObjHeader* %39

cleanup_landingpad:                               ; preds = %when_exit7, %when_case9, %when_exit2, %when_case4, %when_exit, %when_case, %entry
  %40 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %8, i32 1, i32 3)
  resume { i8*, i32 } %40
}

define i32 @"kfun:Pedido.hashCode()ValueType"(%struct.ObjHeader*) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %tmp0_result = alloca i32
  %1 = alloca %struct.ObjHeader*, i32 2
  %2 = bitcast %struct.ObjHeader** %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* %2, i8 0, i32 16, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %1, i32 1, i32 2)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %3 = phi %struct.ObjHeader** [ %1, %prologue ]
  %4 = ptrtoint %struct.ObjHeader** %3 to i64
  %5 = or i64 %4, 1
  %6 = inttoptr i64 %5 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  br label %entry

entry:                                            ; preds = %locals_init
  store i32 0, i32* %tmp0_result
  %7 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %8 = invoke i32 @"kfun:Pedido.<get-codigo>()ValueType"(%struct.ObjHeader* %7)
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %entry
  %9 = invoke i32 @"kfun:kotlin.Int.hashCode()ValueType"(i32 %8)
          to label %call_success1 unwind label %cleanup_landingpad

call_success1:                                    ; preds = %call_success
  store i32 %9, i32* %tmp0_result
  %10 = load i32, i32* %tmp0_result
  %11 = invoke i32 @Kotlin_Int_times_Int(i32 %10, i32 31)
          to label %call_success2 unwind label %cleanup_landingpad

call_success2:                                    ; preds = %call_success1
  %12 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %13 = invoke i32 @"kfun:Pedido.<get-quantidade>()ValueType"(%struct.ObjHeader* %12)
          to label %call_success3 unwind label %cleanup_landingpad

call_success3:                                    ; preds = %call_success2
  %14 = invoke i32 @"kfun:kotlin.Int.hashCode()ValueType"(i32 %13)
          to label %call_success4 unwind label %cleanup_landingpad

call_success4:                                    ; preds = %call_success3
  %15 = invoke i32 @Kotlin_Int_plus_Int(i32 %11, i32 %14)
          to label %call_success5 unwind label %cleanup_landingpad

call_success5:                                    ; preds = %call_success4
  store i32 %15, i32* %tmp0_result
  %16 = load i32, i32* %tmp0_result
  %17 = invoke i32 @Kotlin_Int_times_Int(i32 %16, i32 31)
          to label %call_success6 unwind label %cleanup_landingpad

call_success6:                                    ; preds = %call_success5
  %18 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %19 = invoke double @"kfun:Pedido.<get-valor>()ValueType"(%struct.ObjHeader* %18)
          to label %call_success7 unwind label %cleanup_landingpad

call_success7:                                    ; preds = %call_success6
  %20 = invoke i32 @"kfun:kotlin.Double.hashCode()ValueType"(double %19)
          to label %call_success8 unwind label %cleanup_landingpad

call_success8:                                    ; preds = %call_success7
  %21 = invoke i32 @Kotlin_Int_plus_Int(i32 %17, i32 %20)
          to label %call_success9 unwind label %cleanup_landingpad

call_success9:                                    ; preds = %call_success8
  store i32 %21, i32* %tmp0_result
  %22 = load i32, i32* %tmp0_result
  br label %epilogue

epilogue:                                         ; preds = %call_success9
  %23 = phi i32 [ %22, %call_success9 ]
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 2)
  ret i32 %23

cleanup_landingpad:                               ; preds = %call_success8, %call_success7, %call_success6, %call_success5, %call_success4, %call_success3, %call_success2, %call_success1, %call_success, %entry
  %24 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 2)
  resume { i8*, i32 } %24
}

define i1 @"kfun:Pedido.equals(kotlin.Any?)ValueType"(%struct.ObjHeader*, %struct.ObjHeader*) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %2 = alloca %struct.ObjHeader*, i32 8
  %3 = bitcast %struct.ObjHeader** %2 to i8*
  call void @llvm.memset.p0i8.i32(i8* %3, i8 0, i32 64, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %2, i32 2, i32 8)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %4 = phi %struct.ObjHeader** [ %2, %prologue ]
  %5 = ptrtoint %struct.ObjHeader** %4 to i64
  %6 = or i64 %5, 1
  %7 = inttoptr i64 %6 to %struct.ObjHeader**
  %"p-<this>" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %"p-<this>"
  %p-other = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 2
  store %struct.ObjHeader* %1, %struct.ObjHeader** %p-other
  %8 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 3
  %9 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 4
  %10 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 5
  %11 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 6
  %12 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 7
  br label %entry

entry:                                            ; preds = %locals_init
  %13 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %14 = load %struct.ObjHeader*, %struct.ObjHeader** %p-other
  %15 = icmp eq %struct.ObjHeader* %13, %14
  br i1 %15, label %when_case, label %when_exit

when_case:                                        ; preds = %entry
  br label %epilogue

when_exit:                                        ; preds = %entry
  %16 = load %struct.ObjHeader*, %struct.ObjHeader** %p-other
  %17 = icmp eq %struct.ObjHeader* %16, null
  br i1 %17, label %instance_of_null, label %instance_of_notnull

instance_of_null:                                 ; preds = %when_exit
  br label %instance_of_exit

instance_of_notnull:                              ; preds = %when_exit
  %18 = call i1 @IsInstance(%struct.ObjHeader* %16, %struct.TypeInfo* @"ktype:Pedido")
  br label %instance_of_exit

instance_of_exit:                                 ; preds = %instance_of_notnull, %instance_of_null
  %19 = phi i1 [ false, %instance_of_null ], [ %18, %instance_of_notnull ]
  %20 = xor i1 %19, true
  br i1 %20, label %when_case2, label %when_exit1

when_case2:                                       ; preds = %instance_of_exit
  br label %epilogue

when_exit1:                                       ; preds = %instance_of_exit
  %21 = load %struct.ObjHeader*, %struct.ObjHeader** %p-other
  %22 = icmp eq %struct.ObjHeader* %21, null
  br i1 %22, label %when_case4, label %when_next

when_case4:                                       ; preds = %when_exit1
  %23 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowTypeCastException()kotlin.Nothing"(%struct.ObjHeader** %8)
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %when_case4
  unreachable

when_next:                                        ; preds = %when_exit1
  invoke void @CheckInstance(%struct.ObjHeader* %21, %struct.TypeInfo* @"ktype:Pedido")
          to label %call_success5 unwind label %cleanup_landingpad

call_success5:                                    ; preds = %when_next
  br label %when_exit3

when_exit3:                                       ; preds = %call_success5
  %24 = phi %struct.ObjHeader* [ %21, %call_success5 ]
  %25 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %26 = invoke i32 @"kfun:Pedido.<get-codigo>()ValueType"(%struct.ObjHeader* %25)
          to label %call_success8 unwind label %cleanup_landingpad

call_success8:                                    ; preds = %when_exit3
  %27 = invoke i32 @"kfun:Pedido.<get-codigo>()ValueType"(%struct.ObjHeader* %24)
          to label %call_success9 unwind label %cleanup_landingpad

call_success9:                                    ; preds = %call_success8
  %28 = icmp eq i32 %26, %27
  %29 = icmp ne i1 %28, true
  br i1 %29, label %when_case7, label %when_exit6

when_case7:                                       ; preds = %call_success9
  br label %epilogue

when_exit6:                                       ; preds = %call_success9
  %30 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %31 = invoke i32 @"kfun:Pedido.<get-quantidade>()ValueType"(%struct.ObjHeader* %30)
          to label %call_success12 unwind label %cleanup_landingpad

call_success12:                                   ; preds = %when_exit6
  %32 = invoke i32 @"kfun:Pedido.<get-quantidade>()ValueType"(%struct.ObjHeader* %24)
          to label %call_success13 unwind label %cleanup_landingpad

call_success13:                                   ; preds = %call_success12
  %33 = icmp eq i32 %31, %32
  %34 = icmp ne i1 %33, true
  br i1 %34, label %when_case11, label %when_exit10

when_case11:                                      ; preds = %call_success13
  br label %epilogue

when_exit10:                                      ; preds = %call_success13
  %35 = load %struct.ObjHeader*, %struct.ObjHeader** %"p-<this>"
  %36 = invoke double @"kfun:Pedido.<get-valor>()ValueType"(%struct.ObjHeader* %35)
          to label %call_success16 unwind label %cleanup_landingpad

call_success16:                                   ; preds = %when_exit10
  %37 = invoke %struct.ObjHeader* @Kotlin_boxDouble(double %36, %struct.ObjHeader** %9)
          to label %call_success17 unwind label %cleanup_landingpad

call_success17:                                   ; preds = %call_success16
  %38 = invoke double @"kfun:Pedido.<get-valor>()ValueType"(%struct.ObjHeader* %24)
          to label %call_success18 unwind label %cleanup_landingpad

call_success18:                                   ; preds = %call_success17
  %39 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %37)
          to label %call_success19 unwind label %cleanup_landingpad

call_success19:                                   ; preds = %call_success18
  %40 = icmp eq i8* %39, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_konan.internal.DoubleBox_112" to i8*)
  br i1 %40, label %when_case22, label %when_next21

when_case22:                                      ; preds = %call_success19
  %41 = invoke %struct.ObjHeader* @Kotlin_boxDouble(double %38, %struct.ObjHeader** %10)
          to label %call_success23 unwind label %cleanup_landingpad

call_success23:                                   ; preds = %when_case22
  %42 = invoke i1 @"private_functions_<stdlib>_kfun:konan.internal.DoubleBox.equals(kotlin.Any?)ValueType_179"(%struct.ObjHeader* %37, %struct.ObjHeader* %41)
          to label %call_success24 unwind label %cleanup_landingpad

call_success24:                                   ; preds = %call_success23
  br label %when_exit20

when_next21:                                      ; preds = %call_success19
  %43 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %11)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %43, i8* %39)
          to label %call_success25 unwind label %cleanup_landingpad

call_success25:                                   ; preds = %when_next21
  %44 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %43, %struct.ObjHeader** %12)
          to label %call_success26 unwind label %cleanup_landingpad

call_success26:                                   ; preds = %call_success25
  unreachable

when_exit20:                                      ; preds = %call_success24
  %45 = phi i1 [ %42, %call_success24 ]
  %46 = icmp ne i1 %45, true
  br i1 %46, label %when_case15, label %when_exit14

when_case15:                                      ; preds = %when_exit20
  br label %epilogue

when_exit14:                                      ; preds = %when_exit20
  br label %epilogue

epilogue:                                         ; preds = %when_exit14, %when_case15, %when_case11, %when_case7, %when_case2, %when_case
  %47 = phi i1 [ true, %when_case ], [ false, %when_case2 ], [ false, %when_case7 ], [ false, %when_case11 ], [ false, %when_case15 ], [ true, %when_exit14 ]
  call void @LeaveFrame(%struct.ObjHeader** %4, i32 2, i32 8)
  ret i1 %47

cleanup_landingpad:                               ; preds = %call_success25, %when_next21, %call_success23, %when_case22, %call_success18, %call_success17, %call_success16, %when_exit10, %call_success12, %when_exit6, %call_success8, %when_exit3, %when_next, %when_case4
  %48 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %4, i32 2, i32 8)
  resume { i8*, i32 } %48
}

define void @"kfun:main(kotlin.Array<kotlin.String>)"(%struct.ObjHeader*) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %tmp0_inductionVariable = alloca i32
  %1 = alloca %struct.ObjHeader*, i32 165
  %2 = bitcast %struct.ObjHeader** %1 to i8*
  call void @llvm.memset.p0i8.i32(i8* %2, i8 0, i32 1320, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %1, i32 1, i32 165)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %3 = phi %struct.ObjHeader** [ %1, %prologue ]
  %4 = ptrtoint %struct.ObjHeader** %3 to i64
  %5 = or i64 %4, 1
  %6 = inttoptr i64 %5 to %struct.ObjHeader**
  %p-args = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 1
  store %struct.ObjHeader* %0, %struct.ObjHeader** %p-args
  %7 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 2
  %comissoes = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 3
  %8 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 4
  %9 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 5
  %10 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 6
  %11 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 7
  %12 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 8
  %13 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 9
  %14 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 10
  %15 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 11
  %16 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 12
  %17 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 13
  %18 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 14
  %19 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 15
  %20 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 16
  %21 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 17
  %22 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 18
  %23 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 19
  %24 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 20
  %25 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 21
  %26 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 22
  %27 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 23
  %28 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 24
  %29 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 25
  %30 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 26
  %31 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 27
  %32 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 28
  %33 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 29
  %34 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 30
  %35 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 31
  %36 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 32
  %37 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 33
  %38 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 34
  %39 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 35
  %40 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 36
  %41 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 37
  %42 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 38
  %43 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 39
  %44 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 40
  %45 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 41
  %46 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 42
  %47 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 43
  %48 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 44
  %49 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 45
  %50 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 46
  %51 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 47
  %52 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 48
  %53 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 49
  %54 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 50
  %55 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 51
  %56 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 52
  %57 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 53
  %58 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 54
  %59 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 55
  %60 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 56
  %61 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 57
  %62 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 58
  %63 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 59
  %64 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 60
  %65 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 61
  %66 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 62
  %67 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 63
  %68 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 64
  %69 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 65
  %70 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 66
  %71 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 67
  %72 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 68
  %73 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 69
  %74 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 70
  %75 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 71
  %76 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 72
  %77 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 73
  %78 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 74
  %79 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 75
  %80 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 76
  %81 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 77
  %82 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 78
  %83 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 79
  %84 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 80
  %85 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 81
  %86 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 82
  %87 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 83
  %88 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 84
  %89 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 85
  %90 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 86
  %91 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 87
  %92 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 88
  %93 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 89
  %94 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 90
  %95 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 91
  %96 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 92
  %97 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 93
  %98 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 94
  %99 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 95
  %100 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 96
  %101 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 97
  %102 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 98
  %103 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 99
  %104 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 100
  %105 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 101
  %106 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 102
  %107 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 103
  %108 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 104
  %109 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 105
  %110 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 106
  %111 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 107
  %112 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 108
  %113 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 109
  %114 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 110
  %115 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 111
  %116 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 112
  %117 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 113
  %118 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 114
  %119 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 115
  %120 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 116
  %121 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 117
  %122 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 118
  %123 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 119
  %124 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 120
  %125 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 121
  %126 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 122
  %127 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 123
  %128 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 124
  %129 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 125
  %130 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 126
  %131 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 127
  %132 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 128
  %133 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 129
  %134 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 130
  %135 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 131
  %136 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 132
  %137 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 133
  %138 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 134
  %139 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 135
  %140 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 136
  %141 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 137
  %142 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 138
  %143 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 139
  %144 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 140
  %145 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 141
  %146 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 142
  %147 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 143
  %148 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 144
  %149 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 145
  %150 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 146
  %151 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 147
  %152 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 148
  %153 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 149
  %154 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 150
  %155 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 151
  %156 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 152
  %157 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 153
  %158 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 154
  %159 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 155
  %160 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 156
  %161 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 157
  %162 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 158
  %163 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 159
  %164 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 160
  %165 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 161
  %166 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 162
  %167 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 163
  %168 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %3, i32 164
  br label %entry

entry:                                            ; preds = %locals_init
  %169 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.collections.ArrayList", %struct.ObjHeader** %7)
  invoke void @"kfun:kotlin.collections.ArrayList.<init>()kotlin.collections.ArrayList<#GENERIC>"(%struct.ObjHeader* %169)
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %entry
  br label %returnable_block_exit

returnable_block_exit:                            ; preds = %call_success
  %170 = phi %struct.ObjHeader* [ %169, %call_success ]
  %171 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.text.StringBuilder", %struct.ObjHeader** %8)
  invoke void @"kfun:kotlin.text.StringBuilder.<init>()kotlin.text.StringBuilder"(%struct.ObjHeader* %171)
          to label %call_success1 unwind label %cleanup_landingpad

call_success1:                                    ; preds = %returnable_block_exit
  %172 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %171, %struct.ObjHeader* @"kstr:9uXvwB1lM0r/wPnZBsZ/rAsCqxc=", %struct.ObjHeader** %9)
          to label %call_success2 unwind label %cleanup_landingpad

call_success2:                                    ; preds = %call_success1
  %173 = invoke %struct.ObjHeader* @"kfun:toPrecision@kotlin.Double.(kotlin.Int)kotlin.String"(double 1.150000e-01, i32 2, %struct.ObjHeader** %10)
          to label %call_success3 unwind label %cleanup_landingpad

call_success3:                                    ; preds = %call_success2
  %174 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %171, %struct.ObjHeader* %173, %struct.ObjHeader** %11)
          to label %call_success4 unwind label %cleanup_landingpad

call_success4:                                    ; preds = %call_success3
  %175 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.toString()kotlin.String"(%struct.ObjHeader* %171, %struct.ObjHeader** %12)
          to label %call_success5 unwind label %cleanup_landingpad

call_success5:                                    ; preds = %call_success4
  invoke void @Kotlin_io_Console_println(%struct.ObjHeader* %175)
          to label %call_success6 unwind label %cleanup_landingpad

call_success6:                                    ; preds = %call_success5
  %176 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.text.StringBuilder", %struct.ObjHeader** %13)
  invoke void @"kfun:kotlin.text.StringBuilder.<init>()kotlin.text.StringBuilder"(%struct.ObjHeader* %176)
          to label %call_success7 unwind label %cleanup_landingpad

call_success7:                                    ; preds = %call_success6
  %177 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %176, %struct.ObjHeader* @"kstr:SoP/+mJKdwOzRxebMbLKpOl35L4=", %struct.ObjHeader** %14)
          to label %call_success8 unwind label %cleanup_landingpad

call_success8:                                    ; preds = %call_success7
  %178 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %176, %struct.ObjHeader* @"kstr:rcg7GeeTSRscbqD9i0bNnzLlkvw=", %struct.ObjHeader** %15)
          to label %call_success9 unwind label %cleanup_landingpad

call_success9:                                    ; preds = %call_success8
  %179 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.toString()kotlin.String"(%struct.ObjHeader* %176, %struct.ObjHeader** %16)
          to label %call_success10 unwind label %cleanup_landingpad

call_success10:                                   ; preds = %call_success9
  invoke void @Kotlin_io_Console_println(%struct.ObjHeader* %179)
          to label %call_success11 unwind label %cleanup_landingpad

call_success11:                                   ; preds = %call_success10
  invoke void @Kotlin_io_Console_print(%struct.ObjHeader* @"kstr:IqzVnKF1/MkFqfLQwqEmyQNgOqY=")
          to label %call_success12 unwind label %cleanup_landingpad

call_success12:                                   ; preds = %call_success11
  %180 = invoke %struct.ObjHeader* @Kotlin_io_Console_readLine(%struct.ObjHeader** %17)
          to label %call_success13 unwind label %cleanup_landingpad

call_success13:                                   ; preds = %call_success12
  %181 = icmp eq %struct.ObjHeader* %180, null
  br i1 %181, label %when_case, label %when_next

when_case:                                        ; preds = %call_success13
  %182 = invoke %struct.ObjHeader* @ThrowNullPointerException(%struct.ObjHeader** %18)
          to label %call_success14 unwind label %cleanup_landingpad

call_success14:                                   ; preds = %when_case
  unreachable

when_next:                                        ; preds = %call_success13
  br label %when_exit

when_exit:                                        ; preds = %when_next
  %183 = phi %struct.ObjHeader* [ %180, %when_next ]
  %184 = invoke %struct.ObjHeader* @"kfun:kotlin.text.toIntOrNull@kotlin.String.()kotlin.Int?"(%struct.ObjHeader* %183, %struct.ObjHeader** %19)
          to label %call_success15 unwind label %cleanup_landingpad

call_success15:                                   ; preds = %when_exit
  %185 = icmp eq %struct.ObjHeader* %184, null
  br i1 %185, label %when_case18, label %when_next17

when_case18:                                      ; preds = %call_success15
  %186 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.NumberFormatException", %struct.ObjHeader** %20)
  invoke void @"kfun:kotlin.NumberFormatException.<init>()kotlin.NumberFormatException"(%struct.ObjHeader* %186)
          to label %call_success19 unwind label %cleanup_landingpad

call_success19:                                   ; preds = %when_case18
  invoke void @ThrowException(%struct.ObjHeader* %186)
          to label %call_success20 unwind label %cleanup_landingpad

call_success20:                                   ; preds = %call_success19
  unreachable

unreachable:                                      ; No predecessors!
  %187 = invoke i32 @"kfun:konan.internal.IntBox.<get-value>()ValueType"(%struct.ObjHeader* undef)
          to label %call_success21 unwind label %cleanup_landingpad

call_success21:                                   ; preds = %unreachable
  br label %when_exit16

when_next17:                                      ; preds = %call_success15
  %188 = invoke i32 @"kfun:konan.internal.IntBox.<get-value>()ValueType"(%struct.ObjHeader* %184)
          to label %call_success22 unwind label %cleanup_landingpad

call_success22:                                   ; preds = %when_next17
  br label %when_exit16

when_exit16:                                      ; preds = %call_success22, %call_success21
  %189 = phi i32 [ %187, %call_success21 ], [ %188, %call_success22 ]
  br label %returnable_block_exit23

unreachable25:                                    ; No predecessors!
  %190 = invoke i32 @"kfun:konan.internal.IntBox.<get-value>()ValueType"(%struct.ObjHeader* undef)
          to label %call_success24 unwind label %cleanup_landingpad

call_success24:                                   ; preds = %unreachable25
  unreachable

returnable_block_exit23:                          ; preds = %when_exit16
  %191 = phi i32 [ %189, %when_exit16 ]
  invoke void @Kotlin_io_Console_println0()
          to label %call_success26 unwind label %cleanup_landingpad

call_success26:                                   ; preds = %returnable_block_exit23
  store i32 1, i32* %tmp0_inductionVariable
  %192 = load i32, i32* %tmp0_inductionVariable
  %193 = invoke i32 @Kotlin_Int_compareTo_Int(i32 %192, i32 %191)
          to label %call_success29 unwind label %cleanup_landingpad

call_success29:                                   ; preds = %call_success26
  %194 = icmp sle i32 %193, 0
  br i1 %194, label %when_case28, label %when_exit27

when_case28:                                      ; preds = %call_success29
  br label %do_while_loop

do_while_loop:                                    ; preds = %loop_check, %when_case28
  %195 = load i32, i32* %tmp0_inductionVariable
  %196 = load i32, i32* %tmp0_inductionVariable
  %197 = invoke i32 @Kotlin_Int_plus_Int(i32 %196, i32 1)
          to label %call_success30 unwind label %cleanup_landingpad

call_success30:                                   ; preds = %do_while_loop
  store i32 %197, i32* %tmp0_inductionVariable
  invoke void @Kotlin_io_Console_print(%struct.ObjHeader* @"kstr:LrDIzKLRITE5NXYUNs0oXgGYI9U=")
          to label %call_success31 unwind label %cleanup_landingpad

call_success31:                                   ; preds = %call_success30
  %198 = invoke %struct.ObjHeader* @Kotlin_io_Console_readLine(%struct.ObjHeader** %21)
          to label %call_success32 unwind label %cleanup_landingpad

call_success32:                                   ; preds = %call_success31
  %199 = icmp eq %struct.ObjHeader* %198, null
  br i1 %199, label %when_case35, label %when_next34

when_case35:                                      ; preds = %call_success32
  %200 = invoke %struct.ObjHeader* @ThrowNullPointerException(%struct.ObjHeader** %22)
          to label %call_success36 unwind label %cleanup_landingpad

call_success36:                                   ; preds = %when_case35
  unreachable

when_next34:                                      ; preds = %call_success32
  br label %when_exit33

when_exit33:                                      ; preds = %when_next34
  %201 = phi %struct.ObjHeader* [ %198, %when_next34 ]
  %202 = invoke %struct.ObjHeader* @"kfun:kotlin.text.toIntOrNull@kotlin.String.()kotlin.Int?"(%struct.ObjHeader* %201, %struct.ObjHeader** %23)
          to label %call_success37 unwind label %cleanup_landingpad

call_success37:                                   ; preds = %when_exit33
  %203 = icmp eq %struct.ObjHeader* %202, null
  br i1 %203, label %when_case40, label %when_next39

when_case40:                                      ; preds = %call_success37
  %204 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.NumberFormatException", %struct.ObjHeader** %24)
  invoke void @"kfun:kotlin.NumberFormatException.<init>()kotlin.NumberFormatException"(%struct.ObjHeader* %204)
          to label %call_success41 unwind label %cleanup_landingpad

call_success41:                                   ; preds = %when_case40
  invoke void @ThrowException(%struct.ObjHeader* %204)
          to label %call_success42 unwind label %cleanup_landingpad

call_success42:                                   ; preds = %call_success41
  unreachable

unreachable44:                                    ; No predecessors!
  %205 = invoke i32 @"kfun:konan.internal.IntBox.<get-value>()ValueType"(%struct.ObjHeader* undef)
          to label %call_success43 unwind label %cleanup_landingpad

call_success43:                                   ; preds = %unreachable44
  br label %when_exit38

when_next39:                                      ; preds = %call_success37
  %206 = invoke i32 @"kfun:konan.internal.IntBox.<get-value>()ValueType"(%struct.ObjHeader* %202)
          to label %call_success45 unwind label %cleanup_landingpad

call_success45:                                   ; preds = %when_next39
  br label %when_exit38

when_exit38:                                      ; preds = %call_success45, %call_success43
  %207 = phi i32 [ %205, %call_success43 ], [ %206, %call_success45 ]
  br label %returnable_block_exit46

unreachable48:                                    ; No predecessors!
  %208 = invoke i32 @"kfun:konan.internal.IntBox.<get-value>()ValueType"(%struct.ObjHeader* undef)
          to label %call_success47 unwind label %cleanup_landingpad

call_success47:                                   ; preds = %unreachable48
  unreachable

returnable_block_exit46:                          ; preds = %when_exit38
  %209 = phi i32 [ %207, %when_exit38 ]
  invoke void @Kotlin_io_Console_print(%struct.ObjHeader* @"kstr:VS8QwHhMu6cXlIYM4hDRmdunwks=")
          to label %call_success49 unwind label %cleanup_landingpad

call_success49:                                   ; preds = %returnable_block_exit46
  %210 = invoke %struct.ObjHeader* @Kotlin_io_Console_readLine(%struct.ObjHeader** %25)
          to label %call_success50 unwind label %cleanup_landingpad

call_success50:                                   ; preds = %call_success49
  %211 = icmp eq %struct.ObjHeader* %210, null
  br i1 %211, label %when_case53, label %when_next52

when_case53:                                      ; preds = %call_success50
  %212 = invoke %struct.ObjHeader* @ThrowNullPointerException(%struct.ObjHeader** %26)
          to label %call_success54 unwind label %cleanup_landingpad

call_success54:                                   ; preds = %when_case53
  unreachable

when_next52:                                      ; preds = %call_success50
  br label %when_exit51

when_exit51:                                      ; preds = %when_next52
  %213 = phi %struct.ObjHeader* [ %210, %when_next52 ]
  %214 = invoke %struct.ObjHeader* @"kfun:kotlin.text.toIntOrNull@kotlin.String.()kotlin.Int?"(%struct.ObjHeader* %213, %struct.ObjHeader** %27)
          to label %call_success55 unwind label %cleanup_landingpad

call_success55:                                   ; preds = %when_exit51
  %215 = icmp eq %struct.ObjHeader* %214, null
  br i1 %215, label %when_case58, label %when_next57

when_case58:                                      ; preds = %call_success55
  %216 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.NumberFormatException", %struct.ObjHeader** %28)
  invoke void @"kfun:kotlin.NumberFormatException.<init>()kotlin.NumberFormatException"(%struct.ObjHeader* %216)
          to label %call_success59 unwind label %cleanup_landingpad

call_success59:                                   ; preds = %when_case58
  invoke void @ThrowException(%struct.ObjHeader* %216)
          to label %call_success60 unwind label %cleanup_landingpad

call_success60:                                   ; preds = %call_success59
  unreachable

unreachable62:                                    ; No predecessors!
  %217 = invoke i32 @"kfun:konan.internal.IntBox.<get-value>()ValueType"(%struct.ObjHeader* undef)
          to label %call_success61 unwind label %cleanup_landingpad

call_success61:                                   ; preds = %unreachable62
  br label %when_exit56

when_next57:                                      ; preds = %call_success55
  %218 = invoke i32 @"kfun:konan.internal.IntBox.<get-value>()ValueType"(%struct.ObjHeader* %214)
          to label %call_success63 unwind label %cleanup_landingpad

call_success63:                                   ; preds = %when_next57
  br label %when_exit56

when_exit56:                                      ; preds = %call_success63, %call_success61
  %219 = phi i32 [ %217, %call_success61 ], [ %218, %call_success63 ]
  br label %returnable_block_exit64

unreachable66:                                    ; No predecessors!
  %220 = invoke i32 @"kfun:konan.internal.IntBox.<get-value>()ValueType"(%struct.ObjHeader* undef)
          to label %call_success65 unwind label %cleanup_landingpad

call_success65:                                   ; preds = %unreachable66
  unreachable

returnable_block_exit64:                          ; preds = %when_exit56
  %221 = phi i32 [ %219, %when_exit56 ]
  invoke void @Kotlin_io_Console_print(%struct.ObjHeader* @"kstr:NHkBTcsZwK+l/I4x4rr9YYBSt0o=")
          to label %call_success67 unwind label %cleanup_landingpad

call_success67:                                   ; preds = %returnable_block_exit64
  %222 = invoke %struct.ObjHeader* @Kotlin_io_Console_readLine(%struct.ObjHeader** %29)
          to label %call_success68 unwind label %cleanup_landingpad

call_success68:                                   ; preds = %call_success67
  %223 = icmp eq %struct.ObjHeader* %222, null
  br i1 %223, label %when_case71, label %when_next70

when_case71:                                      ; preds = %call_success68
  %224 = invoke %struct.ObjHeader* @ThrowNullPointerException(%struct.ObjHeader** %30)
          to label %call_success72 unwind label %cleanup_landingpad

call_success72:                                   ; preds = %when_case71
  unreachable

when_next70:                                      ; preds = %call_success68
  br label %when_exit69

when_exit69:                                      ; preds = %when_next70
  %225 = phi %struct.ObjHeader* [ %222, %when_next70 ]
  %226 = load %struct.ObjHeader*, %struct.ObjHeader** @"kobjref:konan.internal.FloatingPointParser"
  %227 = ptrtoint %struct.ObjHeader* %226 to i64
  %228 = icmp ugt i64 %227, 1
  br i1 %228, label %label_continue, label %label_init

label_continue:                                   ; preds = %call_success73, %when_exit69
  %229 = phi %struct.ObjHeader* [ %226, %when_exit69 ], [ %235, %call_success73 ]
  %230 = invoke double @"kfun:konan.internal.FloatingPointParser.parseDouble(kotlin.String)ValueType"(%struct.ObjHeader* %229, %struct.ObjHeader* %225)
          to label %call_success74 unwind label %cleanup_landingpad

call_success74:                                   ; preds = %label_continue
  br label %returnable_block_exit75

unreachable77:                                    ; No predecessors!
  %231 = invoke double @"kfun:konan.internal.DoubleBox.<get-value>()ValueType"(%struct.ObjHeader* undef)
          to label %call_success76 unwind label %cleanup_landingpad

call_success76:                                   ; preds = %unreachable77
  unreachable

returnable_block_exit75:                          ; preds = %call_success74
  %232 = phi double [ %230, %call_success74 ]
  %233 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:Pedido", %struct.ObjHeader** %32)
  invoke void @"kfun:Pedido.<init>(kotlin.Int;kotlin.Int;kotlin.Double)Pedido"(%struct.ObjHeader* %233, i32 %209, i32 %221, double %232)
          to label %call_success78 unwind label %cleanup_landingpad

call_success78:                                   ; preds = %returnable_block_exit75
  %234 = invoke i1 @"kfun:kotlin.collections.ArrayList.add(#GENERIC)ValueType"(%struct.ObjHeader* %170, %struct.ObjHeader* %233)
          to label %call_success79 unwind label %cleanup_landingpad

call_success79:                                   ; preds = %call_success78
  invoke void @Kotlin_io_Console_println0()
          to label %call_success80 unwind label %cleanup_landingpad

call_success80:                                   ; preds = %call_success79
  br label %loop_check

label_init:                                       ; preds = %when_exit69
  %235 = invoke %struct.ObjHeader* @InitSharedInstance(%struct.ObjHeader** @"kobjref:konan.internal.FloatingPointParser", %struct.ObjHeader** @"kshadowobjref:konan.internal.FloatingPointParser", %struct.TypeInfo* @"ktype:konan.internal.FloatingPointParser", void (%struct.ObjHeader*)* @"kfun:konan.internal.FloatingPointParser.<init>()konan.internal.FloatingPointParser", %struct.ObjHeader** %31)
          to label %call_success73 unwind label %cleanup_landingpad

call_success73:                                   ; preds = %label_init
  br label %label_continue

loop_check:                                       ; preds = %call_success80
  %236 = icmp eq i32 %195, %191
  %237 = icmp ne i1 %236, true
  br i1 %237, label %do_while_loop, label %loop_exit

loop_exit:                                        ; preds = %loop_check
  br label %when_exit27

when_exit27:                                      ; preds = %loop_exit, %call_success29
  %238 = invoke i32 @"kfun:kotlin.collections.collectionSizeOrDefault$stdlib@kotlin.collections.Iterable<#GENERIC>.(kotlin.Int)Generic"(%struct.ObjHeader* %170, i32 10)
          to label %call_success81 unwind label %cleanup_landingpad

call_success81:                                   ; preds = %when_exit27
  %239 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.collections.ArrayList", %struct.ObjHeader** %33)
  invoke void @"kfun:kotlin.collections.ArrayList.<init>(kotlin.Int)kotlin.collections.ArrayList<#GENERIC>"(%struct.ObjHeader* %239, i32 %238)
          to label %call_success82 unwind label %cleanup_landingpad

call_success82:                                   ; preds = %call_success81
  %240 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %170)
          to label %call_success83 unwind label %cleanup_landingpad

call_success83:                                   ; preds = %call_success82
  %241 = icmp eq i8* %240, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList_285" to i8*)
  br i1 %241, label %when_case86, label %when_next85

when_case86:                                      ; preds = %call_success83
  %242 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.ArrayList.iterator()kotlin.collections.MutableIterator<#GENERIC>_491"(%struct.ObjHeader* %170, %struct.ObjHeader** %34)
          to label %call_success87 unwind label %cleanup_landingpad

call_success87:                                   ; preds = %when_case86
  br label %when_exit84

when_next85:                                      ; preds = %call_success83
  %243 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %35)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %243, i8* %240)
          to label %call_success88 unwind label %cleanup_landingpad

call_success88:                                   ; preds = %when_next85
  %244 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %243, %struct.ObjHeader** %36)
          to label %call_success89 unwind label %cleanup_landingpad

call_success89:                                   ; preds = %call_success88
  unreachable

when_exit84:                                      ; preds = %call_success87
  %245 = phi %struct.ObjHeader* [ %242, %call_success87 ]
  br label %loop_check91

while_loop:                                       ; preds = %when_exit93
  %246 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %245)
          to label %call_success99 unwind label %cleanup_landingpad

call_success99:                                   ; preds = %while_loop
  %247 = icmp eq i8* %246, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList.Itr_655" to i8*)
  br i1 %247, label %when_case102, label %when_next101

when_case102:                                     ; preds = %call_success99
  %248 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kotlin.collections.ArrayList.Itr.next#internal_1190"(%struct.ObjHeader* %245, %struct.ObjHeader** %39)
          to label %call_success103 unwind label %cleanup_landingpad

call_success103:                                  ; preds = %when_case102
  br label %when_exit100

when_next101:                                     ; preds = %call_success99
  %249 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %40)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %249, i8* %246)
          to label %call_success104 unwind label %cleanup_landingpad

call_success104:                                  ; preds = %when_next101
  %250 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %249, %struct.ObjHeader** %41)
          to label %call_success105 unwind label %cleanup_landingpad

call_success105:                                  ; preds = %call_success104
  unreachable

when_exit100:                                     ; preds = %call_success103
  %251 = phi %struct.ObjHeader* [ %248, %call_success103 ]
  %252 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:Comissao", %struct.ObjHeader** %42)
  invoke void @"kfun:Comissao.<init>(Pedido)Comissao"(%struct.ObjHeader* %252, %struct.ObjHeader* %251)
          to label %call_success106 unwind label %cleanup_landingpad

call_success106:                                  ; preds = %when_exit100
  br label %returnable_block_exit107

returnable_block_exit107:                         ; preds = %call_success106
  %253 = phi %struct.ObjHeader* [ %252, %call_success106 ]
  %254 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %239)
          to label %call_success108 unwind label %cleanup_landingpad

call_success108:                                  ; preds = %returnable_block_exit107
  %255 = icmp eq i8* %254, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList_285" to i8*)
  br i1 %255, label %when_case111, label %when_next110

when_case111:                                     ; preds = %call_success108
  %256 = invoke i1 @"private_functions_<stdlib>_kfun:kotlin.collections.ArrayList.add(#GENERIC)ValueType_494"(%struct.ObjHeader* %239, %struct.ObjHeader* %253)
          to label %call_success112 unwind label %cleanup_landingpad

call_success112:                                  ; preds = %when_case111
  br label %when_exit109

when_next110:                                     ; preds = %call_success108
  %257 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %43)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %257, i8* %254)
          to label %call_success113 unwind label %cleanup_landingpad

call_success113:                                  ; preds = %when_next110
  %258 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %257, %struct.ObjHeader** %44)
          to label %call_success114 unwind label %cleanup_landingpad

call_success114:                                  ; preds = %call_success113
  unreachable

when_exit109:                                     ; preds = %call_success112
  %259 = phi i1 [ %256, %call_success112 ]
  br label %loop_check91

loop_check91:                                     ; preds = %when_exit109, %when_exit84
  %260 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %245)
          to label %call_success92 unwind label %cleanup_landingpad

call_success92:                                   ; preds = %loop_check91
  %261 = icmp eq i8* %260, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList.Itr_655" to i8*)
  br i1 %261, label %when_case95, label %when_next94

when_case95:                                      ; preds = %call_success92
  %262 = invoke i1 @"private_functions_<stdlib>_kotlin.collections.ArrayList.Itr.hasNext#internal_1188"(%struct.ObjHeader* %245)
          to label %call_success96 unwind label %cleanup_landingpad

call_success96:                                   ; preds = %when_case95
  br label %when_exit93

when_next94:                                      ; preds = %call_success92
  %263 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %37)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %263, i8* %260)
          to label %call_success97 unwind label %cleanup_landingpad

call_success97:                                   ; preds = %when_next94
  %264 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %263, %struct.ObjHeader** %38)
          to label %call_success98 unwind label %cleanup_landingpad

call_success98:                                   ; preds = %call_success97
  unreachable

when_exit93:                                      ; preds = %call_success96
  %265 = phi i1 [ %262, %call_success96 ]
  br i1 %265, label %while_loop, label %loop_exit90

loop_exit90:                                      ; preds = %when_exit93
  br label %returnable_block_exit115

returnable_block_exit115:                         ; preds = %loop_exit90
  %266 = phi %struct.ObjHeader* [ %239, %loop_exit90 ]
  br label %returnable_block_exit116

returnable_block_exit116:                         ; preds = %returnable_block_exit115
  %267 = phi %struct.ObjHeader* [ %266, %returnable_block_exit115 ]
  call void @UpdateRef(%struct.ObjHeader** %comissoes, %struct.ObjHeader* %267)
  invoke void @Kotlin_io_Console_println(%struct.ObjHeader* @"kstr:1kstNoHxVFiIrergpZzO061I+gk=")
          to label %call_success117 unwind label %cleanup_landingpad

call_success117:                                  ; preds = %returnable_block_exit116
  %268 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.text.StringBuilder", %struct.ObjHeader** %45)
  invoke void @"kfun:kotlin.text.StringBuilder.<init>()kotlin.text.StringBuilder"(%struct.ObjHeader* %268)
          to label %call_success118 unwind label %cleanup_landingpad

call_success118:                                  ; preds = %call_success117
  %269 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %268, %struct.ObjHeader* @"kstr:S17nW+yc6ozhyTGOlLwkV0hr55A=", %struct.ObjHeader** %46)
          to label %call_success119 unwind label %cleanup_landingpad

call_success119:                                  ; preds = %call_success118
  %270 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %268, %struct.ObjHeader* @"kstr:rcg7GeeTSRscbqD9i0bNnzLlkvw=", %struct.ObjHeader** %47)
          to label %call_success120 unwind label %cleanup_landingpad

call_success120:                                  ; preds = %call_success119
  %271 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.toString()kotlin.String"(%struct.ObjHeader* %268, %struct.ObjHeader** %48)
          to label %call_success121 unwind label %cleanup_landingpad

call_success121:                                  ; preds = %call_success120
  invoke void @Kotlin_io_Console_println(%struct.ObjHeader* %271)
          to label %call_success122 unwind label %cleanup_landingpad

call_success122:                                  ; preds = %call_success121
  %272 = load %struct.ObjHeader*, %struct.ObjHeader** %comissoes
  %273 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %272)
          to label %call_success123 unwind label %cleanup_landingpad

call_success123:                                  ; preds = %call_success122
  %274 = icmp eq i8* %273, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList_285" to i8*)
  br i1 %274, label %when_case126, label %when_next125

when_case126:                                     ; preds = %call_success123
  %275 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.ArrayList.iterator()kotlin.collections.MutableIterator<#GENERIC>_491"(%struct.ObjHeader* %272, %struct.ObjHeader** %49)
          to label %call_success127 unwind label %cleanup_landingpad

call_success127:                                  ; preds = %when_case126
  br label %when_exit124

when_next125:                                     ; preds = %call_success123
  %276 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %50)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %276, i8* %273)
          to label %call_success128 unwind label %cleanup_landingpad

call_success128:                                  ; preds = %when_next125
  %277 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %276, %struct.ObjHeader** %51)
          to label %call_success129 unwind label %cleanup_landingpad

call_success129:                                  ; preds = %call_success128
  unreachable

when_exit124:                                     ; preds = %call_success127
  %278 = phi %struct.ObjHeader* [ %275, %call_success127 ]
  br label %loop_check131

while_loop132:                                    ; preds = %when_exit134
  %279 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %278)
          to label %call_success146 unwind label %cleanup_landingpad

call_success146:                                  ; preds = %while_loop132
  %280 = icmp eq i8* %279, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList.Itr_655" to i8*)
  br i1 %280, label %when_case149, label %when_next148

when_case149:                                     ; preds = %call_success146
  %281 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kotlin.collections.ArrayList.Itr.next#internal_1190"(%struct.ObjHeader* %278, %struct.ObjHeader** %54)
          to label %call_success150 unwind label %cleanup_landingpad

call_success150:                                  ; preds = %when_case149
  br label %when_exit147

when_next148:                                     ; preds = %call_success146
  %282 = icmp eq i8* %279, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.AbstractList.IteratorImpl_270" to i8*)
  br i1 %282, label %when_case152, label %when_next151

when_case152:                                     ; preds = %when_next148
  %283 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kotlin.collections.AbstractList.IteratorImpl.next#internal_421"(%struct.ObjHeader* %278, %struct.ObjHeader** %55)
          to label %call_success153 unwind label %cleanup_landingpad

call_success153:                                  ; preds = %when_case152
  br label %when_exit147

when_next151:                                     ; preds = %when_next148
  %284 = icmp eq i8* %279, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.EmptyIterator_282" to i8*)
  br i1 %284, label %when_case155, label %when_next154

when_case155:                                     ; preds = %when_next151
  %285 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.EmptyIterator.next()kotlin.Nothing_465"(%struct.ObjHeader* %278, %struct.ObjHeader** %56)
          to label %call_success156 unwind label %cleanup_landingpad

call_success156:                                  ; preds = %when_case155
  br label %when_exit147

when_next154:                                     ; preds = %when_next151
  %286 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %57)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %286, i8* %279)
          to label %call_success157 unwind label %cleanup_landingpad

call_success157:                                  ; preds = %when_next154
  %287 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %286, %struct.ObjHeader** %58)
          to label %call_success158 unwind label %cleanup_landingpad

call_success158:                                  ; preds = %call_success157
  unreachable

when_exit147:                                     ; preds = %call_success156, %call_success153, %call_success150
  %288 = phi %struct.ObjHeader* [ %281, %call_success150 ], [ %283, %call_success153 ], [ %285, %call_success156 ]
  %289 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.text.StringBuilder", %struct.ObjHeader** %59)
  invoke void @"kfun:kotlin.text.StringBuilder.<init>()kotlin.text.StringBuilder"(%struct.ObjHeader* %289)
          to label %call_success159 unwind label %cleanup_landingpad

call_success159:                                  ; preds = %when_exit147
  %290 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.Any?)kotlin.text.StringBuilder"(%struct.ObjHeader* %289, %struct.ObjHeader* %288, %struct.ObjHeader** %60)
          to label %call_success160 unwind label %cleanup_landingpad

call_success160:                                  ; preds = %call_success159
  %291 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %289, %struct.ObjHeader* @"kstr:rcg7GeeTSRscbqD9i0bNnzLlkvw=", %struct.ObjHeader** %61)
          to label %call_success161 unwind label %cleanup_landingpad

call_success161:                                  ; preds = %call_success160
  %292 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.toString()kotlin.String"(%struct.ObjHeader* %289, %struct.ObjHeader** %62)
          to label %call_success162 unwind label %cleanup_landingpad

call_success162:                                  ; preds = %call_success161
  invoke void @Kotlin_io_Console_println(%struct.ObjHeader* %292)
          to label %call_success163 unwind label %cleanup_landingpad

call_success163:                                  ; preds = %call_success162
  br label %returnable_block_exit164

returnable_block_exit164:                         ; preds = %call_success163
  br label %loop_check131

loop_check131:                                    ; preds = %returnable_block_exit164, %when_exit124
  %293 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %278)
          to label %call_success133 unwind label %cleanup_landingpad

call_success133:                                  ; preds = %loop_check131
  %294 = icmp eq i8* %293, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList.Itr_655" to i8*)
  br i1 %294, label %when_case136, label %when_next135

when_case136:                                     ; preds = %call_success133
  %295 = invoke i1 @"private_functions_<stdlib>_kotlin.collections.ArrayList.Itr.hasNext#internal_1188"(%struct.ObjHeader* %278)
          to label %call_success137 unwind label %cleanup_landingpad

call_success137:                                  ; preds = %when_case136
  br label %when_exit134

when_next135:                                     ; preds = %call_success133
  %296 = icmp eq i8* %293, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.AbstractList.IteratorImpl_270" to i8*)
  br i1 %296, label %when_case139, label %when_next138

when_case139:                                     ; preds = %when_next135
  %297 = invoke i1 @"private_functions_<stdlib>_kotlin.collections.AbstractList.IteratorImpl.hasNext#internal_420"(%struct.ObjHeader* %278)
          to label %call_success140 unwind label %cleanup_landingpad

call_success140:                                  ; preds = %when_case139
  br label %when_exit134

when_next138:                                     ; preds = %when_next135
  %298 = icmp eq i8* %293, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.EmptyIterator_282" to i8*)
  br i1 %298, label %when_case142, label %when_next141

when_case142:                                     ; preds = %when_next138
  %299 = invoke i1 @"private_functions_<stdlib>_kfun:kotlin.collections.EmptyIterator.hasNext()ValueType_463"(%struct.ObjHeader* %278)
          to label %call_success143 unwind label %cleanup_landingpad

call_success143:                                  ; preds = %when_case142
  br label %when_exit134

when_next141:                                     ; preds = %when_next138
  %300 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %52)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %300, i8* %293)
          to label %call_success144 unwind label %cleanup_landingpad

call_success144:                                  ; preds = %when_next141
  %301 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %300, %struct.ObjHeader** %53)
          to label %call_success145 unwind label %cleanup_landingpad

call_success145:                                  ; preds = %call_success144
  unreachable

when_exit134:                                     ; preds = %call_success143, %call_success140, %call_success137
  %302 = phi i1 [ %295, %call_success137 ], [ %297, %call_success140 ], [ %299, %call_success143 ]
  br i1 %302, label %while_loop132, label %loop_exit130

loop_exit130:                                     ; preds = %when_exit134
  invoke void @Kotlin_io_Console_println(%struct.ObjHeader* @"kstr:1kstNoHxVFiIrergpZzO061I+gk=")
          to label %call_success165 unwind label %cleanup_landingpad

call_success165:                                  ; preds = %loop_exit130
  %303 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.text.StringBuilder", %struct.ObjHeader** %63)
  invoke void @"kfun:kotlin.text.StringBuilder.<init>()kotlin.text.StringBuilder"(%struct.ObjHeader* %303)
          to label %call_success166 unwind label %cleanup_landingpad

call_success166:                                  ; preds = %call_success165
  %304 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %303, %struct.ObjHeader* @"kstr:GOZPn92W8RIOVskjDi4VulXk9c8=", %struct.ObjHeader** %64)
          to label %call_success167 unwind label %cleanup_landingpad

call_success167:                                  ; preds = %call_success166
  %305 = invoke i32 @"kfun:kotlin.collections.collectionSizeOrDefault$stdlib@kotlin.collections.Iterable<#GENERIC>.(kotlin.Int)Generic"(%struct.ObjHeader* %170, i32 10)
          to label %call_success168 unwind label %cleanup_landingpad

call_success168:                                  ; preds = %call_success167
  %306 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.collections.ArrayList", %struct.ObjHeader** %65)
  invoke void @"kfun:kotlin.collections.ArrayList.<init>(kotlin.Int)kotlin.collections.ArrayList<#GENERIC>"(%struct.ObjHeader* %306, i32 %305)
          to label %call_success169 unwind label %cleanup_landingpad

call_success169:                                  ; preds = %call_success168
  %307 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %170)
          to label %call_success170 unwind label %cleanup_landingpad

call_success170:                                  ; preds = %call_success169
  %308 = icmp eq i8* %307, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList_285" to i8*)
  br i1 %308, label %when_case173, label %when_next172

when_case173:                                     ; preds = %call_success170
  %309 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.ArrayList.iterator()kotlin.collections.MutableIterator<#GENERIC>_491"(%struct.ObjHeader* %170, %struct.ObjHeader** %66)
          to label %call_success174 unwind label %cleanup_landingpad

call_success174:                                  ; preds = %when_case173
  br label %when_exit171

when_next172:                                     ; preds = %call_success170
  %310 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %67)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %310, i8* %307)
          to label %call_success175 unwind label %cleanup_landingpad

call_success175:                                  ; preds = %when_next172
  %311 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %310, %struct.ObjHeader** %68)
          to label %call_success176 unwind label %cleanup_landingpad

call_success176:                                  ; preds = %call_success175
  unreachable

when_exit171:                                     ; preds = %call_success174
  %312 = phi %struct.ObjHeader* [ %309, %call_success174 ]
  br label %loop_check178

while_loop179:                                    ; preds = %when_exit181
  %313 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %312)
          to label %call_success187 unwind label %cleanup_landingpad

call_success187:                                  ; preds = %while_loop179
  %314 = icmp eq i8* %313, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList.Itr_655" to i8*)
  br i1 %314, label %when_case190, label %when_next189

when_case190:                                     ; preds = %call_success187
  %315 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kotlin.collections.ArrayList.Itr.next#internal_1190"(%struct.ObjHeader* %312, %struct.ObjHeader** %71)
          to label %call_success191 unwind label %cleanup_landingpad

call_success191:                                  ; preds = %when_case190
  br label %when_exit188

when_next189:                                     ; preds = %call_success187
  %316 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %72)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %316, i8* %313)
          to label %call_success192 unwind label %cleanup_landingpad

call_success192:                                  ; preds = %when_next189
  %317 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %316, %struct.ObjHeader** %73)
          to label %call_success193 unwind label %cleanup_landingpad

call_success193:                                  ; preds = %call_success192
  unreachable

when_exit188:                                     ; preds = %call_success191
  %318 = phi %struct.ObjHeader* [ %315, %call_success191 ]
  %319 = invoke double @"kfun:Pedido.<get-valor>()ValueType"(%struct.ObjHeader* %318)
          to label %call_success194 unwind label %cleanup_landingpad

call_success194:                                  ; preds = %when_exit188
  br label %returnable_block_exit195

unreachable197:                                   ; No predecessors!
  %320 = invoke double @"kfun:konan.internal.DoubleBox.<get-value>()ValueType"(%struct.ObjHeader* undef)
          to label %call_success196 unwind label %cleanup_landingpad

call_success196:                                  ; preds = %unreachable197
  unreachable

returnable_block_exit195:                         ; preds = %call_success194
  %321 = phi double [ %319, %call_success194 ]
  %322 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %306)
          to label %call_success198 unwind label %cleanup_landingpad

call_success198:                                  ; preds = %returnable_block_exit195
  %323 = icmp eq i8* %322, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList_285" to i8*)
  br i1 %323, label %when_case201, label %when_next200

when_case201:                                     ; preds = %call_success198
  %324 = invoke %struct.ObjHeader* @Kotlin_boxDouble(double %321, %struct.ObjHeader** %74)
          to label %call_success202 unwind label %cleanup_landingpad

call_success202:                                  ; preds = %when_case201
  %325 = invoke i1 @"private_functions_<stdlib>_kfun:kotlin.collections.ArrayList.add(#GENERIC)ValueType_494"(%struct.ObjHeader* %306, %struct.ObjHeader* %324)
          to label %call_success203 unwind label %cleanup_landingpad

call_success203:                                  ; preds = %call_success202
  br label %when_exit199

when_next200:                                     ; preds = %call_success198
  %326 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %75)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %326, i8* %322)
          to label %call_success204 unwind label %cleanup_landingpad

call_success204:                                  ; preds = %when_next200
  %327 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %326, %struct.ObjHeader** %76)
          to label %call_success205 unwind label %cleanup_landingpad

call_success205:                                  ; preds = %call_success204
  unreachable

when_exit199:                                     ; preds = %call_success203
  %328 = phi i1 [ %325, %call_success203 ]
  br label %loop_check178

loop_check178:                                    ; preds = %when_exit199, %when_exit171
  %329 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %312)
          to label %call_success180 unwind label %cleanup_landingpad

call_success180:                                  ; preds = %loop_check178
  %330 = icmp eq i8* %329, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList.Itr_655" to i8*)
  br i1 %330, label %when_case183, label %when_next182

when_case183:                                     ; preds = %call_success180
  %331 = invoke i1 @"private_functions_<stdlib>_kotlin.collections.ArrayList.Itr.hasNext#internal_1188"(%struct.ObjHeader* %312)
          to label %call_success184 unwind label %cleanup_landingpad

call_success184:                                  ; preds = %when_case183
  br label %when_exit181

when_next182:                                     ; preds = %call_success180
  %332 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %69)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %332, i8* %329)
          to label %call_success185 unwind label %cleanup_landingpad

call_success185:                                  ; preds = %when_next182
  %333 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %332, %struct.ObjHeader** %70)
          to label %call_success186 unwind label %cleanup_landingpad

call_success186:                                  ; preds = %call_success185
  unreachable

when_exit181:                                     ; preds = %call_success184
  %334 = phi i1 [ %331, %call_success184 ]
  br i1 %334, label %while_loop179, label %loop_exit177

loop_exit177:                                     ; preds = %when_exit181
  br label %returnable_block_exit206

returnable_block_exit206:                         ; preds = %loop_exit177
  %335 = phi %struct.ObjHeader* [ %306, %loop_exit177 ]
  br label %returnable_block_exit207

returnable_block_exit207:                         ; preds = %returnable_block_exit206
  %336 = phi %struct.ObjHeader* [ %335, %returnable_block_exit206 ]
  %337 = invoke double @"kfun:kotlin.collections.sum@kotlin.collections.Iterable<kotlin.Double>.()ValueType"(%struct.ObjHeader* %336)
          to label %call_success208 unwind label %cleanup_landingpad

call_success208:                                  ; preds = %returnable_block_exit207
  %338 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.Double)kotlin.text.StringBuilder"(%struct.ObjHeader* %303, double %337, %struct.ObjHeader** %77)
          to label %call_success209 unwind label %cleanup_landingpad

call_success209:                                  ; preds = %call_success208
  %339 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %303, %struct.ObjHeader* @"kstr:rcg7GeeTSRscbqD9i0bNnzLlkvw=", %struct.ObjHeader** %78)
          to label %call_success210 unwind label %cleanup_landingpad

call_success210:                                  ; preds = %call_success209
  %340 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.toString()kotlin.String"(%struct.ObjHeader* %303, %struct.ObjHeader** %79)
          to label %call_success211 unwind label %cleanup_landingpad

call_success211:                                  ; preds = %call_success210
  invoke void @Kotlin_io_Console_println(%struct.ObjHeader* %340)
          to label %call_success212 unwind label %cleanup_landingpad

call_success212:                                  ; preds = %call_success211
  invoke void @Kotlin_io_Console_println(%struct.ObjHeader* @"kstr:1kstNoHxVFiIrergpZzO061I+gk=")
          to label %call_success213 unwind label %cleanup_landingpad

call_success213:                                  ; preds = %call_success212
  invoke void @Kotlin_io_Console_println(%struct.ObjHeader* @"kstr:8W7bC9lLk1qP2vMqgu62TfkM3+g=")
          to label %call_success214 unwind label %cleanup_landingpad

call_success214:                                  ; preds = %call_success213
  %341 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.collections.HashMap", %struct.ObjHeader** %80)
  invoke void @"kfun:kotlin.collections.HashMap.<init>()kotlin.collections.HashMap<#GENERIC,#GENERIC>"(%struct.ObjHeader* %341)
          to label %call_success215 unwind label %cleanup_landingpad

call_success215:                                  ; preds = %call_success214
  %342 = load %struct.ObjHeader*, %struct.ObjHeader** %comissoes
  %343 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %342)
          to label %call_success216 unwind label %cleanup_landingpad

call_success216:                                  ; preds = %call_success215
  %344 = icmp eq i8* %343, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList_285" to i8*)
  br i1 %344, label %when_case219, label %when_next218

when_case219:                                     ; preds = %call_success216
  %345 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.ArrayList.iterator()kotlin.collections.MutableIterator<#GENERIC>_491"(%struct.ObjHeader* %342, %struct.ObjHeader** %81)
          to label %call_success220 unwind label %cleanup_landingpad

call_success220:                                  ; preds = %when_case219
  br label %when_exit217

when_next218:                                     ; preds = %call_success216
  %346 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %82)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %346, i8* %343)
          to label %call_success221 unwind label %cleanup_landingpad

call_success221:                                  ; preds = %when_next218
  %347 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %346, %struct.ObjHeader** %83)
          to label %call_success222 unwind label %cleanup_landingpad

call_success222:                                  ; preds = %call_success221
  unreachable

when_exit217:                                     ; preds = %call_success220
  %348 = phi %struct.ObjHeader* [ %345, %call_success220 ]
  br label %loop_check224

while_loop225:                                    ; preds = %when_exit227
  %349 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %348)
          to label %call_success239 unwind label %cleanup_landingpad

call_success239:                                  ; preds = %while_loop225
  %350 = icmp eq i8* %349, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList.Itr_655" to i8*)
  br i1 %350, label %when_case242, label %when_next241

when_case242:                                     ; preds = %call_success239
  %351 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kotlin.collections.ArrayList.Itr.next#internal_1190"(%struct.ObjHeader* %348, %struct.ObjHeader** %86)
          to label %call_success243 unwind label %cleanup_landingpad

call_success243:                                  ; preds = %when_case242
  br label %when_exit240

when_next241:                                     ; preds = %call_success239
  %352 = icmp eq i8* %349, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.AbstractList.IteratorImpl_270" to i8*)
  br i1 %352, label %when_case245, label %when_next244

when_case245:                                     ; preds = %when_next241
  %353 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kotlin.collections.AbstractList.IteratorImpl.next#internal_421"(%struct.ObjHeader* %348, %struct.ObjHeader** %87)
          to label %call_success246 unwind label %cleanup_landingpad

call_success246:                                  ; preds = %when_case245
  br label %when_exit240

when_next244:                                     ; preds = %when_next241
  %354 = icmp eq i8* %349, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.EmptyIterator_282" to i8*)
  br i1 %354, label %when_case248, label %when_next247

when_case248:                                     ; preds = %when_next244
  %355 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.EmptyIterator.next()kotlin.Nothing_465"(%struct.ObjHeader* %348, %struct.ObjHeader** %88)
          to label %call_success249 unwind label %cleanup_landingpad

call_success249:                                  ; preds = %when_case248
  br label %when_exit240

when_next247:                                     ; preds = %when_next244
  %356 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %89)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %356, i8* %349)
          to label %call_success250 unwind label %cleanup_landingpad

call_success250:                                  ; preds = %when_next247
  %357 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %356, %struct.ObjHeader** %90)
          to label %call_success251 unwind label %cleanup_landingpad

call_success251:                                  ; preds = %call_success250
  unreachable

when_exit240:                                     ; preds = %call_success249, %call_success246, %call_success243
  %358 = phi %struct.ObjHeader* [ %351, %call_success243 ], [ %353, %call_success246 ], [ %355, %call_success249 ]
  %359 = invoke %struct.ObjHeader* @"kfun:Comissao.<get-pedido>()Pedido"(%struct.ObjHeader* %358, %struct.ObjHeader** %91)
          to label %call_success252 unwind label %cleanup_landingpad

call_success252:                                  ; preds = %when_exit240
  %360 = invoke i32 @"kfun:Pedido.<get-codigo>()ValueType"(%struct.ObjHeader* %359)
          to label %call_success253 unwind label %cleanup_landingpad

call_success253:                                  ; preds = %call_success252
  br label %returnable_block_exit254

unreachable256:                                   ; No predecessors!
  %361 = invoke i32 @"kfun:konan.internal.IntBox.<get-value>()ValueType"(%struct.ObjHeader* undef)
          to label %call_success255 unwind label %cleanup_landingpad

call_success255:                                  ; preds = %unreachable256
  unreachable

returnable_block_exit254:                         ; preds = %call_success253
  %362 = phi i32 [ %360, %call_success253 ]
  %363 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %341)
          to label %call_success257 unwind label %cleanup_landingpad

call_success257:                                  ; preds = %returnable_block_exit254
  %364 = icmp eq i8* %363, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.HashMap_298" to i8*)
  br i1 %364, label %when_case260, label %when_next259

when_case260:                                     ; preds = %call_success257
  %365 = invoke %struct.ObjHeader* @Kotlin_boxInt(i32 %362, %struct.ObjHeader** %92)
          to label %call_success261 unwind label %cleanup_landingpad

call_success261:                                  ; preds = %when_case260
  %366 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.HashMap.get(#GENERIC)#GENERIC_568"(%struct.ObjHeader* %341, %struct.ObjHeader* %365, %struct.ObjHeader** %93)
          to label %call_success262 unwind label %cleanup_landingpad

call_success262:                                  ; preds = %call_success261
  br label %when_exit258

when_next259:                                     ; preds = %call_success257
  %367 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %94)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %367, i8* %363)
          to label %call_success263 unwind label %cleanup_landingpad

call_success263:                                  ; preds = %when_next259
  %368 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %367, %struct.ObjHeader** %95)
          to label %call_success264 unwind label %cleanup_landingpad

call_success264:                                  ; preds = %call_success263
  unreachable

when_exit258:                                     ; preds = %call_success262
  %369 = phi %struct.ObjHeader* [ %366, %call_success262 ]
  %370 = icmp eq %struct.ObjHeader* %369, null
  br i1 %370, label %when_case267, label %when_next266

when_case267:                                     ; preds = %when_exit258
  %371 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.collections.ArrayList", %struct.ObjHeader** %96)
  invoke void @"kfun:kotlin.collections.ArrayList.<init>()kotlin.collections.ArrayList<#GENERIC>"(%struct.ObjHeader* %371)
          to label %call_success268 unwind label %cleanup_landingpad

call_success268:                                  ; preds = %when_case267
  br label %returnable_block_exit269

returnable_block_exit269:                         ; preds = %call_success268
  %372 = phi %struct.ObjHeader* [ %371, %call_success268 ]
  %373 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %341)
          to label %call_success270 unwind label %cleanup_landingpad

call_success270:                                  ; preds = %returnable_block_exit269
  %374 = icmp eq i8* %373, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.HashMap_298" to i8*)
  br i1 %374, label %when_case273, label %when_next272

when_case273:                                     ; preds = %call_success270
  %375 = invoke %struct.ObjHeader* @Kotlin_boxInt(i32 %362, %struct.ObjHeader** %97)
          to label %call_success274 unwind label %cleanup_landingpad

call_success274:                                  ; preds = %when_case273
  %376 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.HashMap.put(#GENERIC;#GENERIC)#GENERIC_566"(%struct.ObjHeader* %341, %struct.ObjHeader* %375, %struct.ObjHeader* %372, %struct.ObjHeader** %98)
          to label %call_success275 unwind label %cleanup_landingpad

call_success275:                                  ; preds = %call_success274
  br label %when_exit271

when_next272:                                     ; preds = %call_success270
  %377 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %99)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %377, i8* %373)
          to label %call_success276 unwind label %cleanup_landingpad

call_success276:                                  ; preds = %when_next272
  %378 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %377, %struct.ObjHeader** %100)
          to label %call_success277 unwind label %cleanup_landingpad

call_success277:                                  ; preds = %call_success276
  unreachable

when_exit271:                                     ; preds = %call_success275
  %379 = phi %struct.ObjHeader* [ %376, %call_success275 ]
  br label %when_exit265

when_next266:                                     ; preds = %when_exit258
  br label %when_exit265

when_exit265:                                     ; preds = %when_next266, %when_exit271
  %380 = phi %struct.ObjHeader* [ %372, %when_exit271 ], [ %369, %when_next266 ]
  br label %returnable_block_exit278

returnable_block_exit278:                         ; preds = %when_exit265
  %381 = phi %struct.ObjHeader* [ %380, %when_exit265 ]
  %382 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %381, i32 0, i32 0
  %383 = load %struct.TypeInfo*, %struct.TypeInfo** %382
  %384 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %383, i32 0, i32 0
  %385 = load %struct.TypeInfo*, %struct.TypeInfo** %384
  %386 = call i8* @LookupOpenMethod(%struct.TypeInfo* %385, i64 2420917605731177253)
  %387 = bitcast i8* %386 to i1 (%struct.ObjHeader*, %struct.ObjHeader*)*
  %388 = invoke i1 %387(%struct.ObjHeader* %381, %struct.ObjHeader* %358)
          to label %call_success279 unwind label %cleanup_landingpad

call_success279:                                  ; preds = %returnable_block_exit278
  br label %loop_check224

loop_check224:                                    ; preds = %call_success279, %when_exit217
  %389 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %348)
          to label %call_success226 unwind label %cleanup_landingpad

call_success226:                                  ; preds = %loop_check224
  %390 = icmp eq i8* %389, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList.Itr_655" to i8*)
  br i1 %390, label %when_case229, label %when_next228

when_case229:                                     ; preds = %call_success226
  %391 = invoke i1 @"private_functions_<stdlib>_kotlin.collections.ArrayList.Itr.hasNext#internal_1188"(%struct.ObjHeader* %348)
          to label %call_success230 unwind label %cleanup_landingpad

call_success230:                                  ; preds = %when_case229
  br label %when_exit227

when_next228:                                     ; preds = %call_success226
  %392 = icmp eq i8* %389, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.AbstractList.IteratorImpl_270" to i8*)
  br i1 %392, label %when_case232, label %when_next231

when_case232:                                     ; preds = %when_next228
  %393 = invoke i1 @"private_functions_<stdlib>_kotlin.collections.AbstractList.IteratorImpl.hasNext#internal_420"(%struct.ObjHeader* %348)
          to label %call_success233 unwind label %cleanup_landingpad

call_success233:                                  ; preds = %when_case232
  br label %when_exit227

when_next231:                                     ; preds = %when_next228
  %394 = icmp eq i8* %389, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.EmptyIterator_282" to i8*)
  br i1 %394, label %when_case235, label %when_next234

when_case235:                                     ; preds = %when_next231
  %395 = invoke i1 @"private_functions_<stdlib>_kfun:kotlin.collections.EmptyIterator.hasNext()ValueType_463"(%struct.ObjHeader* %348)
          to label %call_success236 unwind label %cleanup_landingpad

call_success236:                                  ; preds = %when_case235
  br label %when_exit227

when_next234:                                     ; preds = %when_next231
  %396 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %84)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %396, i8* %389)
          to label %call_success237 unwind label %cleanup_landingpad

call_success237:                                  ; preds = %when_next234
  %397 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %396, %struct.ObjHeader** %85)
          to label %call_success238 unwind label %cleanup_landingpad

call_success238:                                  ; preds = %call_success237
  unreachable

when_exit227:                                     ; preds = %call_success236, %call_success233, %call_success230
  %398 = phi i1 [ %391, %call_success230 ], [ %393, %call_success233 ], [ %395, %call_success236 ]
  br i1 %398, label %while_loop225, label %loop_exit223

loop_exit223:                                     ; preds = %when_exit227
  br label %returnable_block_exit280

returnable_block_exit280:                         ; preds = %loop_exit223
  %399 = phi %struct.ObjHeader* [ %341, %loop_exit223 ]
  br label %returnable_block_exit281

returnable_block_exit281:                         ; preds = %returnable_block_exit280
  %400 = phi %struct.ObjHeader* [ %399, %returnable_block_exit280 ]
  %401 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %400)
          to label %call_success282 unwind label %cleanup_landingpad

call_success282:                                  ; preds = %returnable_block_exit281
  %402 = icmp eq i8* %401, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.HashMap_298" to i8*)
  br i1 %402, label %when_case285, label %when_next284

when_case285:                                     ; preds = %call_success282
  %403 = invoke i32 @"private_functions_<stdlib>_kfun:kotlin.collections.HashMap.<get-size>()ValueType_563"(%struct.ObjHeader* %400)
          to label %call_success286 unwind label %cleanup_landingpad

call_success286:                                  ; preds = %when_case285
  br label %when_exit283

when_next284:                                     ; preds = %call_success282
  %404 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %101)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %404, i8* %401)
          to label %call_success287 unwind label %cleanup_landingpad

call_success287:                                  ; preds = %when_next284
  %405 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %404, %struct.ObjHeader** %102)
          to label %call_success288 unwind label %cleanup_landingpad

call_success288:                                  ; preds = %call_success287
  unreachable

when_exit283:                                     ; preds = %call_success286
  %406 = phi i32 [ %403, %call_success286 ]
  %407 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.collections.ArrayList", %struct.ObjHeader** %103)
  invoke void @"kfun:kotlin.collections.ArrayList.<init>(kotlin.Int)kotlin.collections.ArrayList<#GENERIC>"(%struct.ObjHeader* %407, i32 %406)
          to label %call_success289 unwind label %cleanup_landingpad

call_success289:                                  ; preds = %when_exit283
  %408 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %400)
          to label %call_success290 unwind label %cleanup_landingpad

call_success290:                                  ; preds = %call_success289
  %409 = icmp eq i8* %408, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.HashMap_298" to i8*)
  br i1 %409, label %when_case293, label %when_next292

when_case293:                                     ; preds = %call_success290
  %410 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.HashMap.<get-entries>()kotlin.collections.MutableSet<kotlin.collections.MutableMap.MutableEntry<#GENERIC,#GENERIC>>_569"(%struct.ObjHeader* %400, %struct.ObjHeader** %104)
          to label %call_success294 unwind label %cleanup_landingpad

call_success294:                                  ; preds = %when_case293
  br label %when_exit291

when_next292:                                     ; preds = %call_success290
  %411 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %105)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %411, i8* %408)
          to label %call_success295 unwind label %cleanup_landingpad

call_success295:                                  ; preds = %when_next292
  %412 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %411, %struct.ObjHeader** %106)
          to label %call_success296 unwind label %cleanup_landingpad

call_success296:                                  ; preds = %call_success295
  unreachable

when_exit291:                                     ; preds = %call_success294
  %413 = phi %struct.ObjHeader* [ %410, %call_success294 ]
  %414 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %413)
          to label %call_success297 unwind label %cleanup_landingpad

call_success297:                                  ; preds = %when_exit291
  %415 = icmp eq i8* %414, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.HashMapEntrySet_666" to i8*)
  br i1 %415, label %when_case300, label %when_next299

when_case300:                                     ; preds = %call_success297
  %416 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.HashMapEntrySet.iterator()kotlin.collections.MutableIterator<kotlin.collections.MutableMap.MutableEntry<#GENERIC,#GENERIC>>_1301"(%struct.ObjHeader* %413, %struct.ObjHeader** %107)
          to label %call_success301 unwind label %cleanup_landingpad

call_success301:                                  ; preds = %when_case300
  br label %when_exit298

when_next299:                                     ; preds = %call_success297
  %417 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %108)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %417, i8* %414)
          to label %call_success302 unwind label %cleanup_landingpad

call_success302:                                  ; preds = %when_next299
  %418 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %417, %struct.ObjHeader** %109)
          to label %call_success303 unwind label %cleanup_landingpad

call_success303:                                  ; preds = %call_success302
  unreachable

when_exit298:                                     ; preds = %call_success301
  %419 = phi %struct.ObjHeader* [ %416, %call_success301 ]
  br label %returnable_block_exit304

returnable_block_exit304:                         ; preds = %when_exit298
  %420 = phi %struct.ObjHeader* [ %419, %when_exit298 ]
  br label %loop_check306

while_loop307:                                    ; preds = %when_exit309
  %421 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %420)
          to label %call_success318 unwind label %cleanup_landingpad

call_success318:                                  ; preds = %while_loop307
  %422 = icmp eq i8* %421, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.HashMap.EntriesItr_671" to i8*)
  br i1 %422, label %when_case321, label %when_next320

when_case321:                                     ; preds = %call_success318
  %423 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.HashMap.EntriesItr.next()kotlin.collections.HashMap.EntryRef<#GENERIC,#GENERIC>_1314"(%struct.ObjHeader* %420, %struct.ObjHeader** %112)
          to label %call_success322 unwind label %cleanup_landingpad

call_success322:                                  ; preds = %when_case321
  br label %when_exit319

when_next320:                                     ; preds = %call_success318
  %424 = icmp eq i8* %421, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.HashMap.KeysItr_668" to i8*)
  br i1 %424, label %when_case324, label %when_next323

when_case324:                                     ; preds = %when_next320
  %425 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.HashMap.KeysItr.next()#GENERIC_1312"(%struct.ObjHeader* %420, %struct.ObjHeader** %113)
          to label %call_success325 unwind label %cleanup_landingpad

call_success325:                                  ; preds = %when_case324
  br label %when_exit319

when_next323:                                     ; preds = %when_next320
  %426 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %114)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %426, i8* %421)
          to label %call_success326 unwind label %cleanup_landingpad

call_success326:                                  ; preds = %when_next323
  %427 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %426, %struct.ObjHeader** %115)
          to label %call_success327 unwind label %cleanup_landingpad

call_success327:                                  ; preds = %call_success326
  unreachable

when_exit319:                                     ; preds = %call_success325, %call_success322
  %428 = phi %struct.ObjHeader* [ %423, %call_success322 ], [ %425, %call_success325 ]
  %429 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %428, i32 0, i32 0
  %430 = load %struct.TypeInfo*, %struct.TypeInfo** %429
  %431 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %430, i32 0, i32 0
  %432 = load %struct.TypeInfo*, %struct.TypeInfo** %431
  %433 = call i8* @LookupOpenMethod(%struct.TypeInfo* %432, i64 8914594142390655963)
  %434 = bitcast i8* %433 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*
  %435 = invoke %struct.ObjHeader* %434(%struct.ObjHeader* %428, %struct.ObjHeader** %116)
          to label %call_success328 unwind label %cleanup_landingpad

call_success328:                                  ; preds = %when_exit319
  %436 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %428, i32 0, i32 0
  %437 = load %struct.TypeInfo*, %struct.TypeInfo** %436
  %438 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %437, i32 0, i32 0
  %439 = load %struct.TypeInfo*, %struct.TypeInfo** %438
  %440 = call i8* @LookupOpenMethod(%struct.TypeInfo* %439, i64 -8385379656260597040)
  %441 = bitcast i8* %440 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*
  %442 = invoke %struct.ObjHeader* %441(%struct.ObjHeader* %428, %struct.ObjHeader** %117)
          to label %call_success329 unwind label %cleanup_landingpad

call_success329:                                  ; preds = %call_success328
  %443 = invoke i32 @"kfun:kotlin.collections.collectionSizeOrDefault$stdlib@kotlin.collections.Iterable<#GENERIC>.(kotlin.Int)Generic"(%struct.ObjHeader* %442, i32 10)
          to label %call_success330 unwind label %cleanup_landingpad

call_success330:                                  ; preds = %call_success329
  %444 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.collections.ArrayList", %struct.ObjHeader** %118)
  invoke void @"kfun:kotlin.collections.ArrayList.<init>(kotlin.Int)kotlin.collections.ArrayList<#GENERIC>"(%struct.ObjHeader* %444, i32 %443)
          to label %call_success331 unwind label %cleanup_landingpad

call_success331:                                  ; preds = %call_success330
  %445 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %442, i32 0, i32 0
  %446 = load %struct.TypeInfo*, %struct.TypeInfo** %445
  %447 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %446, i32 0, i32 0
  %448 = load %struct.TypeInfo*, %struct.TypeInfo** %447
  %449 = call i8* @LookupOpenMethod(%struct.TypeInfo* %448, i64 -100816021207723600)
  %450 = bitcast i8* %449 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*
  %451 = invoke %struct.ObjHeader* %450(%struct.ObjHeader* %442, %struct.ObjHeader** %119)
          to label %call_success332 unwind label %cleanup_landingpad

call_success332:                                  ; preds = %call_success331
  br label %loop_check334

while_loop335:                                    ; preds = %call_success336
  %452 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %451, i32 0, i32 0
  %453 = load %struct.TypeInfo*, %struct.TypeInfo** %452
  %454 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %453, i32 0, i32 0
  %455 = load %struct.TypeInfo*, %struct.TypeInfo** %454
  %456 = call i8* @LookupOpenMethod(%struct.TypeInfo* %455, i64 8075570542540054737)
  %457 = bitcast i8* %456 to %struct.ObjHeader* (%struct.ObjHeader*, %struct.ObjHeader**)*
  %458 = invoke %struct.ObjHeader* %457(%struct.ObjHeader* %451, %struct.ObjHeader** %120)
          to label %call_success337 unwind label %cleanup_landingpad

call_success337:                                  ; preds = %while_loop335
  %459 = invoke double @"kfun:Comissao.<get-valor>()ValueType"(%struct.ObjHeader* %458)
          to label %call_success338 unwind label %cleanup_landingpad

call_success338:                                  ; preds = %call_success337
  br label %returnable_block_exit339

unreachable341:                                   ; No predecessors!
  %460 = invoke double @"kfun:konan.internal.DoubleBox.<get-value>()ValueType"(%struct.ObjHeader* undef)
          to label %call_success340 unwind label %cleanup_landingpad

call_success340:                                  ; preds = %unreachable341
  unreachable

returnable_block_exit339:                         ; preds = %call_success338
  %461 = phi double [ %459, %call_success338 ]
  %462 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %444)
          to label %call_success342 unwind label %cleanup_landingpad

call_success342:                                  ; preds = %returnable_block_exit339
  %463 = icmp eq i8* %462, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList_285" to i8*)
  br i1 %463, label %when_case345, label %when_next344

when_case345:                                     ; preds = %call_success342
  %464 = invoke %struct.ObjHeader* @Kotlin_boxDouble(double %461, %struct.ObjHeader** %121)
          to label %call_success346 unwind label %cleanup_landingpad

call_success346:                                  ; preds = %when_case345
  %465 = invoke i1 @"private_functions_<stdlib>_kfun:kotlin.collections.ArrayList.add(#GENERIC)ValueType_494"(%struct.ObjHeader* %444, %struct.ObjHeader* %464)
          to label %call_success347 unwind label %cleanup_landingpad

call_success347:                                  ; preds = %call_success346
  br label %when_exit343

when_next344:                                     ; preds = %call_success342
  %466 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %122)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %466, i8* %462)
          to label %call_success348 unwind label %cleanup_landingpad

call_success348:                                  ; preds = %when_next344
  %467 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %466, %struct.ObjHeader** %123)
          to label %call_success349 unwind label %cleanup_landingpad

call_success349:                                  ; preds = %call_success348
  unreachable

when_exit343:                                     ; preds = %call_success347
  %468 = phi i1 [ %465, %call_success347 ]
  br label %loop_check334

loop_check334:                                    ; preds = %when_exit343, %call_success332
  %469 = getelementptr inbounds %struct.ObjHeader, %struct.ObjHeader* %451, i32 0, i32 0
  %470 = load %struct.TypeInfo*, %struct.TypeInfo** %469
  %471 = getelementptr inbounds %struct.TypeInfo, %struct.TypeInfo* %470, i32 0, i32 0
  %472 = load %struct.TypeInfo*, %struct.TypeInfo** %471
  %473 = call i8* @LookupOpenMethod(%struct.TypeInfo* %472, i64 5723253017592782886)
  %474 = bitcast i8* %473 to i1 (%struct.ObjHeader*)*
  %475 = invoke i1 %474(%struct.ObjHeader* %451)
          to label %call_success336 unwind label %cleanup_landingpad

call_success336:                                  ; preds = %loop_check334
  br i1 %475, label %while_loop335, label %loop_exit333

loop_exit333:                                     ; preds = %call_success336
  br label %returnable_block_exit350

returnable_block_exit350:                         ; preds = %loop_exit333
  %476 = phi %struct.ObjHeader* [ %444, %loop_exit333 ]
  br label %returnable_block_exit351

returnable_block_exit351:                         ; preds = %returnable_block_exit350
  %477 = phi %struct.ObjHeader* [ %476, %returnable_block_exit350 ]
  %478 = invoke double @"kfun:kotlin.collections.sum@kotlin.collections.Iterable<kotlin.Double>.()ValueType"(%struct.ObjHeader* %477)
          to label %call_success352 unwind label %cleanup_landingpad

call_success352:                                  ; preds = %returnable_block_exit351
  %479 = invoke %struct.ObjHeader* @Kotlin_boxDouble(double %478, %struct.ObjHeader** %124)
          to label %call_success353 unwind label %cleanup_landingpad

call_success353:                                  ; preds = %call_success352
  %480 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.Pair", %struct.ObjHeader** %125)
  invoke void @"kfun:kotlin.Pair.<init>(#GENERIC;#GENERIC)kotlin.Pair<#GENERIC,#GENERIC>"(%struct.ObjHeader* %480, %struct.ObjHeader* %435, %struct.ObjHeader* %479)
          to label %call_success354 unwind label %cleanup_landingpad

call_success354:                                  ; preds = %call_success353
  br label %returnable_block_exit355

returnable_block_exit355:                         ; preds = %call_success354
  %481 = phi %struct.ObjHeader* [ %480, %call_success354 ]
  %482 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %407)
          to label %call_success356 unwind label %cleanup_landingpad

call_success356:                                  ; preds = %returnable_block_exit355
  %483 = icmp eq i8* %482, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList_285" to i8*)
  br i1 %483, label %when_case359, label %when_next358

when_case359:                                     ; preds = %call_success356
  %484 = invoke i1 @"private_functions_<stdlib>_kfun:kotlin.collections.ArrayList.add(#GENERIC)ValueType_494"(%struct.ObjHeader* %407, %struct.ObjHeader* %481)
          to label %call_success360 unwind label %cleanup_landingpad

call_success360:                                  ; preds = %when_case359
  br label %when_exit357

when_next358:                                     ; preds = %call_success356
  %485 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %126)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %485, i8* %482)
          to label %call_success361 unwind label %cleanup_landingpad

call_success361:                                  ; preds = %when_next358
  %486 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %485, %struct.ObjHeader** %127)
          to label %call_success362 unwind label %cleanup_landingpad

call_success362:                                  ; preds = %call_success361
  unreachable

when_exit357:                                     ; preds = %call_success360
  %487 = phi i1 [ %484, %call_success360 ]
  br label %loop_check306

loop_check306:                                    ; preds = %when_exit357, %returnable_block_exit304
  %488 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %420)
          to label %call_success308 unwind label %cleanup_landingpad

call_success308:                                  ; preds = %loop_check306
  %489 = icmp eq i8* %488, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.HashMap.EntriesItr_671" to i8*)
  br i1 %489, label %when_case311, label %when_next310

when_case311:                                     ; preds = %call_success308
  %490 = invoke i1 @"private_functions_<stdlib>_kfun:kotlin.collections.HashMap.Itr.hasNext()ValueType_1311"(%struct.ObjHeader* %420)
          to label %call_success312 unwind label %cleanup_landingpad

call_success312:                                  ; preds = %when_case311
  br label %when_exit309

when_next310:                                     ; preds = %call_success308
  %491 = icmp eq i8* %488, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.HashMap.KeysItr_668" to i8*)
  br i1 %491, label %when_case314, label %when_next313

when_case314:                                     ; preds = %when_next310
  %492 = invoke i1 @"private_functions_<stdlib>_kfun:kotlin.collections.HashMap.Itr.hasNext()ValueType_1311"(%struct.ObjHeader* %420)
          to label %call_success315 unwind label %cleanup_landingpad

call_success315:                                  ; preds = %when_case314
  br label %when_exit309

when_next313:                                     ; preds = %when_next310
  %493 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %110)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %493, i8* %488)
          to label %call_success316 unwind label %cleanup_landingpad

call_success316:                                  ; preds = %when_next313
  %494 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %493, %struct.ObjHeader** %111)
          to label %call_success317 unwind label %cleanup_landingpad

call_success317:                                  ; preds = %call_success316
  unreachable

when_exit309:                                     ; preds = %call_success315, %call_success312
  %495 = phi i1 [ %490, %call_success312 ], [ %492, %call_success315 ]
  br i1 %495, label %while_loop307, label %loop_exit305

loop_exit305:                                     ; preds = %when_exit309
  br label %returnable_block_exit363

returnable_block_exit363:                         ; preds = %loop_exit305
  %496 = phi %struct.ObjHeader* [ %407, %loop_exit305 ]
  br label %returnable_block_exit364

returnable_block_exit364:                         ; preds = %returnable_block_exit363
  %497 = phi %struct.ObjHeader* [ %496, %returnable_block_exit363 ]
  %498 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %497)
          to label %call_success365 unwind label %cleanup_landingpad

call_success365:                                  ; preds = %returnable_block_exit364
  %499 = icmp eq i8* %498, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList_285" to i8*)
  br i1 %499, label %when_case368, label %when_next367

when_case368:                                     ; preds = %call_success365
  %500 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.ArrayList.iterator()kotlin.collections.MutableIterator<#GENERIC>_491"(%struct.ObjHeader* %497, %struct.ObjHeader** %128)
          to label %call_success369 unwind label %cleanup_landingpad

call_success369:                                  ; preds = %when_case368
  br label %when_exit366

when_next367:                                     ; preds = %call_success365
  %501 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %129)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %501, i8* %498)
          to label %call_success370 unwind label %cleanup_landingpad

call_success370:                                  ; preds = %when_next367
  %502 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %501, %struct.ObjHeader** %130)
          to label %call_success371 unwind label %cleanup_landingpad

call_success371:                                  ; preds = %call_success370
  unreachable

when_exit366:                                     ; preds = %call_success369
  %503 = phi %struct.ObjHeader* [ %500, %call_success369 ]
  br label %loop_check373

while_loop374:                                    ; preds = %when_exit376
  %504 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %503)
          to label %call_success388 unwind label %cleanup_landingpad

call_success388:                                  ; preds = %while_loop374
  %505 = icmp eq i8* %504, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList.Itr_655" to i8*)
  br i1 %505, label %when_case391, label %when_next390

when_case391:                                     ; preds = %call_success388
  %506 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kotlin.collections.ArrayList.Itr.next#internal_1190"(%struct.ObjHeader* %503, %struct.ObjHeader** %133)
          to label %call_success392 unwind label %cleanup_landingpad

call_success392:                                  ; preds = %when_case391
  br label %when_exit389

when_next390:                                     ; preds = %call_success388
  %507 = icmp eq i8* %504, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.AbstractList.IteratorImpl_270" to i8*)
  br i1 %507, label %when_case394, label %when_next393

when_case394:                                     ; preds = %when_next390
  %508 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kotlin.collections.AbstractList.IteratorImpl.next#internal_421"(%struct.ObjHeader* %503, %struct.ObjHeader** %134)
          to label %call_success395 unwind label %cleanup_landingpad

call_success395:                                  ; preds = %when_case394
  br label %when_exit389

when_next393:                                     ; preds = %when_next390
  %509 = icmp eq i8* %504, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.EmptyIterator_282" to i8*)
  br i1 %509, label %when_case397, label %when_next396

when_case397:                                     ; preds = %when_next393
  %510 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.EmptyIterator.next()kotlin.Nothing_465"(%struct.ObjHeader* %503, %struct.ObjHeader** %135)
          to label %call_success398 unwind label %cleanup_landingpad

call_success398:                                  ; preds = %when_case397
  br label %when_exit389

when_next396:                                     ; preds = %when_next393
  %511 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %136)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %511, i8* %504)
          to label %call_success399 unwind label %cleanup_landingpad

call_success399:                                  ; preds = %when_next396
  %512 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %511, %struct.ObjHeader** %137)
          to label %call_success400 unwind label %cleanup_landingpad

call_success400:                                  ; preds = %call_success399
  unreachable

when_exit389:                                     ; preds = %call_success398, %call_success395, %call_success392
  %513 = phi %struct.ObjHeader* [ %506, %call_success392 ], [ %508, %call_success395 ], [ %510, %call_success398 ]
  %514 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.text.StringBuilder", %struct.ObjHeader** %138)
  invoke void @"kfun:kotlin.text.StringBuilder.<init>()kotlin.text.StringBuilder"(%struct.ObjHeader* %514)
          to label %call_success401 unwind label %cleanup_landingpad

call_success401:                                  ; preds = %when_exit389
  %515 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %514, %struct.ObjHeader* @"kstr:ZpgmF7tV2NeVKh5m+gLbgdYWayc=", %struct.ObjHeader** %139)
          to label %call_success402 unwind label %cleanup_landingpad

call_success402:                                  ; preds = %call_success401
  %516 = invoke %struct.ObjHeader* @"kfun:kotlin.Pair.<get-first>()#GENERIC"(%struct.ObjHeader* %513, %struct.ObjHeader** %140)
          to label %call_success403 unwind label %cleanup_landingpad

call_success403:                                  ; preds = %call_success402
  %517 = invoke i32 @"kfun:konan.internal.IntBox.<get-value>()ValueType"(%struct.ObjHeader* %516)
          to label %call_success404 unwind label %cleanup_landingpad

call_success404:                                  ; preds = %call_success403
  %518 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.Int)kotlin.text.StringBuilder"(%struct.ObjHeader* %514, i32 %517, %struct.ObjHeader** %141)
          to label %call_success405 unwind label %cleanup_landingpad

call_success405:                                  ; preds = %call_success404
  %519 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %514, %struct.ObjHeader* @"kstr:uFjLKCYX+wlW2WAhXI6E0cz5CcY=", %struct.ObjHeader** %142)
          to label %call_success406 unwind label %cleanup_landingpad

call_success406:                                  ; preds = %call_success405
  %520 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %514, %struct.ObjHeader* @"kstr:rcg7GeeTSRscbqD9i0bNnzLlkvw=", %struct.ObjHeader** %143)
          to label %call_success407 unwind label %cleanup_landingpad

call_success407:                                  ; preds = %call_success406
  %521 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %514, %struct.ObjHeader* @"kstr:+PBn6EMPaf1nAiEJ7yAGVZCAKOE=", %struct.ObjHeader** %144)
          to label %call_success408 unwind label %cleanup_landingpad

call_success408:                                  ; preds = %call_success407
  %522 = invoke %struct.ObjHeader* @"kfun:kotlin.Pair.<get-second>()#GENERIC"(%struct.ObjHeader* %513, %struct.ObjHeader** %145)
          to label %call_success409 unwind label %cleanup_landingpad

call_success409:                                  ; preds = %call_success408
  %523 = invoke double @"kfun:konan.internal.DoubleBox.<get-value>()ValueType"(%struct.ObjHeader* %522)
          to label %call_success410 unwind label %cleanup_landingpad

call_success410:                                  ; preds = %call_success409
  %524 = invoke %struct.ObjHeader* @"kfun:toPrecision@kotlin.Double.(kotlin.Int)kotlin.String"(double %523, i32 2, %struct.ObjHeader** %146)
          to label %call_success411 unwind label %cleanup_landingpad

call_success411:                                  ; preds = %call_success410
  %525 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %514, %struct.ObjHeader* %524, %struct.ObjHeader** %147)
          to label %call_success412 unwind label %cleanup_landingpad

call_success412:                                  ; preds = %call_success411
  %526 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %514, %struct.ObjHeader* @"kstr:rcg7GeeTSRscbqD9i0bNnzLlkvw=", %struct.ObjHeader** %148)
          to label %call_success413 unwind label %cleanup_landingpad

call_success413:                                  ; preds = %call_success412
  %527 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.toString()kotlin.String"(%struct.ObjHeader* %514, %struct.ObjHeader** %149)
          to label %call_success414 unwind label %cleanup_landingpad

call_success414:                                  ; preds = %call_success413
  invoke void @Kotlin_io_Console_println(%struct.ObjHeader* %527)
          to label %call_success415 unwind label %cleanup_landingpad

call_success415:                                  ; preds = %call_success414
  br label %returnable_block_exit416

returnable_block_exit416:                         ; preds = %call_success415
  br label %loop_check373

loop_check373:                                    ; preds = %returnable_block_exit416, %when_exit366
  %528 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %503)
          to label %call_success375 unwind label %cleanup_landingpad

call_success375:                                  ; preds = %loop_check373
  %529 = icmp eq i8* %528, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList.Itr_655" to i8*)
  br i1 %529, label %when_case378, label %when_next377

when_case378:                                     ; preds = %call_success375
  %530 = invoke i1 @"private_functions_<stdlib>_kotlin.collections.ArrayList.Itr.hasNext#internal_1188"(%struct.ObjHeader* %503)
          to label %call_success379 unwind label %cleanup_landingpad

call_success379:                                  ; preds = %when_case378
  br label %when_exit376

when_next377:                                     ; preds = %call_success375
  %531 = icmp eq i8* %528, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.AbstractList.IteratorImpl_270" to i8*)
  br i1 %531, label %when_case381, label %when_next380

when_case381:                                     ; preds = %when_next377
  %532 = invoke i1 @"private_functions_<stdlib>_kotlin.collections.AbstractList.IteratorImpl.hasNext#internal_420"(%struct.ObjHeader* %503)
          to label %call_success382 unwind label %cleanup_landingpad

call_success382:                                  ; preds = %when_case381
  br label %when_exit376

when_next380:                                     ; preds = %when_next377
  %533 = icmp eq i8* %528, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.EmptyIterator_282" to i8*)
  br i1 %533, label %when_case384, label %when_next383

when_case384:                                     ; preds = %when_next380
  %534 = invoke i1 @"private_functions_<stdlib>_kfun:kotlin.collections.EmptyIterator.hasNext()ValueType_463"(%struct.ObjHeader* %503)
          to label %call_success385 unwind label %cleanup_landingpad

call_success385:                                  ; preds = %when_case384
  br label %when_exit376

when_next383:                                     ; preds = %when_next380
  %535 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %131)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %535, i8* %528)
          to label %call_success386 unwind label %cleanup_landingpad

call_success386:                                  ; preds = %when_next383
  %536 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %535, %struct.ObjHeader** %132)
          to label %call_success387 unwind label %cleanup_landingpad

call_success387:                                  ; preds = %call_success386
  unreachable

when_exit376:                                     ; preds = %call_success385, %call_success382, %call_success379
  %537 = phi i1 [ %530, %call_success379 ], [ %532, %call_success382 ], [ %534, %call_success385 ]
  br i1 %537, label %while_loop374, label %loop_exit372

loop_exit372:                                     ; preds = %when_exit376
  invoke void @Kotlin_io_Console_println(%struct.ObjHeader* @"kstr:1kstNoHxVFiIrergpZzO061I+gk=")
          to label %call_success417 unwind label %cleanup_landingpad

call_success417:                                  ; preds = %loop_exit372
  %538 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.text.StringBuilder", %struct.ObjHeader** %150)
  invoke void @"kfun:kotlin.text.StringBuilder.<init>()kotlin.text.StringBuilder"(%struct.ObjHeader* %538)
          to label %call_success418 unwind label %cleanup_landingpad

call_success418:                                  ; preds = %call_success417
  %539 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %538, %struct.ObjHeader* @"kstr:2hn6Ro3KLgH+GxrdP+5jKsDQL7k=", %struct.ObjHeader** %151)
          to label %call_success419 unwind label %cleanup_landingpad

call_success419:                                  ; preds = %call_success418
  %540 = load %struct.ObjHeader*, %struct.ObjHeader** %comissoes
  %541 = invoke i32 @"kfun:kotlin.collections.collectionSizeOrDefault$stdlib@kotlin.collections.Iterable<#GENERIC>.(kotlin.Int)Generic"(%struct.ObjHeader* %540, i32 10)
          to label %call_success420 unwind label %cleanup_landingpad

call_success420:                                  ; preds = %call_success419
  %542 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.collections.ArrayList", %struct.ObjHeader** %152)
  invoke void @"kfun:kotlin.collections.ArrayList.<init>(kotlin.Int)kotlin.collections.ArrayList<#GENERIC>"(%struct.ObjHeader* %542, i32 %541)
          to label %call_success421 unwind label %cleanup_landingpad

call_success421:                                  ; preds = %call_success420
  %543 = load %struct.ObjHeader*, %struct.ObjHeader** %comissoes
  %544 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %543)
          to label %call_success422 unwind label %cleanup_landingpad

call_success422:                                  ; preds = %call_success421
  %545 = icmp eq i8* %544, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList_285" to i8*)
  br i1 %545, label %when_case425, label %when_next424

when_case425:                                     ; preds = %call_success422
  %546 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.ArrayList.iterator()kotlin.collections.MutableIterator<#GENERIC>_491"(%struct.ObjHeader* %543, %struct.ObjHeader** %153)
          to label %call_success426 unwind label %cleanup_landingpad

call_success426:                                  ; preds = %when_case425
  br label %when_exit423

when_next424:                                     ; preds = %call_success422
  %547 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %154)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %547, i8* %544)
          to label %call_success427 unwind label %cleanup_landingpad

call_success427:                                  ; preds = %when_next424
  %548 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %547, %struct.ObjHeader** %155)
          to label %call_success428 unwind label %cleanup_landingpad

call_success428:                                  ; preds = %call_success427
  unreachable

when_exit423:                                     ; preds = %call_success426
  %549 = phi %struct.ObjHeader* [ %546, %call_success426 ]
  br label %loop_check430

while_loop431:                                    ; preds = %when_exit433
  %550 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %549)
          to label %call_success445 unwind label %cleanup_landingpad

call_success445:                                  ; preds = %while_loop431
  %551 = icmp eq i8* %550, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList.Itr_655" to i8*)
  br i1 %551, label %when_case448, label %when_next447

when_case448:                                     ; preds = %call_success445
  %552 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kotlin.collections.ArrayList.Itr.next#internal_1190"(%struct.ObjHeader* %549, %struct.ObjHeader** %158)
          to label %call_success449 unwind label %cleanup_landingpad

call_success449:                                  ; preds = %when_case448
  br label %when_exit446

when_next447:                                     ; preds = %call_success445
  %553 = icmp eq i8* %550, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.AbstractList.IteratorImpl_270" to i8*)
  br i1 %553, label %when_case451, label %when_next450

when_case451:                                     ; preds = %when_next447
  %554 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kotlin.collections.AbstractList.IteratorImpl.next#internal_421"(%struct.ObjHeader* %549, %struct.ObjHeader** %159)
          to label %call_success452 unwind label %cleanup_landingpad

call_success452:                                  ; preds = %when_case451
  br label %when_exit446

when_next450:                                     ; preds = %when_next447
  %555 = icmp eq i8* %550, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.EmptyIterator_282" to i8*)
  br i1 %555, label %when_case454, label %when_next453

when_case454:                                     ; preds = %when_next450
  %556 = invoke %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.EmptyIterator.next()kotlin.Nothing_465"(%struct.ObjHeader* %549, %struct.ObjHeader** %160)
          to label %call_success455 unwind label %cleanup_landingpad

call_success455:                                  ; preds = %when_case454
  br label %when_exit446

when_next453:                                     ; preds = %when_next450
  %557 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %161)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %557, i8* %550)
          to label %call_success456 unwind label %cleanup_landingpad

call_success456:                                  ; preds = %when_next453
  %558 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %557, %struct.ObjHeader** %162)
          to label %call_success457 unwind label %cleanup_landingpad

call_success457:                                  ; preds = %call_success456
  unreachable

when_exit446:                                     ; preds = %call_success455, %call_success452, %call_success449
  %559 = phi %struct.ObjHeader* [ %552, %call_success449 ], [ %554, %call_success452 ], [ %556, %call_success455 ]
  %560 = invoke double @"kfun:Comissao.<get-valor>()ValueType"(%struct.ObjHeader* %559)
          to label %call_success458 unwind label %cleanup_landingpad

call_success458:                                  ; preds = %when_exit446
  br label %returnable_block_exit459

unreachable461:                                   ; No predecessors!
  %561 = invoke double @"kfun:konan.internal.DoubleBox.<get-value>()ValueType"(%struct.ObjHeader* undef)
          to label %call_success460 unwind label %cleanup_landingpad

call_success460:                                  ; preds = %unreachable461
  unreachable

returnable_block_exit459:                         ; preds = %call_success458
  %562 = phi double [ %560, %call_success458 ]
  %563 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %542)
          to label %call_success462 unwind label %cleanup_landingpad

call_success462:                                  ; preds = %returnable_block_exit459
  %564 = icmp eq i8* %563, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList_285" to i8*)
  br i1 %564, label %when_case465, label %when_next464

when_case465:                                     ; preds = %call_success462
  %565 = invoke %struct.ObjHeader* @Kotlin_boxDouble(double %562, %struct.ObjHeader** %163)
          to label %call_success466 unwind label %cleanup_landingpad

call_success466:                                  ; preds = %when_case465
  %566 = invoke i1 @"private_functions_<stdlib>_kfun:kotlin.collections.ArrayList.add(#GENERIC)ValueType_494"(%struct.ObjHeader* %542, %struct.ObjHeader* %565)
          to label %call_success467 unwind label %cleanup_landingpad

call_success467:                                  ; preds = %call_success466
  br label %when_exit463

when_next464:                                     ; preds = %call_success462
  %567 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %164)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %567, i8* %563)
          to label %call_success468 unwind label %cleanup_landingpad

call_success468:                                  ; preds = %when_next464
  %568 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %567, %struct.ObjHeader** %165)
          to label %call_success469 unwind label %cleanup_landingpad

call_success469:                                  ; preds = %call_success468
  unreachable

when_exit463:                                     ; preds = %call_success467
  %569 = phi i1 [ %566, %call_success467 ]
  br label %loop_check430

loop_check430:                                    ; preds = %when_exit463, %when_exit423
  %570 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %549)
          to label %call_success432 unwind label %cleanup_landingpad

call_success432:                                  ; preds = %loop_check430
  %571 = icmp eq i8* %570, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.ArrayList.Itr_655" to i8*)
  br i1 %571, label %when_case435, label %when_next434

when_case435:                                     ; preds = %call_success432
  %572 = invoke i1 @"private_functions_<stdlib>_kotlin.collections.ArrayList.Itr.hasNext#internal_1188"(%struct.ObjHeader* %549)
          to label %call_success436 unwind label %cleanup_landingpad

call_success436:                                  ; preds = %when_case435
  br label %when_exit433

when_next434:                                     ; preds = %call_success432
  %573 = icmp eq i8* %570, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.AbstractList.IteratorImpl_270" to i8*)
  br i1 %573, label %when_case438, label %when_next437

when_case438:                                     ; preds = %when_next434
  %574 = invoke i1 @"private_functions_<stdlib>_kotlin.collections.AbstractList.IteratorImpl.hasNext#internal_420"(%struct.ObjHeader* %549)
          to label %call_success439 unwind label %cleanup_landingpad

call_success439:                                  ; preds = %when_case438
  br label %when_exit433

when_next437:                                     ; preds = %when_next434
  %575 = icmp eq i8* %570, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlin.collections.EmptyIterator_282" to i8*)
  br i1 %575, label %when_case441, label %when_next440

when_case441:                                     ; preds = %when_next437
  %576 = invoke i1 @"private_functions_<stdlib>_kfun:kotlin.collections.EmptyIterator.hasNext()ValueType_463"(%struct.ObjHeader* %549)
          to label %call_success442 unwind label %cleanup_landingpad

call_success442:                                  ; preds = %when_case441
  br label %when_exit433

when_next440:                                     ; preds = %when_next437
  %577 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %156)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %577, i8* %570)
          to label %call_success443 unwind label %cleanup_landingpad

call_success443:                                  ; preds = %when_next440
  %578 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %577, %struct.ObjHeader** %157)
          to label %call_success444 unwind label %cleanup_landingpad

call_success444:                                  ; preds = %call_success443
  unreachable

when_exit433:                                     ; preds = %call_success442, %call_success439, %call_success436
  %579 = phi i1 [ %572, %call_success436 ], [ %574, %call_success439 ], [ %576, %call_success442 ]
  br i1 %579, label %while_loop431, label %loop_exit429

loop_exit429:                                     ; preds = %when_exit433
  br label %returnable_block_exit470

returnable_block_exit470:                         ; preds = %loop_exit429
  %580 = phi %struct.ObjHeader* [ %542, %loop_exit429 ]
  br label %returnable_block_exit471

returnable_block_exit471:                         ; preds = %returnable_block_exit470
  %581 = phi %struct.ObjHeader* [ %580, %returnable_block_exit470 ]
  %582 = invoke double @"kfun:kotlin.collections.sum@kotlin.collections.Iterable<kotlin.Double>.()ValueType"(%struct.ObjHeader* %581)
          to label %call_success472 unwind label %cleanup_landingpad

call_success472:                                  ; preds = %returnable_block_exit471
  %583 = invoke %struct.ObjHeader* @"kfun:toPrecision@kotlin.Double.(kotlin.Int)kotlin.String"(double %582, i32 2, %struct.ObjHeader** %166)
          to label %call_success473 unwind label %cleanup_landingpad

call_success473:                                  ; preds = %call_success472
  %584 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %538, %struct.ObjHeader* %583, %struct.ObjHeader** %167)
          to label %call_success474 unwind label %cleanup_landingpad

call_success474:                                  ; preds = %call_success473
  %585 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.toString()kotlin.String"(%struct.ObjHeader* %538, %struct.ObjHeader** %168)
          to label %call_success475 unwind label %cleanup_landingpad

call_success475:                                  ; preds = %call_success474
  invoke void @Kotlin_io_Console_print(%struct.ObjHeader* %585)
          to label %call_success476 unwind label %cleanup_landingpad

call_success476:                                  ; preds = %call_success475
  br label %epilogue

epilogue:                                         ; preds = %call_success476
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 165)
  ret void

cleanup_landingpad:                               ; preds = %call_success475, %call_success474, %call_success473, %call_success472, %returnable_block_exit471, %call_success443, %when_next440, %when_case441, %when_case438, %when_case435, %loop_check430, %call_success468, %when_next464, %call_success466, %when_case465, %returnable_block_exit459, %unreachable461, %when_exit446, %call_success456, %when_next453, %when_case454, %when_case451, %when_case448, %while_loop431, %call_success427, %when_next424, %when_case425, %call_success421, %call_success420, %call_success419, %call_success418, %call_success417, %loop_exit372, %call_success386, %when_next383, %when_case384, %when_case381, %when_case378, %loop_check373, %call_success414, %call_success413, %call_success412, %call_success411, %call_success410, %call_success409, %call_success408, %call_success407, %call_success406, %call_success405, %call_success404, %call_success403, %call_success402, %call_success401, %when_exit389, %call_success399, %when_next396, %when_case397, %when_case394, %when_case391, %while_loop374, %call_success370, %when_next367, %when_case368, %returnable_block_exit364, %call_success316, %when_next313, %when_case314, %when_case311, %loop_check306, %call_success361, %when_next358, %when_case359, %returnable_block_exit355, %call_success353, %call_success352, %returnable_block_exit351, %loop_check334, %call_success348, %when_next344, %call_success346, %when_case345, %returnable_block_exit339, %unreachable341, %call_success337, %while_loop335, %call_success331, %call_success330, %call_success329, %call_success328, %when_exit319, %call_success326, %when_next323, %when_case324, %when_case321, %while_loop307, %call_success302, %when_next299, %when_case300, %when_exit291, %call_success295, %when_next292, %when_case293, %call_success289, %when_exit283, %call_success287, %when_next284, %when_case285, %returnable_block_exit281, %call_success237, %when_next234, %when_case235, %when_case232, %when_case229, %loop_check224, %returnable_block_exit278, %call_success276, %when_next272, %call_success274, %when_case273, %returnable_block_exit269, %when_case267, %call_success263, %when_next259, %call_success261, %when_case260, %returnable_block_exit254, %unreachable256, %call_success252, %when_exit240, %call_success250, %when_next247, %when_case248, %when_case245, %when_case242, %while_loop225, %call_success221, %when_next218, %when_case219, %call_success215, %call_success214, %call_success213, %call_success212, %call_success211, %call_success210, %call_success209, %call_success208, %returnable_block_exit207, %call_success185, %when_next182, %when_case183, %loop_check178, %call_success204, %when_next200, %call_success202, %when_case201, %returnable_block_exit195, %unreachable197, %when_exit188, %call_success192, %when_next189, %when_case190, %while_loop179, %call_success175, %when_next172, %when_case173, %call_success169, %call_success168, %call_success167, %call_success166, %call_success165, %loop_exit130, %call_success144, %when_next141, %when_case142, %when_case139, %when_case136, %loop_check131, %call_success162, %call_success161, %call_success160, %call_success159, %when_exit147, %call_success157, %when_next154, %when_case155, %when_case152, %when_case149, %while_loop132, %call_success128, %when_next125, %when_case126, %call_success122, %call_success121, %call_success120, %call_success119, %call_success118, %call_success117, %returnable_block_exit116, %call_success97, %when_next94, %when_case95, %loop_check91, %call_success113, %when_next110, %when_case111, %returnable_block_exit107, %when_exit100, %call_success104, %when_next101, %when_case102, %while_loop, %call_success88, %when_next85, %when_case86, %call_success82, %call_success81, %when_exit27, %label_init, %call_success79, %call_success78, %returnable_block_exit75, %unreachable77, %label_continue, %when_case71, %call_success67, %returnable_block_exit64, %unreachable66, %when_next57, %unreachable62, %call_success59, %when_case58, %when_exit51, %when_case53, %call_success49, %returnable_block_exit46, %unreachable48, %when_next39, %unreachable44, %call_success41, %when_case40, %when_exit33, %when_case35, %call_success31, %call_success30, %do_while_loop, %call_success26, %returnable_block_exit23, %unreachable25, %when_next17, %unreachable, %call_success19, %when_case18, %when_exit, %when_case, %call_success12, %call_success11, %call_success10, %call_success9, %call_success8, %call_success7, %call_success6, %call_success5, %call_success4, %call_success3, %call_success2, %call_success1, %returnable_block_exit, %entry
  %586 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %3, i32 1, i32 165)
  resume { i8*, i32 } %586
}

define %struct.ObjHeader* @"kfun:toPrecision@kotlin.Double.(kotlin.Int)kotlin.String"(double, i32, %struct.ObjHeader**) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %"p-<this>" = alloca double
  %p-digits = alloca i32
  %"tmp0_$elem" = alloca double
  %3 = alloca %struct.ObjHeader*, i32 19
  %4 = bitcast %struct.ObjHeader** %3 to i8*
  call void @llvm.memset.p0i8.i32(i8* %4, i8 0, i32 152, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %3, i32 0, i32 19)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %5 = phi %struct.ObjHeader** [ %3, %prologue ]
  %6 = ptrtoint %struct.ObjHeader** %5 to i64
  %7 = or i64 %6, 1
  %8 = inttoptr i64 %7 to %struct.ObjHeader**
  store double %0, double* %"p-<this>"
  store i32 %1, i32* %p-digits
  %9 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 1
  %10 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 2
  %11 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 3
  %12 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 4
  %13 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 5
  %14 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 6
  %15 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 7
  %16 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 8
  %17 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 9
  %18 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 10
  %19 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 11
  %20 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 12
  %21 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 13
  %"tmp1_$array" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 14
  %22 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 15
  %23 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 16
  %24 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 17
  %25 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 18
  br label %entry

entry:                                            ; preds = %locals_init
  %26 = load %struct.ObjHeader*, %struct.ObjHeader** @"kobjref:kotlinx.cinterop.nativeHeap"
  %27 = ptrtoint %struct.ObjHeader* %26 to i64
  %28 = icmp ugt i64 %27, 1
  br i1 %28, label %label_continue, label %label_init

label_continue:                                   ; preds = %call_success, %entry
  %29 = phi %struct.ObjHeader* [ %26, %entry ], [ %79, %call_success ]
  %30 = load %struct.ObjHeader*, %struct.ObjHeader** @"kobjref:kotlinx.cinterop.ByteVarOf.Companion"
  %31 = ptrtoint %struct.ObjHeader* %30 to i64
  %32 = icmp ugt i64 %31, 1
  br i1 %32, label %label_continue2, label %label_init1

label_continue2:                                  ; preds = %call_success3, %label_continue
  %33 = phi %struct.ObjHeader* [ %30, %label_continue ], [ %78, %call_success3 ]
  %34 = invoke i64 @"kfun:kotlinx.cinterop.CVariable.Type.<get-size>()ValueType"(%struct.ObjHeader* %33)
          to label %call_success4 unwind label %cleanup_landingpad

call_success4:                                    ; preds = %label_continue2
  br label %returnable_block_exit

unreachable:                                      ; No predecessors!
  %35 = invoke i64 @"kfun:konan.internal.LongBox.<get-value>()ValueType"(%struct.ObjHeader* undef)
          to label %call_success5 unwind label %cleanup_landingpad

call_success5:                                    ; preds = %unreachable
  unreachable

returnable_block_exit:                            ; preds = %call_success4
  %36 = phi i64 [ %34, %call_success4 ]
  %37 = invoke i64 @Kotlin_Long_times_Long(i64 %36, i64 50)
          to label %call_success6 unwind label %cleanup_landingpad

call_success6:                                    ; preds = %returnable_block_exit
  %38 = load %struct.ObjHeader*, %struct.ObjHeader** @"kobjref:kotlinx.cinterop.ByteVarOf.Companion"
  %39 = ptrtoint %struct.ObjHeader* %38 to i64
  %40 = icmp ugt i64 %39, 1
  br i1 %40, label %label_continue8, label %label_init7

label_continue8:                                  ; preds = %call_success9, %call_success6
  %41 = phi %struct.ObjHeader* [ %38, %call_success6 ], [ %77, %call_success9 ]
  %42 = invoke i32 @"kfun:kotlinx.cinterop.CVariable.Type.<get-align>()ValueType"(%struct.ObjHeader* %41)
          to label %call_success10 unwind label %cleanup_landingpad

call_success10:                                   ; preds = %label_continue8
  br label %returnable_block_exit11

unreachable13:                                    ; No predecessors!
  %43 = invoke i32 @"kfun:konan.internal.IntBox.<get-value>()ValueType"(%struct.ObjHeader* undef)
          to label %call_success12 unwind label %cleanup_landingpad

call_success12:                                   ; preds = %unreachable13
  unreachable

returnable_block_exit11:                          ; preds = %call_success10
  %44 = phi i32 [ %42, %call_success10 ]
  %45 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %29)
          to label %call_success14 unwind label %cleanup_landingpad

call_success14:                                   ; preds = %returnable_block_exit11
  %46 = icmp eq i8* %45, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlinx.cinterop.nativeHeap_32" to i8*)
  br i1 %46, label %when_case, label %when_next

when_case:                                        ; preds = %call_success14
  %47 = invoke i8* @"private_functions_<stdlib>_kfun:kotlinx.cinterop.nativeHeap.alloc(kotlin.Long;kotlin.Int)ValueType_66"(%struct.ObjHeader* %29, i64 %37, i32 %44)
          to label %call_success15 unwind label %cleanup_landingpad

call_success15:                                   ; preds = %when_case
  br label %when_exit

when_next:                                        ; preds = %call_success14
  %48 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %12)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %48, i8* %45)
          to label %call_success16 unwind label %cleanup_landingpad

call_success16:                                   ; preds = %when_next
  %49 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %48, %struct.ObjHeader** %13)
          to label %call_success17 unwind label %cleanup_landingpad

call_success17:                                   ; preds = %call_success16
  unreachable

when_exit:                                        ; preds = %call_success15
  %50 = phi i8* [ %47, %call_success15 ]
  %51 = icmp eq i8* %50, null
  br i1 %51, label %when_case20, label %when_next19

when_case20:                                      ; preds = %when_exit
  %52 = invoke %struct.ObjHeader* @ThrowNullPointerException(%struct.ObjHeader** %14)
          to label %call_success21 unwind label %cleanup_landingpad

call_success21:                                   ; preds = %when_case20
  unreachable

unreachable23:                                    ; No predecessors!
  %53 = invoke i8* @"kfun:konan.internal.unboxNativePointed(konan.internal.NativePointedBox?)ValueType"(%struct.ObjHeader* %52)
          to label %call_success22 unwind label %cleanup_landingpad

call_success22:                                   ; preds = %unreachable23
  br label %when_exit18

when_next19:                                      ; preds = %when_exit
  br label %when_exit18

when_exit18:                                      ; preds = %when_next19, %call_success22
  %54 = phi i8* [ %53, %call_success22 ], [ %50, %when_next19 ]
  br label %returnable_block_exit24

unreachable26:                                    ; No predecessors!
  %55 = invoke i8* @"kfun:konan.internal.unboxNativePointed(konan.internal.NativePointedBox?)ValueType"(%struct.ObjHeader* undef)
          to label %call_success25 unwind label %cleanup_landingpad

call_success25:                                   ; preds = %unreachable26
  unreachable

returnable_block_exit24:                          ; preds = %when_exit18
  %56 = phi i8* [ %54, %when_exit18 ]
  br label %returnable_block_exit27

unreachable29:                                    ; No predecessors!
  %57 = invoke i8* @"kfun:konan.internal.unboxNativePointed(konan.internal.NativePointedBox?)ValueType"(%struct.ObjHeader* undef)
          to label %call_success28 unwind label %cleanup_landingpad

call_success28:                                   ; preds = %unreachable29
  unreachable

returnable_block_exit27:                          ; preds = %returnable_block_exit24
  %58 = phi i8* [ %56, %returnable_block_exit24 ]
  %59 = invoke i8* @"kfun:kotlinx.cinterop.<get-ptr>@#GENERIC_kotlinx.cinterop.CPointed.()Generic"(i8* %58)
          to label %call_success30 unwind label %cleanup_landingpad

call_success30:                                   ; preds = %returnable_block_exit27
  br label %returnable_block_exit31

unreachable33:                                    ; No predecessors!
  %60 = invoke i8* @"kfun:konan.internal.unboxCPointer(konan.internal.CPointerBox?)ValueType"(%struct.ObjHeader* undef)
          to label %call_success32 unwind label %cleanup_landingpad

call_success32:                                   ; preds = %unreachable33
  unreachable

returnable_block_exit31:                          ; preds = %call_success30
  %61 = phi i8* [ %59, %call_success30 ]
  %62 = invoke %struct.ObjHeader* @"kfun:konan.internal.boxCPointer(kotlinx.cinterop.CPointer<kotlinx.cinterop.CPointed>?)konan.internal.CPointerBox?"(i8* %61, %struct.ObjHeader** %15)
          to label %call_success34 unwind label %cleanup_landingpad

call_success34:                                   ; preds = %returnable_block_exit31
  %63 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.text.StringBuilder", %struct.ObjHeader** %16)
  invoke void @"kfun:kotlin.text.StringBuilder.<init>()kotlin.text.StringBuilder"(%struct.ObjHeader* %63)
          to label %call_success35 unwind label %cleanup_landingpad

call_success35:                                   ; preds = %call_success34
  %64 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %63, %struct.ObjHeader* @"kstr:R4bdQtmAdIMDVbjCKOoakgMIPqo=", %struct.ObjHeader** %17)
          to label %call_success36 unwind label %cleanup_landingpad

call_success36:                                   ; preds = %call_success35
  %65 = load i32, i32* %p-digits
  %66 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.Int)kotlin.text.StringBuilder"(%struct.ObjHeader* %63, i32 %65, %struct.ObjHeader** %18)
          to label %call_success37 unwind label %cleanup_landingpad

call_success37:                                   ; preds = %call_success36
  %67 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %63, %struct.ObjHeader* @"kstr:SgoZIY4IKjQ6GxflMzQJr52Y8PU=", %struct.ObjHeader** %19)
          to label %call_success38 unwind label %cleanup_landingpad

call_success38:                                   ; preds = %call_success37
  %68 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.toString()kotlin.String"(%struct.ObjHeader* %63, %struct.ObjHeader** %20)
          to label %call_success39 unwind label %cleanup_landingpad

call_success39:                                   ; preds = %call_success38
  %69 = load double, double* %"p-<this>"
  store double %69, double* %"tmp0_$elem"
  %70 = call %struct.ObjHeader* @AllocArrayInstance(%struct.TypeInfo* @"ktype:kotlin.Array", i32 1, %struct.ObjHeader** %21)
  invoke void @"kfun:kotlin.Array.<init>$stdlib(kotlin.Int)kotlin.Array<#GENERIC>"(%struct.ObjHeader* %70, i32 1)
          to label %call_success40 unwind label %cleanup_landingpad

call_success40:                                   ; preds = %call_success39
  call void @UpdateRef(%struct.ObjHeader** %"tmp1_$array", %struct.ObjHeader* %70)
  %71 = load %struct.ObjHeader*, %struct.ObjHeader** %"tmp1_$array"
  call void @UpdateRef(%struct.ObjHeader** %22, %struct.ObjHeader* %71)
  %72 = load double, double* %"tmp0_$elem"
  %73 = invoke %struct.ObjHeader* @Kotlin_boxDouble(double %72, %struct.ObjHeader** %23)
          to label %call_success41 unwind label %cleanup_landingpad

call_success41:                                   ; preds = %call_success40
  invoke void @Kotlin_Array_set(%struct.ObjHeader* %71, i32 0, %struct.ObjHeader* %73)
          to label %call_success42 unwind label %cleanup_landingpad

call_success42:                                   ; preds = %call_success41
  %74 = load %struct.ObjHeader*, %struct.ObjHeader** %"tmp1_$array"
  call void @UpdateRef(%struct.ObjHeader** %24, %struct.ObjHeader* %74)
  %75 = invoke i32 @"kfun:platform.posix.snprintf(kotlinx.cinterop.CValuesRef<kotlinx.cinterop.ByteVarOf<kotlin.Byte>>?;kotlin.Long;kotlin.String?;kotlin.Array<out_kotlin.Any?>_VarArg)ValueType"(%struct.ObjHeader* %62, i64 50, %struct.ObjHeader* %68, %struct.ObjHeader* %74)
          to label %call_success43 unwind label %cleanup_landingpad

call_success43:                                   ; preds = %call_success42
  %76 = invoke %struct.ObjHeader* @"kfun:kotlinx.cinterop.toKString@kotlinx.cinterop.CPointer<kotlinx.cinterop.ByteVarOf<kotlin.Byte>>.()kotlin.String"(i8* %61, %struct.ObjHeader** %25)
          to label %call_success44 unwind label %cleanup_landingpad

call_success44:                                   ; preds = %call_success43
  br label %epilogue

label_init7:                                      ; preds = %call_success6
  %77 = invoke %struct.ObjHeader* @InitSharedInstance(%struct.ObjHeader** @"kobjref:kotlinx.cinterop.ByteVarOf.Companion", %struct.ObjHeader** @"kshadowobjref:kotlinx.cinterop.ByteVarOf.Companion", %struct.TypeInfo* @"ktype:kotlinx.cinterop.ByteVarOf.Companion", void (%struct.ObjHeader*)* @"kfun:kotlinx.cinterop.ByteVarOf.Companion.<init>()kotlinx.cinterop.ByteVarOf.Companion", %struct.ObjHeader** %11)
          to label %call_success9 unwind label %cleanup_landingpad

call_success9:                                    ; preds = %label_init7
  br label %label_continue8

label_init1:                                      ; preds = %label_continue
  %78 = invoke %struct.ObjHeader* @InitSharedInstance(%struct.ObjHeader** @"kobjref:kotlinx.cinterop.ByteVarOf.Companion", %struct.ObjHeader** @"kshadowobjref:kotlinx.cinterop.ByteVarOf.Companion", %struct.TypeInfo* @"ktype:kotlinx.cinterop.ByteVarOf.Companion", void (%struct.ObjHeader*)* @"kfun:kotlinx.cinterop.ByteVarOf.Companion.<init>()kotlinx.cinterop.ByteVarOf.Companion", %struct.ObjHeader** %10)
          to label %call_success3 unwind label %cleanup_landingpad

call_success3:                                    ; preds = %label_init1
  br label %label_continue2

label_init:                                       ; preds = %entry
  %79 = invoke %struct.ObjHeader* @InitSharedInstance(%struct.ObjHeader** @"kobjref:kotlinx.cinterop.nativeHeap", %struct.ObjHeader** @"kshadowobjref:kotlinx.cinterop.nativeHeap", %struct.TypeInfo* @"ktype:kotlinx.cinterop.nativeHeap", void (%struct.ObjHeader*)* @"kfun:kotlinx.cinterop.nativeHeap.<init>()kotlinx.cinterop.nativeHeap", %struct.ObjHeader** %9)
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %label_init
  br label %label_continue

epilogue:                                         ; preds = %call_success44
  %80 = phi %struct.ObjHeader* [ %76, %call_success44 ]
  call void @UpdateReturnRef(%struct.ObjHeader** %2, %struct.ObjHeader* %80)
  call void @LeaveFrame(%struct.ObjHeader** %5, i32 0, i32 19)
  ret %struct.ObjHeader* %80

cleanup_landingpad:                               ; preds = %label_init, %label_init1, %label_init7, %call_success43, %call_success42, %call_success41, %call_success40, %call_success39, %call_success38, %call_success37, %call_success36, %call_success35, %call_success34, %returnable_block_exit31, %unreachable33, %returnable_block_exit27, %unreachable29, %unreachable26, %unreachable23, %when_case20, %call_success16, %when_next, %when_case, %returnable_block_exit11, %unreachable13, %label_continue8, %returnable_block_exit, %unreachable, %label_continue2
  %81 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %5, i32 0, i32 19)
  resume { i8*, i32 } %81
}

define %struct.ObjHeader* @"kfun:toPrecision@kotlin.Float.(kotlin.Int)kotlin.String"(float, i32, %struct.ObjHeader**) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %"p-<this>" = alloca float
  %p-digits = alloca i32
  %"tmp0_$elem" = alloca float
  %3 = alloca %struct.ObjHeader*, i32 19
  %4 = bitcast %struct.ObjHeader** %3 to i8*
  call void @llvm.memset.p0i8.i32(i8* %4, i8 0, i32 152, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %3, i32 0, i32 19)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %5 = phi %struct.ObjHeader** [ %3, %prologue ]
  %6 = ptrtoint %struct.ObjHeader** %5 to i64
  %7 = or i64 %6, 1
  %8 = inttoptr i64 %7 to %struct.ObjHeader**
  store float %0, float* %"p-<this>"
  store i32 %1, i32* %p-digits
  %9 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 1
  %10 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 2
  %11 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 3
  %12 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 4
  %13 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 5
  %14 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 6
  %15 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 7
  %16 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 8
  %17 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 9
  %18 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 10
  %19 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 11
  %20 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 12
  %21 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 13
  %"tmp1_$array" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 14
  %22 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 15
  %23 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 16
  %24 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 17
  %25 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %5, i32 18
  br label %entry

entry:                                            ; preds = %locals_init
  %26 = load %struct.ObjHeader*, %struct.ObjHeader** @"kobjref:kotlinx.cinterop.nativeHeap"
  %27 = ptrtoint %struct.ObjHeader* %26 to i64
  %28 = icmp ugt i64 %27, 1
  br i1 %28, label %label_continue, label %label_init

label_continue:                                   ; preds = %call_success, %entry
  %29 = phi %struct.ObjHeader* [ %26, %entry ], [ %79, %call_success ]
  %30 = load %struct.ObjHeader*, %struct.ObjHeader** @"kobjref:kotlinx.cinterop.ByteVarOf.Companion"
  %31 = ptrtoint %struct.ObjHeader* %30 to i64
  %32 = icmp ugt i64 %31, 1
  br i1 %32, label %label_continue2, label %label_init1

label_continue2:                                  ; preds = %call_success3, %label_continue
  %33 = phi %struct.ObjHeader* [ %30, %label_continue ], [ %78, %call_success3 ]
  %34 = invoke i64 @"kfun:kotlinx.cinterop.CVariable.Type.<get-size>()ValueType"(%struct.ObjHeader* %33)
          to label %call_success4 unwind label %cleanup_landingpad

call_success4:                                    ; preds = %label_continue2
  br label %returnable_block_exit

unreachable:                                      ; No predecessors!
  %35 = invoke i64 @"kfun:konan.internal.LongBox.<get-value>()ValueType"(%struct.ObjHeader* undef)
          to label %call_success5 unwind label %cleanup_landingpad

call_success5:                                    ; preds = %unreachable
  unreachable

returnable_block_exit:                            ; preds = %call_success4
  %36 = phi i64 [ %34, %call_success4 ]
  %37 = invoke i64 @Kotlin_Long_times_Long(i64 %36, i64 50)
          to label %call_success6 unwind label %cleanup_landingpad

call_success6:                                    ; preds = %returnable_block_exit
  %38 = load %struct.ObjHeader*, %struct.ObjHeader** @"kobjref:kotlinx.cinterop.ByteVarOf.Companion"
  %39 = ptrtoint %struct.ObjHeader* %38 to i64
  %40 = icmp ugt i64 %39, 1
  br i1 %40, label %label_continue8, label %label_init7

label_continue8:                                  ; preds = %call_success9, %call_success6
  %41 = phi %struct.ObjHeader* [ %38, %call_success6 ], [ %77, %call_success9 ]
  %42 = invoke i32 @"kfun:kotlinx.cinterop.CVariable.Type.<get-align>()ValueType"(%struct.ObjHeader* %41)
          to label %call_success10 unwind label %cleanup_landingpad

call_success10:                                   ; preds = %label_continue8
  br label %returnable_block_exit11

unreachable13:                                    ; No predecessors!
  %43 = invoke i32 @"kfun:konan.internal.IntBox.<get-value>()ValueType"(%struct.ObjHeader* undef)
          to label %call_success12 unwind label %cleanup_landingpad

call_success12:                                   ; preds = %unreachable13
  unreachable

returnable_block_exit11:                          ; preds = %call_success10
  %44 = phi i32 [ %42, %call_success10 ]
  %45 = invoke i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader* %29)
          to label %call_success14 unwind label %cleanup_landingpad

call_success14:                                   ; preds = %returnable_block_exit11
  %46 = icmp eq i8* %45, bitcast (%struct.TypeInfo* @"private_classes_<stdlib>_kotlinx.cinterop.nativeHeap_32" to i8*)
  br i1 %46, label %when_case, label %when_next

when_case:                                        ; preds = %call_success14
  %47 = invoke i8* @"private_functions_<stdlib>_kfun:kotlinx.cinterop.nativeHeap.alloc(kotlin.Long;kotlin.Int)ValueType_66"(%struct.ObjHeader* %29, i64 %37, i32 %44)
          to label %call_success15 unwind label %cleanup_landingpad

call_success15:                                   ; preds = %when_case
  br label %when_exit

when_next:                                        ; preds = %call_success14
  %48 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:konan.internal.KClassImpl", %struct.ObjHeader** %12)
  invoke void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader* %48, i8* %45)
          to label %call_success16 unwind label %cleanup_landingpad

call_success16:                                   ; preds = %when_next
  %49 = invoke %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader* %48, %struct.ObjHeader** %13)
          to label %call_success17 unwind label %cleanup_landingpad

call_success17:                                   ; preds = %call_success16
  unreachable

when_exit:                                        ; preds = %call_success15
  %50 = phi i8* [ %47, %call_success15 ]
  %51 = icmp eq i8* %50, null
  br i1 %51, label %when_case20, label %when_next19

when_case20:                                      ; preds = %when_exit
  %52 = invoke %struct.ObjHeader* @ThrowNullPointerException(%struct.ObjHeader** %14)
          to label %call_success21 unwind label %cleanup_landingpad

call_success21:                                   ; preds = %when_case20
  unreachable

unreachable23:                                    ; No predecessors!
  %53 = invoke i8* @"kfun:konan.internal.unboxNativePointed(konan.internal.NativePointedBox?)ValueType"(%struct.ObjHeader* %52)
          to label %call_success22 unwind label %cleanup_landingpad

call_success22:                                   ; preds = %unreachable23
  br label %when_exit18

when_next19:                                      ; preds = %when_exit
  br label %when_exit18

when_exit18:                                      ; preds = %when_next19, %call_success22
  %54 = phi i8* [ %53, %call_success22 ], [ %50, %when_next19 ]
  br label %returnable_block_exit24

unreachable26:                                    ; No predecessors!
  %55 = invoke i8* @"kfun:konan.internal.unboxNativePointed(konan.internal.NativePointedBox?)ValueType"(%struct.ObjHeader* undef)
          to label %call_success25 unwind label %cleanup_landingpad

call_success25:                                   ; preds = %unreachable26
  unreachable

returnable_block_exit24:                          ; preds = %when_exit18
  %56 = phi i8* [ %54, %when_exit18 ]
  br label %returnable_block_exit27

unreachable29:                                    ; No predecessors!
  %57 = invoke i8* @"kfun:konan.internal.unboxNativePointed(konan.internal.NativePointedBox?)ValueType"(%struct.ObjHeader* undef)
          to label %call_success28 unwind label %cleanup_landingpad

call_success28:                                   ; preds = %unreachable29
  unreachable

returnable_block_exit27:                          ; preds = %returnable_block_exit24
  %58 = phi i8* [ %56, %returnable_block_exit24 ]
  %59 = invoke i8* @"kfun:kotlinx.cinterop.<get-ptr>@#GENERIC_kotlinx.cinterop.CPointed.()Generic"(i8* %58)
          to label %call_success30 unwind label %cleanup_landingpad

call_success30:                                   ; preds = %returnable_block_exit27
  br label %returnable_block_exit31

unreachable33:                                    ; No predecessors!
  %60 = invoke i8* @"kfun:konan.internal.unboxCPointer(konan.internal.CPointerBox?)ValueType"(%struct.ObjHeader* undef)
          to label %call_success32 unwind label %cleanup_landingpad

call_success32:                                   ; preds = %unreachable33
  unreachable

returnable_block_exit31:                          ; preds = %call_success30
  %61 = phi i8* [ %59, %call_success30 ]
  %62 = invoke %struct.ObjHeader* @"kfun:konan.internal.boxCPointer(kotlinx.cinterop.CPointer<kotlinx.cinterop.CPointed>?)konan.internal.CPointerBox?"(i8* %61, %struct.ObjHeader** %15)
          to label %call_success34 unwind label %cleanup_landingpad

call_success34:                                   ; preds = %returnable_block_exit31
  %63 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.text.StringBuilder", %struct.ObjHeader** %16)
  invoke void @"kfun:kotlin.text.StringBuilder.<init>()kotlin.text.StringBuilder"(%struct.ObjHeader* %63)
          to label %call_success35 unwind label %cleanup_landingpad

call_success35:                                   ; preds = %call_success34
  %64 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %63, %struct.ObjHeader* @"kstr:R4bdQtmAdIMDVbjCKOoakgMIPqo=", %struct.ObjHeader** %17)
          to label %call_success36 unwind label %cleanup_landingpad

call_success36:                                   ; preds = %call_success35
  %65 = load i32, i32* %p-digits
  %66 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.Int)kotlin.text.StringBuilder"(%struct.ObjHeader* %63, i32 %65, %struct.ObjHeader** %18)
          to label %call_success37 unwind label %cleanup_landingpad

call_success37:                                   ; preds = %call_success36
  %67 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %63, %struct.ObjHeader* @"kstr:SgoZIY4IKjQ6GxflMzQJr52Y8PU=", %struct.ObjHeader** %19)
          to label %call_success38 unwind label %cleanup_landingpad

call_success38:                                   ; preds = %call_success37
  %68 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.toString()kotlin.String"(%struct.ObjHeader* %63, %struct.ObjHeader** %20)
          to label %call_success39 unwind label %cleanup_landingpad

call_success39:                                   ; preds = %call_success38
  %69 = load float, float* %"p-<this>"
  store float %69, float* %"tmp0_$elem"
  %70 = call %struct.ObjHeader* @AllocArrayInstance(%struct.TypeInfo* @"ktype:kotlin.Array", i32 1, %struct.ObjHeader** %21)
  invoke void @"kfun:kotlin.Array.<init>$stdlib(kotlin.Int)kotlin.Array<#GENERIC>"(%struct.ObjHeader* %70, i32 1)
          to label %call_success40 unwind label %cleanup_landingpad

call_success40:                                   ; preds = %call_success39
  call void @UpdateRef(%struct.ObjHeader** %"tmp1_$array", %struct.ObjHeader* %70)
  %71 = load %struct.ObjHeader*, %struct.ObjHeader** %"tmp1_$array"
  call void @UpdateRef(%struct.ObjHeader** %22, %struct.ObjHeader* %71)
  %72 = load float, float* %"tmp0_$elem"
  %73 = invoke %struct.ObjHeader* @Kotlin_boxFloat(float %72, %struct.ObjHeader** %23)
          to label %call_success41 unwind label %cleanup_landingpad

call_success41:                                   ; preds = %call_success40
  invoke void @Kotlin_Array_set(%struct.ObjHeader* %71, i32 0, %struct.ObjHeader* %73)
          to label %call_success42 unwind label %cleanup_landingpad

call_success42:                                   ; preds = %call_success41
  %74 = load %struct.ObjHeader*, %struct.ObjHeader** %"tmp1_$array"
  call void @UpdateRef(%struct.ObjHeader** %24, %struct.ObjHeader* %74)
  %75 = invoke i32 @"kfun:platform.posix.snprintf(kotlinx.cinterop.CValuesRef<kotlinx.cinterop.ByteVarOf<kotlin.Byte>>?;kotlin.Long;kotlin.String?;kotlin.Array<out_kotlin.Any?>_VarArg)ValueType"(%struct.ObjHeader* %62, i64 50, %struct.ObjHeader* %68, %struct.ObjHeader* %74)
          to label %call_success43 unwind label %cleanup_landingpad

call_success43:                                   ; preds = %call_success42
  %76 = invoke %struct.ObjHeader* @"kfun:kotlinx.cinterop.toKString@kotlinx.cinterop.CPointer<kotlinx.cinterop.ByteVarOf<kotlin.Byte>>.()kotlin.String"(i8* %61, %struct.ObjHeader** %25)
          to label %call_success44 unwind label %cleanup_landingpad

call_success44:                                   ; preds = %call_success43
  br label %epilogue

label_init7:                                      ; preds = %call_success6
  %77 = invoke %struct.ObjHeader* @InitSharedInstance(%struct.ObjHeader** @"kobjref:kotlinx.cinterop.ByteVarOf.Companion", %struct.ObjHeader** @"kshadowobjref:kotlinx.cinterop.ByteVarOf.Companion", %struct.TypeInfo* @"ktype:kotlinx.cinterop.ByteVarOf.Companion", void (%struct.ObjHeader*)* @"kfun:kotlinx.cinterop.ByteVarOf.Companion.<init>()kotlinx.cinterop.ByteVarOf.Companion", %struct.ObjHeader** %11)
          to label %call_success9 unwind label %cleanup_landingpad

call_success9:                                    ; preds = %label_init7
  br label %label_continue8

label_init1:                                      ; preds = %label_continue
  %78 = invoke %struct.ObjHeader* @InitSharedInstance(%struct.ObjHeader** @"kobjref:kotlinx.cinterop.ByteVarOf.Companion", %struct.ObjHeader** @"kshadowobjref:kotlinx.cinterop.ByteVarOf.Companion", %struct.TypeInfo* @"ktype:kotlinx.cinterop.ByteVarOf.Companion", void (%struct.ObjHeader*)* @"kfun:kotlinx.cinterop.ByteVarOf.Companion.<init>()kotlinx.cinterop.ByteVarOf.Companion", %struct.ObjHeader** %10)
          to label %call_success3 unwind label %cleanup_landingpad

call_success3:                                    ; preds = %label_init1
  br label %label_continue2

label_init:                                       ; preds = %entry
  %79 = invoke %struct.ObjHeader* @InitSharedInstance(%struct.ObjHeader** @"kobjref:kotlinx.cinterop.nativeHeap", %struct.ObjHeader** @"kshadowobjref:kotlinx.cinterop.nativeHeap", %struct.TypeInfo* @"ktype:kotlinx.cinterop.nativeHeap", void (%struct.ObjHeader*)* @"kfun:kotlinx.cinterop.nativeHeap.<init>()kotlinx.cinterop.nativeHeap", %struct.ObjHeader** %9)
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %label_init
  br label %label_continue

epilogue:                                         ; preds = %call_success44
  %80 = phi %struct.ObjHeader* [ %76, %call_success44 ]
  call void @UpdateReturnRef(%struct.ObjHeader** %2, %struct.ObjHeader* %80)
  call void @LeaveFrame(%struct.ObjHeader** %5, i32 0, i32 19)
  ret %struct.ObjHeader* %80

cleanup_landingpad:                               ; preds = %label_init, %label_init1, %label_init7, %call_success43, %call_success42, %call_success41, %call_success40, %call_success39, %call_success38, %call_success37, %call_success36, %call_success35, %call_success34, %returnable_block_exit31, %unreachable33, %returnable_block_exit27, %unreachable29, %unreachable26, %unreachable23, %when_case20, %call_success16, %when_next, %when_case, %returnable_block_exit11, %unreachable13, %label_continue8, %returnable_block_exit, %unreachable, %label_continue2
  %81 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %5, i32 0, i32 19)
  resume { i8*, i32 } %81
}

define i32 @"kfun:printFormated@kotlin.Double.(kotlin.Int)ValueType"(double, i32) #10 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  %"p-<this>" = alloca double
  %p-digits = alloca i32
  %"tmp0_$elem" = alloca double
  %2 = alloca %struct.ObjHeader*, i32 11
  %3 = bitcast %struct.ObjHeader** %2 to i8*
  call void @llvm.memset.p0i8.i32(i8* %3, i8 0, i32 88, i32 8, i1 false)
  call void @EnterFrame(%struct.ObjHeader** %2, i32 0, i32 11)
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %4 = phi %struct.ObjHeader** [ %2, %prologue ]
  %5 = ptrtoint %struct.ObjHeader** %4 to i64
  %6 = or i64 %5, 1
  %7 = inttoptr i64 %6 to %struct.ObjHeader**
  store double %0, double* %"p-<this>"
  store i32 %1, i32* %p-digits
  %8 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 1
  %9 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 2
  %10 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 3
  %11 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 4
  %12 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 5
  %13 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 6
  %"tmp1_$array" = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 7
  %14 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 8
  %15 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 9
  %16 = getelementptr %struct.ObjHeader*, %struct.ObjHeader** %4, i32 10
  br label %entry

entry:                                            ; preds = %locals_init
  %17 = call %struct.ObjHeader* @AllocInstance(%struct.TypeInfo* @"ktype:kotlin.text.StringBuilder", %struct.ObjHeader** %8)
  invoke void @"kfun:kotlin.text.StringBuilder.<init>()kotlin.text.StringBuilder"(%struct.ObjHeader* %17)
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %entry
  %18 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %17, %struct.ObjHeader* @"kstr:R4bdQtmAdIMDVbjCKOoakgMIPqo=", %struct.ObjHeader** %9)
          to label %call_success1 unwind label %cleanup_landingpad

call_success1:                                    ; preds = %call_success
  %19 = load i32, i32* %p-digits
  %20 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.Int)kotlin.text.StringBuilder"(%struct.ObjHeader* %17, i32 %19, %struct.ObjHeader** %10)
          to label %call_success2 unwind label %cleanup_landingpad

call_success2:                                    ; preds = %call_success1
  %21 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader* %17, %struct.ObjHeader* @"kstr:SgoZIY4IKjQ6GxflMzQJr52Y8PU=", %struct.ObjHeader** %11)
          to label %call_success3 unwind label %cleanup_landingpad

call_success3:                                    ; preds = %call_success2
  %22 = invoke %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.toString()kotlin.String"(%struct.ObjHeader* %17, %struct.ObjHeader** %12)
          to label %call_success4 unwind label %cleanup_landingpad

call_success4:                                    ; preds = %call_success3
  %23 = load double, double* %"p-<this>"
  store double %23, double* %"tmp0_$elem"
  %24 = call %struct.ObjHeader* @AllocArrayInstance(%struct.TypeInfo* @"ktype:kotlin.Array", i32 1, %struct.ObjHeader** %13)
  invoke void @"kfun:kotlin.Array.<init>$stdlib(kotlin.Int)kotlin.Array<#GENERIC>"(%struct.ObjHeader* %24, i32 1)
          to label %call_success5 unwind label %cleanup_landingpad

call_success5:                                    ; preds = %call_success4
  call void @UpdateRef(%struct.ObjHeader** %"tmp1_$array", %struct.ObjHeader* %24)
  %25 = load %struct.ObjHeader*, %struct.ObjHeader** %"tmp1_$array"
  call void @UpdateRef(%struct.ObjHeader** %14, %struct.ObjHeader* %25)
  %26 = load double, double* %"tmp0_$elem"
  %27 = invoke %struct.ObjHeader* @Kotlin_boxDouble(double %26, %struct.ObjHeader** %15)
          to label %call_success6 unwind label %cleanup_landingpad

call_success6:                                    ; preds = %call_success5
  invoke void @Kotlin_Array_set(%struct.ObjHeader* %25, i32 0, %struct.ObjHeader* %27)
          to label %call_success7 unwind label %cleanup_landingpad

call_success7:                                    ; preds = %call_success6
  %28 = load %struct.ObjHeader*, %struct.ObjHeader** %"tmp1_$array"
  call void @UpdateRef(%struct.ObjHeader** %16, %struct.ObjHeader* %28)
  %29 = invoke i32 @"kfun:platform.posix.printf(kotlin.String?;kotlin.Array<out_kotlin.Any?>_VarArg)ValueType"(%struct.ObjHeader* %22, %struct.ObjHeader* %28)
          to label %call_success8 unwind label %cleanup_landingpad

call_success8:                                    ; preds = %call_success7
  br label %epilogue

epilogue:                                         ; preds = %call_success8
  %30 = phi i32 [ %29, %call_success8 ]
  call void @LeaveFrame(%struct.ObjHeader** %4, i32 0, i32 11)
  ret i32 %30

cleanup_landingpad:                               ; preds = %call_success7, %call_success6, %call_success5, %call_success4, %call_success3, %call_success2, %call_success1, %call_success, %entry
  %31 = landingpad { i8*, i32 }
          cleanup
  call void @LeaveFrame(%struct.ObjHeader** %4, i32 0, i32 11)
  resume { i8*, i32 } %31
}

declare i32 @Kotlin_Any_hashCode(%struct.ObjHeader*)

declare %struct.ObjHeader* @"kfun:kotlin.Any.toString()kotlin.String"(%struct.ObjHeader*, %struct.ObjHeader**)

declare i1 @Kotlin_Any_equals(%struct.ObjHeader*, %struct.ObjHeader*)

declare void @"kfun:kotlin.Any.<init>()kotlin.Any"(%struct.ObjHeader*)

declare double @Kotlin_Float_times_Double(float, double)

declare %struct.ObjHeader* @"kfun:kotlin.Int.rangeTo(kotlin.Int)kotlin.ranges.IntRange"(i32, i32, %struct.ObjHeader**)

declare i1 @"kfun:kotlin.ranges.IntRange.contains(kotlin.Int)ValueType"(%struct.ObjHeader*, i32)

declare void @"kfun:kotlin.text.StringBuilder.<init>()kotlin.text.StringBuilder"(%struct.ObjHeader*)

declare %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.String)kotlin.text.StringBuilder"(%struct.ObjHeader*, %struct.ObjHeader*, %struct.ObjHeader**)

declare %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.Int)kotlin.text.StringBuilder"(%struct.ObjHeader*, i32, %struct.ObjHeader**)

declare %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.toString()kotlin.String"(%struct.ObjHeader*, %struct.ObjHeader**)

declare %struct.ObjHeader* @"kfun:kotlin.String.plus(kotlin.Any?)kotlin.String"(%struct.ObjHeader*, %struct.ObjHeader*, %struct.ObjHeader**)

declare float @Kotlin_Float_times_Int(float, i32)

declare i32 @Kotlin_Int_and_Int(i32, i32)

declare %struct.ObjHeader* @"kfun:konan.internal.ThrowTypeCastException()kotlin.Nothing"(%struct.ObjHeader**)

define void @33(i32) personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %1 = phi %struct.ObjHeader** [ null, %prologue ]
  %2 = ptrtoint %struct.ObjHeader** %1 to i64
  %3 = or i64 %2, 1
  %4 = inttoptr i64 %3 to %struct.ObjHeader**
  br label %entry

entry:                                            ; preds = %locals_init
  switch i32 %0, label %default [
    i32 0, label %init
    i32 1, label %local_deinit
    i32 2, label %global_deinit
  ]

default:                                          ; preds = %entry
  unreachable

global_deinit:                                    ; preds = %entry
  call void @UpdateRef(%struct.ObjHeader** @"kobjref:Comissao.Companion", %struct.ObjHeader* null)
  br label %epilogue

local_deinit:                                     ; preds = %entry
  call void @UpdateRef(%struct.ObjHeader** @"kshadowobjref:Comissao.Companion", %struct.ObjHeader* null)
  br label %epilogue

init:                                             ; preds = %entry
  br label %epilogue

epilogue:                                         ; preds = %init, %local_deinit, %global_deinit
  ret void

cleanup_landingpad:                               ; No predecessors!
  %5 = landingpad { i8*, i32 }
          cleanup
  resume { i8*, i32 } %5
}

define void @34() personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %0 = phi %struct.ObjHeader** [ null, %prologue ]
  %1 = ptrtoint %struct.ObjHeader** %0 to i64
  %2 = or i64 %1, 1
  %3 = inttoptr i64 %2 to %struct.ObjHeader**
  br label %entry

entry:                                            ; preds = %locals_init
  call void @AppendToInitializersTail(%struct.InitNode* @init_node)
  br label %epilogue

epilogue:                                         ; preds = %entry
  ret void

cleanup_landingpad:                               ; No predecessors!
  %4 = landingpad { i8*, i32 }
          cleanup
  resume { i8*, i32 } %4
}

declare %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.Double)kotlin.text.StringBuilder"(%struct.ObjHeader*, double, %struct.ObjHeader**)

declare i32 @"kfun:kotlin.Int.hashCode()ValueType"(i32)

declare i32 @Kotlin_Int_times_Int(i32, i32)

declare i32 @Kotlin_Int_plus_Int(i32, i32)

declare i32 @"kfun:kotlin.Double.hashCode()ValueType"(double)

declare %struct.ObjHeader* @Kotlin_boxDouble(double, %struct.ObjHeader**)

declare i8* @Kotlin_Any_getTypeInfo(%struct.ObjHeader*)

declare i1 @"private_functions_<stdlib>_kfun:konan.internal.DoubleBox.equals(kotlin.Any?)ValueType_179"(%struct.ObjHeader*, %struct.ObjHeader*)

declare void @"kfun:konan.internal.KClassImpl.<init>(konan.internal.NativePtr)konan.internal.KClassImpl<#GENERIC_kotlin.Any>"(%struct.ObjHeader*, i8*)

declare %struct.ObjHeader* @"kfun:konan.internal.ThrowInvalidReceiverTypeException(kotlin.reflect.KClass<#STAR>)kotlin.Nothing"(%struct.ObjHeader*, %struct.ObjHeader**)

declare void @"kfun:kotlin.collections.ArrayList.<init>()kotlin.collections.ArrayList<#GENERIC>"(%struct.ObjHeader*)

declare void @Kotlin_io_Console_println(%struct.ObjHeader*)

declare void @Kotlin_io_Console_print(%struct.ObjHeader*)

declare %struct.ObjHeader* @Kotlin_io_Console_readLine(%struct.ObjHeader**)

declare %struct.ObjHeader* @ThrowNullPointerException(%struct.ObjHeader**)

declare %struct.ObjHeader* @"kfun:kotlin.text.toIntOrNull@kotlin.String.()kotlin.Int?"(%struct.ObjHeader*, %struct.ObjHeader**)

declare void @"kfun:kotlin.NumberFormatException.<init>()kotlin.NumberFormatException"(%struct.ObjHeader*)

declare i32 @"kfun:konan.internal.IntBox.<get-value>()ValueType"(%struct.ObjHeader*)

declare void @Kotlin_io_Console_println0()

declare i32 @Kotlin_Int_compareTo_Int(i32, i32)

declare void @"kfun:konan.internal.FloatingPointParser.<init>()konan.internal.FloatingPointParser"(%struct.ObjHeader*)

declare double @"kfun:konan.internal.FloatingPointParser.parseDouble(kotlin.String)ValueType"(%struct.ObjHeader*, %struct.ObjHeader*)

declare double @"kfun:konan.internal.DoubleBox.<get-value>()ValueType"(%struct.ObjHeader*)

declare i1 @"kfun:kotlin.collections.ArrayList.add(#GENERIC)ValueType"(%struct.ObjHeader*, %struct.ObjHeader*)

declare i32 @"kfun:kotlin.collections.collectionSizeOrDefault$stdlib@kotlin.collections.Iterable<#GENERIC>.(kotlin.Int)Generic"(%struct.ObjHeader*, i32)

declare void @"kfun:kotlin.collections.ArrayList.<init>(kotlin.Int)kotlin.collections.ArrayList<#GENERIC>"(%struct.ObjHeader*, i32)

declare %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.ArrayList.iterator()kotlin.collections.MutableIterator<#GENERIC>_491"(%struct.ObjHeader*, %struct.ObjHeader**)

declare i1 @"private_functions_<stdlib>_kotlin.collections.ArrayList.Itr.hasNext#internal_1188"(%struct.ObjHeader*)

declare %struct.ObjHeader* @"private_functions_<stdlib>_kotlin.collections.ArrayList.Itr.next#internal_1190"(%struct.ObjHeader*, %struct.ObjHeader**)

declare i1 @"private_functions_<stdlib>_kfun:kotlin.collections.ArrayList.add(#GENERIC)ValueType_494"(%struct.ObjHeader*, %struct.ObjHeader*)

declare i1 @"private_functions_<stdlib>_kotlin.collections.AbstractList.IteratorImpl.hasNext#internal_420"(%struct.ObjHeader*)

declare i1 @"private_functions_<stdlib>_kfun:kotlin.collections.EmptyIterator.hasNext()ValueType_463"(%struct.ObjHeader*)

declare %struct.ObjHeader* @"private_functions_<stdlib>_kotlin.collections.AbstractList.IteratorImpl.next#internal_421"(%struct.ObjHeader*, %struct.ObjHeader**)

declare %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.EmptyIterator.next()kotlin.Nothing_465"(%struct.ObjHeader*, %struct.ObjHeader**)

declare %struct.ObjHeader* @"kfun:kotlin.text.StringBuilder.append(kotlin.Any?)kotlin.text.StringBuilder"(%struct.ObjHeader*, %struct.ObjHeader*, %struct.ObjHeader**)

declare double @"kfun:kotlin.collections.sum@kotlin.collections.Iterable<kotlin.Double>.()ValueType"(%struct.ObjHeader*)

declare void @"kfun:kotlin.collections.HashMap.<init>()kotlin.collections.HashMap<#GENERIC,#GENERIC>"(%struct.ObjHeader*)

declare %struct.ObjHeader* @Kotlin_boxInt(i32, %struct.ObjHeader**)

declare %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.HashMap.get(#GENERIC)#GENERIC_568"(%struct.ObjHeader*, %struct.ObjHeader*, %struct.ObjHeader**)

declare %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.HashMap.put(#GENERIC;#GENERIC)#GENERIC_566"(%struct.ObjHeader*, %struct.ObjHeader*, %struct.ObjHeader*, %struct.ObjHeader**)

declare i32 @"private_functions_<stdlib>_kfun:kotlin.collections.HashMap.<get-size>()ValueType_563"(%struct.ObjHeader*)

declare %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.HashMap.<get-entries>()kotlin.collections.MutableSet<kotlin.collections.MutableMap.MutableEntry<#GENERIC,#GENERIC>>_569"(%struct.ObjHeader*, %struct.ObjHeader**)

declare %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.HashMapEntrySet.iterator()kotlin.collections.MutableIterator<kotlin.collections.MutableMap.MutableEntry<#GENERIC,#GENERIC>>_1301"(%struct.ObjHeader*, %struct.ObjHeader**)

declare i1 @"private_functions_<stdlib>_kfun:kotlin.collections.HashMap.Itr.hasNext()ValueType_1311"(%struct.ObjHeader*)

declare %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.HashMap.EntriesItr.next()kotlin.collections.HashMap.EntryRef<#GENERIC,#GENERIC>_1314"(%struct.ObjHeader*, %struct.ObjHeader**)

declare %struct.ObjHeader* @"private_functions_<stdlib>_kfun:kotlin.collections.HashMap.KeysItr.next()#GENERIC_1312"(%struct.ObjHeader*, %struct.ObjHeader**)

declare void @"kfun:kotlin.Pair.<init>(#GENERIC;#GENERIC)kotlin.Pair<#GENERIC,#GENERIC>"(%struct.ObjHeader*, %struct.ObjHeader*, %struct.ObjHeader*)

declare %struct.ObjHeader* @"kfun:kotlin.Pair.<get-first>()#GENERIC"(%struct.ObjHeader*, %struct.ObjHeader**)

declare %struct.ObjHeader* @"kfun:kotlin.Pair.<get-second>()#GENERIC"(%struct.ObjHeader*, %struct.ObjHeader**)

declare void @"kfun:kotlinx.cinterop.nativeHeap.<init>()kotlinx.cinterop.nativeHeap"(%struct.ObjHeader*)

declare void @"kfun:kotlinx.cinterop.ByteVarOf.Companion.<init>()kotlinx.cinterop.ByteVarOf.Companion"(%struct.ObjHeader*)

declare i64 @"kfun:kotlinx.cinterop.CVariable.Type.<get-size>()ValueType"(%struct.ObjHeader*)

declare i64 @"kfun:konan.internal.LongBox.<get-value>()ValueType"(%struct.ObjHeader*)

declare i64 @Kotlin_Long_times_Long(i64, i64)

declare i32 @"kfun:kotlinx.cinterop.CVariable.Type.<get-align>()ValueType"(%struct.ObjHeader*)

declare i8* @"private_functions_<stdlib>_kfun:kotlinx.cinterop.nativeHeap.alloc(kotlin.Long;kotlin.Int)ValueType_66"(%struct.ObjHeader*, i64, i32)

declare i8* @"kfun:konan.internal.unboxNativePointed(konan.internal.NativePointedBox?)ValueType"(%struct.ObjHeader*)

declare i8* @"kfun:kotlinx.cinterop.<get-ptr>@#GENERIC_kotlinx.cinterop.CPointed.()Generic"(i8*)

declare i8* @"kfun:konan.internal.unboxCPointer(konan.internal.CPointerBox?)ValueType"(%struct.ObjHeader*)

declare %struct.ObjHeader* @"kfun:konan.internal.boxCPointer(kotlinx.cinterop.CPointer<kotlinx.cinterop.CPointed>?)konan.internal.CPointerBox?"(i8*, %struct.ObjHeader**)

declare void @"kfun:kotlin.Array.<init>$stdlib(kotlin.Int)kotlin.Array<#GENERIC>"(%struct.ObjHeader*, i32)

declare void @Kotlin_Array_set(%struct.ObjHeader*, i32, %struct.ObjHeader*)

declare i32 @"kfun:platform.posix.snprintf(kotlinx.cinterop.CValuesRef<kotlinx.cinterop.ByteVarOf<kotlin.Byte>>?;kotlin.Long;kotlin.String?;kotlin.Array<out_kotlin.Any?>_VarArg)ValueType"(%struct.ObjHeader*, i64, %struct.ObjHeader*, %struct.ObjHeader*)

declare %struct.ObjHeader* @"kfun:kotlinx.cinterop.toKString@kotlinx.cinterop.CPointer<kotlinx.cinterop.ByteVarOf<kotlin.Byte>>.()kotlin.String"(i8*, %struct.ObjHeader**)

declare %struct.ObjHeader* @Kotlin_boxFloat(float, %struct.ObjHeader**)

declare i32 @"kfun:platform.posix.printf(kotlin.String?;kotlin.Array<out_kotlin.Any?>_VarArg)ValueType"(%struct.ObjHeader*, %struct.ObjHeader*)

define void @35(i32) personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %1 = phi %struct.ObjHeader** [ null, %prologue ]
  %2 = ptrtoint %struct.ObjHeader** %1 to i64
  %3 = or i64 %2, 1
  %4 = inttoptr i64 %3 to %struct.ObjHeader**
  br label %entry

entry:                                            ; preds = %locals_init
  switch i32 %0, label %default [
    i32 0, label %init
    i32 1, label %local_deinit
    i32 2, label %global_deinit
  ]

default:                                          ; preds = %entry
  unreachable

global_deinit:                                    ; preds = %entry
  call void @UpdateRef(%struct.ObjHeader** @"kobjref:konan.internal.FloatingPointParser", %struct.ObjHeader* null)
  call void @UpdateRef(%struct.ObjHeader** @"kobjref:kotlinx.cinterop.nativeHeap", %struct.ObjHeader* null)
  call void @UpdateRef(%struct.ObjHeader** @"kobjref:kotlinx.cinterop.ByteVarOf.Companion", %struct.ObjHeader* null)
  br label %epilogue

local_deinit:                                     ; preds = %entry
  call void @UpdateRef(%struct.ObjHeader** @"kshadowobjref:konan.internal.FloatingPointParser", %struct.ObjHeader* null)
  call void @UpdateRef(%struct.ObjHeader** @"kshadowobjref:kotlinx.cinterop.nativeHeap", %struct.ObjHeader* null)
  call void @UpdateRef(%struct.ObjHeader** @"kshadowobjref:kotlinx.cinterop.ByteVarOf.Companion", %struct.ObjHeader* null)
  br label %epilogue

init:                                             ; preds = %entry
  br label %epilogue

epilogue:                                         ; preds = %init, %local_deinit, %global_deinit
  ret void

cleanup_landingpad:                               ; No predecessors!
  %5 = landingpad { i8*, i32 }
          cleanup
  resume { i8*, i32 } %5
}

define void @36() personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %0 = phi %struct.ObjHeader** [ null, %prologue ]
  %1 = ptrtoint %struct.ObjHeader** %0 to i64
  %2 = or i64 %1, 1
  %3 = inttoptr i64 %2 to %struct.ObjHeader**
  br label %entry

entry:                                            ; preds = %locals_init
  call void @AppendToInitializersTail(%struct.InitNode* @init_node.1)
  br label %epilogue

epilogue:                                         ; preds = %entry
  ret void

cleanup_landingpad:                               ; No predecessors!
  %4 = landingpad { i8*, i32 }
          cleanup
  resume { i8*, i32 } %4
}

define void @_Konan_init_main() personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
prologue:
  br label %locals_init

locals_init:                                      ; preds = %prologue
  %0 = phi %struct.ObjHeader** [ null, %prologue ]
  %1 = ptrtoint %struct.ObjHeader** %0 to i64
  %2 = or i64 %1, 1
  %3 = inttoptr i64 %2 to %struct.ObjHeader**
  br label %entry

entry:                                            ; preds = %locals_init
  %4 = load i32, i32* @Konan_init_guard
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %need_init, label %inited

need_init:                                        ; preds = %entry
  store i32 1, i32* @Konan_init_guard
  invoke void @34()
          to label %call_success unwind label %cleanup_landingpad

call_success:                                     ; preds = %need_init
  invoke void @36()
          to label %call_success1 unwind label %cleanup_landingpad

call_success1:                                    ; preds = %call_success
  br label %epilogue

inited:                                           ; preds = %entry
  br label %epilogue

epilogue:                                         ; preds = %inited, %call_success1
  ret void

cleanup_landingpad:                               ; preds = %call_success, %need_init
  %6 = landingpad { i8*, i32 }
          cleanup
  resume { i8*, i32 } %6
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { argmemonly nounwind }
attributes #10 = { "no-frame-pointer-elim"="true" }
