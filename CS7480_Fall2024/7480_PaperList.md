# List of papers for CS 7480
Approx 48 papers?

## Crypto background (depending on student backgrounds)

- Symmetric encryption
    - Bellare paper about comparing the different security notions
    - IND-CPA, INT-CTXT
- Diffie-Hellman exchange
    - DDH, CDH, PRF-ODH, other notions (e.g., the one from Key-schedule security for TLS paper )
- Signature schemes
- Hash functions, HKDF 

## TLS

- Some kind of overview of TLS
    - RFC 8446
    - What's in an RFC

F*: 
- Brief intro to refinement types (by me?)
- Modular Code-Based Cryptographic Verification
- Implementing TLS with Verified Cryptographic Security
- Implementing and Proving the TLSs 1.3 Record Layer

CryptoVerif for TLS:
- Cryptoverif: a computationally-sound security protocol verifier
- Verified Models and Reference Implementations for the TLS 1.3 Standard Candidate

- DY Fuzzing

## TLS Attacks

- Logjam:  Imperfect Forward Secrecy: How Diffie-Hellman Fails in Practice
- FREAK: A Messy State of the Union: Taming the Composite State Machines of TLS
- triple handshake : Triple Handshakes and Cookie Cutters: Breaking and Fixing Authentication over TLS

## Other tools / ideas for protocol analysis

- Owl
- Squirrel

## Symbolic analysis

- Tamarin

## Verified Implementations 

- EverCrypt paper
- Vale, Jay's AES-GCM paper
- Fiat Cryptography
- The last yard paper

- HACL*?

## Some verified parsing stuff

- EverParse

## Implementation Security

- ctverif: Verifying Constant-Time Implementations
- Spectre/meltdown: SoK: Practical Foundations for Software Spectre Defenses
- FaCT: A DSL for Timing-Sensitive Computation


1. Course Overview
    - Crypto background
      -  AE, Signatures, KDFs, DHKE
    - PL background
        - type systems 
        - refinement types
    - SoK: Computer-Aided Cryptography
        - Protocol Analysis
        - Implementation correctness and side-channel resistance
        - List of verified implementations. What are the gaps in these proofs?

2. 