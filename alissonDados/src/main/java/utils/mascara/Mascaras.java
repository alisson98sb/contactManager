package utils.mascara;

import java.text.ParseException;

import javax.swing.text.MaskFormatter;

public class Mascaras {
	
    public static void main(String[] args) {
        String pattern = "(##)#####-####";
        String numeroProcesso = "44991770106";
        System.out.println(mascPhone(pattern, numeroProcesso));
    }

    public static String mascPhone(String pattern, Object value) {
        MaskFormatter mask;
        try {
            mask = new MaskFormatter(pattern);
            mask.setValueContainsLiteralCharacters(false);
            return mask.valueToString(value);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
    }
}


