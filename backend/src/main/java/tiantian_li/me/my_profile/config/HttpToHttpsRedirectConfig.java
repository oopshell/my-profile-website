package tiantian_li.me.my_profile.config;

//import org.springframework.boot.web.server.ConfigurableWebServerFactory;
//import org.springframework.boot.web.server.WebServerFactoryCustomizer;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.http.HttpStatus;
//import org.springframework.web.server.adapter.ForwardedHeaderTransformer;
//import org.springframework.web.servlet.config.annotation.RedirectViewControllerRegistration;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
//import org.springframework.web.servlet.view.RedirectView;
//
//@Configuration
//public class HttpToHttpsRedirectConfig {
//
//    @Bean
//    public WebServerFactoryCustomizer<ConfigurableWebServerFactory> webServerFactoryCustomizer() {
//        return factory -> factory.addErrorPages(new org.springframework.boot.web.server.ErrorPage(HttpStatus.NOT_FOUND, "/not-found"));
//    }
//
//    @Bean
//    public ForwardedHeaderTransformer forwardedHeaderTransformer() {
//        return new ForwardedHeaderTransformer();
//    }
//
//    @Bean
//    public WebMvcConfigurer forwardToHttps() {
//        return new WebMvcConfigurer() {
//            // add view controller to redirect http to https
//            @Override
//            public void addViewControllers(RedirectViewControllerRegistration registry) {
//                registry.addViewController("/").setViewName("redirect:/index.html");
//                registry.addRedirectViewController("http://localhost:8080/**", "https://localhost:8443/");
//            }
//        };
//    }
//}
