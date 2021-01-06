// SPDX-License-Identifier: MIT
pragma solidity ^0.7.3;

import './IAnswer.sol';

contract GLEAnswer is IAnswer {
  function answer(bytes memory input) override external pure returns (bytes memory output) {
    uint N = input.length / 2;
    output = input;
    bubblesort(input, N);
  }
  function bubblesort(bytes memory A, uint N) internal pure {
    byte tmp;
    for (uint i = 1; i < N; i++) {
      for (uint j = 0; j < N-i; j++) {
        if (uint(uint8(A[2*j]))*0x100+uint(uint8(A[2*j+1]))>uint(uint8(A[2*j+2]))*0x100+uint(uint8(A[2*j+3]))) {
          tmp = A[2*j]; A[2*j] = A[2*j+2]; A[2*j+2] = tmp; tmp = A[2*j+1]; A[2*j+1] = A[2*j+3]; A[2*j+3] = tmp;
        }
      }
    }
  }
}
