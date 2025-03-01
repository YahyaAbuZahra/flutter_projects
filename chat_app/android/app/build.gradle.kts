plugins {
    id("com.android.application")
    id("com.google.gms.google-services")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.chat_app" // استبدل باسم الحزمة الخاص بتطبيقك
    compileSdk = 34// رقم SDK الذي سيتم استخدامه أثناء التجميع
    ndkVersion = "27.0.12077973"
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = "11"
    }

    defaultConfig {
        applicationId = "com.example.chat_app"  // استبدل باسم الحزمة الخاص بتطبيقك
        minSdkVersion(23)  // يجب استخدام minSdkVersion() مع رقم صحيح
        targetSdkVersion(33)  // يجب استخدام targetSdkVersion() مع رقم صحيح
        versionCode = flutter.versionCode.toInt()
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."  // المسار إلى مجلد Flutter
}
