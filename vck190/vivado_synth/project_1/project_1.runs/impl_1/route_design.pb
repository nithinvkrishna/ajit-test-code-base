
?
Command: %s
53*	vivadotcl2
route_designZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2

xcvc1902Z17-347h px� 
p
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2

xcvc1902Z17-349h px� 
^
,Running DRC as a precondition to command %s
22*	vivadotcl2
route_designZ4-22h px� 
>
Running DRC with %s threads
24*drc2
8Z23-27h px� 
D
DRC finished with %s
79*	vivadotcl2

0 ErrorsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
D

Starting %s Task
103*constraints2	
RoutingZ18-103h px� 
k
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
8Z35-254h px� 
L

Phase %s%s
101*constraints2
1 2
Build RT DesignZ18-101h px� 
>
Running DRC with %s threads
24*drc2
8Z23-27h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
Nodegraph reading from file.  2

00:00:012

00:00:012

6490.9962
0.0002
6692
6786Z17-722h px� 
I
%s*common20
.Phase 1 Build RT Design | Checksum: 19d499547
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:31 ; elapsed = 00:00:07 . Memory (MB): peak = 6490.996 ; gain = 0.000 ; free physical = 663 ; free virtual = 6780h px� 
R

Phase %s%s
101*constraints2
2 2
Router InitializationZ18-101h px� 
W

Phase %s%s
101*constraints2
2.1 2
Fix Topology ConstraintsZ18-101h px� 
T
%s*common2;
9Phase 2.1 Fix Topology Constraints | Checksum: 19d499547
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:32 ; elapsed = 00:00:07 . Memory (MB): peak = 6490.996 ; gain = 0.000 ; free physical = 615 ; free virtual = 6732h px� 
P

Phase %s%s
101*constraints2
2.2 2
Pre Route CleanupZ18-101h px� 
M
%s*common24
2Phase 2.2 Pre Route Cleanup | Checksum: 19d499547
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:32 ; elapsed = 00:00:07 . Memory (MB): peak = 6490.996 ; gain = 0.000 ; free physical = 607 ; free virtual = 6724h px� 
W

Phase %s%s
101*constraints2
2.3 2
Global Clock Net RoutingZ18-101h px� 
T
%s*common2;
9Phase 2.3 Global Clock Net Routing | Checksum: 1d3d19105
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:38 ; elapsed = 00:00:11 . Memory (MB): peak = 6510.980 ; gain = 19.984 ; free physical = 610 ; free virtual = 6727h px� 
L

Phase %s%s
101*constraints2
2.4 2
Update TimingZ18-101h px� 
I
%s*common20
.Phase 2.4 Update Timing | Checksum: 11ce7d75b
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:07 ; elapsed = 00:00:19 . Memory (MB): peak = 6510.980 ; gain = 19.984 ; free physical = 574 ; free virtual = 6723h px� 
y
Intermediate Timing Summary %s164*route28
6| WNS=1.371  | TNS=0.000  | WHS=-0.069 | THS=-4.345 |
Z35-416h px� 
O
%s*common26
4Phase 2 Router Initialization | Checksum: 14486de91
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:27 ; elapsed = 00:00:25 . Memory (MB): peak = 6637.980 ; gain = 146.984 ; free physical = 475 ; free virtual = 6575h px� 
L

Phase %s%s
101*constraints2
3 2
Initial RoutingZ18-101h px� 
M

Phase %s%s
101*constraints2
3.1 2
Global RoutingZ18-101h px� 
O

Phase %s%s
101*constraints2
3.1.1 2
SLL AssignmentZ18-101h px� 
L
%s*common23
1Phase 3.1.1 SLL Assignment | Checksum: 14486de91
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:27 ; elapsed = 00:00:25 . Memory (MB): peak = 6637.980 ; gain = 146.984 ; free physical = 475 ; free virtual = 6575h px� 
J
%s*common21
/Phase 3.1 Global Routing | Checksum: 14486de91
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:27 ; elapsed = 00:00:25 . Memory (MB): peak = 6637.980 ; gain = 146.984 ; free physical = 475 ; free virtual = 6575h px� 
R

Phase %s%s
101*constraints2
3.2 2
Initial Net RoutingZ18-101h px� 
O
%s*common26
4Phase 3.2 Initial Net Routing | Checksum: 1723ef19a
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:47 ; elapsed = 00:00:31 . Memory (MB): peak = 6637.980 ; gain = 146.984 ; free physical = 306 ; free virtual = 6402h px� 
I
%s*common20
.Phase 3 Initial Routing | Checksum: 1a1872310
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:48 ; elapsed = 00:00:31 . Memory (MB): peak = 6637.980 ; gain = 146.984 ; free physical = 309 ; free virtual = 6402h px� 
O

Phase %s%s
101*constraints2
4 2
Rip-up And RerouteZ18-101h px� 
Q

Phase %s%s
101*constraints2
4.1 2
Global Iteration 0Z18-101h px� 
y
Intermediate Timing Summary %s164*route28
6| WNS=0.962  | TNS=0.000  | WHS=-0.011 | THS=-0.011 |
Z35-416h px� 
N
%s*common25
3Phase 4.1 Global Iteration 0 | Checksum: 2979788e7
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:12 ; elapsed = 00:01:00 . Memory (MB): peak = 6637.980 ; gain = 146.984 ; free physical = 288 ; free virtual = 6377h px� 
\

Phase %s%s
101*constraints2
4.2 2
Additional Iteration for HoldZ18-101h px� 
Y
%s*common2@
>Phase 4.2 Additional Iteration for Hold | Checksum: 1b6a7523a
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:13 ; elapsed = 00:01:00 . Memory (MB): peak = 6637.980 ; gain = 146.984 ; free physical = 280 ; free virtual = 6376h px� 
L
%s*common23
1Phase 4 Rip-up And Reroute | Checksum: 1b6a7523a
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:13 ; elapsed = 00:01:00 . Memory (MB): peak = 6637.980 ; gain = 146.984 ; free physical = 280 ; free virtual = 6376h px� 
X

Phase %s%s
101*constraints2
5 2
Delay and Skew OptimizationZ18-101h px� 
L

Phase %s%s
101*constraints2
5.1 2
Delay CleanUpZ18-101h px� 
N

Phase %s%s
101*constraints2
5.1.1 2
Update TimingZ18-101h px� 
K
%s*common22
0Phase 5.1.1 Update Timing | Checksum: 212e6f994
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:28 ; elapsed = 00:01:04 . Memory (MB): peak = 6637.980 ; gain = 146.984 ; free physical = 306 ; free virtual = 6406h px� 
y
Intermediate Timing Summary %s164*route28
6| WNS=0.962  | TNS=0.000  | WHS=0.013  | THS=0.000  |
Z35-416h px� 
N

Phase %s%s
101*constraints2
5.1.2 2
Update TimingZ18-101h px� 
K
%s*common22
0Phase 5.1.2 Update Timing | Checksum: 26031ac81
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:38 ; elapsed = 00:01:08 . Memory (MB): peak = 6637.980 ; gain = 146.984 ; free physical = 311 ; free virtual = 6412h px� 
y
Intermediate Timing Summary %s164*route28
6| WNS=0.962  | TNS=0.000  | WHS=0.013  | THS=0.000  |
Z35-416h px� 
I
%s*common20
.Phase 5.1 Delay CleanUp | Checksum: 26031ac81
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:38 ; elapsed = 00:01:08 . Memory (MB): peak = 6637.980 ; gain = 146.984 ; free physical = 311 ; free virtual = 6412h px� 
V

Phase %s%s
101*constraints2
5.2 2
Clock Skew OptimizationZ18-101h px� 
S
%s*common2:
8Phase 5.2 Clock Skew Optimization | Checksum: 26031ac81
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:38 ; elapsed = 00:01:08 . Memory (MB): peak = 6637.980 ; gain = 146.984 ; free physical = 311 ; free virtual = 6412h px� 
U
%s*common2<
:Phase 5 Delay and Skew Optimization | Checksum: 26031ac81
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:38 ; elapsed = 00:01:08 . Memory (MB): peak = 6637.980 ; gain = 146.984 ; free physical = 311 ; free virtual = 6412h px� 
J

Phase %s%s
101*constraints2
6 2
Post Hold FixZ18-101h px� 
L

Phase %s%s
101*constraints2
6.1 2
Hold Fix IterZ18-101h px� 
N

Phase %s%s
101*constraints2
6.1.1 2
Update TimingZ18-101h px� 
K
%s*common22
0Phase 6.1.1 Update Timing | Checksum: 21bc48dbe
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:48 ; elapsed = 00:01:11 . Memory (MB): peak = 6637.980 ; gain = 146.984 ; free physical = 310 ; free virtual = 6408h px� 
y
Intermediate Timing Summary %s164*route28
6| WNS=0.962  | TNS=0.000  | WHS=0.013  | THS=0.000  |
Z35-416h px� 
I
%s*common20
.Phase 6.1 Hold Fix Iter | Checksum: 25623c758
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:48 ; elapsed = 00:01:11 . Memory (MB): peak = 6637.980 ; gain = 146.984 ; free physical = 309 ; free virtual = 6407h px� 
G
%s*common2.
,Phase 6 Post Hold Fix | Checksum: 25623c758
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:49 ; elapsed = 00:01:11 . Memory (MB): peak = 6637.980 ; gain = 146.984 ; free physical = 309 ; free virtual = 6407h px� 
K

Phase %s%s
101*constraints2
7 2
Route finalizeZ18-101h px� 
H
%s*common2/
-Phase 7 Route finalize | Checksum: 25623c758
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:50 ; elapsed = 00:01:12 . Memory (MB): peak = 6637.980 ; gain = 146.984 ; free physical = 309 ; free virtual = 6407h px� 
R

Phase %s%s
101*constraints2
8 2
Verifying routed netsZ18-101h px� 
O
%s*common26
4Phase 8 Verifying routed nets | Checksum: 25623c758
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:50 ; elapsed = 00:01:12 . Memory (MB): peak = 6637.980 ; gain = 146.984 ; free physical = 310 ; free virtual = 6408h px� 
N

Phase %s%s
101*constraints2
9 2
Depositing RoutesZ18-101h px� 
K
%s*common22
0Phase 9 Depositing Routes | Checksum: 2211984b7
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:57 ; elapsed = 00:01:14 . Memory (MB): peak = 6637.980 ; gain = 146.984 ; free physical = 430 ; free virtual = 6558h px� 
P

Phase %s%s
101*constraints2
10 2
Post Router TimingZ18-101h px� 
u
Estimated Timing Summary %s
57*route28
6| WNS=0.962  | TNS=0.000  | WHS=0.013  | THS=0.000  |
Z35-57h px� 
�
�The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px� 
M
%s*common24
2Phase 10 Post Router Timing | Checksum: 2211984b7
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:03 ; elapsed = 00:01:15 . Memory (MB): peak = 6637.980 ; gain = 146.984 ; free physical = 429 ; free virtual = 6557h px� 
>
Running DRC with %s threads
24*drc2
8Z23-27h px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
Y

Phase %s%s
101*constraints2
11 2
Post-Route Event ProcessingZ18-101h px� 
U
%s*common2<
:Phase 11 Post-Route Event Processing | Checksum: bf308812
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:23 ; elapsed = 00:01:21 . Memory (MB): peak = 6669.996 ; gain = 179.000 ; free physical = 429 ; free virtual = 6554h px� 
D
%s*common2+
)Ending Routing Task | Checksum: bf308812
h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:24 ; elapsed = 00:01:22 . Memory (MB): peak = 6669.996 ; gain = 179.000 ; free physical = 429 ; free virtual = 6554h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1112
02
122
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
route_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
route_design: 2

00:04:372

00:01:262

6669.9962	
187.0042
4292
6553Z17-722h px� 
�
%s4*runtcl2�
�Executing : report_drc -file ajitVCK_wrapper_drc_routed.rpt -pb ajitVCK_wrapper_drc_routed.pb -rpx ajitVCK_wrapper_drc_routed.rpx
h px� 
�
Command: %s
53*	vivadotcl2w
ureport_drc -file ajitVCK_wrapper_drc_routed.rpt -pb ajitVCK_wrapper_drc_routed.pb -rpx ajitVCK_wrapper_drc_routed.rpxZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
>
Running DRC with %s threads
24*drc2
8Z23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
�/home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/vck190/vivado_synth/project_1/project_1.runs/impl_1/ajitVCK_wrapper_drc_routed.rpt�/home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/vck190/vivado_synth/project_1/project_1.runs/impl_1/ajitVCK_wrapper_drc_routed.rpt8Z2-168h px� 
J
%s completed successfully
29*	vivadotcl2

report_drcZ4-42h px� 
�
%s4*runtcl2�
�Executing : report_methodology -file ajitVCK_wrapper_methodology_drc_routed.rpt -pb ajitVCK_wrapper_methodology_drc_routed.pb -rpx ajitVCK_wrapper_methodology_drc_routed.rpx
h px� 
�
Command: %s
53*	vivadotcl2�
�report_methodology -file ajitVCK_wrapper_methodology_drc_routed.rpt -pb ajitVCK_wrapper_methodology_drc_routed.pb -rpx ajitVCK_wrapper_methodology_drc_routed.rpxZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
G
$Running Methodology with %s threads
74*drc2
8Z23-133h px� 
�
2The results of Report Methodology are in file %s.
609*	vivadotcl2�
�/home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/vck190/vivado_synth/project_1/project_1.runs/impl_1/ajitVCK_wrapper_methodology_drc_routed.rpt�/home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/vck190/vivado_synth/project_1/project_1.runs/impl_1/ajitVCK_wrapper_methodology_drc_routed.rpt8Z2-1520h px� 
R
%s completed successfully
29*	vivadotcl2
report_methodologyZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
report_methodology: 2

00:00:322

00:00:072

6718.0202
0.0002
4242
6562Z17-722h px� 
�
%s4*runtcl2�
�Executing : report_power -file ajitVCK_wrapper_power_routed.rpt -pb ajitVCK_wrapper_power_summary_routed.pb -rpx ajitVCK_wrapper_power_routed.rpx
h px� 
�
Command: %s
53*	vivadotcl2�
�report_power -file ajitVCK_wrapper_power_routed.rpt -pb ajitVCK_wrapper_power_summary_routed.pb -rpx ajitVCK_wrapper_power_routed.rpxZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
�Detected over-assertion of set/reset/preset/clear net with high fanouts, power estimation might not be accurate. Please run Tool - Power Constraint Wizard to set proper switching activities for control signals.282*powerZ33-332h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1212
12
122
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
report_powerZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
report_power: 2

00:00:272

00:00:092

6718.0202
0.0002
4132
6576Z17-722h px� 
�
%s4*runtcl2m
kExecuting : report_route_status -file ajitVCK_wrapper_route_status.rpt -pb ajitVCK_wrapper_route_status.pb
h px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -report_unconstrained -file ajitVCK_wrapper_timing_summary_routed.rpt -pb ajitVCK_wrapper_timing_summary_routed.pb -rpx ajitVCK_wrapper_timing_summary_routed.rpx -warn_on_violation 
h px� 
x
UpdateTimingParams:%s.
91*timing2?
= Speed grade: -2MP, Temperature grade: E, Delay Type: min_maxZ38-91h px� 
j
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
8Z38-191h px� 
v
%s4*runtcl2Z
XExecuting : report_incremental_reuse -file ajitVCK_wrapper_incremental_reuse_routed.rpt
h px� 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px� 
v
%s4*runtcl2Z
XExecuting : report_clock_utilization -file ajitVCK_wrapper_clock_utilization_routed.rpt
h px� 
�
%s4*runtcl2�
�Executing : report_bus_skew -warn_on_violation -file ajitVCK_wrapper_bus_skew_routed.rpt -pb ajitVCK_wrapper_bus_skew_routed.pb -rpx ajitVCK_wrapper_bus_skew_routed.rpx
h px� 
x
UpdateTimingParams:%s.
91*timing2?
= Speed grade: -2MP, Temperature grade: E, Delay Type: min_maxZ38-91h px� 
j
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
8Z38-191h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.492
00:00:00.112

6718.0202
0.0002
3942
6591Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PlaceDB: 2

00:00:092

00:00:032

6718.0202
0.0002
3012
6597Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote ClockTopoDB: 2
00:00:00.022

00:00:002

6718.0202
0.0002
3012
6597Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

6718.0202
0.0002
3012
6597Z17-722h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote RouteStorage: 2

00:00:012
00:00:00.642

6718.0202
0.0002
2792
6596Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Netlist Cache: 2
00:00:00.082
00:00:00.042

6718.0202
0.0002
2702
6595Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Wrote Device Cache: 2
00:00:00.042
00:00:00.022

6718.0202
0.0002
2612
6596Z17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write Physdb Complete: 2

00:00:102

00:00:042

6718.0202
0.0002
2612
6595Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
/home/iitg/Desktop/AjitIITG/AjitIITG/1x1x32.iitg/vck190/vivado_synth/project_1/project_1.runs/impl_1/ajitVCK_wrapper_routed.dcpZ17-1381h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
write_checkpoint: 2

00:00:142

00:00:072

6718.0202
0.0002
4312
6591Z17-722h px� 


End Record