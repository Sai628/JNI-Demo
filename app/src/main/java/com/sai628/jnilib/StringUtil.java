package com.sai628.jnilib;

/**
 * @author Sai
 * @ClassName:
 * @Description:
 * @date 26/11/2017 13:32
 */
public class StringUtil
{
    static
    {
        System.loadLibrary("mystring");
    }

    public native static String getStringFromC();
    public native static String callJavaStaticMethod(String name);
    public native static String callJavaMethod(int age);
}
