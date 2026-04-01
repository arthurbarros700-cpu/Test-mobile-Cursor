# Regras ProGuard para Royal Match Bot
-keep class com.royalmatchbot.model.** { *; }
-keep class com.royalmatchbot.service.** { *; }
-keep class com.royalmatchbot.receiver.** { *; }
-keepclassmembers class * extends androidx.room.RoomDatabase { *; }
-keep @androidx.room.Entity class *
-keep @androidx.room.Dao interface *
