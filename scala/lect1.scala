def add(x:Int, y: Int): Int= {
	x+y
	
}

println(add(2,3))


def z = 4

def add_z(x:Int):Int = {
	z+x
}

println(add_z(4))

def square(x:Int):Int = {
	x*x
}

def cube(x:Int):Int = {
	x*square(x)
}

println("cube of 3:")
println(cube(3))



def factorial(x: Int): BigInt = {
	if(x <= 1)
		1
	else
	x*(factorial(x-1))

}

println(factorial(10Error:Execution failed for task ':tesstwo:compileReleaseNdk'.
> com.android.ide.common.internal.LoggedErrorException: Failed to run command:
  	/Users/kyawthan/Documents/android-ndk-r10b/ndk-build NDK_PROJECT_PATH=null APP_BUILD_SCRIPT=/Users/kyawthan/AndroidStudioProjects/PillVerifier/tesstwo/build/intermediates/ndk/release/Android.mk APP_PLATFORM=android-8 NDK_OUT=/Users/kyawthan/AndroidStudioProjects/PillVerifier/tesstwo/build/intermediates/ndk/release/obj NDK_LIBS_OUT=/Users/kyawthan/AndroidStudioProjects/PillVerifier/tesstwo/build/intermediates/ndk/release/lib APP_ABI=all
  Error Code:
  	2
  Output:
  	In file included from /Users/kyawthan/AndroidStudioProjects/PillVerifier/tesstwo/src/main/jni/com_googlecode_leptonica_android/box.cpp:17:0:
  	/Users/kyawthan/AndroidStudioProjects/PillVerifier/tesstwo/src/main/jni/com_googlecode_leptonica_android/common.h:22:24: fatal error: allheaders.h: No such file or directory
  	compilation terminated.
  	make: *** [/Users/kyawthan/AndroidStudioProjects/PillVerifier/tesstwo/build/intermediates/ndk/release/obj/local/armeabi-v7a/objs/tesstwo//Users/kyawthan/AndroidStudioProjects/PillVerifier/tesstwo/src/main/jni/com_googlecode_leptonica_android/box.o] Error 1))