/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author USUARIO
 */
public class Canino extends Mascota {
    private int nivelEntreno;

    
    

    public Canino(String nombre, String raza, String color, int edad, int nivelEntreno) {
        super(nombre, raza, color, edad);
        this.nivelEntreno = nivelEntreno;
    }

    public int getNivelEntreno() {
        return nivelEntreno;
    }

    public void setNivelEntreno(int nivelEntreno) {
        this.nivelEntreno = nivelEntreno;
    }
    
    
}
