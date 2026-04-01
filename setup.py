from setuptools import setup, find_packages

setup(
    name="royalmatch-bot",
    version="2.0.0",
    description="Bot profissional para Royal Match com IA, visão computacional e controle ADB",
    author="RoyalMatchBot",
    python_requires=">=3.9",
    packages=find_packages(),
    install_requires=open("requirements.txt").read().splitlines(),
    entry_points={
        "console_scripts": [
            "royalmatch-bot=royalmatch_bot.ui.app:main",
        ],
    },
    classifiers=[
        "Programming Language :: Python :: 3",
        "Operating System :: OS Independent",
    ],
)
