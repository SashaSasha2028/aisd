import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Введите число: ");
        int num = scanner.nextInt();

        if (num < 2) { // Число 1 не является простым
            System.out.println(num + " не является простым числом.");
        } else {
            boolean isPrime = true;
            for (int i = 2; i <= Math.sqrt(num); i++) {
                if (num % i == 0) {
                    isPrime = false;
                    break;
                }
            }

            if (isPrime) {
                System.out.printf("%d — простое число.", num);
            } else {
                System.out.printf("%d не является простым числом.", num);
            }
        }
    }
}
