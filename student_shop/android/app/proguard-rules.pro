# shared_preferences_android uses Pigeon JNI bindings with exact JVM signatures.
# Preserve the API types and their parameter/return types, including
# kotlin.coroutines.Continuation, so release obfuscation cannot break getAll().
-keep,includedescriptorclasses class io.flutter.plugins.sharedpreferences.** { *; }
-keep,includedescriptorclasses interface io.flutter.plugins.sharedpreferences.** { *; }

# jni's Kotlin bridge also looks these runtime helpers up by name from Dart.
-keep class kotlin.coroutines.Continuation { *; }
-keep class kotlin.coroutines.intrinsics.CoroutineSingletons { *; }
-keep class kotlin.coroutines.intrinsics.IntrinsicsKt { *; }
-keep class kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt { *; }
-keep class kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt { *; }
-keep class kotlin.Result { *; }
-keep class kotlin.Result$Failure { *; }
-keep class kotlin.Unit { *; }
