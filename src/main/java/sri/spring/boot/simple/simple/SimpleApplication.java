package sri.spring.boot.simple.simple;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@ServletComponentScan
@ComponentScan("sri.spring")
@EnableJpaRepositories("sri.spring.boot.simple.simple.persistence.repo")
@EntityScan("sri.spring.boot.simple.simple.persistence.model")
@SpringBootApplication
public class SimpleApplication {

	public static void main(String[] args) {

	    SpringApplication.run(SimpleApplication.class, args);
	}
}
