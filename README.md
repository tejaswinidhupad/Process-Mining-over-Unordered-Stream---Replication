# Process-Mining-over-Unordered-Stream---Replication

## Getting Started

This project has a stable branch called `main`.

The project follows the structure below:

```
	Process Mining over Unordered Stream
	├── README.md
	├── LICENSE.md
	└── src
		├── all executbale java files
	└── out
		└── all output files
	└── data
		├── simulated data
		└── real-life data
  ├── result

```
## Tools Required
- Visual Studio Code
- Java
- Apache Flink

## Running the App

1. Clone the project to a directory of your choice
    ```bash
    git clone https://github.com/abroniewski/Child-Wasting-Prediction.git
    ```
2. Pipenv is used to manage dependencies. If you do not have pipenv installed, run the following:
    ```bash
    pip install pipx
    pip install pipenv
    ```
3. Install dependencies using the included pipfile. Run the following from the parent directory.
    ```bash
    pipenv install
    pipenv run clean_notebook
    ```
3. Once all dependencies are installed, we can run the main file.
    ```bash
    python main.py
    ```

This will run the full data-preperation, model building and prediction generation using the data provided in [/data](https://github.com/abroniewski/Child-Wasting-Prediction.git/data).

### Tools Required

No tools currently specified

## Acknowledgments
Prof. Ahmed Awad
