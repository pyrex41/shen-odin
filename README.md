# shen-odin

Odin development environment and ShenOSKernel fixture.

This branch records the ShenOSKernel 43.1 source boundary for the Odin lane.
The repository currently contains the Nix-managed Odin toolchain and the
canonical kernel/test fixture; an Odin Shen evaluator, launcher, and port test
harness have not yet been implemented.

The runtime qualification gate is therefore **UNKNOWN**. The vendored kernel
and tests must not be reported as an Odin port pass until an Odin runtime can
boot the kernel and execute the full suite.

## Kernel fixture

The 24 official `.kl` files are under [`kernel/klambda`](kernel/klambda).
The 56 root canonical test files and 17 extension test files are under
[`kernel/tests`](kernel/tests). Their
provenance, release checksum, and exact comparison command are recorded in
[`kernel/PROVENANCE.md`](kernel/PROVENANCE.md).

## Toolchain

```sh
nix develop
```

The flake supplies Odin, Clang, and GNU Make. No canonical test launcher is
claimed until the Odin runtime exists.
