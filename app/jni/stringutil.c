#include <string.h>
#include <jni.h>
#include "com_sai628_jnilib_StringUtil.h"


/*
 * Class:     com_sai628_jnilib_StringUtil
 * Method:    getStringFromC
 * Signature: ()Ljava/lang/String;
 */
jstring JNICALL Java_com_sai628_jnilib_StringUtil_getStringFromC(JNIEnv *env, jclass clazz)
{
    return (*env)->NewStringUTF(env, "Hello world! I am native string from C!");
}


/*
 * Class:     com_sai628_jnilib_StringUtil
 * Method:    callJavaStaticMethod
 * Signature: (Ljava/lang/String;)Ljava/lang/String;
 */
jstring JNICALL Java_com_sai628_jnilib_StringUtil_callJavaStaticMethod(JNIEnv *env, jclass clazz, jstring name)
{
    jclass clz = (*env)->FindClass(env, "com/sai628/jnilib/Hello");
    jmethodID mid = (*env)->GetStaticMethodID(env, clz, "sayHello", "(Ljava/lang/String;)Ljava/lang/String;");

    jstring result = (*env)->CallStaticObjectMethod(env, clz, mid, name);
    return result;
}


/*
 * Class:     com_sai628_jnilib_StringUtil
 * Method:    callJavaMethod
 * Signature: (I)Ljava/lang/String;
 */
jstring JNICALL Java_com_sai628_jnilib_StringUtil_callJavaMethod(JNIEnv *env, jclass clazz, jint age)
{
    jclass clz = (*env)->FindClass(env, "com/sai628/jnilib/Hello");
    jmethodID mid = (*env)->GetMethodID(env, clz, "sayHi", "(I)Ljava/lang/String;");
    jmethodID constructionId = (*env)->GetMethodID(env, clz, "<init>", "()V");
    jobject object = (*env)->NewObject(env, clz, constructionId);

    jstring result = (*env)->CallObjectMethod(env, object, mid, age);
    return result;
}
