import Foundation

let ALFABETO:[Character] = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","Ñ","O","P","Q","R","S","T","U","V","W","X","Y","Z"]

dump(ALFABETO)

let ALFABETO_LONGITUD = ALFABETO.count
print(ALFABETO_LONGITUD)

print("Ingresa el MENSAJE a CIFRAR")

if let textoCifrar:String = readLine() {
    let textoCifrarArregloCaracteres:[Character] = Array(textoCifrar.uppercased())

    print("Digita la opcion numerica del tipo de SISTEMA de CIFRADO a utilizar")
    print("4 -> ROT4")
    print("9 -> ROT9")
    print("13 -> ROT13")

    if let opcionCifrado:String = readLine() {

        let casteoOpcionCifrado = Int(opcionCifrado)

        switch casteoOpcionCifrado {
            case 4:
                print("**** Sistema de Cifrado ROT4 ****")
                dump(textoCifrarArregloCaracteres)

                var arregloMensajeROT4: [Character] = []
                for i in textoCifrarArregloCaracteres {
                    if let index = (ALFABETO.firstIndex(of: i)) {
                        if index == 23 {
                            print("A")
                        } else if index == 24 {
                            print("B")
                        } else if index == 25 {
                            print("C")
                        } else {
                            print(ALFABETO[index + 4])
                            }
                        }
                }

            case 9:
                print("**** Sistema de Cifrado ROT9  ****")
            case 13:
                print("**** Sistema de Cifrado ROT13    ****")
            default:
                print("Opcion No Valida")
            }

        } else {
            print("ERROR no has introducido un mensaje\n****    Introduce un mensaje:    ****")
            }
        }
