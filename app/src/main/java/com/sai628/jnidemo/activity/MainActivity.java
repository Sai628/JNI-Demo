package com.sai628.jnidemo.activity;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.sai628.jnilib.StringUtil;
import com.sai628.jnidemo.R;


public class MainActivity extends Activity implements View.OnClickListener
{
    private Button callCFromJavaBtn;
    private Button callJavaStaticFromCBtn;
    private Button callJavaFromCBtn;
    private TextView resultTv;


    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main_view);

        initView();
    }


    private void initView()
    {
        callCFromJavaBtn = (Button) findViewById(R.id.main_view_call_c_from_java_btn);
        callCFromJavaBtn.setOnClickListener(this);
        callJavaStaticFromCBtn = (Button) findViewById(R.id.main_view_call_java_static_method_from_c_btn);
        callJavaStaticFromCBtn.setOnClickListener(this);
        callJavaFromCBtn = (Button) findViewById(R.id.main_view_call_java_from_c_btn);
        callJavaFromCBtn.setOnClickListener(this);

        resultTv = (TextView) findViewById(R.id.main_view_result_textview);
    }


    private void callCFromJava()
    {
        String result = StringUtil.getStringFromC();
        resultTv.setText(result);
    }


    private void callJavaStaticFromC()
    {
        String result = StringUtil.callJavaStaticMethod("Sai");
        resultTv.setText(result);
    }


    private void callJavaFromC()
    {
        String result = StringUtil.callJavaMethod(26);
        resultTv.setText(result);
    }


    @Override
    public void onClick(View v)
    {
        switch (v.getId())
        {
            case R.id.main_view_call_c_from_java_btn:
                callCFromJava();
                break;

            case R.id.main_view_call_java_static_method_from_c_btn:
                callJavaStaticFromC();
                break;

            case R.id.main_view_call_java_from_c_btn:
                callJavaFromC();
                break;
        }
    }
}
