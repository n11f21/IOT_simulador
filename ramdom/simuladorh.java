/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ramdom;

import java.util.Random;

/**
 *
 * @author nicolas pc
 */
public class simuladorh {
    public static int LecturaDeHumedad() {
        // Simula una lectura de humedad en un rango entre 0 y 100
        Random random = new Random();
        int lecturaDeHumedad = random.nextInt(101); // Números entre 0 y 100
        return lecturaDeHumedad;
    }

    public static void main(String[] args) {
        // Ejemplo de uso
        int lectura = LecturaDeHumedad();
        System.out.println("Lectura de humedad simulada: " + lectura);
    }
}
