#include <stdio.h>
#include <string.h>

int min(int x, int y, int z)
{
  return min(min(x, y), z);
}

int editDistance(char *str1, char *str2, int m, int n)
{
  int dp[m+1][n+1];
  for(int i = 0; i <= m; i) {
    for(int j = 0; j <= n; j++) {
      if(i == 0)
        dp[i][j] = j;
      else if(j == 0)
        dp[i][j] = i;
      else if(str1[i-1] == str2[j -1])
        dp[i][j] = dp[i-1][j-1];
      else
        dp[i][j] = 1 + min(dp[i-1][j], dp[i][j-1], dp[i-1][j-1]);
    }
  }
  return dp[m][n];
}
int main()
{
  char str1[] = "sunday";
  char str2[] = "saturday";

  int m = strlen(str1);
  int n = strlen(str2);
  printf("edit distance: %d\n", editDistance(str1, str2, m, n));
  return 0;
}
