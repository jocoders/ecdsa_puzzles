### WEEK_1:

**PermitSwap: [Contract](https://github.com/jocoders/permit-swap)** 

**PermitSwap: [Frontend](https://github.com/jocoders/web3-permit-swap)** 

---

### WEEK_2:

**Elliptic curve math: [Functions](https://github.com/jocoders/elliptic_curve_math)** 

**Fuzzy Identitiy: [Solution](https://github.com/jocoders/capture-the-ether-foundry/blob/main/test/FuzzyIdentityChallenge.t.sol)** 

---

### WEEK_3:

**Exercise 0: What pieces of information go into an EIP-712 domain separator, and what could go wrong if those were omitted?**

An EIP-712 domain separator includes the following information:

1. **TYPE_HASH** - A keccak256 hash of the EIP-712 domain type definition. It defines the structure of the domain (e.g., EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)) and ensures that all domain data is interpreted in the correct format.
2. **name** – Name of the DApp or protocol (e.g., "Uniswap V2").
3. **version** – Version of the contract (e.g., "1").
4. **chainId** – Chain ID (e.g., 1 for Ethereum Mainnet, 137 for Polygon).
5. **address(this)** – The address of the current contract verifying the signature, ensuring the signature is bound to this specific smart contract.


The domain separator is hashed and used in the final signed message to guarantee **uniqueness** and **security** of the signature.

## Why is this important?

If any of these fields are **omitted** or **wrong**:

- **Replay attacks** could happen – a signature meant for one chain or contract could be reused on another.
- **Spoofing** – A different contract might trick the user into signing something it shouldn’t.
- **Loss of context** – The signature would lose the binding to a specific app, version, or chain.

This is why the **domain separator** acts like a “digital fingerprint” that ties the signature to:
- a specific DApp,
- a specific contract,
- a specific blockchain.

**Exercise 1: [Solution](https://github.com/jocoders/rare-skills-solidity-riddles/blob/main/test/DoubleTake.t.sol)**

**Exercise 2: [Solution](https://github.com/jocoders/ecdsa_puzzles/blob/main/test/Week22Exercise2.t.sol)**

**Exercise 3: [Solution](https://github.com/jocoders/ecdsa_puzzles/blob/main/test/Week22Exercise3.t.sol)**

**Exercise 4: [Solution](https://github.com/jocoders/ecdsa_puzzles/blob/main/test/Week22Exercise4.t.sol)**


