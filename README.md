# Digital high accuracy arbitrary wave generator

This repository contains materials, code and documentation related to project of wave generator,
based on

## The plan

- ZCU102 Zynq MPSOC UltraScale+ board as host
- FMC-factor board AD917x containing AD9174 DACs
- ZCU102 serves as interface to a computer, AD917x connected to ZCU102 via the FMC connector
- wave data can be loaded from a computer to the ZCU102
- ZCU102 stores the data on its DDR4 memory and does all the necessary preprocessing if necessary
- ZCU102 steams the data to AD917x producing the waveforms

## Useful links

https://docs.amd.com/v/u/en-US/dh0036-zynq-ultrascale-plus-mpsoc-hub
https://wiki.analog.com/resources/eval/dpg/eval-ad9172
https://docs.amd.com/r/en-US/ug1085-zynq-ultrascale-trm/Zynq-UltraScale-Device-Technical-Reference-Manual

## Abbreviations

- FMC - FPGA Mezzanine Card
- PS (ZCU102) - Processing System
- PL (ZCU102) - user Programmable Logic

## Questions

- how to create connections to board nets
- how to access the mezzanine connections