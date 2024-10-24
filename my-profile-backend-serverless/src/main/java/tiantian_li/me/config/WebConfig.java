package tiantian_li.me.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.lang.NonNull;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig {

    @Bean
    public WebMvcConfigurer corsConfigurer() {
        return new WebMvcConfigurer() {
            @Override
            public void addCorsMappings(@NonNull CorsRegistry registry) {
                registry.addMapping("/**") // "/**" for all endpoints, or "/api/v1/**" for endpoints starting with "/api/v1"
                        .allowedOrigins(
                                "http://localhost:3000",
                                "http://localhost:8080",
                                "http://localhost:5173",
                                "http://s3.ap-southeast-2.amazonaws.com",
                                "https://s3.ap-southeast-2.amazonaws.com",
                                "http://tiantian-li.me.s3-website-ap-southeast-2.amazonaws.com",
                                "https://tiantian-li.me.s3-website-ap-southeast-2.amazonaws.com",
                                "http://d6v8zbfpagpmu.cloudfront.net",
                                "https://d6v8zbfpagpmu.cloudfront.net",
                                "http://tiantian-li.me",
                                "https://tiantian-li.me",
                                "http://www.tiantian-li.me",
                                "https://www.tiantian-li.me",
                                "http://api.tiantian-li.me",
                                "https://api.tiantian-li.me"
                        )
                        .allowedMethods("GET", "POST", "PUT", "DELETE", "HEAD", "OPTIONS")
                        .allowedHeaders("*")
                        .allowCredentials(true);
            }
        };
    }
}

