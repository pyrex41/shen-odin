# ShenOSKernel 43.1 provenance

This directory is the verified community ShenOSKernel 43.1 fixture used by
the Shen-Odin lane.

- Repository: `Shen-Language/shen-sources`
- Tag: `shen-43.1`
- Commit: `715824a52b55e9c81a9501df8548ff3edd8411f5`
- Release: `ShenOSKernel-43.1.tar.gz`
- Release SHA-256: `900eedef44f440af78f9395ed06e689ce1604546fc309f5bc7c8bc84cc651920`
- Kernel version: `43.1`

The 24 release KLambda files, the 56 root canonical tests, and the 17
extension tests
were copied from the verified ShenOSKernel-43.1 source tree and compared with:

```sh
export SHEN_KERNEL_43_1=/path/to/ShenOSKernel-43.1
diff -rq "$SHEN_KERNEL_43_1/tests" kernel/tests
for f in "$SHEN_KERNEL_43_1/klambda"/*.kl; do
  b=${f##*/}
  cmp -s "$f" "kernel/klambda/$b" || exit 1
done
```

The Odin runtime gate remains UNKNOWN because this repository has no evaluator,
launcher, or canonical suite runner yet.
