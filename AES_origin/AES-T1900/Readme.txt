1.Home directory includes:

1.1 src
	---Codes for the AES algorithm, the test bench, and the Trojan

2.Trojan
Trojan Description
	At the core of lightweight applications, such as medical implant devices,are the batteries that power them and 
	the success of the device restsheavily on them. This Trojan drains the battery once it is activated. The Trojan 
	gets activated after 128'hFFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF encryptions. The Trojan payload is a shift 
	register which continuously rotates after Trojan activation. The Trojan increases the power consumption and hence 
	decreases the expected lifetime of the battery. 



Trojan Taxonomy
	Insertion phase: Design
	Abstraction level: Register Transfer level  
	Activation mechanism: Internally conditionally triggered
	Effects: Denial of Service
 	Location: Processor
	Physical characteristics: Functional