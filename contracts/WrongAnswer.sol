// SPDX-License-Identifier: MIT
pragma solidity ^0.7.3;

import './IAnswer.sol';

contract WrongAnswer is IAnswer {
  function answer(bytes memory input) override external pure returns (bytes memory output) {
    uint N = input.length / 2;
    output = input;
    quicksort(input, 0, N);
  }
  function quicksort(bytes memory A, uint left, uint right) internal pure {
    if (right - left <= 1) return;
    uint pivot = uint(uint8(A[2*left]))*0x100+uint(uint8(A[2*left+1]));
    uint i = left + 1; uint j = right - 1;
    byte tmp;
    while (true) {
      while (i < right && uint(uint8(A[2*i]))*0x100+uint(uint8(A[2*i+1])) > pivot) i++;
      while (j >= left + 1 && uint(uint8(A[2*j]))*0x100+uint(uint8(A[2*j+1])) <= pivot) j--;
      if (i > j) break;
      tmp = A[2*i]; A[2*i] = A[2*j]; A[2*j] = tmp; tmp = A[2*i+1]; A[2*i+1] = A[2*j+1]; A[2*j+1] = tmp;
    }
    tmp = A[2*left]; A[2*left] = A[2*j]; A[2*j] = tmp; tmp = A[2*left+1]; A[2*left+1] = A[2*j+1]; A[2*j+1] = tmp;
    quicksort(A, left, j);
    quicksort(A, i, right);
  }
}
