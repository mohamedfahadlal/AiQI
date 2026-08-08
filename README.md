# AI Based AQI Risk Assessment & Health Advisory System

**AI-Based Real-Time Air Quality Risk Assessment and Personalized Health Advisory System**

Air quality is a pressing public health concern, yet most systems simply provide a generic Air Quality Index (AQI) number. **AiQI** bridges this gap by combining real-time air quality monitoring, machine learning-based AQI forecasting, and personal health profiling to deliver actionable, tailored health advisories. 

A person with asthma faces different risks than a healthy individual. AiQI understands this, calculating exact CPCB (India) AQI metrics and offering predictive insights to help users safely plan their day.

---

## 🚀 Key Features

* **Real-Time Dashboard & CPCB Calculations:** Fetches raw pollutant data (PM2.5, PM10, NO2, O3, CO, SO2) and calculates precise AQI using the official CPCB India standard.
* **Personalized Health Advisories:** Generates custom health recommendations based on a user's stored health profile (age, conditions like asthma or COPD) and the current/predicted AQI.
* **Predictive ML Models:** Forecasts next-hour AQI using XGBoost, Random Forest, and LightGBM models. Includes a detailed Model Analysis suite with 10 diagnostic plots (SHAP, Feature Importance, etc.).
* **5-Day Interactive Forecast:** Visualizes upcoming AQI and temperature trends with animated charting and daily summaries.
* **Smart Search & Geolocation:** Autocomplete city search powered by Nominatim, specifically optimized for Indian locales, plus IP-based location tracking.
* **PDF Report Generation:** One-click export of comprehensive AQI, weather, and health advisory reports.
* **Custom Alert System:** Notifies users via popups if a city's AQI exceeds their personal threshold.
* **Secure Authentication:** Features SHA-256 password hashing and email OTP verification for new accounts.
* **Dynamic UI & Dark Mode:** Built with JavaFX 21, featuring fully animated UI components, weather-reactive backgrounds, and a seamless Dark/Light mode toggle.

---

## 🏗 System Architecture

AiQI utilizes a robust **three-tier architecture** with components communicating over local HTTP:

1.  **Tier 1: Desktop UI (JavaFX 21)** - The user-facing application handling rendering, animations, and state. Communicates strictly via REST API.
2.  **Tier 2: Backend REST Server (Spring Boot 3)** - The central hub running on port 8080. Handles business logic, API calls to OpenWeatherMap/Nominatim, database interactions, and AQI calculations.
3.  **Tier 3: ML Inference Server (Python Flask)** - A lightweight server on port 5000 hosting trained ML models for next-hour predictions and diagnostic plot generation.

---

## 💻 Tech Stack

| Layer | Technology | Purpose |
| :--- | :--- | :--- |
| **Frontend UI** | JavaFX 21 | Desktop application framework |
| **Backend API** | Spring Boot 3 | REST server & business logic |
| **ML Server** | Python Flask | Model hosting & inference |
| **Database** | Supabase (PostgreSQL) | Secure user and health profile storage |
| **ML Models** | XGBoost, Random Forest, LightGBM | AQI forecasting |
| **ML Tools** | Scikit-learn, Pandas, NumPy, SHAP | Data processing & model evaluation |
| **External APIs** | OpenWeatherMap, Nominatim, ip-api | Live data fetching & geocoding |
| **Utilities** | Apache PDFBox | PDF report generation |

---

## ⚙️ Getting Started

### Prerequisites
* Java 21 or higher
* Maven 3.8+
* Python 3.10+
* Supabase Account (for PostgreSQL)
* API Keys: OpenWeatherMap, Gmail SMTP (for OTP)

### Demo

**1. Working Demo**
[check the demo](https://drive.google.com/file/d/1ZO3AGvXY89lYv9qqPFGj_tmRt7o1uQ4q/view?usp=sharing)


### Installation

**2. Clone the repository**
```bash
git clone [https://github.com/yourusername/AiQI.git](https://github.com/yourusername/AiQI.git)
cd AiQI