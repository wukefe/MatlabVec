# MatlabVec

## Introduction
This is an experimental project to achieve automatic vectorization in MATLAB. Unlike C or Java, MATLAB has a large set of built-in functions which has been well tuned for scientific computation. Because MATLAB is an interpreter based programming language, the overhead of loop iteration is expensive even with Just-in-time compilation. The vectorization can significantly reduce the overhead by offloading loop iteration to built-in functions which support implicit parallelism.

Our project aims to prove the vectorization is able to help automatically generate fast MATLAB code.  It deserves our effort to investigate the vectorization since it can be applied to other array programming languages, such as R.

## Configuration

- Tamer framework (Developed by Sable/McGill)
- Java IDE (Eclipse or IntelliJ IDEA)

