# 🏗️ Game Theory – Strategic Bidding Model (Q3)

This document explains the game theory-based model used to simulate bidding strategies between two construction companies: **Giant** and **Sky**. The game is modeled as a **two-player zero-sum game**.

---

## 🎯 Objective

To determine optimal mixed strategies for the company **Giant**, when competing against **Sky**, and evaluate the **value of the game** using linear programming.

---

## 🎲 Game Setup

- **Players**: Giant (row player), Sky (column player)
- **Actions**: Bids in millions – $10M, $20M, $30M, $35M, $40M
- **Payoff Matrix**:

| Giant \ Sky | $10M | $20M | $30M | $35M | $40M |
|-------------|------|------|------|------|------|
| **$10M**    | +1   | -1   | -1   | -1   | -1   |
| **$20M**    | +1   | +1   | -1   | -1   | -1   |
| **$30M**    | +1   | +1   | +1   | -1   | -1   |
| **$35M**    | +1   | +1   | +1   | +1   | -1   |
| **$40M**    | -1   | -1   | -1   | -1   | +1   |

---

## 🎯 Game Theory Concepts

- **Zero-sum game**: One player's gain is the other's loss.
- **Saddle point**: No saddle point found as min-max ≠ max-min.
- **Mixed strategy**: Required due to lack of a saddle point.
- **Value of the game**: Expected payoff when both players play optimal strategies.

---

## 📐 LP Model for Giant

Let:
- `x1 to x5`: probabilities for Giant's strategies
- `v`: expected value of the game

### Objective:
Maximize v

### Constraints:
v - (x1 + x2 + x3 + x4 - x5) ≤ 0 
v - (-x1 + x2 + x3 + x4 - x5) ≤ 0 
v - (-x1 - x2 + x3 + x4 - x5) ≤ 0 
v - (-x1 - x2 - x3 + x4 - x5) ≤ 0 
v - (-x1 - x2 - x3 - x4 + x5) ≤ 0 
x1 + x2 + x3 + x4 + x5 = 1 x1, ..., x5 ≥ 0


---

## 💻 R Implementation

Using `lpSolveAPI` in `ojesh-code.R`:
- Defined 6 variables (x1 to x5, v)
- Objective and constraints created using `set.objfn()` and `add.constraint()`
- Model solved using `solve()` and results fetched with `get.variables()`

---

## ✅ Result

- **Game Value (v): 0**
- This implies a **tie** in expected outcome if both companies use optimal mixed strategies.
- There’s no dominant strategy or saddle point.

---

## 📌 Conclusion

Using linear programming, Giant can determine a risk-balanced strategy. Even without a guaranteed win, knowing the value of the game helps in strategic planning during competitive bidding.
