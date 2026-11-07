# Keep kotlinx.serialization generated serializers for the lesson data classes.
-keepclassmembers class com.opl.onlinepianolessons.data.** {
    *** Companion;
    kotlinx.serialization.KSerializer serializer(...);
}
