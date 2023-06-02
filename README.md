This is an EPICS package supporting Harvard Syringe pumps, including: 

- Pump 33 DDS
- PHD Ultra

This package relies on the following modules:

- asyn
- calc
- streamdevice

Reference:

- https://github.com/dls-controls/harvardSyringe
- https://github.com/epics-modules/ip



Connection:

The pumps accept RS-232 connections, which can be created using MOXA
terminal servers. Use MOXA standard RJ45-to-DB9 cables. You will need
DB9 gender changers for PHD Ultra pumps and NULL MODEM adapters for
Pump 33 DDS pumps.



By:

- Ji Li <liji@bnl.gov>
