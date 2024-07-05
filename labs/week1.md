# Week 1 Lab: Basic Data Analysis Using Python

## Objective:
Understand different types of data and basic analysis techniques using Python.

## Activities:
1. Import a dataset.
2. Identify and categorize data types.
3. Perform basic descriptive statistics (mean, median, mode).
4. Create simple charts (bar, pie, histogram).

## Step-by-Step Instructions:

### Step 1: Importing a Dataset
We'll use the popular `pandas` library to handle data. Let's start by importing the necessary libraries and loading a dataset.

```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# Load a sample dataset
url = "https://raw.githubusercontent.com/mwaskom/seaborn-data/master/titanic.csv"
data = pd.read_csv(url)

# Display the first few rows of the dataset
print(data.head())
```

### Step 2: Identifying and Categorizing Data Types
We'll examine the data types of each column and categorize them.

```python
# Display data types of each column
print(data.dtypes)

# Categorize columns as qualitative (categorical) or quantitative (numerical)
qualitative_columns = data.select_dtypes(include=['object']).columns.tolist()
quantitative_columns = data.select_dtypes(include=['number']).columns.tolist()

print("Qualitative columns:", qualitative_columns)
print("Quantitative columns:", quantitative_columns)
```

### Step 3: Performing Basic Descriptive Statistics
We'll calculate basic descriptive statistics for the quantitative columns.

```python
# Calculate and display basic descriptive statistics for numerical columns
descriptive_stats = data.describe()
print(descriptive_stats)

# Calculate mode for categorical columns
mode_stats = data[qualitative_columns].mode()
print("Mode for categorical columns:")
print(mode_stats)
```

### Step 4: Creating Simple Charts
We'll create simple charts to visualize the data.

```python
# Bar chart for categorical data (e.g., Embarked)
data['embarked'].value_counts().plot(kind='bar', title='Embarked')
plt.xlabel('Embarked')
plt.ylabel('Frequency')
plt.show()

# Pie chart for categorical data (e.g., Sex)
data['sex'].value_counts().plot(kind='pie', title='Sex Distribution', autopct='%1.1f%%')
plt.ylabel('')
plt.show()

# Histogram for numerical data (e.g., Age)
data['age'].plot(kind='hist', bins=20, title='Age Distribution')
plt.xlabel('Age')
plt.ylabel('Frequency')
plt.show()
```

### Complete Python Script:
Here's the complete script combining all steps:

```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# Load a sample dataset
url = "https://raw.githubusercontent.com/mwaskom/seaborn-data/master/titanic.csv"
data = pd.read_csv(url)

# Display the first few rows of the dataset
print(data.head())

# Display data types of each column
print(data.dtypes)

# Categorize columns as qualitative (categorical) or quantitative (numerical)
qualitative_columns = data.select_dtypes(include=['object']).columns.tolist()
quantitative_columns = data.select_dtypes(include=['number']).columns.tolist()

print("Qualitative columns:", qualitative_columns)
print("Quantitative columns:", quantitative_columns)

# Calculate and display basic descriptive statistics for numerical columns
descriptive_stats = data.describe()
print(descriptive_stats)

# Calculate mode for categorical columns
mode_stats = data[qualitative_columns].mode()
print("Mode for categorical columns:")
print(mode_stats)

# Bar chart for categorical data (e.g., Embarked)
data['embarked'].value_counts().plot(kind='bar', title='Embarked')
plt.xlabel('Embarked')
plt.ylabel('Frequency')
plt.show()

# Pie chart for categorical data (e.g., Sex)
data['sex'].value_counts().plot(kind='pie', title='Sex Distribution', autopct='%1.1f%%')
plt.ylabel('')
plt.show()

# Histogram for numerical data (e.g., Age)
data['age'].plot(kind='hist', bins=20, title='Age Distribution')
plt.xlabel('Age')
plt.ylabel('Frequency')
plt.show()
```

## Explanation:
- **Importing a Dataset:** We load the Titanic dataset from a URL using `pandas`.
- **Identifying Data Types:** We identify which columns are categorical and which are numerical.
- **Descriptive Statistics:** We calculate and display basic statistics like mean, median, mode, and standard deviation for numerical data.
- **Creating Charts:** We visualize categorical data using bar and pie charts, and numerical data using histograms.
