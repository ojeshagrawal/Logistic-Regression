# Linear-Programming and Logistic-Regression

 
  

---

## 🧠 Problem Breakdown & Solutions

### ✅ Q1: Garment Factory – Linear Programming (Manual Solution)

A garment factory produces **shirts and pants**. The goal is to maximize profit while considering time constraints in three departments: **cutting, sewing, and packaging**.

- **Decision Variables**:  
  `x = shirts`, `y = pants`
- **Objective Function**:  
  Maximize `z = 10x + 8y` (profit in $)
- **Constraints**:
  - Cutting: `2x + y ≤ 480`
  - Sewing: `2x + 5y ≤ 1248`
  - Packaging: `x + y ≤ 336`
  - Demand constraints: `x ≥ 200`, `y ≤ 0`
- **Solution**:  
  Using the **graphical method**, the optimal solution is:
  - **Shirts = 144**, **Pants = 192**
  - **Max Profit = $2976**
- **Sensitivity Analysis**:
  Derived bounds for profit per shirt: `$8 ≤ c ≤ $16`

📄 See: `garment_factory_model.md`
---

### ✅ Q2: Product Mix Optimization – LP Model in R

A company produces **three products** (Bloom, Amber, Leaf) using **three raw materials** (Cotton, Wool, Nylon). The task was to build an LP model to **maximize profit** while meeting product demand and material proportion constraints.

- **Decision Variables**:  
  `xij = quantity of material i in product j`
- **Objective Function**:  
  Maximize profit based on:
  - Sales revenue
  - Production costs
  - Purchase price of materials
- **Constraints**:
  - Demand constraints per product
  - Material proportion conditions
  - Non-negativity and integer constraints
- **Tools**:  
  Implemented using `lpSolveAPI` in **R**
- **Optimal Solution**:
  - Max Profit = **$83,160**
  - Key variables:
    ```
    x11 = 2520 (Cotton in Bloom)
    x21 = 1920 (Wool in Bloom)
    x12 = 1680 (Cotton in Amber)
    x22 = 1280 (Wool in Amber)
    ```
  - Leaf product not produced in the optimal solution

📄 Explanation: `factory_model_explanation.md`
---

### ✅ Q3: Game Theory – Strategic Bidding (Two-Player Zero-Sum Game)

Two construction companies – **Giant** and **Sky** – are competing for building contracts. A **payoff matrix** was constructed to evaluate bidding strategies in a zero-sum environment.

- **Payoff Matrix**:
  - Bids range from $10M to $40M
  - +1 = win, -1 = loss (zero-sum)
- **Saddle Point**:  
  No saddle point was found (L ≠ U)
- **LP Model for Giant**:
  - Objective: Maximize `v` (expected value)
  - Constraints: Based on mixed strategy formulation
- **Tools**:  
  Implemented using `lpSolveAPI` in **R**
- **Result**:  
  Game value is **0** – a tie in optimal strategy.

📄 Explanation: `game_theory_model.md`
---

## 🛠️ Technologies Used

- **Languages**: R (lpSolveAPI), Markdown
- **Methods**: Linear Programming, Graphical LP, Game Theory, Sensitivity Analysis
- **Tools**: RStudio, Jupyter (optional for plotting)

---

## 💼 Key Skills Demonstrated

- Formulating and solving real-world LP problems
- Mathematical modeling for production and logistics
- Game theory strategy optimization
- R programming for operational research

---

## 📬 Contact

I'm happy to connect and collaborate!

- 🔗 [LinkedIn](https://www.linkedin.com/in/ojeshagrawal/)
- 📧 ojesh.agrawal@gmail.com

---

> ✅ *This project demonstrates practical applications of analytics and optimization in business settings, combining theory with programming.*  

 
