package com.sai628.jnidemo.activity;

import android.app.Application;


public class AppContext extends Application
{
    private static AppContext mInstance;


    public void onCreate()
    {
        super.onCreate();
        init();
    }


    public synchronized static AppContext getInstance()
    {
        return mInstance;
    }


    private void init()
    {
        mInstance = this;
    }
}
