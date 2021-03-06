/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mallit;

/**
 *
 * @author teematve@cs
 */
public class SalauksenPurku {

    public static String k = "abcdefghijklmnopqrstuvwxyz";

    public static char Tapa1(int luku) {
        int indeksi = luku / 2;
        char c = ' ';

        if (luku == 0) {
            c = ' ';
        } else {
            c = k.charAt(indeksi - 1);
        }

        return c;
    }

    public static char Tapa2(int luku) {
        char c = ' ';

        if (luku == 1) {
            c = ',';
        } else if (luku == 5) {
            c = '.';
        } else if (luku == 9) {
            c = '!';
        } else {
            int indeksi = (128 - luku - 1) / 4;

            if (indeksi > 26) {
                System.out.println("luku: " + luku);
                System.out.println("indeksi: " + indeksi);
                c = '?';
            } else {
                c = k.charAt(indeksi - 1);
            }
        }

        return c;
    }

    public static String Hex_to_decim(String s) {
        int len = s.length();
        byte[] data = new byte[len / 2];
        String tulos = "";

        for (int i = 0; i < len; i += 2) {
            data[i / 2] = (byte) ((Character.digit(s.charAt(i), 16) << 4)
                    + Character.digit(s.charAt(i + 1), 16));
        }
        
        tulos = Purku(data);
        
        return tulos;
    }

    public static String Purku(byte[] numerot) {
        byte[] data = numerot;
        char c = ' ';
        String tuloste = "";

        for (int i = 0; i < data.length; i++) {
            if (data[i] % 2 == 0) {
                tuloste += Tapa1(data[i]);
            } else if (data[i] % 2 != 0) {
                tuloste += Tapa2(data[i]);
            }
        }
        
        return tuloste;
    }
}
