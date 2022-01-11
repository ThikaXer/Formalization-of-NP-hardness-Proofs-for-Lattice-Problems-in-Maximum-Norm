theory Partition

imports Main
        "Jordan_Normal_Form.Matrix"
        "poly-reductions/Karp21/Reductions"

begin
text \<open>The Partition Problem.\<close>

definition is_partition :: "int list \<Rightarrow> nat set \<Rightarrow> bool" where
  "is_partition a I = (I \<subseteq> {0..<length a} \<and> (\<Sum>i\<in>I. a ! i) = (\<Sum>i\<in>({0..<length a}-I). a ! i))"

definition partition_problem :: "(int list) set " where
  "partition_problem = {a. \<exists>I. I \<subseteq> {0..<length a} \<and> 
          (\<Sum>i\<in>I. a ! i) = (\<Sum>i\<in>({0..<length a}-I). a ! i)}"

text \<open>Reduction partition problem to SAT(?).\<close>


end