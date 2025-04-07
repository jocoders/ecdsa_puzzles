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

1. **name** – Name of the DApp or protocol (e.g., "Uniswap V2").
2. **version** – Version of the contract (e.g., "1").
3. **chainId** – Chain ID (e.g., 1 for Ethereum Mainnet, 137 for Polygon).
4. **verifyingContract** – Address of the contract that will verify the signature.
5. *(Optional)* **salt** – Extra data to ensure uniqueness.
6. *(Optional)* **extensions** – For advanced use cases like `EIP-5267`.

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


