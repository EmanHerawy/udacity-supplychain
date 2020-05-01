Part 1: Plan the project with write-ups
=======================================

Requirement 1	Project write-up - UML
------------------------------------
please check UML folder 

Requirement 2	Project write-up - Libraries
------------------------------------
Library used: "@truffle/hdwallet-provider"
to deploy the contract on test network using private key

Requirement 3	Project write-up - IPFS
------------------------------------
not implemented

General Write Up
------------------------------------

contract address on rinkeby:

 ``` 
    truffle migrate --network rinkeby
    
     

 
    Deploying 'SupplyChain'
   -----------------------
   > transaction hash:    0xa767d23a4599640889f7ea30eae95123a94587c58661ae79a5735ffc55e35b50
   > Blocks: 0            Seconds: 9
   > contract address:    0x29ce77d4A3DC5B828CBa18F237c83928268C1826
   > block number:        6409496
   > block timestamp:     1588297872
   > account:             0x5d8c77d2123ACD0490Bf779eac2be02d5B0D322C
   > balance:             3.015028062
   > gas used:            2727793
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.05455586 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.05455586 ETH


Summary
=======
> Total deployments:   2
> Final cost:          0.05932774 ETH
 ```


node v10.18.1 (npm v6.13.4)
Truffle version: ^0.4.24
web3 version: 1.2.6

steps to test 
- run 
    ```
    npm install
    ```
- launch Ganache
  
    ``` 
    ganache-cli -s 0
    ```

- to test  : run
  
    ```
    truffle test
    ```
All  tests should pass

- launch the DApp
  
    ```
    npm run dev
    ```

- open DApp on browser
- Connect metamask to rinkeby if you want to use the deployed version of these contracts otherwise migrate the contract locally via ` truffle migrate ` and connect to ganache from your metamask 