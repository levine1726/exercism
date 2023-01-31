(ns cars-assemble)

(defn rate-per-hour
  [speed]
  (* speed 221.0))

(defn production-rate
  "Returns the assembly line's production rate per hour,
   taking into account its success rate"
  [speed]
  (cond (= speed 0) 0.0
        (and (>= speed 1) (<= speed 4)) (rate-per-hour speed)
        (and (>= speed 5) (<= speed 8)) (* 0.9 (rate-per-hour speed))
        (= speed 9) (* 0.8 (rate-per-hour speed))
        :else (* 0.77 (rate-per-hour speed))))

(defn working-items
  "Calculates how many working cars are produced per minute"
  [speed]
  (int (/ (production-rate speed)  60)))
