package com.sai628.jnilib;

/**
 * @author Sai
 * @ClassName:
 * @Description:
 * @date 26/11/2017 15:06
 */
public class Hello
{
    // This static method will be called by native C.
    public static String sayHello(String name)
    {
        if (name != null)
        {
            return "Hello, " + name;
        }

        return "name is null";
    }


    // This method will be called by native C.
    public String sayHi(int age)
    {
        return "Your age is: " + age;
    }
}
