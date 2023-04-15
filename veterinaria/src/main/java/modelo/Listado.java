/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.util.ArrayList;
import java.util.Iterator;

/**
 *
 * @author USUARIO
 */
public class Listado implements IVeterinaria{
    private  ArrayList lista = new ArrayList();
    private static Listado objList;
    

    public Listado() {
    }
    
    public void agregar(Mascota animal){
        lista.add(animal);
        System.out.println("SE HA AGREGADO "+animal.getNombre()+" CORRECTAMENTE");
    }
    
    
    @Override
    public double edadProm() {
        Iterator it = this.lista.iterator();
        int sum = 0;
        int cont =0;
        double prom=0;
        while(it.hasNext()){
            Mascota animal = (Mascota)it.next();
            sum+=animal.getEdad();
            cont++;
        }
        return prom = sum/cont;
    }
    
    public void eliminarAnimal(int indice){
        this.lista.remove(indice);
        System.out.println("SE HA ELIMINADO EL ANIMAL DEL INDICE "+indice);
    }
    
    public int cantPerros(){
         Iterator it = this.lista.iterator();
        int per = 0;
        while(it.hasNext()){
            Mascota animal = (Mascota)it.next();
            if(animal instanceof Canino){
                per++;
            }
        }
        return per;
    }
    public int cantGatos(){
         Iterator it = this.lista.iterator();
        int gat = 0;
        while(it.hasNext()){
            Mascota animal = (Mascota)it.next();
            if(animal instanceof Felino){
                gat++;
            }
        }
        return gat;
    }

    public ArrayList getLista() {
        return lista;
    }

    public void setLista(ArrayList lista) {
        this.lista = lista;
    }
    
    public static Listado getInstancia()
    {
         if (objList == null) {
             objList = new Listado();
            System.out.println("El objeto ha sido creado");
        }
        else {
            System.out.println("Ya existe el objeto");
        }
         return objList;
    }
    
    
}
