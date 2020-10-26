package ru.home.notes.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"ru.home.notes.*"})
public class HomeNotesApplication
{

	public static void main(String[] args)
	{
		SpringApplication.run(HomeNotesApplication.class, args);
	}

}
