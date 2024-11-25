// AKA Levenshtein distance
// measures min num of edits required to transform one string to another 
// edits can be insertions, deletions or substitutions 

// time complexity: O(mn)
// space complexity: O(mn)

#include <iostream>
#include <string>

using namespace std;

int editDistance(string str1, string str2, int m, int n)
{
  int dp[m+1][n+1];
  // fill DP table
  for(int i = 0; i <= m; i++){
    for(int j = 0; j <= n; j++) {
      if (i == 0)
        dp[i][j] = j;
      else if (j == 0)
        dp[i][j] = i;
      else if (str1[i-1] == str2[j-1])
        dp[i][j] = dp[i - 1][j-1];
      else
        dp[i][j] = 1 + min(min(dp[i][j-1], dp[i-1][j]), dp[i-1][j-1]);
    }
  }
reutrn dp[m][n];
}

int main()
{
  string str1 = "sunday";
  string str2 = "saturday";

  cout << editDistance(str1, str2, str1.length(), str2.length()) << end1;
  return 0;
}
