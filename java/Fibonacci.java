import java.util.HashMap;
import java.util.Map;

public class Fibonacci
  {
    private static Map<Integer, Integer> memo = new HashMap<>();
    public static int fib(int n)
    {
      if(n <= 1)
      {
        return n;
      }
      if(!memo.containsKey(n))
      {
        memo.put(n, fib(n - 1) + fib(n - 2));
      }
      return memo.get(n);
    }
    public static void main(String[] args)
    {
      int n = 10;
      int result = fib(n);
      System.out.println("The " + n + "th Fibonacci number is: " + result);
    }
  }
