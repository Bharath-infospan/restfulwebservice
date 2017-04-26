package com.mykong.rest;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

import javax.ws.rs.core.MediaType;


import javax.ws.rs.core.Response;

@Path("/hello")
public class HelloWorldWebService {

	@POST
	@Path("/add/{value1}/{value2}")
	
	  @Produces(MediaType.APPLICATION_JSON)
	
	  public Response calcAddTwoValues(@PathParam("value1")  double value1, 
	
	                                   @PathParam("value2")  double value2) {
	
	    double answer = value1 + value2;
	
	    String msg = String.format("calcAddTwoValues==> value1: %10.4f, value2: %10.4f, answer: %10.4f", 
	                value1, value2, answer);
	
	  
	
	    return Response.status(200).entity(msg).build();
	

	}

}