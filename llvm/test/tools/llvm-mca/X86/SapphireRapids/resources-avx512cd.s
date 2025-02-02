# NOTE: Assertions have been autogenerated by utils/update_mca_test_checks.py
# RUN: llvm-mca -mtriple=x86_64-unknown-unknown -mcpu=sapphirerapids -instruction-tables < %s | FileCheck %s

vpbroadcastmb2q   %k0, %zmm16

vpbroadcastmw2d   %k0, %zmm16

vpconflictd       %zmm16, %zmm19
vpconflictd       (%rax), %zmm19
vpconflictd       (%rax){1to16}, %zmm19
vpconflictd       %zmm16, %zmm19 {k1}
vpconflictd       (%rax), %zmm19 {k1}
vpconflictd       (%rax){1to16}, %zmm19 {k1}
vpconflictd       %zmm16, %zmm19 {z}{k1}
vpconflictd       (%rax), %zmm19 {z}{k1}
vpconflictd       (%rax){1to16}, %zmm19 {z}{k1}

vpconflictq       %zmm16, %zmm19
vpconflictq       (%rax), %zmm19
vpconflictq       (%rax){1to8}, %zmm19
vpconflictq       %zmm16, %zmm19 {k1}
vpconflictq       (%rax), %zmm19 {k1}
vpconflictq       (%rax){1to8}, %zmm19 {k1}
vpconflictq       %zmm16, %zmm19 {z}{k1}
vpconflictq       (%rax), %zmm19 {z}{k1}
vpconflictq       (%rax){1to8}, %zmm19 {z}{k1}

vplzcntd          %zmm16, %zmm19
vplzcntd          (%rax), %zmm19
vplzcntd          (%rax){1to16}, %zmm19
vplzcntd          %zmm16, %zmm19 {k1}
vplzcntd          (%rax), %zmm19 {k1}
vplzcntd          (%rax){1to16}, %zmm19 {k1}
vplzcntd          %zmm16, %zmm19 {z}{k1}
vplzcntd          (%rax), %zmm19 {z}{k1}
vplzcntd          (%rax){1to16}, %zmm19 {z}{k1}

vplzcntq          %zmm16, %zmm19
vplzcntq          (%rax), %zmm19
vplzcntq          (%rax){1to8}, %zmm19
vplzcntq          %zmm16, %zmm19 {k1}
vplzcntq          (%rax), %zmm19 {k1}
vplzcntq          (%rax){1to8}, %zmm19 {k1}
vplzcntq          %zmm16, %zmm19 {z}{k1}
vplzcntq          (%rax), %zmm19 {z}{k1}
vplzcntq          (%rax){1to8}, %zmm19 {z}{k1}

# CHECK:      Instruction Info:
# CHECK-NEXT: [1]: #uOps
# CHECK-NEXT: [2]: Latency
# CHECK-NEXT: [3]: RThroughput
# CHECK-NEXT: [4]: MayLoad
# CHECK-NEXT: [5]: MayStore
# CHECK-NEXT: [6]: HasSideEffects (U)

# CHECK:      [1]    [2]    [3]    [4]    [5]    [6]    Instructions:
# CHECK-NEXT:  2      6     1.00                        vpbroadcastmb2q	%k0, %zmm16
# CHECK-NEXT:  2      6     1.00                        vpbroadcastmw2d	%k0, %zmm16
# CHECK-NEXT:  37     26    18.50                       vpconflictd	%zmm16, %zmm19
# CHECK-NEXT:  37     33    18.00   *                   vpconflictd	(%rax), %zmm19
# CHECK-NEXT:  37     33    18.00   *                   vpconflictd	(%rax){1to16}, %zmm19
# CHECK-NEXT:  37     25    18.50                       vpconflictd	%zmm16, %zmm19 {%k1}
# CHECK-NEXT:  37     33    18.00   *                   vpconflictd	(%rax), %zmm19 {%k1}
# CHECK-NEXT:  37     33    18.00   *                   vpconflictd	(%rax){1to16}, %zmm19 {%k1}
# CHECK-NEXT:  37     26    18.50                       vpconflictd	%zmm16, %zmm19 {%k1} {z}
# CHECK-NEXT:  37     33    18.00   *                   vpconflictd	(%rax), %zmm19 {%k1} {z}
# CHECK-NEXT:  37     33    18.00   *                   vpconflictd	(%rax){1to16}, %zmm19 {%k1} {z}
# CHECK-NEXT:  22     17    11.00                       vpconflictq	%zmm16, %zmm19
# CHECK-NEXT:  22     23    10.50   *                   vpconflictq	(%rax), %zmm19
# CHECK-NEXT:  22     23    10.50   *                   vpconflictq	(%rax){1to8}, %zmm19
# CHECK-NEXT:  22     16    11.00                       vpconflictq	%zmm16, %zmm19 {%k1}
# CHECK-NEXT:  22     23    10.50   *                   vpconflictq	(%rax), %zmm19 {%k1}
# CHECK-NEXT:  22     23    10.50   *                   vpconflictq	(%rax){1to8}, %zmm19 {%k1}
# CHECK-NEXT:  22     17    11.00                       vpconflictq	%zmm16, %zmm19 {%k1} {z}
# CHECK-NEXT:  22     23    10.50   *                   vpconflictq	(%rax), %zmm19 {%k1} {z}
# CHECK-NEXT:  22     23    10.50   *                   vpconflictq	(%rax){1to8}, %zmm19 {%k1} {z}
# CHECK-NEXT:  1      4     1.00                        vplzcntd	%zmm16, %zmm19
# CHECK-NEXT:  2      12    1.00    *                   vplzcntd	(%rax), %zmm19
# CHECK-NEXT:  2      12    1.00    *                   vplzcntd	(%rax){1to16}, %zmm19
# CHECK-NEXT:  1      4     1.00                        vplzcntd	%zmm16, %zmm19 {%k1}
# CHECK-NEXT:  2      12    1.00    *                   vplzcntd	(%rax), %zmm19 {%k1}
# CHECK-NEXT:  2      12    1.00    *                   vplzcntd	(%rax){1to16}, %zmm19 {%k1}
# CHECK-NEXT:  1      4     1.00                        vplzcntd	%zmm16, %zmm19 {%k1} {z}
# CHECK-NEXT:  2      12    1.00    *                   vplzcntd	(%rax), %zmm19 {%k1} {z}
# CHECK-NEXT:  2      12    1.00    *                   vplzcntd	(%rax){1to16}, %zmm19 {%k1} {z}
# CHECK-NEXT:  1      4     1.00                        vplzcntq	%zmm16, %zmm19
# CHECK-NEXT:  2      12    1.00    *                   vplzcntq	(%rax), %zmm19
# CHECK-NEXT:  2      12    1.00    *                   vplzcntq	(%rax){1to8}, %zmm19
# CHECK-NEXT:  1      4     1.00                        vplzcntq	%zmm16, %zmm19 {%k1}
# CHECK-NEXT:  2      12    1.00    *                   vplzcntq	(%rax), %zmm19 {%k1}
# CHECK-NEXT:  2      12    1.00    *                   vplzcntq	(%rax){1to8}, %zmm19 {%k1}
# CHECK-NEXT:  1      4     1.00                        vplzcntq	%zmm16, %zmm19 {%k1} {z}
# CHECK-NEXT:  2      12    1.00    *                   vplzcntq	(%rax), %zmm19 {%k1} {z}
# CHECK-NEXT:  2      12    1.00    *                   vplzcntq	(%rax){1to8}, %zmm19 {%k1} {z}

# CHECK:      Resources:
# CHECK-NEXT: [0]   - SPRPort00
# CHECK-NEXT: [1]   - SPRPort01
# CHECK-NEXT: [2]   - SPRPort02
# CHECK-NEXT: [3]   - SPRPort03
# CHECK-NEXT: [4]   - SPRPort04
# CHECK-NEXT: [5]   - SPRPort05
# CHECK-NEXT: [6]   - SPRPort06
# CHECK-NEXT: [7]   - SPRPort07
# CHECK-NEXT: [8]   - SPRPort08
# CHECK-NEXT: [9]   - SPRPort09
# CHECK-NEXT: [10]  - SPRPort10
# CHECK-NEXT: [11]  - SPRPort11
# CHECK-NEXT: [12]  - SPRPortInvalid

# CHECK:      Resource pressure per iteration:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    [10]   [11]   [12]
# CHECK-NEXT: 243.50  -     8.00   8.00    -     297.50  -      -      -      -     8.00    -      -

# CHECK:      Resource pressure by instruction:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    [10]   [11]   [12]   Instructions:
# CHECK-NEXT: 1.00    -      -      -      -     1.00    -      -      -      -      -      -      -     vpbroadcastmb2q	%k0, %zmm16
# CHECK-NEXT: 1.00    -      -      -      -     1.00    -      -      -      -      -      -      -     vpbroadcastmw2d	%k0, %zmm16
# CHECK-NEXT: 15.50   -      -      -      -     21.50   -      -      -      -      -      -      -     vpconflictd	%zmm16, %zmm19
# CHECK-NEXT: 15.00   -     0.33   0.33    -     21.00   -      -      -      -     0.33    -      -     vpconflictd	(%rax), %zmm19
# CHECK-NEXT: 15.00   -     0.33   0.33    -     21.00   -      -      -      -     0.33    -      -     vpconflictd	(%rax){1to16}, %zmm19
# CHECK-NEXT: 15.50   -      -      -      -     21.50   -      -      -      -      -      -      -     vpconflictd	%zmm16, %zmm19 {%k1}
# CHECK-NEXT: 15.00   -     0.33   0.33    -     21.00   -      -      -      -     0.33    -      -     vpconflictd	(%rax), %zmm19 {%k1}
# CHECK-NEXT: 15.00   -     0.33   0.33    -     21.00   -      -      -      -     0.33    -      -     vpconflictd	(%rax){1to16}, %zmm19 {%k1}
# CHECK-NEXT: 15.50   -      -      -      -     21.50   -      -      -      -      -      -      -     vpconflictd	%zmm16, %zmm19 {%k1} {z}
# CHECK-NEXT: 15.00   -     0.33   0.33    -     21.00   -      -      -      -     0.33    -      -     vpconflictd	(%rax), %zmm19 {%k1} {z}
# CHECK-NEXT: 15.00   -     0.33   0.33    -     21.00   -      -      -      -     0.33    -      -     vpconflictd	(%rax){1to16}, %zmm19 {%k1} {z}
# CHECK-NEXT: 10.00   -      -      -      -     12.00   -      -      -      -      -      -      -     vpconflictq	%zmm16, %zmm19
# CHECK-NEXT: 9.50    -     0.33   0.33    -     11.50   -      -      -      -     0.33    -      -     vpconflictq	(%rax), %zmm19
# CHECK-NEXT: 9.50    -     0.33   0.33    -     11.50   -      -      -      -     0.33    -      -     vpconflictq	(%rax){1to8}, %zmm19
# CHECK-NEXT: 10.00   -      -      -      -     12.00   -      -      -      -      -      -      -     vpconflictq	%zmm16, %zmm19 {%k1}
# CHECK-NEXT: 9.50    -     0.33   0.33    -     11.50   -      -      -      -     0.33    -      -     vpconflictq	(%rax), %zmm19 {%k1}
# CHECK-NEXT: 9.50    -     0.33   0.33    -     11.50   -      -      -      -     0.33    -      -     vpconflictq	(%rax){1to8}, %zmm19 {%k1}
# CHECK-NEXT: 10.00   -      -      -      -     12.00   -      -      -      -      -      -      -     vpconflictq	%zmm16, %zmm19 {%k1} {z}
# CHECK-NEXT: 9.50    -     0.33   0.33    -     11.50   -      -      -      -     0.33    -      -     vpconflictq	(%rax), %zmm19 {%k1} {z}
# CHECK-NEXT: 9.50    -     0.33   0.33    -     11.50   -      -      -      -     0.33    -      -     vpconflictq	(%rax){1to8}, %zmm19 {%k1} {z}
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     vplzcntd	%zmm16, %zmm19
# CHECK-NEXT: 1.00    -     0.33   0.33    -      -      -      -      -      -     0.33    -      -     vplzcntd	(%rax), %zmm19
# CHECK-NEXT: 1.00    -     0.33   0.33    -      -      -      -      -      -     0.33    -      -     vplzcntd	(%rax){1to16}, %zmm19
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     vplzcntd	%zmm16, %zmm19 {%k1}
# CHECK-NEXT: 1.00    -     0.33   0.33    -      -      -      -      -      -     0.33    -      -     vplzcntd	(%rax), %zmm19 {%k1}
# CHECK-NEXT: 1.00    -     0.33   0.33    -      -      -      -      -      -     0.33    -      -     vplzcntd	(%rax){1to16}, %zmm19 {%k1}
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     vplzcntd	%zmm16, %zmm19 {%k1} {z}
# CHECK-NEXT: 1.00    -     0.33   0.33    -      -      -      -      -      -     0.33    -      -     vplzcntd	(%rax), %zmm19 {%k1} {z}
# CHECK-NEXT: 1.00    -     0.33   0.33    -      -      -      -      -      -     0.33    -      -     vplzcntd	(%rax){1to16}, %zmm19 {%k1} {z}
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     vplzcntq	%zmm16, %zmm19
# CHECK-NEXT: 1.00    -     0.33   0.33    -      -      -      -      -      -     0.33    -      -     vplzcntq	(%rax), %zmm19
# CHECK-NEXT: 1.00    -     0.33   0.33    -      -      -      -      -      -     0.33    -      -     vplzcntq	(%rax){1to8}, %zmm19
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     vplzcntq	%zmm16, %zmm19 {%k1}
# CHECK-NEXT: 1.00    -     0.33   0.33    -      -      -      -      -      -     0.33    -      -     vplzcntq	(%rax), %zmm19 {%k1}
# CHECK-NEXT: 1.00    -     0.33   0.33    -      -      -      -      -      -     0.33    -      -     vplzcntq	(%rax){1to8}, %zmm19 {%k1}
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     vplzcntq	%zmm16, %zmm19 {%k1} {z}
# CHECK-NEXT: 1.00    -     0.33   0.33    -      -      -      -      -      -     0.33    -      -     vplzcntq	(%rax), %zmm19 {%k1} {z}
# CHECK-NEXT: 1.00    -     0.33   0.33    -      -      -      -      -      -     0.33    -      -     vplzcntq	(%rax){1to8}, %zmm19 {%k1} {z}
