"""
Setup do Royal Match Bot.
Permite instalar o bot como pacote Python com o comando 'pip install -e .'
"""

from setuptools import setup, find_packages
from pathlib import Path

readme = Path("README.md").read_text(encoding="utf-8")

setup(
    name="royal-match-bot",
    version="2.0.0",
    author="Royal Match Bot",
    description="Bot automatizado profissional para Royal Match com IA híbrida",
    long_description=readme,
    long_description_content_type="text/markdown",
    python_requires=">=3.8",
    packages=find_packages(exclude=["tests*"]),
    install_requires=[
        "numpy>=1.21.0",
        "Pillow>=9.0.0",
        "PyYAML>=6.0",
        "colorama>=0.4.6",
        "opencv-python-headless>=4.6.0",
    ],
    extras_require={
        "dev": [
            "pytest>=7.0",
            "pytest-cov",
            "black",
            "mypy",
        ],
    },
    entry_points={
        "console_scripts": [
            "rmbot=royal_match_bot.cli:main",
        ],
    },
    include_package_data=True,
    package_data={
        "royal_match_bot": ["config/*.yaml", "assets/*"],
    },
    classifiers=[
        "Programming Language :: Python :: 3",
        "Operating System :: OS Independent",
        "License :: OSI Approved :: MIT License",
    ],
)
