baselines
baseline: spec
	<baseline>
	spec
		for: #pharo
		do:
			[
			spec
				preLoadDoIt: #preload:package:;
				postLoadDoIt: #postload:package:.
			spec
				baseline: 'Atlas' with: [ spec repository: 'github://kilon/Atlas' ];
				import: 'Atlas' provides: #('default').
				 
			spec package: 'BPY'	with: [ spec requires: 'default' ]. 
 ]	