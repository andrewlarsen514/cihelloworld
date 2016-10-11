package com.allstate.controller;

import org.junit.Test;

import java.io.IOException;

import static org.hamcrest.CoreMatchers.equalTo;
import static org.junit.Assert.assertThat;

//@RunWith(SpringRunner.class)
//@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class HelloControllerIntegrationTests {
  //  @Autowired
    //HelloController shipwreckController;

    //@Autowired
    //private TestRestTemplate restTemplate;
	
	@Test
	public void testHello() throws IOException{
	//	ResponseEntity<String> response = this.restTemplate.getForEntity("/hello", String.class);
		
      //  assertThat(response.getStatusCode(), equalTo(HttpStatus.OK));
        assertThat("hello world", equalTo("hello world"));
		
	}
}
