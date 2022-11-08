import setuptools

setuptools.setup(
    name="YYY",
    version="0.0.1",
    author="ronny",
    description="Something",
    url="https://github.com/ronrest/XXX",
    project_urls={
        "Bug Tracker": "https://github.com/ronrest/XXX/issues",
        "Documentation": "https://github.com/ronrest/XXX/blob/master/README.md",
    },
    classifiers=[
        "License :: OSI Approved :: MIT License",
        "Development Status :: 3 - Alpha",
        "Intended Audience :: Developers",
        "Topic :: Software Development :: Libraries",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.8",
        "Programming Language :: Python :: 3.9",
        "Programming Language :: Python :: Implementation :: PyPy",
        "Operating System :: OS Independent",
    ],
    python_requires=">=3.8, <4.0",
    packages=setuptools.find_packages(),
    # package_data={"YYY": ["../artifacts/*"]}, # aditional files to package relative to YYY dir
    install_requires=[
        "python-dateutil",
        "python-decouple",
        "requests",
        # Pinned version of package on github
        # "mypackage @ git+ssh://git@github.com/USERNAME/MYPACKAGE.git@v1.2.3",
        # Pinned version of package in subdirectory of a github repo
        # "mypackage2 @ git+ssh://git@github.com/USERNAME/MYPACKAGE.git@v1.2.3#subdirectory=plugins/aaa",
    ],
    extras_require={
        "dev": [
            "black"
            # "pylint",
            "pip-tools",
            "pytest",
            "yapf",
        ]
    },
    # Enable the package to be used as a first class CLI command
    # entry_points={
    #     "console_scripts": ["YYY=YYY.__main__:main"],
    # },
)
