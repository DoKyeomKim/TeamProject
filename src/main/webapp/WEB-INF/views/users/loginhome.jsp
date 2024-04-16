<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <title>Login Home</title>
            <meta charset="utf-8">
<link rel="icon" type="image/png" href="/img/favicon.png" />
            <link rel="preconnect" href="https://fonts.googleapis.com">
			<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
			<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
            <script src="https://kit.fontawesome.com/32aa2b8683.js" crossorigin="anonymous"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
            <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
            <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
            
            <style>
            
            h3{
            	font-size : 30px;
				font-weight: bold;
				font-family: "Do Hyeon", sans-serif;
    			font-weight: 400;
    			font-style: normal;
            }
            
            .card img{
              object-fit:cover;     
  			  transform:scale(1.0);        
			  transition: transform .5s; 
            }
            
            .card img:hover{ 
  				transform:scale(0.9);
  				transition: transform .5s;
			}

            
            
            </style>
        </head>

        <body style="background-color : #EDF9FF;">
            <header>


                <div class="mt-2">
                    <nav class="sj_full_container navbar bg-body-tertiary">
                        <div class="container mt-3" style="display: block; width: 100%; text-align: center;">
                            <a class="navbar-brand fs-2" href="/">
                                <img src="/img/logo.png" width="10%;" height="10%;"
                                    class="d-inline-block align-text-top">
                                    <br>
                            </a>
                        </div>
                    </nav>
                </div>
               
                <div class="container px-4 my-5 w-50 " style="height: 800px;">

                    <div class="d-flex justify-content-between">
                        <div>
                            <a href="/Users/PLoginForm" style="color: inherit; text-decoration: none;">
                                <div class="card" style="width:320px; height: 400px;">
                                    <div class="d-flex align-items-center justify-content-center ">
                                        <img src="/img/personal.png" class="card-img-top w-100 h-100" style="width: 80%; height:80%">
                                    </div>
                                    <div class="card-body align-self-center mt-2">
                                        <h3>개인 회원</h3>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div>
                            <a href="/Users/CLoginForm" style="color: inherit; text-decoration: none; ">
                                <div class="card" style="width:320px; height: 400px;">
                                    <div class="d-flex align-items-center justify-content-center">
                                        <img src="/img/company.png" class="card-img-top w-100 h-100">
                                    </div>
                                    <div class="card-body align-self-center mt-2">
                                        <h3>기업 회원</h3>
                                    </div>
                                </div>
                            </a>
                        </div>
                        
                    </div>

                </div>
                </header>
                </body>