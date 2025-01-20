# FT-learning
This repository stores some code and note I wrote during my learning process of Fourier Transform
## Why learn Fourier Transform
The Fourier Transform (FT) constitutes a sophisticated mathematical technique that facilitates the conversion of time-domain signals into their frequency-domain representations. In the context of our project, which necessitates the analysis of vibration phenomena, the signals in question are inherently complex, encompassing a multitude of frequencies. Among these, certain spectral components are predominant, exerting a significant influence on the overall signal characteristics, while others contribute less prominently. Our objective is to employ the FT to decompose the composite signals into their discrete frequency constituents, thereby enabling us to concentrate our investigative efforts on the most influential spectral bands.
## The formula for the Continuous Fourier Transform (CFT)
Given a time-domain function $` f(t) `$, its Continuous Fourier Transform $` F(\omega) `$ is defined by the following integral:

$$ F(\omega) = \int_{-\infty}^{\infty} f(t) \cdot e^{-i\omega t} \, dt $$

where:
- $` F(\omega) `$ represents the frequency-domain representation of the function,
- $` \omega `$ denotes the angular frequency (in radians per second),
- $` i `$ is the imaginary unit with the property $` i^2 = -1 `$,
- $` t `$ represents time.
Conversely, the Inverse Continuous Fourier Transform (ICFT) to recover $` f(t) `$ from $` F(\omega) `$ is given by:

$$ f(t) = \frac{1}{2\pi} \int_{-\infty}^{\infty} F(\omega) \cdot e^{i\omega t} \ d\omega $$

This pair of transforms allows for the analysis and synthesis of time-domain signals in the frequency domain.
## The formula for the Discrete Fourier Transform (DFT)
Given a sequence of $` N `$ complex numbers $` x[n] `$, where $` n = 0, 1, 2, ..., N-1 `$, its Discrete Fourier Transform $` X[k] `$ is defined by the sum:

$$ X[k] = \sum_{n=0}^{N-1} x[n] \cdot e^{-\frac{2\pi i}{N} kn} $$

where:
- $` X[k] `$ represents the frequency-domain representation of the sequence,
- $` k `$ is the discrete frequency index, with $` k = 0, 1, 2, ..., N-1 `$,
- $` i `$ is the imaginary unit, with the property $` i^2 = -1 `$.
Conversely, the Inverse Discrete Fourier Transform (IDFT) to recover the original squence $` x[n] `$ from $` X[k] `$ is given by:

$$ x[n] = \frac{1}{N} \sum_{k=0}^{N-1} X[k] \cdot e^{\frac{2\pi i}{N} kn} $$

This pair of transforms allows for the analysis and synthesis of discrete-time signals in the frequency-domain.
## Overview of the Files
Herein, I have uploaded a series of files for documentation. Below are detailed descriptions of each file:
### sound_wave.wav
`sound_wave.wav` is a WAV-formatted audio file that encapsulates an audio recording. Given that sound waves constitute a type of continuous-time signal, this audio file serves as the basis for analyzing composite signals by decomposing them into their discrete frequency components through spectral analysis.
### File_1.ipynb
`File_1.ipynb` is a Jupyter Notebook document that records the process of extracting audio data from `sound_wave.wav` and demonstrates the application of the Fast Fourier Transform (FFT) algorithm using NumPy's library to perform frequency-domain transformation on the signal.
### File_1_MATLAB.m
`File_1_MATLAB.m` replicates the functionality of `File_1.ipynb` but employs the MATLAB environment for FFT computations. This comparative experiment aims to evaluate the performance difference between Python and MATLAB when executing FFT tasks.
### File_2.ipynb
`File_2.ipynb` is also a Jupyter Notebook file where a complex signal is synthesized, and both FFT and Inverse Fast Fourier Transform (IFFT) are applied using NumPy's functions to transform the signal between the frequency and time domains. Subsequently, a comparative analysis is conducted between the original and reconstructed signals.
### Filter.ipynb
The `Filter.ipynb document` is a Jupyter Notebook file wherein I synthesized a complex signal, subsequently employing Fast Fourier Transform (FFT) to perform spectral decomposition of the signal. Following this, I designed and applied a low-pass filter with a threshold frequency set at 10 Hertz for the purpose of attenuating higher frequency components. Finally, I utilized the Inverse Fast Fourier Transform (IFFT) to reconstruct the filtered signal into its time-domain representation.
