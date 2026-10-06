v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -260 -70 -260 -40 {lab=VDD}
N 100 -70 100 -40 {lab=vinn}
N -120 -70 -120 -40 {lab=vinm}
N -50 -70 -50 -40 {lab=vbias}
N 10 -70 10 -40 {lab=out}
N -260 20 -260 50 {lab=0}
N 100 20 100 50 {lab=0}
N -120 20 -120 50 {lab=0}
N -50 20 -50 50 {lab=0}
N 10 20 10 50 {lab=0}
N 540 -360 800 -360 {lab=#net1}
N 500 -230 840 -230 {lab=0}
N 500 -330 500 -260 {lab=#net1}
N 840 -330 840 -260 {lab=out}
N 500 -200 500 -160 {lab=#net2}
N 500 -160 840 -160 {lab=#net2}
N 840 -200 840 -160 {lab=#net2}
N 660 -360 660 -300 {lab=#net1}
N 500 -300 660 -300 {lab=#net1}
N 680 -160 680 -120 {lab=#net2}
N 410 -230 460 -230 {lab=vinn}
N 880 -230 930 -230 {lab=vinm}
N 680 -90 760 -90 {lab=0}
N 760 -230 760 -90 {lab=0}
N 500 -460 500 -390 {lab=VDD}
N 500 -460 840 -460 {lab=VDD}
N 840 -460 840 -390 {lab=VDD}
N 420 -360 500 -360 {lab=VDD}
N 420 -420 420 -360 {lab=VDD}
N 420 -420 500 -420 {lab=VDD}
N 830 -360 920 -360 {lab=VDD}
N 920 -420 920 -360 {lab=VDD}
N 840 -420 920 -420 {lab=VDD}
N 660 -490 660 -460 {lab=VDD}
N 580 -90 640 -90 {lab=vbias}
N 840 -300 920 -300 {lab=out}
N 680 -60 680 -30 {lab=0}
N 680 -50 760 -50 {lab=0}
N 760 -90 760 -50 {lab=0}
C {vsource.sym} -260 -10 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} 100 -10 0 0 {name=V2 value="sin 0.9 10m 1e6 0 0" savecurrent=false}
C {vsource.sym} -120 -10 0 0 {name=V3 value=0.9 savecurrent=false}
C {vsource.sym} -50 -10 0 0 {name=V4 value= 0.85 savecurrent=false}
C {capa-2.sym} 10 -10 0 0 {name=C1
m=1
value=10p
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} -260 -70 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 100 -70 1 0 {name=p2 sig_type=std_logic lab=vinn}
C {lab_pin.sym} -120 -70 1 0 {name=p3 sig_type=std_logic lab=vinm}
C {lab_pin.sym} -50 -70 1 0 {name=p4 sig_type=std_logic lab=vbias}
C {lab_pin.sym} 10 -70 1 0 {name=p5 sig_type=std_logic lab=out}
C {gnd.sym} -260 50 0 0 {name=l1 lab=0}
C {gnd.sym} 100 50 0 0 {name=l2 lab=0}
C {gnd.sym} -120 50 0 0 {name=l3 lab=0}
C {gnd.sym} -50 50 0 0 {name=l4 lab=0}
C {gnd.sym} 10 50 0 0 {name=l5 lab=0}
C {code.sym} -290 120 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {code_shown.sym} -60 140 0 0 {name=s1 only_toplevel=false value=" 
.include /foss/designs/DIFF_AMP/DIFF_AMP_TB.save 
 
.control
save all
op
set appendwrite
write DIFF_AMP_TRANS.raw

tran 0.1n 10u
write DIFF_AMP_TRANS.raw 
.endc 
"}
C {sky130_fd_pr/pfet_01v8.sym} 820 -360 0 0 {name=M1
W=80
L=0.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 520 -360 2 0 {name=M2
W=80
L=0.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 480 -230 0 0 {name=M3
W=40
L=0.5
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 860 -230 2 0 {name=M4
W=40
L=0.5
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 660 -90 0 0 {name=M5
W=16
L=0.5
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 660 -490 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 410 -230 0 0 {name=p7 sig_type=std_logic lab=vinn}
C {lab_pin.sym} 930 -230 2 0 {name=p8 sig_type=std_logic lab=vinm}
C {lab_pin.sym} 580 -90 0 0 {name=p9 sig_type=std_logic lab=vbias}
C {lab_pin.sym} 920 -300 2 0 {name=p10 sig_type=std_logic lab=out}
C {gnd.sym} 680 -30 0 0 {name=l6 lab=0}
