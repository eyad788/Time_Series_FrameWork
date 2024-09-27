# Time Series Framework

## Project Description
The **Time Series Framework** is a powerful tool for modeling and forecasting time series data. It provides a range of models including Artificial Neural Networks (ANN), Recurrent Neural Networks (RNN), ARIMA, Prophet, and an automated model selection process. This framework is designed to facilitate the analysis and prediction of time-dependent data, making it an essential tool for data scientists and analysts.

## Features
- **Multiple Models:** Support for various forecasting models such as ANN, RNN, ARIMA, and Prophet.
- **Automatic Model Selection:** Automatically selects the best model for your data.
- **Forecasting:** Generate future predictions based on historical time series data.
- **Data Visualization:** Plot and visualize historical data along with forecasted values.

## Getting Started

### Prerequisites
- Python 3.9 or higher
- Required Python packages (listed in `requirements.txt`)

### Installation
1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/time-series-framework.git
    ```
2. Navigate to the project directory:
    ```bash
    cd time-series-framework
    ```
3. Install dependencies:
    ```bash
    pip install -r requirements.txt
    ```

### Running the Application
You can run the framework using the following command:
```bash
python main.py
```
Follow the prompts to input the data path, choose a model, and specify the end date for forecasting.

### Docker
To run the framework in a Docker container, you can use the provided Dockerfile:

1. Build the Docker image:
    ```bash
    docker build -t time-series-framework .
    ```
2. Run the Docker container:
    ```bash
    docker run -it --rm time-series-framework
    ```

## Usage
1. Prepare your time series data in CSV format.
2. Specify the data path and model to be used in forecasting.
3. Input the end date for the forecast.
4. View predictions and visualize the results.

## Project Structure
```bash
├── models                 # Forecasting model definitions
├── utils                  # Utility functions for data processing and visualization
├── timeseries_data        # Time series data handling
├── requirements.txt       # Required Python packages
├── main.py                # Main script to run the framework
└── README.md              # Project documentation
```

## Technologies Used
- **Python:** Programming language for developing the framework.
- **Pandas:** Library for data manipulation and analysis.
- **NumPy:** Library for numerical computing.
- **Matplotlib / Seaborn:** Libraries for data visualization.
- **scikit-learn:** Machine learning library for Python.
- **statsmodels:** Library for statistical modeling.
- **Prophet:** Forecasting tool developed by Facebook.
- **DVC:** Data Version Control for managing datasets and models.

## License
This project is licensed under the MIT License.

## Acknowledgements
- [Facebook Prophet](https://facebook.github.io/prophet/docs/quick_start.html)
- [DVC](https://dvc.org/)
