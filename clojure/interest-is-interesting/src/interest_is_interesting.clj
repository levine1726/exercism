(ns interest-is-interesting)

(defn interest-rate
  "TODO: add docstring"
  [balance]
  (cond (< balance 0M) -3.213
        (< balance 1000M) 0.5
        (< balance 5000M) 1.621
        :else 2.475))

(defn interest-multiplier
  [balance]
  (* (bigdec (interest-rate balance)) 0.01M))

(defn interest-accrued
  [balance]
  (* balance (interest-multiplier balance)))

(defn annual-balance-update
  "TODO: add docstring"
  [balance]
  (if (< balance 0) (- balance (interest-accrued balance)) (+ balance (interest-accrued balance))))

(defn amount-to-donate
  "TODO: add docstring"
  [balance tax-free-percentage]
  (if (< balance 0) 0 (int (* 2 (* balance (* tax-free-percentage 0.01M))))))
