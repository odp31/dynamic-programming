// classic optimization problem where we're given a set of items each with a weight and value 
// need to determine the number of each item to include in a collection so that the total weight is <= 
// a given limit and the total value is as large as possible 

// can solve using dynamic programming by creating a 2D table dp where dp[i][w] represents the max value
// that can be otained from the first i items with a max weight of w 

public class Knapsack
  {
    public static int knapSack(int W, int wt[], int val[], int n)
    {
      int K[][] = new int[n+1][W+1];
      // build table K[][] in bottom up manner
      for(int i = 0; i <= n; i ++)
        {
          for(int w = 0; w <= W; w++)
            {
              if(i == 0 || w == 0)
                K[i][w] = 0;
              else if(wt[i -1] <= w)
                K[i][w] = Math.max(val[i-1] + K[i-1][w-wt[i-1]], K[i-1][w]);
              else
                K[i][w] = K[i-1][w];
            }
        }
      return K[n][W];
    }
    public static void main(String args[])
    {
      int val[] = new int[]{60, 100, 120};
      int wt[] = new int[]{10, 20, 30};
      int W = 50;
      int n = val.length;
      System.out.println(knapScak(W, wt, val, n));
    }
  }
