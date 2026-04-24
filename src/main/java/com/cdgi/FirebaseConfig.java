package com.cdgi;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import org.springframework.context.annotation.Configuration;
import jakarta.annotation.PostConstruct;
import java.io.FileInputStream;
import java.io.IOException;

@Configuration
public class FirebaseConfig {

    @PostConstruct
    public void initialize() {
        try {
            if (FirebaseApp.getApps().isEmpty()) {
                FileInputStream serviceAccount =
                    new FileInputStream("C:\\Users\\Acer\\Digital-Labour-Hub-minor-project-\\Digital-Labour-Hub-minor-project-\\serviceAccountKey.json");

                FirebaseOptions options = FirebaseOptions.builder()
                    .setCredentials(GoogleCredentials.fromStream(serviceAccount))
                    .build();

                FirebaseApp.initializeApp(options);
                System.out.println("✅ Firebase Connected Successfully!");
            }
        } catch (IOException e) {
            System.out.println("❌ Firebase connection failed: " + e.getMessage());
        }
    }
}