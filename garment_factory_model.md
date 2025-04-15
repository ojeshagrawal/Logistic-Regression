## garment_factory_model.md

# 👕 Garment Factory Optimization – Linear Programming (Q1)

This document outlines the formulation and solution of a **Linear Programming (LP)** model to optimize shirt and pant production in a garment factory to **maximize daily profit** while considering process constraints.

---

## 📌 Problem Overview

A garment factory manufactures **shirts and pants**. Each unit of clothing requires time for cutting, sewing, and packaging. Given constraints on total available minutes in each department and a target demand, the objective is to **maximize profit**.

---

## 🧮 Variables

Let:
- `x` = number of shirts produced
- `y` = number of pants produced

---

## 🎯 Objective Function

Each shirt contributes **$10** in profit, and each pant contributes **$8**.

## Maximize z = 10x + 8y

## 📏 Constraints

Given working hours and processing times (in minutes), the constraints are:

### Time Constraints
- Cutting: `40x + 20y ≤ 20 × 8 × 60` → `2x + y ≤ 480`
- Sewing: `40x + 100y ≤ 52 × 8 × 60` → `2x + 5y ≤ 1248`
- Packaging: `20x + 20y ≤ 14 × 8 × 60` → `x + y ≤ 336`

### Demand Constraints
- Minimum shirts: `x ≥ 200`
- Unlimited demand for pants (but incorrectly given as `y ≤ 0`, corrected as `y ≥ 0`)

### Non-Negativity
x ≥ 0
y ≥ 0

## 📊 Final LP Model
Maximize: z = 10x + 8y

Subject to: 2x + y ≤ 480
2x + 5y ≤ 1248
x + y ≤ 336
x ≥ 200
x, y ≥ 0

## 📈 Solution Using Graphical Method

From graphical analysis:
- Optimal point: `x = 144`, `y = 192`
- Maximum profit: `z = 10(144) + 8(192) = 2976`

---

## 📐 Iso-Profit Line and Sensitivity Analysis

To analyze the sensitivity of profit per shirt:

Equating the profit line to 2976:
10x + 8y = 2976
⇒ y = -(c/8)x + 372

Bounded between:
- `2x + y = 480 → y = -2x + 480`
- `x + y = 336 → y = -x + 336`

From these:
8 ≤ c ≤ 16
So, **profit per shirt can vary between $8 and $16** without changing the optimal solution.

---

## 📌 Conclusion

The factory should produce:
- **144 shirts**
- **192 pants**
- **Daily Profit: $2,976**

This combination fully utilizes resource limits and maximizes profitability.
