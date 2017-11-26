# To enable ProGuard in your project, edit project.properties
# to define the proguard.config property as described in that file.
#
# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in ${sdk.dir}/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the ProGuard
# include property in project.properties.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}


-dontwarn
-dontshrink
-dontoptimize

-dontwarn org.apache.commons.**

-dontwarn java.awt.**
-dontwarn javax.xml.**
-dontwarn javax.xml.stream.events.**

-dontwarn com.fasterxml.jackson.databind.**

-keepattributes *Annotation*,EnclosingMethod

-keep public class com.dami.new4board.R$*{
    public static final int *;
}
-keep public class com.dami.new4board.model {*;}
-keep public class com.dami.new4board.model.** {*;}

-keep public class com.dami.new4board.model.**{
	public void set*(***);
	public *** get*();
}


-keep public class * extends android.app.Fragment
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class com.android.vending.licensing.ILicensingService

-dontnote android.net.http.*
-dontnote org.apache.http.**

-dontwarn android.support.v4.**  
-keep class android.support.v4.** {*;}  
-keep public class * extends android.support.v4.**  
-dontwarn android.support.v13.**  
-keep class android.support.v13.** {*;}  
-keep public class * extends android.support.v13.** 

-keep public class javax.**
-dontwarn android.webkit.WebView
-keep public class android.webkit.**

-keepclasseswithmembernames class * {
    native <methods>;
}
-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}
-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}
-keepclassmembers class * extends android.app.Activity {
   public void *(android.view.View);
}
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}


#与jackson代码混淆相关
-keep class com.fasterxml.jackson.datebind*.** {*;}
-keep class com.fasterxml.jackson.core*.** {*;}
-keep class com.fasterxml.jackson.annotation*.** {*;}
-keep class com.fasterxml.jackson.databind.ext.*.** {*;}
-keep class org.w3c.dom.bootstrap.DOMImplementationRegistry {*;}

-keep class org.apache.http.entity.mime.** {*;}
-keep class vi.com.gdi.bgl.android.java.** {*;}
-keep class org.jsoup*.** {*;}


#与JavaScript接口类代码混淆相关
-keep public class com.dami.new4board.jsinterface.ImageBrowserJSInterface {*;}


#与umeng社会化分享代码混淆相关
-dontusemixedcaseclassnames
-dontshrink
-dontoptimize
-dontwarn com.google.android.maps.**
-dontwarn android.webkit.WebView
-dontwarn com.umeng.**
-dontwarn com.tencent.weibo.sdk.**
-dontwarn com.facebook.**
-keep public class javax.**
-keep public class android.webkit.**
-dontwarn android.support.v4.**
-keep enum com.facebook.**
-keepattributes Exceptions,InnerClasses,Signature
-keepattributes *Annotation*
-keepattributes SourceFile,LineNumberTable

-keep public interface com.facebook.**
-keep public interface com.tencent.**
-keep public interface com.umeng.socialize.**
-keep public interface com.umeng.socialize.sensor.**
-keep public interface com.umeng.scrshot.**
-keep class com.android.dingtalk.share.ddsharemodule.** { *; }
-keep public class com.umeng.socialize.* {*;}

-keep class com.facebook.**
-keep class com.facebook.** { *; }
-keep class com.umeng.scrshot.**
-keep public class com.tencent.** {*;}
-keep class com.umeng.socialize.sensor.**
-keep class com.umeng.socialize.handler.**
-keep class com.umeng.socialize.handler.*
-keep class com.umeng.weixin.handler.**
-keep class com.umeng.weixin.handler.*
-keep class com.umeng.qq.handler.**
-keep class com.umeng.qq.handler.*
-keep class UMMoreHandler{*;}
-keep class com.tencent.mm.sdk.modelmsg.WXMediaMessage {*;}
-keep class com.tencent.mm.sdk.modelmsg.** implements   com.tencent.mm.sdk.modelmsg.WXMediaMessage$IMediaObject {*;}
-keep class im.yixin.sdk.api.YXMessage {*;}
-keep class im.yixin.sdk.api.** implements im.yixin.sdk.api.YXMessage$YXMessageData{*;}
-keep class com.tencent.mm.sdk.** {
 *;
}
-dontwarn twitter4j.**
-keep class twitter4j.** { *; }

-keep class com.tencent.** {*;}
-dontwarn com.tencent.**
-keep public class com.umeng.com.umeng.soexample.R$*{
public static final int *;
}
-keep public class com.linkedin.android.mobilesdk.R$*{
public static final int *;
    }
-keepclassmembers enum * {
public static **[] values();
public static ** valueOf(java.lang.String);
}

-keep class com.tencent.open.TDialog$*
-keep class com.tencent.open.TDialog$* {*;}
-keep class com.tencent.open.PKDialog
-keep class com.tencent.open.PKDialog {*;}
-keep class com.tencent.open.PKDialog$*
-keep class com.tencent.open.PKDialog$* {*;}

-keep class com.sina.** {*;}
-dontwarn com.sina.**
-keep class  com.alipay.share.sdk.** {
   *;
}
-keepnames class * implements android.os.Parcelable {
public static final ** CREATOR;
}

-keep class com.linkedin.** { *; }
-keepattributes Signature


#与umeng分析统计服务代码混淆相关
-keepclassmembers class * {
   public <init>(org.json.JSONObject);
}
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}


#与umeng推送服务代码混淆相关
-keep class com.umeng.message.* {
    public <fields>;
    public <methods>;
}

-keep class com.umeng.message.protobuffer.* {
	public <fields>;
    public <methods>;
}
-keep class com.umeng.message.local.* {
    public <fields>;
    public <methods>;
}
-keep class com.squareup.wire.* {
	public <fields>;
    public <methods>;
}
-keep class org.android.agoo.impl.*{
	public <fields>;
    public <methods>;
}

-keep class org.android.agoo.service.* {*;}
-keep class org.android.spdy.**{*;} 


#与qiniu混淆相关
-keep class com.qiniu.**{*;}
-keep class com.qiniu.**{public <init>();}
-keep interface com.qiniu.**{*;}


#与ping++混淆相关
-dontwarn com.pingplusplus.**
-keep class com.pingplusplus.** {*;}

-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

#与okio混淆相关
-keep class com.squareup.okio.** {*;}
-dontwarn okio.**
-dontwarn java.nio.**
-dontwarn java.io.**
