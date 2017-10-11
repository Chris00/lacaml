### 10.0.0 (2017-10-08)

  * Switched to jbuilder and topkg

  * API changes

      * `trmm` and `trsm` now do not label argument `a` anymore

      * Many matrix functions now support an optional `patt` argument,
        which can be used to specify rectangular, triagonal, trapezoidal, and
        pentagonal patterns on which to perform an operation.

      * New functions

        * `Mat.sum_prod` computes the sum of elemenet-wise products of
          two matrices.  Some use cases are already covered by `Mat.gemm_trace`,
          but the latter does not support patterns.

  * Improved C-code to better support SIMD compiler optimizations

  * Many internal improvements, including untagged and unboxed passing of
    parameters to and from external functions.

  * Compilation now uses `-march=native -O3 -ffast-math` by default, which
    should be safe and exploit SIMD on platforms that support it to greatly
    improve performance of some operations.

  * Improved documentation