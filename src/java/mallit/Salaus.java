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
public class Salaus {

    public static String k = "abcdefghijklmnopqrstuvwxyz";

    public static String Tapa1(char c) {
        int jarj_nro = 0;
        int luku = 0;
        String hex = "";

        jarj_nro = k.indexOf(c) + 1;

        luku = 2 * jarj_nro;
        hex = Integer.toHexString(luku);

        return hex;
    }

    public static String Tapa2(char c) {
        int jarj_nro = 0;
        int luku = 0;
        String hex = "";

        jarj_nro = k.indexOf(c) + 1;

        luku = (32 - jarj_nro) * 4 - 1;
        hex = Integer.toHexString(luku);

        return hex;
    }

    public static String Erikoismerkit(char c) {

        return "";
    }

    public static String Salaus(String s) {
        int indeksi = 0;
        char kirjain = ' ';
        String hexString = "";

        for (int i = 0; i < s.length(); i++) {
            kirjain = s.charAt(i);
            indeksi = k.indexOf(kirjain);

            if (kirjain == '!' || kirjain == '.' || kirjain == ',' || kirjain == '?' || kirjain == ' ') {
                Erikoismerkit(kirjain);
            } else if (indeksi % 2 == 0) {
                hexString += Tapa1(kirjain);
            } else {
                hexString += Tapa2(kirjain);
            }
        }

        return hexString;
    }
}
