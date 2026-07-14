extends Node2D

var numero1 = ""
var operador = ""
var nuevo_numero = true

func _on_input(text):
	if text in ["+", "-", "*", "/"]:
		operador = text
		numero1 = $LineEdit.text
		nuevo_numero = true
	elif text == "=":
		var num2 = $LineEdit.text
		var resultado = calcular(numero1, num2, operador)
		$LineEdit.text = str(resultado)
		numero1 = str(resultado)
		operador = ""
		nuevo_numero = true
	else:
		if nuevo_numero:
			$LineEdit.text = text
			nuevo_numero = false
		else:
			$LineEdit.text += text

func calcular(a, b, op):
	a = float(a)
	b = float(b)
	if op == "+":
		return a + b
	else:
		return "Error"

func _on_limpiar():
	$LineEdit.text = ""
	numero1 = ""
	operador = ""
	nuevo_numero = true


func _on_Button_pressed():
	_on_input("0")


func _on_Button2_pressed():
	_on_input("1")


func _on_Button3_pressed():
	_on_input("2")


func _on_Button4_pressed():
	_on_input("3")


func _on_Button5_pressed():
	_on_input("4")


func _on_Button6_pressed():
	_on_input("5")


func _on_Button7_pressed():
	_on_input("6")


func _on_Button8_pressed():
	_on_input("7")


func _on_Button9_pressed():
	_on_input("8")


func _on_Button10_pressed():
	_on_input("9")


func _on_Button11_pressed():
	_on_input("=")


func _on_Button12_pressed():
	_on_input("+")


func _on_Button13_pressed():
	_on_limpiar()
