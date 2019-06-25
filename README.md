![](https://user-images.githubusercontent.com/6005346/60123777-3a251080-9756-11e9-90a0-52b28464668d.png)

The image above shows the first file here sorted with [crabsort](https://github.com/sg-s/crabsort)

These are several ~1 minute long sets of raw data. Most have a pdn and an lvn, sometimes there is also a dgn, sometimes there is no pdn.
Those are marked clearly (nopdn).

I've left out the absolute worst cases, where there is a huge amount of noise and certain areas must be skipped.

It's also possible to threshold detect spike times for each unit and export those from Spike2, but why not skip Spike2 entirely if possible?

Often, based on just an lvn, I can detect bursts for LP and PD, despite the fact that they have similar spike heights.
This can be done because PD bursts are must more spike-dense than LP bursts, so it is sometimes possible to set burst detection parameters
(there are two that define the bursts -- minimum number of spikes, and maximum interspike interval) such that it only grabs the PD bursts.
Then the LP bursts can be derived by subtracting off the detected PD bursts.

Have fun! 
