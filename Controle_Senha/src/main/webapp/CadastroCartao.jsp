<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<style type="text/css">
@import
	'https://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800'
	;

@import
	'https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900'
	;

$
red: #b62138 ; $lred: #ffc6c6 ; $grey: #eee ; $basic-transition: all 200ms linear 
	;
	/*👇 Little trick for center W & H where you want*/ @mixin centered {
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	position: absolute;
	margin: auto;
}

@
mixin input {
	height: 35px;
	border: none;
	background: $grey;
	border-radius: 3px;
	outline: none;
	box-sizing: border-box;
	&:
	focus
	{
	border
	:
	1px
	solid
	#ccc;
}

}
@
mixin font-label {
	font-family: 'Roboto';
	text-transform: uppercase;
	font-size: 12px;
	font-weight: 300;
}

@
mixin button {
	height: 43px;
	border-radius: 3px;
	font-size: 20px;
	border: none;
	outline: none;
	font-weight: 100;
}

body {
	background: #ff9999;
	font-family: 'Dosis';
}

.container { @include centered;
	width: 425px;
	height: 442px;
	background: #ffffff;
	border-radius: 5px;
	box-shadow: 0px 10px 50px 0px rgba(0, 0, 0, 0.25);
	z-index: 2;
	transition: transform 250ms linear;
}

.total-logo {
	position: relative;
	width: 100%;
	height: 72px;
	background: #ccc;
	display: flex;
	border-radius: 5px 5px 0 0; . total { width : 50%;
	height: 100%;
	background: $red;
	padding: 10px 30px;
	box-sizing: border-box;
	border-radius: 5px 0 0 0; span { display : block;
	text-transform: uppercase;
	font-size: 14px;
	color: #fff;
	margin-bottom: 3px;
}

.total-n {
	font-size: 34px;
}

}
.logo {
	width: 50%;
	height: 100%;
	background: $lred;
	padding: 20px 30px;
	box-sizing: border-box;
	text-align: right;
	border-radius: 0 5px 0 0;
}

}
.step {
	position: relative;
	width: 100%;
	height: 50px;
	display: flex;
	justify-content: center;
	align-items: center; . retry { width : 75px;
	height: 20px;
	box-sizing: border-box;
	background-color: $grey;
	border: 1px solid #b6b6b6;
	border-radius: 2px;
	text-align: center;
	margin: 0 20px;
	font-family: 'Roboto';
	text-transform: uppercase;
	font-size: 12px;
	color: #b6b6b6;
	padding-top: 3px;
	transition: $basic-transition;
	cursor: pointer; &: hover { background : #b6b6b6;
	color: $grey;
}

}
.line {
	width: 195px;
	height: 1px;
	background: linear-gradient(to right, $ grey 0%, $ lred 100%);
}

.payment {
	width: 75px;
	height: 20px;
	box-sizing: border-box;
	background-color: $lred;
	border: 1px solid #d77c7c;
	border-radius: 2px;
	text-align: center;
	margin: 0 20px;
	font-family: 'Roboto';
	text-transform: uppercase;
	font-size: 12px;
	padding-top: 3px;
	color: $red;
}

}
.cont-forms {
	position: relative;
	padding: 0px 20px 20px 20px;
	height: 315px;
	box-sizing: border-box;
}

.card-expiration, .card-holder, .card-number {
	text-transform: capitalize;
	margin: 5px 0px 15px 0px;
	font-family: 'Roboto';
}

.card-number label { @include font-label;
	display: block;
	margin-bottom: 10px;
}

.flex-wrapper {
	display: flex;
	align-items: center; input { width : 10%;
	text-align: center;
	@
	include
	input;
}

}
.card-holder {label { @include font-label;
	display: block;
	margin-bottom: 10px;
}

input {
	width: 100%;
	@
	include
	input;
}

}
.card-expiration { .expiry-ccv { display:flex; .expiration-date { width:50%;label
	{ @include font-label;
	display: block;
	margin-bottom: 10px;
}

input {
	width: 46%;
	text-align: center;
	@
	include
	input;
}

.last {
	margin-left: 7px;
}

}
.ccv {
	width: 23%; label { @include font-label;
	display: block;
	margin-bottom: 10px;
}

input {
	width: 100%;
	text-align: center;
	@
	include
	input;
}

}
}
}
.conf-button {
	position: relative;
	bottom: -35px; . purchase { width : 50%; @ include button;
	font-family: 'Dosis';
	text-transform: uppercase;
	background-color: $red;
	color: #fff;
	box-sizing: border-box;
	transition: $basic-transition;
	cursor: pointer; &: hover { color : $ red;
	background: #fff;
	border: 1px solid$red;
}

}
.or-element {
	width: 10%;
	font-size: 13px;
	font-weight: 400;
	text-transform: uppercase;
	text-align: center;
	font-family: 'Roboto';
	cursor: context-menu;
}

.applepay {
	width: 40%; @ include button;
	background-color: #000;
	color: #fff;
	box-sizing: border-box;
	transition: $basic-transition;
	cursor: pointer; &: hover { color : #000;
	background: #fff;
	border: 1px solid #000;
}

}
}
.button-cart {
	width: 40px;
	height: 50px;
	background: $red;
	position: absolute;
	right: -40px;
	bottom: calc(50% - 25px);
	border-radius: 0 5px 5px 0;
	box-shadow: inset 11px 0px 30px -15px #000;
	cursor: pointer;
	opacity: 1;
	transition: all 250ms linear;
	&:
	hover
	{
	background
	:
	$
	lred;
}

img {
	width: 25px;
	margin-top: 13px;
	margin-left: 7px;
}

.product-in-cart {
	position: absolute;
	background: #000000;
	width: 20px;
	height: 20px;
	border-radius: 50%;
	right: -8px;
	top: -8px; span { position : relative;
	display: block;
	color: #fff;
	padding-top: 3px;
	text-align: center;
	font-size: 13px;
}

}
}
.cont-product { @include centered;
	width: 97px;
	height: 351px;
	transition: transform 250ms linear;
	z-index: 1; . product { position : relative;
	height: 97px;
	overflow: hidden;
	background: #fff;
	border-radius: 5px;
	text-align: center;
	margin: 10px 0px 10px 0px;
	z-index: 1;
	transition: transform 300ms cubic-bezier(0, 0, 0, 2.39);
	cursor: pointer; img { @include centered;
	width: 80%;
}

.cont-options {
	position: absolute;
	width: 100%;
	height: 15px;
	bottom: -15px;
	transition: bottom 250ms linear; . quantity { position : relative;
	width: 50%;
	height: 100%;
	background: $grey; . plus { position : absolute;
	height: 100%;
	top: 0px;
	left: 0px;
	width: 30%;
	padding: 0;
	margin: 0;
	border: none;
	outline: none;
	background: #000;
	color: #fff;
}

.num { @include centered;
	top: 1px;
	width: 40%;
	color: $red;
	font-size: 80%;
}

.minus {
	position: absolute;
	height: 100%;
	right: 0;
	width: 30%;
	padding: 0 0 0px 0;
	margin: 0;
	border: none;
	outline: none;
	background: #000;
	color: #fff;
}

}
.remove {
	position: absolute;
	width: 50%;
	height: 100%;
	background: $red;
	margin: 0;
	padding: 0;
	right: 0;
	top: 0;
	border: none;
	text-transform: uppercase;
	font-size: 41%;
	font-weight: 100;
	color: #fff;
	outline: none;
}

}
}
.active {
	z-index: 3;
	transform: scale(2);
	box-shadow: 0 0 27px rgba(0, 0, 0, 0.25);
}

}

/*class for animation*/
.slideup {
	bottom: 0 !important;
}

.zindex {
	z-index: 2;
}

.slide-right {
	transform: translateX(200px);
}

.slide-cont-left {
	transform: translateX(-100px);
}

.btn-hiding {
	opacity: 0;
}
</style>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="total-logo" style="padding-left: 460px">

			<img
				src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/163884/logo-vans.png">

		</div>

		<div class="form-group">
			<label for="exampleFormControlSelect1">Selecione o cartão</label> <select
				class="form-control" id="exampleFormControlSelect1">
				<option>Visa</option>
				<option>Master</option>
				<option>Elo</option>
				<option>Hipercard</option>
				<option>Maestro</option>
			</select>
		</div>
		<div class="cont-forms">
			<form class="form" autocomplete="off" novalidate>
				<fieldset class="card-number">
					<label for="card-num">Número do cartao de credito</label>
					<div class="flex-wrapper">
						<input class="cc-number" type="num" maxlength="4" /> <input
							class="cc-number" type="num" maxlength="4" /> <input
							class="cc-number" type="num" maxlength="4" /> <input
							class="cc-number" type="num" maxlength="4" />
					</div>
				</fieldset>
				<fieldset class="card-holder">
					<label for="card-num">Titular do cartão</label> <input type="text" />
				</fieldset>
				<fieldset class="card-expiration">
					<div class="expiry-ccv">
						<div class="cont expiration-date">
							<label for="card-num">Data de Validade</label> <input type="numb"
								maxlength="2" /> <input class="last" type="num" maxlength="4" />
						</div>
						<br />
						<div class="cont ccv">
							<label for="card-ccv">CCV</label> <input type="num" maxlength="3" />
						</div>
					</div>
				</fieldset>
				<fieldset class="conf-button">
					<div class="flex-wrapper">
						<button class="purchase">
							<span>Confirma</span>
						</button>
						<div class="or-element">
							<span>&emsp;<span>
						</div>
						<button class="applepay">
							<span>Cancelar</span>
						</button>
					</div>
				</fieldset>
			</form>
		</div>
		<!--End CONT-FORMS-->
		<div class="button-cart">
			<img class="icon-cart"
				src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/163884/icona-shop.svg">
			<div class="product-in-cart">
				<span>3</span>
			</div>
		</div>
	</div>
	<!--End CONTAINER-->
	<div class="cont-product"></div>
</body>
</html>