from setuptools import setup
setup(
    name='pybuild',
    version='0.1.0',
    packages=['pybuild'],
    author='Tigran Muradyan',
    entry_points={
        'console_scripts': [
            'pybuild = pybuild.__main__:main'
        ]
    })
