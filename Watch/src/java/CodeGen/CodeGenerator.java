package CodeGen;

public class CodeGenerator {

    public static void main(String[] args) {
        CodeGenerator cg = new CodeGenerator();
        String Generate = cg.Generate(Math.random());
        System.out.println(Generate);
    }

    public String Generate(double code) {
        long val = Double.doubleToLongBits(code);
        String s = Long.toString(val).substring(0, 6);
        return s;
    }
}
