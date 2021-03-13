/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Pyoceto1;

import java.io.StringReader;
import analizadores.*;

/**
 *
 * @author Propietario
 */
public class Main {
    
    public static void main(String[] args) {
        // TODO code application logic here
        try{
            parser sintactico;
            sintactico = new parser(new lexico(new StringReader("2*2+3*2+100")));
            sintactico.parse();
        
        } catch (Exception e){
        
        }
    }
    
}
