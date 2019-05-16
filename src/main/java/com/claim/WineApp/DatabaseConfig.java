package com.claim.WineApp;

import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.orm.jpa.EntityManagerFactoryBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.web.config.EnableSpringDataWebSupport;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration //not a normal file but a config file 
@EnableTransactionManagement//related to databases// allows multiple quiries to occur I think... 
@EnableSpringDataWebSupport//related to databases//library that allows transactions over the web
@EnableAutoConfiguration//related to databases // allows hibernate to build tables based off of entities 
@EnableJpaRepositories(basePackages="com.claim.repository")//most important -- repositories talk to sql - all sql quiiries will be in com.claim.repository
@ComponentScan(basePackages="com.claim")//very most important -- forces spring to go through every class and see what each class needs, creating beans 
public class DatabaseConfig {

@Bean // 
public LocalContainerEntityManagerFactoryBean entityManagerFactory(EntityManagerFactoryBuilder builder,DataSource dataSource) {
return builder.dataSource(dataSource)
.packages("com.claim.entity")// hibernate will make the tabled for you in com.claim.entity
.build();
}

@Bean(name="transactionManager")
public PlatformTransactionManager barTransactionManager(
EntityManagerFactory factory) {
return new JpaTransactionManager(factory);
}


@Bean
public JavaMailSenderImpl getJavaMailSender() {
JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
    mailSender.setHost("smtp.gmail.com");
    mailSender.setPort(587);
    
    mailSender.setUsername("wineapp66@gmail.com");
    mailSender.setPassword("E9NfRVZWqa4gSeV");

   Properties props = mailSender.getJavaMailProperties();
   props.put("mail.transport.protocol", "smtp");
    props.put("mail.smtp.auth", "true");
   props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.debug", "true");
     
    return mailSender;
}

}


