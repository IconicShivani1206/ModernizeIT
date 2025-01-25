# ModernizeIT

## Overview
Problem Statement:
Legacy systems are often built using outdated technologies, making them difficult to maintain, 
integrate, and scale. These systems are typically monolithic, lack proper documentation, and are 
written in older programming languages like COBOL, Visual Basic, or Fortran. As businesses 
grow and adopt modern technologies, maintaining and upgrading these legacy systems becomes 
increasingly costly and inefficient. The challenge lies in converting these outdated systems into 
modern, maintainable, and scalable solutions while minimizing the risks of errors and downtime

## Usage
To run the Legacy Script Converter, use the following command format:

```shell
Legacy Script Converter

optional arguments:
  -h, --help            show this help message and exit
  --legacy-path LEGACY_PATH
                        Path to the legacy code file(s) using a glob pattern
  --output-path OUTPUT_PATH
                        Path to the parent directory for saving the updated scripts
  --convert-to CONVERT_TO
                        Target language to convert to
```

### Example
```shell
python -m venv venv    
venv\Scripts\activate  
pip install .           
python codeMorpher.py --legacy-path outdated_codes/**.cpp --output-path Mordenized_codes --convert-to js
```

