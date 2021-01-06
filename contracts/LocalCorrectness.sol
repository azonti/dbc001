// SPDX-License-Identifier: MIT
pragma solidity ^0.7.3;

import './ICorrectness.sol';

contract LocalCorrectness is ICorrectness {
  function input1() override external pure returns (bytes memory _input1) { _input1 = hex"c28dfea868570eb6ef31c2b6eeec871d41eb9a6e347529b8400f1fc0c77afef32226a4234d70da5b7f745ce1b561a084459728c8a5052b86a28039544e4cb2e44040ba6260a2eb9045a4fc4b18d68f95963a62ef639445b84e515ba2bb7084b294faf642ff7bcd8f6f78b3968796ce5d8bb24e0c3ed5146b4e9b06322b5fe34c675aa5a5ee2ca48557adc81e5d7f2b77dfe95d743e1a03efe7a282795e1c783513b465d95ea433a4695b585ac4ac689c50c10454fb27c814eb3acd98f79adf0a0227b05543426680"; }
  function input2() override external pure returns (bytes memory _input2) { _input2 = hex"7dea91c3b96c0e51b3cc1e7e3e945f8944ab56ed304b96e3f0e2eb471bf27b63beb069b7ffe4a7246646a090752200d3e2be1871f2353d5e98467b0793dad5ff3d4b5c4e93db2273ff9a56e5d4f8ab92ef70f023859245c35cee88ff4f8126f34cbfe1d1ae40f8c1563e633f4e270e62d7b8a129cd7842a8d11d9b8b04042df8ee73952554dc2ce9e47e78733ad47bc2dbab8fa9b2b3966043e0e36333a9afa55bece76d78088b0e62b93f4a373c48a5c1766a5a94a2aedae3534c97af129926f219c7ead32c699d"; }
  function input3() override external pure returns (bytes memory _input3) { _input3 = hex"23e35e7432bec4c8fd3f12ed546c7508561d066a6f57104b782308f9d8855e0e65ee5485179c99763018fcbe27e0b690c22f83438b71d983fe0333d07ea42d1e80dc72c9a49eb6f45bf1e764e5dc47d0c28b36d69cdcb205bb1329ece460cb7dee867d90f3923ba2394edfb4fd37587e99d1ef08b7130de5c3a5346ad1df17d577e319d85aeefa9748b5d0e961a750fad1c32e8f90588b1c2d7fda06c126826cf59a1f70c56faa40bfd752c97e66b3787fb21f7d45017a7a09fd88f9deecdcbf405534aaa989f2e6"; }
  function isOutput1Correct(bytes memory output1) override external pure returns (bool) { return keccak256(output1) == 0x659c65b0a9e02c3c5441804236be585e31731201c616b25da9e25ebc96aa4d96; }
  function isOutput2Correct(bytes memory output2) override external pure returns (bool) { return keccak256(output2) == 0x4ea4811cd497a0315e7d21540685239ae5e8dc2b0a63551c64b812d942ef6d88; }
  function isOutput3Correct(bytes memory output3) override external pure returns (bool) { return keccak256(output3) == 0xddbf97014c6ec0069ea5f00e629782440f1b806d20be0a7da42206afda149dcd; }
  function gasLimit() override external pure returns (uint) { return 1000000; }
}