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

//    public static String s = "5f32271247001a0a470a0a010037022f160a2612090047322f00271e122f00161e3716022f020026125f12572a1e1a02470057020026122f2f0a47004f02122f2f0202002702262f022a16260a47002f2a4f0a1a02024705";
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
                c = 'B';
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
