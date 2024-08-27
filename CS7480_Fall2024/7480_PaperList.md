Below is a non-exhaustive list of papers we may select for class. If you are interested in any paper in particular, 
or would like to present one, please let me know! 


## Protocol Analysis Tools

- Security Protocol Verification: Symbolic and Computational Models
    - Nice overview paper

### Computational Tools
    - CryptoVerif
        - Cryptoverif: a computationally-sound security protocol verifier
    - EasyCrypt
    - Squirrel
        - The Squirrel Prover and its Logic
    - Owl
        - Owl: Compositional Verification of Security Protocols via an Information-Flow Type System.
  
### Symbolic Tools
    - Tamarin
        - Automated Analysis of Diffie-Hellman Protocols and Advanced Security Properties
    - Proverif
        - The Applied Pi Calculus: Mobile Values, New Names, and Secure Communication
        - ProVerif with Lemmas, Induction, Fast Subsumption, and Much More


## TLS

Background:
- RFC 8446

Symbolic Analyses
    - A Comprehensive Symbolic Analysis of TLS 1.3
    - A Symbolic Analysis of Privacy for TLS 1.3 with Encrypted Client Hello

TLS using module-based abstraction
- Modular Code-Based Cryptographic Verification
- Implementing TLS with Verified Cryptographic Security
- Implementing and Proving the TLSs 1.3 Record Layer

TLS via CryptoVerif
- Verified Models and Reference Implementations for the TLS 1.3 Standard Candidate

- A Security Model and Fully Verified Implementation for the IETF QUIC Record Layer

### TLS Attacks

- Logjam:  Imperfect Forward Secrecy: How Diffie-Hellman Fails in Practice
- FREAK: A Messy State of the Union: Taming the Composite State Machines of TLS
- triple handshake : Triple Handshakes and Cookie Cutters: Breaking and Fixing Authentication over TLS
- ALPACA: Application Layer Protocol Confusion - Analyzing and Mitigating Cracks in TLS Authentication

### TLS Analysis

- DY Fuzzing: Formal Dolev-Yao Models Meet Cryptographic Protocol Fuzz Testing


## Verified Implementations 

- EverCrypt: A Fast, Verified, Cross-Platform Cryptographic Provider
- Vale: Verifying High-Performance Cryptographic Assembly Code

- Simple High-Level Code For Cryptographic Arithmetic – With Proofs, Without Compromises
- CryptOpt: Verified Compilation with Random Program Search for Cryptographic Primitives

- Verified Transformations and Hoare Logic: Beautiful Proofs for Ugly Assembly Language

- The Last Yard: Foundational End-to-End Verification of High-Speed Cryptography


## Verified Parsing

- EverParse: Verified Secure Zero-Copy Parsers for Authenticated Message Formats
- Comparse: Provably Secure Formats for Cryptographic Protocols

## Implementation Security

- Verifying Constant-Time Implementations
    - ctverif
- Spectre/meltdown: SoK: Practical Foundations for Software Spectre Defenses
- FaCT: A DSL for Timing-Sensitive Computation

- “These results must be false”: A usability evaluation of constant-time analysis tools
  - https://www.usenix.org/system/files/usenixsecurity24-fourne.pdf