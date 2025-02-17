# Aura Finance

[![Test Coverage](https://github.com/aurafinance/aura-contracts/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/aurafinance/aura-contracts/actions/workflows/test-coverage.yaml)

## Security

Smart contract security is a top priority for Aura, [see Security documentation](https://docs.aura.finance/aura/security) .

If you have any feedback or concerns, reach out to `security@aura.finance`

## Dev

### Pre Requisites

### Submodule

```sh
$ git submodule init
$ git submodule update
```

### Install

```sh
$ yarn install
```

### Compile

Compile the smart contracts with Hardhat:

```sh
$ yarn compile
```

### TypeChain

Compile the smart contracts and generate TypeChain artifacts:

```sh
$ yarn typechain
```

### Lint Solidity

Lint the Solidity code:

```sh
$ yarn lint:sol
```

### Lint TypeScript

Lint the TypeScript code:

```sh
$ yarn lint:ts
```

### Test

Run the Mocha tests:

```sh
$ yarn test
```

Run fork tests

```sh
$ yarn test:fork:all
```

### Tasks

Running in fork mode

```sh
$ NODE_URL=<FORK_URL> yarn task:fork <TASK_NAME>
```

Running task normally

```
$ NODE_URL=<NODE_URL> yarn task --network <NETWORK> <TASK_NAME>
```

### Coverage

Generate the code coverage report:

```sh
$ yarn coverage
```

### Clean

Delete the smart contract artifacts, the coverage reports and the Hardhat cache:

```sh
$ yarn clean
```

## Local Fork

This runs a local node on your system, that can be used with Metamask, etc.

Run a local fork:

```
npx hardhat node --fork https://eth-mainnet.alchemyapi.io/v2/<API_KEY> --port <PORT>
```

Once you stake or lock CVX you may want to progress timestamps to check rewards stuff

```
export NODE_URL=<LOCAL_NODE_URL>
yarn task timeTravel --duration 69420 --network forking
```

## Diagrams

[Booster Reward Flow](https://docs.google.com/drawings/d/1RjtogmP2EO4j0AIR_uRnOr9jorUwTBn2iBdk4dnK7d8/edit?usp=sharing)
<img src="https://docs.google.com/drawings/d/e/2PACX-1vTEfuureekx70YBgcDBjOsgGYPGYXFzEcjzm-exmcHhe49F9QskgEl6Qn4O5kSHAOvihToEo-4_n5bj/pub?w=2052&h=1032" />

[Cvx Reward Flow](https://docs.google.com/drawings/d/1csXH2TP74UeIhQie1j8fmJvBsBAvGzHAB_-FkfXJ7k8/edit?usp=sharing)
<img src="https://docs.google.com/drawings/d/e/2PACX-1vTGNgox8tvYi1kRxkBnPB8Rwas6Tb5Ic2pCquqG7oIYqLrBF8I9r3n-2fQKtjKfY7xhQrvFKV0Yn5_j/pub?w=1629&h=960" />

## Deployments

### Ethereum Mainnet (1)

| Contract                        | Address                                                                                                               |
| ------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| voterProxy                      | [0xaF52695E1bB01A16D33D7194C28C42b10e0Dbec2](https://etherscan.io/address/0xaF52695E1bB01A16D33D7194C28C42b10e0Dbec2) |
| aura                            | [0xC0c293ce456fF0ED870ADd98a0828Dd4d2903DBF](https://etherscan.io/address/0xC0c293ce456fF0ED870ADd98a0828Dd4d2903DBF) |
| minter                          | [0x59A5ccD34943CD0AdCf5ce703EE9F06889E13707](https://etherscan.io/address/0x59A5ccD34943CD0AdCf5ce703EE9F06889E13707) |
| booster                         | [0xA57b8d98dAE62B26Ec3bcC4a365338157060B234](https://etherscan.io/address/0xA57b8d98dAE62B26Ec3bcC4a365338157060B234) |
| boosterOwner                    | [0x228a142081b456a9fF803d004504955032989f04](https://etherscan.io/address/0x228a142081b456a9fF803d004504955032989f04) |
| boosterOwnerSecondary           | [0xCe96e48A2893C599fe2601Cc1918882e1D001EaD](https://etherscan.io/address/0xCe96e48A2893C599fe2601Cc1918882e1D001EaD) |
| boosterHelper                   | [0x82bbbC3c7B459913Ae6063858832a6C2c43D0Bd0](https://etherscan.io/address/0x82bbbC3c7B459913Ae6063858832a6C2c43D0Bd0) |
| rewardFactory                   | [0xBC8d9cAf4B6bf34773976c5707ad1F2778332DcA](https://etherscan.io/address/0xBC8d9cAf4B6bf34773976c5707ad1F2778332DcA) |
| tokenFactory                    | [0x3eC040DbF7D953216F4C89A2e665d5073445f5Ba](https://etherscan.io/address/0x3eC040DbF7D953216F4C89A2e665d5073445f5Ba) |
| proxyFactory                    | [0xf5E2cFde016bd55BEF42a5A4bAad7E21cd39720d](https://etherscan.io/address/0xf5E2cFde016bd55BEF42a5A4bAad7E21cd39720d) |
| stashFactory                    | [0x54da426EFBB93fbaB5CF81bef03F9B9F00A3E915](https://etherscan.io/address/0x54da426EFBB93fbaB5CF81bef03F9B9F00A3E915) |
| extraRewardStashV3              | [0x4A53301Fe213ECA70f904cD3766C07DB3A621bF8](https://etherscan.io/address/0x4A53301Fe213ECA70f904cD3766C07DB3A621bF8) |
| arbitratorVault                 | [0x5d208cD54f5132f2BD0c1F1e8d8c864Bb6BEdc40](https://etherscan.io/address/0x5d208cD54f5132f2BD0c1F1e8d8c864Bb6BEdc40) |
| auraBAL                         | [0x616e8BfA43F920657B3497DBf40D6b1A02D4608d](https://etherscan.io/address/0x616e8BfA43F920657B3497DBf40D6b1A02D4608d) |
| auraBALBpt                      | [0x3dd0843a028c86e0b760b1a76929d1c5ef93a2dd](https://etherscan.io/address/0x3dd0843a028c86e0b760b1a76929d1c5ef93a2dd) |
| cvxCrvRewards                   | [0x00A7BA8Ae7bca0B10A32Ea1f8e2a1Da980c6CAd2](https://etherscan.io/address/0x00A7BA8Ae7bca0B10A32Ea1f8e2a1Da980c6CAd2) |
| initialCvxCrvStaking            | [0xC47162863a12227E5c3B0860715F9cF721651C0c](https://etherscan.io/address/0xC47162863a12227E5c3B0860715F9cF721651C0c) |
| crvDepositor                    | [0xeAd792B55340Aa20181A80d6a16db6A0ECd1b827](https://etherscan.io/address/0xeAd792B55340Aa20181A80d6a16db6A0ECd1b827) |
| crvDepositorWrapper             | [0x68655AD9852a99C87C0934c7290BB62CFa5D4123](https://etherscan.io/address/0x68655AD9852a99C87C0934c7290BB62CFa5D4123) |
| crvDepositorWrapperWithFee      | [0x6eb746A3F23D401f80AB033edeb65e1a8bB27586](https://etherscan.io/address/0x6eb746A3F23D401f80AB033edeb65e1a8bB27586) |
| auraLocker (vlAURA)             | [0x3Fa73f1E5d8A792C80F426fc8F84FBF7Ce9bBCAC](https://etherscan.io/address/0x3Fa73f1E5d8A792C80F426fc8F84FBF7Ce9bBCAC) |
| cvxStakingProxy                 | [0xd9e863B7317a66fe0a4d2834910f604Fd6F89C6c](https://etherscan.io/address/0xd9e863B7317a66fe0a4d2834910f604Fd6F89C6c) |
| chef                            | [0x1ab80F7Fb46B25b7e0B2cfAC23Fc88AC37aaf4e9](https://etherscan.io/address/0x1ab80F7Fb46B25b7e0B2cfAC23Fc88AC37aaf4e9) |
| lbpBpt                          | [0x6fc73b9d624b543f8b6b88fc3ce627877ff169ee](https://etherscan.io/address/0x6fc73b9d624b543f8b6b88fc3ce627877ff169ee) |
| balLiquidityProvider            | [0xa7429af4DeB16827dAd0e71D8AEEa9C2bF70e32c](https://etherscan.io/address/0xa7429af4DeB16827dAd0e71D8AEEa9C2bF70e32c) |
| penaltyForwarder                | [0x4043569200F7a7a1D989AbbaBC2De2Bde1C20D1E](https://etherscan.io/address/0x4043569200F7a7a1D989AbbaBC2De2Bde1C20D1E) |
| extraRewardsDistributor         | [0xA3739b206097317c72EF416F0E75BB8f58FbD308](https://etherscan.io/address/0xA3739b206097317c72EF416F0E75BB8f58FbD308) |
| poolManager                     | [0x8Dd8cDb1f3d419CCDCbf4388bC05F4a7C8aEBD64](https://etherscan.io/address/0x8Dd8cDb1f3d419CCDCbf4388bC05F4a7C8aEBD64) |
| poolManagerProxy                | [0x2c809Ec701C088099c911AF9DdfA4A1Db6110F3c](https://etherscan.io/address/0x2c809Ec701C088099c911AF9DdfA4A1Db6110F3c) |
| poolManagerSecondaryProxy       | [0xa72932Aea1392b0Da9eDc34178dA2B29EcE2de54](https://etherscan.io/address/0xa72932Aea1392b0Da9eDc34178dA2B29EcE2de54) |
| vestedEscrows                   | [0x5bd3fCA8D3d8c94a6419d85E0a76ec8Da52d836a](https://etherscan.io/address/0x5bd3fCA8D3d8c94a6419d85E0a76ec8Da52d836a) |
|                                 | [0x24346652e0e2aE0CE05c781501fDF4Fe4553fAc6](https://etherscan.io/address/0x24346652e0e2aE0CE05c781501fDF4Fe4553fAc6) |
|                                 | [0x45025Ebc38647bcf7Edd2b40CfDaF3fbfE1538F5](https://etherscan.io/address/0x45025Ebc38647bcf7Edd2b40CfDaF3fbfE1538F5) |
|                                 | [0x43B17088503F4CE1AED9fB302ED6BB51aD6694Fa](https://etherscan.io/address/0x43B17088503F4CE1AED9fB302ED6BB51aD6694Fa) |
|                                 | [0xFd72170339AC6d7bdda09D1eACA346B21a30D422](https://etherscan.io/address/0xFd72170339AC6d7bdda09D1eACA346B21a30D422) |
| drops                           | [0x45EB1A004373b1D8457134A2C04a42d69D287724](https://etherscan.io/address/0x45EB1A004373b1D8457134A2C04a42d69D287724) |
|                                 | [0x1a661CF8D8cd69dD2A423F3626A461A24280a8fB](https://etherscan.io/address/0x1a661CF8D8cd69dD2A423F3626A461A24280a8fB) |
| auraClaimZap                    | [0x2E307704EfaE244c4aae6B63B601ee8DA69E92A9](https://etherscan.io/address/0x2E307704EfaE244c4aae6B63B601ee8DA69E92A9) |
| claimFeesHelper                 | [0xAf824c80aA77Ae7F379DA3Dc05fea0dC1941c200](https://etherscan.io/address/0xAf824c80aA77Ae7F379DA3Dc05fea0dC1941c200) |
| rewardPoolDepositWrapper        | [0xB188b1CB84Fb0bA13cb9ee1292769F903A9feC59](https://etherscan.io/address/0xB188b1CB84Fb0bA13cb9ee1292769F903A9feC59) |
| ChefForwarder                   | [0x57d23f0f101cBd25A05Fc56Fd07dE32bCBb622e9](https://etherscan.io/address/0x57d23f0f101cBd25A05Fc56Fd07dE32bCBb622e9) |
| ChefForwarderSiphonToken        | [0xc9307D63B3709F537D2158F43199a69682Ff0967](https://etherscan.io/address/0xc9307D63B3709F537D2158F43199a69682Ff0967) |
| masterChefRewardHook            | [TBD](https://etherscan.io/address/TBD)                                                                               |
| masterChefRewardHookSiphonToken | [0xbB7A6Ec509D42177C100273b4cd785816daF8e4f](https://etherscan.io/address/0xbB7A6Ec509D42177C100273b4cd785816daF8e4f) |
| gaugeMigrator                   | [0x7954bcDce86e86BeE7b1dEff48c3a0b9BCCe578B](https://etherscan.io/address/0x7954bcDce86e86BeE7b1dEff48c3a0b9BCCe578B) |
| poolMigrator                    | [0x12addE99768a82871EAaecFbDB065b12C56F0578](https://etherscan.io/address/0x12addE99768a82871EAaecFbDB065b12C56F0578) |
| siphonToken                     | [TBD](https://etherscan.io/address/TBD)                                                                               |
| uniswapMigrator                 | [0x5B6159F43585e8A130b0Bc1d31e38Ce7028145b6](https://etherscan.io/address/0x5B6159F43585e8A130b0Bc1d31e38Ce7028145b6) |
| auraMining                      | [0x744Be650cea753de1e69BF6BAd3c98490A855f52](https://etherscan.io/address/0x744Be650cea753de1e69BF6BAd3c98490A855f52) |
| VirtualRewardsFactory           | [0x64E2dF8E5463f8c14e1c28C9782f7B4B6062b2c3](https://etherscan.io/address/0x64E2dF8E5463f8c14e1c28C9782f7B4B6062b2c3) |
| auraBalVault                    | [0xb78C0D130Dc07BA909eD5F6828Abd5EA183B12BC](https://etherscan.io/address/0xb78C0D130Dc07BA909eD5F6828Abd5EA183B12BC) |
| auraBalVault Strategy           | [0xca6481967E9Ed5FAEDbC5dfFA1Dd8368979A2160](https://etherscan.io/address/0xca6481967E9Ed5FAEDbC5dfFA1Dd8368979A2160) |
| auraBalVault BBUSDHandler       | [0xFa6B857cC17740A946c9eb85C1a6896f2e0Be98E](https://etherscan.io/address/0xFa6B857cC17740A946c9eb85C1a6896f2e0Be98E) |
| auraBalVault VirtualRewards     | [0x6aA103F8a0CE31aEF4E02c28B9dA83951F1c3e37](https://etherscan.io/address/0x6aA103F8a0CE31aEF4E02c28B9dA83951F1c3e37) |

### Goerli (5)

| Contract                 | Address                                                                                                                      |
| ------------------------ | ---------------------------------------------------------------------------------------------------------------------------- |
| voterProxy               | [0x57d23f0f101cBd25A05Fc56Fd07dE32bCBb622e9](https://goerli.etherscan.io/address/0x57d23f0f101cBd25A05Fc56Fd07dE32bCBb622e9) |
| aura                     | [0xFf3653ee692F541efB7c2214D72FE05A7A6EC01f](https://goerli.etherscan.io/address/0xFf3653ee692F541efB7c2214D72FE05A7A6EC01f) |
| minter                   | [0x3366EfDdc7d268759a1A1273740aE5C626b2DFbA](https://goerli.etherscan.io/address/0x3366EfDdc7d268759a1A1273740aE5C626b2DFbA) |
| booster                  | [0x2ad214dA65effA92159057957E50994440E99A1b](https://goerli.etherscan.io/address/0x2ad214dA65effA92159057957E50994440E99A1b) |
| boosterOwner             | [0x6931835d072f50d98D7a7BF7B2C4faFdA86628d7](https://goerli.etherscan.io/address/0x6931835d072f50d98D7a7BF7B2C4faFdA86628d7) |
| auraBAL                  | [0xf80D3083b18fe3f11196E57438258330Ba4f15Ec](https://goerli.etherscan.io/address/0xf80D3083b18fe3f11196E57438258330Ba4f15Ec) |
| auraBALBpt               | [0xAc98C986d8318ff08109AE6F4E7043468dA9d0a2](https://goerli.etherscan.io/address/0xAc98C986d8318ff08109AE6F4E7043468dA9d0a2) |
| cvxCrvRewards            | [0x09421e5d9c2b11f502482dce2b718b037fd10a25](https://goerli.etherscan.io/address/0x09421e5d9c2b11f502482dce2b718b037fd10a25) |
| initialCvxCrvStaking     | N/A                                                                                                                          |
| crvDepositor             | [0xD2e06829a8464bd802Ef68A6C900F36db3a86cb1](https://goerli.etherscan.io/address/0xD2e06829a8464bd802Ef68A6C900F36db3a86cb1) |
| crvDepositorWrapper      | [0x4AC5c047CfA39b14fb06564DEC7D85e6fA2b045a](https://goerli.etherscan.io/address/0x4AC5c047CfA39b14fb06564DEC7D85e6fA2b045a) |
| poolManager              | [0x0B4566B619Dc12381E386564E45df62316259E71](https://goerli.etherscan.io/address/0x0B4566B619Dc12381E386564E45df62316259E71) |
| auraLocker               | [0x1e5B33222977642Bf64EC80846BBF83A016727A0](https://goerli.etherscan.io/address/0x1e5B33222977642Bf64EC80846BBF83A016727A0) |
| cvxStakingProxy          | [0x1a8bb30f2aff498ef026d2bccc8971a30144b93c](https://goerli.etherscan.io/address/0x1a8bb30f2aff498ef026d2bccc8971a30144b93c) |
| chef                     | [0xa3fCaFCa8150636C3B736A16Cd73d49cC8A7E10E](https://goerli.etherscan.io/address/0xa3fCaFCa8150636C3B736A16Cd73d49cC8A7E10E) |
| lbpBpt                   | N/A                                                                                                                          |
| balLiquidityProvider     | N/A                                                                                                                          |
| penaltyForwarder         | N/A                                                                                                                          |
| extraRewardsDistributor  | [0xbdfFBBD7Ac592a53405AE152B6D23CF3F6B8a738](https://goerli.etherscan.io/address/0xbdfFBBD7Ac592a53405AE152B6D23CF3F6B8a738) |
| pool8020Bpt              | [0xf8a0623ab66f985effc1c69d05f1af4badb01b00](https://goerli.etherscan.io/address/0xf8a0623ab66f985effc1c69d05f1af4badb01b00) |
| claimZap                 | [0x9Ba88Cb931B46a6E646B9bd0ba677D375647EB23](https://goerli.etherscan.io/address/0x9Ba88Cb931B46a6E646B9bd0ba677D375647EB23) |
| vestedEscrows            | N/A                                                                                                                          |
| drops                    | N/A                                                                                                                          |
| claimFeesHelper          | [0xDc2f8293f7f3E49a949df6A1FB1bCb9200eC3982](https://goerli.etherscan.io/address/0xDc2f8293f7f3E49a949df6A1FB1bCb9200eC3982) |
| rewardPoolDepositWrapper | [0x0a6bcB3a0C03aB2Bc8A058ee02ed11D50b494083](https://goerli.etherscan.io/address/0x0a6bcB3a0C03aB2Bc8A058ee02ed11D50b494083) |
| GaugeMigrator            | [0x432d9d821ed4a6fc29f41631e27ba91d4800f081](https://goerli.etherscan.io/address/0x432d9d821ed4a6fc29f41631e27ba91d4800f081) |
| sushiSwapMigrator        | [0x68664CA1fCa837de57d8cdE8B83d3A9587De2E58](https://goerli.etherscan.io/address/0x68664CA1fCa837de57d8cdE8B83d3A9587De2E58) |
| auraBalVault             | [0x064D9Aea351205c01dA2270fFe19C8e4Ca91904B](https://goerli.etherscan.io/address/0x064D9Aea351205c01dA2270fFe19C8e4Ca91904B) |
| vaultStrategy            | [0xab07f0279023886222e80E25CB4a01CD007B6764](https://goerli.etherscan.io/address/0xab07f0279023886222e80E25CB4a01CD007B6764) |
| vaultBbusdHandler        | [0x55850230cE77f670B8FBf47469F935cF41304e0a](https://goerli.etherscan.io/address/0x55850230cE77f670B8FBf47469F935cF41304e0a) |
| vaultAuraRewards         | [0xdE23dd408747886a6E1F4337D80B9b0F7a4cBbF0](https://goerli.etherscan.io/address/0xdE23dd408747886a6E1F4337D80B9b0F7a4cBbF0) |
| feeForwarder             | [0xE14360AA496A85FCfe4B75AFD2ec4d95CbA38Fe1](https://goerli.etherscan.io/address/0xE14360AA496A85FCfe4B75AFD2ec4d95CbA38Fe1) |

### Ethereum Mainnet (1) @deprecated

| Contract                  | Address                                                                                                               |
| ------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| auraClaimZap              | [0x623B83755a39B12161A63748f3f595A530917Ab2](https://etherscan.io/address/0x623B83755a39B12161A63748f3f595A530917Ab2) |
| booster                   | [0x7818A1DA7BD1E64c199029E86Ba244a9798eEE10](https://etherscan.io/address/0x7818A1DA7BD1E64c199029E86Ba244a9798eEE10) |
| boosterOwner              | [0xFa838Af70314135159b309bf27f1DbF1F954eC34](https://etherscan.io/address/0xFa838Af70314135159b309bf27f1DbF1F954eC34) |
| boosterHelper             | [0x00a31B98c325A8dcb8d1Dd41d65156A5C898F38c](https://etherscan.io/address/0x00a31B98c325A8dcb8d1Dd41d65156A5C898F38c) |
| claimFeesHelper           | [0xCEeCeA8035e81C1148210DB3b2f870F470CC81bf](https://etherscan.io/address/0xCEeCeA8035e81C1148210DB3b2f870F470CC81bf) |
| cvxCrvRewards             | [0x5e5ea2048475854a5702F5B8468A51Ba1296EFcC](https://etherscan.io/address/0x5e5ea2048475854a5702F5B8468A51Ba1296EFcC) |
| extraRewardStashV3        | [0xF9C0f3431F859e773eD052758052e06B6D175742](https://etherscan.io/address/0xF9C0f3431F859e773eD052758052e06B6D175742) |
| masterChefRewardHook      | [0x6a29cFd8A5F666A7D69da9437CD4c46616326815](https://etherscan.io/address/0x6a29cFd8A5F666A7D69da9437CD4c46616326815) |
| poolManager               | [0xf843F61508Fc17543412DE55B10ED87f4C28DE50](https://etherscan.io/address/0xf843F61508Fc17543412DE55B10ED87f4C28DE50) |
| poolManagerProxy          | [0x16A04E58a77aB1CE561A37371dFb479a8594947A](https://etherscan.io/address/0x16A04E58a77aB1CE561A37371dFb479a8594947A) |
| poolManagerSecondaryProxy | [0xdc274F4854831FED60f9Eca12CaCbD449134cF67](https://etherscan.io/address/0xdc274F4854831FED60f9Eca12CaCbD449134cF67) |
| proxyFactory              | [0x7eD9003C6003EaCe1e8C3ae99F0Bb19894377b0F](https://etherscan.io/address/0x7eD9003C6003EaCe1e8C3ae99F0Bb19894377b0F) |
| rewardFactory             | [0x45aaD11F2FA2C215bc9686eb6f06D46E0474F356](https://etherscan.io/address/0x45aaD11F2FA2C215bc9686eb6f06D46E0474F356) |
| stashFactory              | [0x95171c9Ef5cA540A6d3502e9547fcFE022458Eb5](https://etherscan.io/address/0x95171c9Ef5cA540A6d3502e9547fcFE022458Eb5) |
| tokenFactory              | [0xb6CE51DEE8BD4A2Fd11c01205414dc26f0b453AC](https://etherscan.io/address/0xb6CE51DEE8BD4A2Fd11c01205414dc26f0b453AC) |

### Ethereum Mainnet (2) @deprecated

| extraRewardStashV3 | [0x37C3EBfD4b0cF66DF19a413e92dd21E556915F98](https://etherscan.io/address/0x37C3EBfD4b0cF66DF19a413e92dd21E556915F98) |
| poolManager | [0xB58Eb197c35157E6F3351718C4C387D284562BE5](https://etherscan.io/address/0xB58Eb197c35157E6F3351718C4C387D284562BE5) |
