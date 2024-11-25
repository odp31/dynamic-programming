public class LCS
  {
    public static int lcs(String text1, String text2)
    {
      int m = text1.length(), n = text2.length();
      int[][] dp = new int[m+1][n+1];

      for(int i = 0; i <= m; i++)
        {
          for(int j = 0; j<= n; j++)
            {
              if(i == 0 || j == 0)
              {
                dp[i][j] = 0;
              }
              else if(text1.charAt(i - 1) == text.charAt(j - 1))
              {
                dp[i][j] = Math.max(dp[i-1][j], dp[i][j-1]);
              }
              else
              {
                dp[i][j] = Math.max(dp[i - 1][j], dp[i][j -1]);
              }
            }
        }
      return dp[m][n];
    }

    public static void main(String[] args)
    {
      String text1 = "AGGTAB";
      String text2 = "GXTXAYB";

      int result = lcs(text1, text2);
      System.out.println("length of LCS is " + result);
    }
  }
