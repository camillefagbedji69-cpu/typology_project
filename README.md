# Projet N°27 : Ecosystemic Typology of Watersheds via PCA & HCPC
## 📌 Context & Overview
Managing complex landscapes requires a multidimensional understanding of how biophysical, landscape, and anthropogenic factors interact. In the region of Parakou (Benin), sub-basins exhibit diverse functional profiles. This project uses Principal Component Analysis (PCA) and Hierarchical Clustering on Principal Components (HCPC) to categorize watersheds into distinct functional groups based on their ecosystem service performance and human pressure levels.

## 🎯 Objectives
* **Information Synthesis**: Reducing the dimensionality of correlated ecological and anthropogenic variables.

* **Gradient Identification**: Uncovering the latent structures (Naturalness vs. Anthropization, Productivity vs. Heterogeneity).

* **Functional Typology**: Clustering sub-basins into management-oriented groups to support territorial planning.

## 🛠️ Tech Stack & Methodology
* **Language**: R 📊 (`FactoMineR`, `factoextra`)

* **Variables**: Total Ecosystem Services (TES), Water Yield, Carbon Stock, Edge Density (ED), SHDI, Forest Cover, and Anthropogenic Pressure.

## Analytical Workflow:

* Standardization: Z-score scaling for comparability.
* PCA: Variance decomposition to extract dominant gradients.
* HCPC: Hierarchical clustering performed on the principal coordinates to define optimal groups.
* V-test Profiling: Statistical characterization of each cluster.

## 🚀 Key Results
The Trinity of Gradients: 94% of the information is captured in 3 axes:
* **Dim 1 (50%)**: Global Ecosystem Performance (TES, Carbon, Water).
* **Dim 2 (27%)**: The "Naturalness-Human" Gradient (Forest vs. Human Pressure).
* **Dim 3 (16%)**: Landscape Complexity (SHDI, Fragmentation).

## A 3-Cluster Typology:

* **Cluster 1 (Small Forest Units)**: High forest proportion but low absolute service yield due to small unit size.
* **Cluster 2 (Anthropic-Hydrological)**: High runoff/water production driven by agricultural and urban surfaces.
* **Cluster 3 (Multifunctional Hubs)**: High heterogeneity, high carbon storage, and maximum TES scores. These are the priority zones for conservation.

## 🔮 Perspectives for Improvement
* **Temporal Stability**: Assessing if these clusters remain stable across different seasons or years.
* **Non-Linear Alternatives**: Comparing HCPC results with non-linear clustering methods like Self-Organizing Maps (SOM) or K-medoids
* **Predictive Integration**: Using the identified clusters as a categorical predictor in future carbon or water yield forecasting models.
