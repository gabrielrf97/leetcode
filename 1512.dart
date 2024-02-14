class Solution {
  int numIdenticalPairs(List<int> nums) {
    var goodPairs = 0;
    for (var i = 0; i < nums.length - 1; i++) {
      for (var j = 1; j < nums.length; j++) {
        if (nums[i] == nums[j] && i < j) {
          goodPairs += 1;
        }
      }
    }
    return goodPairs;
  }
}
