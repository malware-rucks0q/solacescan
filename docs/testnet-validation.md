# SolaceScan — Base Sepolia Testnet Validation

This document outlines the validation process for **SolaceScan** deployed on **Base Sepolia** during the testnet phase.

---

## Testnet Details

- **Network**: Base Sepolia
- **Chain ID**: 84532
- **RPC URL**: https://sepolia.base.org
- **Explorer**: https://sepolia.basescan.org

---

## Validation Steps

### Step 1 — Configuration Check

- [ ] Ensure that **Base Sepolia** is correctly configured in the `config/base.networks.json` file.
- [ ] Verify the **RPC URL** for Sepolia is correctly set to `https://sepolia.base.org`.
- [ ] Confirm that **Chain ID** is `84532`.

### Step 2 — RPC Connectivity Test

- [ ] Fetch the **latest block number** from the RPC endpoint to verify the connection.
- [ ] Re-fetch after a short delay and ensure the block number increases.
- [ ] If connectivity fails, switch to the fallback RPC URL (`https://base-sepolia-rpc.publicnode.com`).

### Step 3 — Read-only Data Validation

Using **sample addresses** from `scripts/sample-addresses.json`:

- [ ] **Balance check**: Query the balance for `exampleEOA` and ensure it returns a valid value.
- [ ] **Contract code check**: Query the bytecode for `exampleContract` and ensure it returns the correct contract code (or `0x` if no contract exists).
- [ ] **Zero address handling**: Ensure querying the zero address returns `0` balance and does not cause errors.
- [ ] **Burn address handling**: Ensure querying the burn address does not cause errors.

### Step 4 — Explorer Verification

- [ ] Open **exampleEOA** in BaseScan Sepolia to ensure it resolves correctly.
- [ ] Verify that the **latest block** in the **BaseScan Sepolia Explorer** matches the block number returned from the RPC query.

---

## Final Review

- [ ] All validation steps passed successfully on **Base Sepolia**.
- [ ] Ready for deployment to **Base Mainnet** after final verification.

_Last updated: initial scaffold_
