/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyecto1_codigo;

import Analizadores.*;
import java.io.StringReader;

/**
 *
 * @author Propietario
 */
public class Proyecto1_Codigo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        try{
            parser sintactico;
            sintactico = new parser(new lexico(new StringReader("2*2+3*2")));
            sintactico.parse();
        
        } catch (Exception e){
        
        }
    }
    
}
