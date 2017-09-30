package cn.gson.oasys;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication
public class OasysApplication {

	public static void main(String[] args) {
		SpringApplication.run(OasysApplication.class, args);
	}
	
	@Test
	public void dfsa(){
		String s1="18:49:19";String s2="18:29:39";
		System.out.println(s1.compareTo(s2));
	}
}
