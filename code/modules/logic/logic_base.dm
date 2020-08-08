/obj/machinery/logic_gate
	name = "Logic Base"
	desc = "This does nothing except connect to things. Highly illogical, report to a coder at once if you see this in-game."
	icon = 'icons/obj/computer3.dmi'
	icon_state = "serverframe"
	density = 1
	anchored = 1

	settagwhitelist = list("input1_id_tag", "input2_id_tag", "output_id_tag")

	var/tamperproof = 0		//if set, will make the machine unable to be destroyed, adjusted, etc. via in-game interaction (USE ONLY FOR MAPPING STUFF)
	var/mono_input = 0		//if set, will ignore input2

	var/datum/radio_frequency/radio_connection
	var/frequency = 0

	/*
	Some notes on Input/Output:
	- Multiple things can be linked to the same input or output tag, just like how wires can connect multiple sources and receivers.
	- For inputs, only the last signal received BEFORE a process() call will be used in the logic handling.
		- Input states are updated immediately whenever an input signal is received, so it is possible to update multiple times within a single process cycle.
		- This means if you have multiple connected inputs, but the last signal received before the process() call is OFF, it won't matter if the others are both ON.
		- For this reason, please set up your logic properly. You can theoretically chain these infinitely, so there's no need to link multiple things to a single input.
	- For outputs, the signal will attempt to be sent out every process() call, to ensure newly connected things are updated within one process cycle
		- Connecting an output to multiple inputs should not cause issues, as long as you don't have multiple connections to a given input (see previous notes on inputs).
		- The output state is determined immediately preceeding the signal broadcast, using the input states at the time of the process() call, not when a signal is received.
		- Because of how the process cycle works, it is possible that it may take multiple cycles for a signal to fully propogate through a logic chain.
		 - This is because machines attempt to process in the order they were added to the scheduler.
		 - Building the logic gates at the end of the chain first may cause delays in signal propogation.
	If you take all this into consideration when linking and using logic machinery, you should have no unexpected issues with input/output. Your design flaws are on you though.
	*/

	var/input1_id_tag = null
	var/input1_state = LOGIC_OFF
	var/input2_id_tag = null
	var/input2_state = LOGIC_OFF
	var/output_id_tag = null
	var/output_state = LOGIC_OFF

/obj/machinery/logic_gate/New()
	if(tamperproof)		//doing this during New so we don't have to worry about forgetting to set these vars during editting / defining
		resistance_flags |= ACID_PROOF
	..()
	if(SSradio)
		set_frequency(frequency)
	component_parts = list()
	var/obj/item/circuitboard/logic_gate/LG = new(null)
	LG.set_type(type)
	component_parts += LG
	component_parts += new /obj/item/stack/cable_coil(null, 1)

/obj/machinery/logic_gate/Initialize()
	..()
	set_frequency(frequency)

/obj/machinery/logic_gate/blob_act(obj/structure/blob/B)
	if(!tamperproof)
		return ..()
