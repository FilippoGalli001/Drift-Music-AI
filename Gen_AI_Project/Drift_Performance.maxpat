{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 31.0, 87.0, 1409.0, 779.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 4,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-7",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Classroom Filter.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 399.696967959403992, 1188.0, 558.0, 223.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 337.968396782875061, 406.0, 558.0, 223.0 ],
					"varname" : "bp.Classroom Filter",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-149",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Sync Delay.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 144.027545213699341, 691.376142501831055, 265.0, 116.0 ],
					"varname" : "bp.Sync Delay[3]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-148",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.ADSR.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1089.537589907646179, 401.807342052459717, 234.0, 116.0 ],
					"varname" : "bp.ADSR[2]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-147",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.ADSR.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 709.400005698204041, 386.807342052459717, 234.0, 116.0 ],
					"varname" : "bp.ADSR[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-145",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.LPF.maxpat",
					"numinlets" : 5,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 909.256880044937134, 620.486231565475464, 304.0, 116.0 ],
					"varname" : "bp.LPF[3]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-144",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.LPF.maxpat",
					"numinlets" : 5,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 561.229384899139404, 623.834853887557983, 304.0, 116.0 ],
					"varname" : "bp.LPF[2]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-143",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Granular.maxpat",
					"numinlets" : 4,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 115.917422771453857, 2965.458469390869141, 541.0, 214.0 ],
					"varname" : "bp.Granular[3]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-142",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.LFO.maxpat",
					"numinlets" : 0,
					"numoutlets" : 5,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 178.403679370880127, 2453.0, 137.0, 116.0 ],
					"varname" : "bp.LFO",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-141",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.LPF.maxpat",
					"numinlets" : 5,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 110.834895610809326, 2664.844002246856689, 304.0, 116.0 ],
					"varname" : "bp.LPF[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-139",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Sync Delay.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 755.366910696029663, 2556.284191608428955, 265.0, 116.0 ],
					"varname" : "bp.Sync Delay[2]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-137",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1148.907550156116486, 2408.871397256851196, 150.0, 20.0 ],
					"text" : "Tired"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-136",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1057.164438545703888, 1546.486148118972778, 150.0, 20.0 ],
					"text" : "Happy"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-135",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1012.256880044937134, 768.49537992477417, 150.0, 20.0 ],
					"text" : "Relaxed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-134",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 271.532090187072754, 431.238491535186768, 150.0, 20.0 ],
					"text" : "Angry"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-133",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Granular.maxpat",
					"numinlets" : 4,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 667.293523550033569, 2977.385073900222778, 541.0, 214.0 ],
					"varname" : "bp.Granular[2]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-132",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.ADSR.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 770.866910696029663, 2731.311547100543976, 234.0, 116.0 ],
					"varname" : "bp.ADSR",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-128",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Frequency Shifter.maxpat",
					"numinlets" : 4,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 453.655114352703094, 2595.667343318462372, 229.666671752929688, 116.0 ],
					"varname" : "bp.Frequency Shifter",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-124",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.VCA.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 590.666671752929688, 2842.777730584144592, 113.0, 116.0 ],
					"varname" : "bp.VCA[4]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-125",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.VCA.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 377.03703099489212, 2812.962916433811188, 113.0, 116.0 ],
					"varname" : "bp.VCA[5]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-121",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Gigaverb.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1115.801343441009521, 2798.656395077705383, 332.0, 116.0 ],
					"varname" : "bp.Gigaverb[3]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-119",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Audio Mixer.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1158.859022796154022, 2453.0, 201.0, 116.0 ],
					"varname" : "bp.Audio Mixer[7]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-120",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Audio Mixer.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1162.782825231552124, 2615.309427951988255, 201.0, 116.0 ],
					"varname" : "bp.Audio Mixer[8]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-118",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.FM.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 377.03703099489212, 2427.074074506759644, 211.0, 116.0 ],
					"varname" : "bp.FM[3]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-117",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Oscillator.maxpat",
					"numinlets" : 6,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 671.592592298984528, 2414.111111760139465, 314.0, 116.0 ],
					"varname" : "bp.Oscillator[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-116",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.LPF.maxpat",
					"numinlets" : 5,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 521.696967959403992, 926.787880659103394, 304.0, 116.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 285.688614547252655, 127.787880659103394, 304.0, 116.0 ],
					"varname" : "bp.LPF",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-113",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Gain and Bias.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 82.303065121173859, 1580.848382532596588, 146.0, 116.0 ],
					"varname" : "bp.Gain and Bias",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-112",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Sync Delay.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 500.090857565402985, 1861.151388108730316, 265.0, 116.0 ],
					"varname" : "bp.Sync Delay[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-108",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Granular.maxpat",
					"numinlets" : 4,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 465.242375791072845, 1560.393838882446289, 541.0, 214.0 ],
					"varname" : "bp.Granular[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-107",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.VCA.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 240.999971330165863, 1758.878669857978821, 113.0, 116.0 ],
					"varname" : "bp.VCA[3]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-106",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.FM.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 240.999971330165863, 1584.636260986328125, 211.0, 116.0 ],
					"varname" : "bp.FM[2]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-105",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Gigaverb.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1024.64814680814743, 1950.376971185207367, 332.0, 116.0 ],
					"varname" : "bp.Gigaverb[2]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-104",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Audio Mixer.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1030.00166243314743, -329.876590584930341, 201.0, 116.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 53.00166243314743, -295.876590584930341, 201.0, 116.0 ],
					"varname" : "bp.Audio Mixer[6]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-102",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Audio Mixer.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1050.742420732975006, 1605.825436592102051, 201.0, 116.0 ],
					"varname" : "bp.Audio Mixer[4]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-103",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Audio Mixer.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1065.216711938381195, 1771.838568185981785, 201.0, 116.0 ],
					"varname" : "bp.Audio Mixer[5]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-101",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Sync Delay.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 254.696967959403992, 1049.806063294410706, 265.0, 116.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 626.968396782875061, 24.328799749198993, 265.0, 116.0 ],
					"varname" : "bp.Sync Delay",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-99",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Gigaverb.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 996.379092395305634, 1120.450451612472534, 332.0, 116.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 934.650521218776703, 338.450451612472534, 332.0, 116.0 ],
					"varname" : "bp.Gigaverb[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-98",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Oscillator.maxpat",
					"numinlets" : 6,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 526.909089505672455, 787.484859645366669, 314.0, 116.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 280.688614547252655, -2.515140354633331, 314.0, 116.0 ],
					"varname" : "bp.Oscillator",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-97",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.VCA.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 138.224848568439484, 1034.200003623962402, 113.0, 116.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 479.866663932800293, 261.200003623962402, 113.0, 116.0 ],
					"varname" : "bp.VCA[2]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-96",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.FM.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 259.224848568439484, 908.328799749198993, 211.0, 116.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.496277391910553, 24.328799749198993, 211.0, 116.0 ],
					"varname" : "bp.FM[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-94",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Audio Mixer.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1012.256880044937134, 819.328799749198993, 201.0, 116.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 950.528308868408203, 37.328799749198993, 201.0, 116.0 ],
					"varname" : "bp.Audio Mixer[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-95",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Audio Mixer.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1012.256880044937134, 956.775762736797333, 201.0, 116.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 950.528308868408203, 174.775762736797333, 201.0, 116.0 ],
					"varname" : "bp.Audio Mixer[3]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-91",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.VCA.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 964.857862770557404, 401.926604509353638, 113.0, 116.0 ],
					"varname" : "bp.VCA[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-90",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Cloud.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 820.0, 260.0, 280.0, 116.0 ],
					"varname" : "bp.Cloud",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-89",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Granular.maxpat",
					"numinlets" : 4,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "" ],
					"patching_rect" : [ 5.0, 296.0, 541.0, 214.0 ],
					"varname" : "bp.Granular",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-87",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.VCA.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 585.55512410402298, 401.926604509353638, 113.0, 116.0 ],
					"varname" : "bp.VCA",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-86",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.FM.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 589.224848568439484, 260.0, 211.0, 116.0 ],
					"varname" : "bp.FM",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-83",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Stereo.maxpat",
					"numinlets" : 2,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 1035.00166243314743, -196.086928795211634, 148.0, 116.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 299.00166243314743, -295.876590584930341, 148.0, 116.0 ],
					"varname" : "bp.Stereo",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-82",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Gigaverb.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 1102.0, 246.0, 332.0, 116.0 ],
					"varname" : "bp.Gigaverb",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-67",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Audio Mixer.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1109.575755536556244, 107.200003623962402, 201.0, 116.0 ],
					"varname" : "bp.Audio Mixer[2]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 66.539326190948373, 2.615587711334229, 50.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 93.539326190948373, -116.5, 50.5, 22.0 ],
					"text" : "82 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 484.366663932800293, 6.5, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 511.366663932800293, -116.5, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 702.180518329143524, 6.5, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 729.180518329143524, -116.5, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 894.088018596172333, 14.615587711334229, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 929.088018596172333, -116.384412288665771, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 285.199998617172241, 6.5, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 312.199998617172241, -116.5, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 260.538611352443695, -220.210338210281293, 29.5, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 555.538611352443695, -236.876590584930341, 29.5, 22.0 ],
					"text" : "-1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 186.255280256271362, -202.210338210281293, 48.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 497.688614547252655, -236.876590584930341, 48.0, 22.0 ],
					"text" : "pak 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 154.688614547252655, -247.210338210281293, 71.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 497.688614547252655, -272.210338210281293, 71.0, 22.0 ],
					"text" : "unpack i i i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 154.688614547252655, -300.086928795211634, 97.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 497.688614547252655, -301.086928795211634, 97.0, 22.0 ],
					"text" : "udpreceive 8000"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-63",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.MIDI to Signal.maxpat",
					"numinlets" : 1,
					"numoutlets" : 5,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 885.533334493637085, 99.600004374980927, 163.0, 116.0 ],
					"varname" : "bp.MIDI to Signal[4]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 894.088018596172333, 45.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 929.088018596172333, -78.0, 50.0, 22.0 ],
					"text" : "44 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 285.200002610683441, 45.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 312.200002610683441, -78.0, 50.0, 22.0 ],
					"text" : "57 95"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 885.533334493637085, -25.671200250801007, 82.0, 22.0 ],
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-32",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.MIDI to Signal.maxpat",
					"numinlets" : 1,
					"numoutlets" : 5,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 673.400005698204041, 99.600004374980927, 163.0, 116.0 ],
					"varname" : "bp.MIDI to Signal[2]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-35",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.MIDI to Signal.maxpat",
					"numinlets" : 1,
					"numoutlets" : 5,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 473.59999543428421, 99.600004374980927, 163.0, 116.0 ],
					"varname" : "bp.MIDI to Signal[3]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 697.724848568439484, -25.671200250801007, 82.0, 22.0 ],
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 476.847401678562278, -25.671200250801007, 82.0, 22.0 ],
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 702.180518329143524, 45.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 729.180518329143524, -78.0, 50.0, 22.0 ],
					"text" : "56 85"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 484.366663932800293, 45.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 511.366663932800293, -78.0, 50.0, 22.0 ],
					"text" : "41 127"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 282.199998617172241, -29.717442726310651, 82.0, 22.0 ],
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 35.039326190948373, -29.717442726310651, 82.0, 22.0 ],
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-57",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.Audio Mixer.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1115.090906918048859, -32.384412288665771, 201.0, 116.0 ],
					"varname" : "bp.Audio Mixer",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"int" : 9,
					"maxclass" : "gswitch2",
					"numinlets" : 2,
					"numoutlets" : 10,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ],
					"outputs" : 10,
					"parameter_enable" : 0,
					"patching_rect" : [ 167.988952159881592, -124.753588984840235, 92.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 493.038611352443695, -197.086928795211634, 92.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-21",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.MIDI to Signal.maxpat",
					"numinlets" : 1,
					"numoutlets" : 5,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 282.199998617172241, 107.200003623962402, 163.0, 116.0 ],
					"varname" : "bp.MIDI to Signal[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"extract" : 1,
					"id" : "obj-5",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "bp.MIDI to Signal.maxpat",
					"numinlets" : 1,
					"numoutlets" : 5,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 31.199998617172241, 107.200003623962402, 163.0, 116.0 ],
					"varname" : "bp.MIDI to Signal",
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 2 ],
					"order" : 1,
					"source" : [ "obj-101", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 2 ],
					"order" : 1,
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 2 ],
					"order" : 0,
					"source" : [ "obj-101", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 2 ],
					"order" : 0,
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 2 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 1 ],
					"order" : 0,
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"order" : 1,
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 1 ],
					"order" : 0,
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"order" : 1,
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 2 ],
					"source" : [ "obj-105", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 2 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"order" : 2,
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 1 ],
					"order" : 0,
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"order" : 1,
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"order" : 1,
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"order" : 0,
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 1 ],
					"order" : 1,
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 1 ],
					"order" : 0,
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 2 ],
					"source" : [ "obj-112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 1 ],
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 1 ],
					"order" : 0,
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"order" : 3,
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 1 ],
					"order" : 2,
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 1 ],
					"order" : 1,
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-141", 0 ],
					"source" : [ "obj-117", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"order" : 1,
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"order" : 0,
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 3 ],
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 1 ],
					"order" : 0,
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-121", 0 ],
					"order" : 1,
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 3 ],
					"source" : [ "obj-121", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 3 ],
					"source" : [ "obj-121", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 1 ],
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 2 ],
					"order" : 1,
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 2 ],
					"order" : 0,
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 1 ],
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 3 ],
					"source" : [ "obj-133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"source" : [ "obj-139", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"order" : 2,
					"source" : [ "obj-141", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 1 ],
					"order" : 0,
					"source" : [ "obj-141", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"order" : 1,
					"source" : [ "obj-141", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 3 ],
					"source" : [ "obj-142", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 2 ],
					"order" : 0,
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-141", 1 ],
					"order" : 2,
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-143", 1 ],
					"order" : 1,
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 3 ],
					"source" : [ "obj-143", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-120", 3 ],
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 1 ],
					"order" : 0,
					"source" : [ "obj-144", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"order" : 3,
					"source" : [ "obj-144", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 2 ],
					"order" : 2,
					"source" : [ "obj-144", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 2 ],
					"order" : 1,
					"source" : [ "obj-144", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"order" : 1,
					"source" : [ "obj-145", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"order" : 0,
					"source" : [ "obj-145", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 1 ],
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 1 ],
					"source" : [ "obj-148", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 3 ],
					"source" : [ "obj-149", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 3 ],
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"source" : [ "obj-26", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 1 ],
					"source" : [ "obj-26", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"source" : [ "obj-26", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"order" : 0,
					"source" : [ "obj-26", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"order" : 1,
					"source" : [ "obj-26", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"order" : 1,
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"order" : 1,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 1 ],
					"order" : 0,
					"source" : [ "obj-26", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"order" : 0,
					"source" : [ "obj-26", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"order" : 1,
					"source" : [ "obj-26", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"order" : 1,
					"source" : [ "obj-26", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"order" : 1,
					"source" : [ "obj-26", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 1 ],
					"order" : 0,
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 1 ],
					"order" : 0,
					"source" : [ "obj-26", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"order" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 1 ],
					"order" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 0 ],
					"order" : 3,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"order" : 1,
					"source" : [ "obj-32", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"order" : 2,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"order" : 1,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 1 ],
					"order" : 0,
					"source" : [ "obj-32", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"source" : [ "obj-33", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-33", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-33", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"order" : 2,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 1 ],
					"source" : [ "obj-35", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"order" : 1,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 2 ],
					"order" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 1 ],
					"order" : 5,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"order" : 7,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 1 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 1 ],
					"order" : 3,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-143", 0 ],
					"order" : 6,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 1 ],
					"order" : 4,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 1 ],
					"order" : 2,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 2 ],
					"order" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 1 ],
					"order" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"order" : 6,
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 1 ],
					"order" : 1,
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"order" : 5,
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 1 ],
					"order" : 0,
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"order" : 1,
					"source" : [ "obj-63", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 0 ],
					"order" : 0,
					"source" : [ "obj-63", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"order" : 4,
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"order" : 3,
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"order" : 2,
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 1 ],
					"order" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"order" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"order" : 3,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"order" : 2,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"source" : [ "obj-82", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 1 ],
					"order" : 1,
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 1 ],
					"order" : 0,
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 1 ],
					"order" : 0,
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"order" : 1,
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 1 ],
					"source" : [ "obj-99", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 1 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-101::obj-118" : [ "Mix", "Mix", 0 ],
			"obj-101::obj-27" : [ "Feedback", "Feedback", 0 ],
			"obj-101::obj-49" : [ "HPF", "HPF", 0 ],
			"obj-101::obj-50" : [ "LPF", "LPF", 0 ],
			"obj-101::obj-7" : [ "bypass[5]", "bypass", 0 ],
			"obj-101::obj-708" : [ "duration.r", "duration.r", 0 ],
			"obj-101::obj-9" : [ "delay_right", "delay_right", 0 ],
			"obj-101::obj-957" : [ "duration.l", "duration.l", 0 ],
			"obj-101::obj-96" : [ "delay_left", "delay_left", 0 ],
			"obj-102::obj-29" : [ "3[6]", "3", 0 ],
			"obj-102::obj-32" : [ "2[6]", "2", 0 ],
			"obj-102::obj-33" : [ "4[6]", "4", 0 ],
			"obj-102::obj-37" : [ "Mute[13]", "Mute", 0 ],
			"obj-102::obj-39" : [ "1[6]", "1", 0 ],
			"obj-102::obj-49" : [ "MuteCh1[6]", "MuteCh1", 0 ],
			"obj-102::obj-58" : [ "MuteCh2[6]", "MuteCh2", 0 ],
			"obj-102::obj-64" : [ "MuteCh3[6]", "MuteCh3", 0 ],
			"obj-102::obj-70" : [ "MuteCh4[6]", "MuteCh4", 0 ],
			"obj-103::obj-29" : [ "3[5]", "3", 0 ],
			"obj-103::obj-32" : [ "2[5]", "2", 0 ],
			"obj-103::obj-33" : [ "4[5]", "4", 0 ],
			"obj-103::obj-37" : [ "Mute[12]", "Mute", 0 ],
			"obj-103::obj-39" : [ "1[5]", "1", 0 ],
			"obj-103::obj-49" : [ "MuteCh1[5]", "MuteCh1", 0 ],
			"obj-103::obj-58" : [ "MuteCh2[5]", "MuteCh2", 0 ],
			"obj-103::obj-64" : [ "MuteCh3[5]", "MuteCh3", 0 ],
			"obj-103::obj-70" : [ "MuteCh4[5]", "MuteCh4", 0 ],
			"obj-104::obj-29" : [ "3[7]", "3", 0 ],
			"obj-104::obj-32" : [ "2[7]", "2", 0 ],
			"obj-104::obj-33" : [ "4[7]", "4", 0 ],
			"obj-104::obj-37" : [ "Mute[14]", "Mute", 0 ],
			"obj-104::obj-39" : [ "1[7]", "1", 0 ],
			"obj-104::obj-49" : [ "MuteCh1[7]", "MuteCh1", 0 ],
			"obj-104::obj-58" : [ "MuteCh2[7]", "MuteCh2", 0 ],
			"obj-104::obj-64" : [ "MuteCh3[7]", "MuteCh3", 0 ],
			"obj-104::obj-70" : [ "MuteCh4[7]", "MuteCh4", 0 ],
			"obj-105::obj-23" : [ "bypass[6]", "bypass", 0 ],
			"obj-105::obj-28" : [ "Size[2]", "Size", 0 ],
			"obj-105::obj-3" : [ "Regen[2]", "Regen", 0 ],
			"obj-105::obj-60" : [ "Damp[2]", "Damp", 0 ],
			"obj-105::obj-62" : [ "Dry[2]", "Dry", 0 ],
			"obj-105::obj-63" : [ "Early[2]", "Early", 0 ],
			"obj-105::obj-64" : [ "Tail[2]", "Tail", 0 ],
			"obj-105::obj-65" : [ "Spread[2]", "Spread", 0 ],
			"obj-105::obj-66" : [ "Time[2]", "Time", 0 ],
			"obj-106::obj-20" : [ "mute[3]", "mute", 0 ],
			"obj-106::obj-56" : [ "Depth[2]", "Depth", 0 ],
			"obj-106::obj-80" : [ "Ratio[2]", "Ratio", 0 ],
			"obj-106::obj-86" : [ "Amt[2]", "Amt", 0 ],
			"obj-106::obj-91" : [ "Offset[8]", "Offset", 0 ],
			"obj-107::obj-33" : [ "Quadrants[2]", "Quadrants", 0 ],
			"obj-107::obj-55" : [ "Bypass[5]", "Bypass", 0 ],
			"obj-107::obj-80" : [ "Response[2]", "Response", 0 ],
			"obj-108::obj-101" : [ "Width[1]", "Width", 0 ],
			"obj-108::obj-114" : [ "MaxGrains[1]", "MaxGrains", 0 ],
			"obj-108::obj-115" : [ "NewGrainEvery[1]", "NewGrainEvery", 0 ],
			"obj-108::obj-12" : [ "Mute[15]", "Mute", 0 ],
			"obj-108::obj-141" : [ "live.button[1]", "live.button", 0 ],
			"obj-108::obj-19" : [ "CV2[9]", "CV2", 0 ],
			"obj-108::obj-25" : [ "CV[1]", "CV", 0 ],
			"obj-108::obj-28" : [ "Offset[9]", "Offset", 0 ],
			"obj-108::obj-3" : [ "Position[1]", "Position", 0 ],
			"obj-108::obj-45" : [ "DurationRandomAmt[1]", "Random", 0 ],
			"obj-108::obj-47" : [ "Duration[1]", "Duration", 0 ],
			"obj-108::obj-58" : [ "PanRandomAmt[1]", "Random", 0 ],
			"obj-108::obj-71" : [ "Pan[1]", "Pan", 0 ],
			"obj-108::obj-94" : [ "PitchRandomAmt[1]", "Random", 0 ],
			"obj-108::obj-98::obj-2" : [ "pastebang[1]", "pastebang", 0 ],
			"obj-112::obj-118" : [ "Mix[2]", "Mix", 0 ],
			"obj-112::obj-27" : [ "Feedback[2]", "Feedback", 0 ],
			"obj-112::obj-49" : [ "HPF[1]", "HPF", 0 ],
			"obj-112::obj-50" : [ "LPF[1]", "LPF", 0 ],
			"obj-112::obj-7" : [ "bypass[7]", "bypass", 0 ],
			"obj-112::obj-708" : [ "duration.r[1]", "duration.r", 0 ],
			"obj-112::obj-9" : [ "delay_right[1]", "delay_right", 0 ],
			"obj-112::obj-957" : [ "duration.l[1]", "duration.l", 0 ],
			"obj-112::obj-96" : [ "delay_left[1]", "delay_left", 0 ],
			"obj-113::obj-1" : [ "Bias", "Bias", 0 ],
			"obj-113::obj-10" : [ "Gain", "Gain", 0 ],
			"obj-113::obj-40" : [ "presets", "presets", 0 ],
			"obj-113::obj-55" : [ "Bypass[6]", "Bypass", 0 ],
			"obj-116::obj-20" : [ "Freq[5]", "Freq", 0 ],
			"obj-116::obj-22" : [ "TimeMode[3]", "TimeMode", 1 ],
			"obj-116::obj-23" : [ "Offset[10]", "Offset", 0 ],
			"obj-116::obj-51" : [ "CV2[10]", "CV2", 0 ],
			"obj-116::obj-54" : [ "CV1", "CV1", 0 ],
			"obj-116::obj-55" : [ "power", "power", 0 ],
			"obj-116::obj-63" : [ "CV3[5]", "CV3", 0 ],
			"obj-116::obj-68" : [ "Res", "Res", 0 ],
			"obj-116::obj-95" : [ "ResCV", "CV", 0 ],
			"obj-117::obj-106" : [ "CV3[6]", "CV3", 0 ],
			"obj-117::obj-107" : [ "Linear[3]", "Linear", 0 ],
			"obj-117::obj-11" : [ "PWM[1]", "PWM", 0 ],
			"obj-117::obj-129" : [ "CV2[11]", "CV2", 0 ],
			"obj-117::obj-36" : [ "PW[1]", "PW", 0 ],
			"obj-117::obj-4" : [ "Waveform[1]", "Waveform", 0 ],
			"obj-117::obj-45" : [ "FreqMode[3]", "FreqMode", 0 ],
			"obj-117::obj-46" : [ "Offset[17]", "Offset", 0 ],
			"obj-117::obj-51" : [ "Freq[8]", "Freq", 0 ],
			"obj-117::obj-53" : [ "Mute[17]", "Mute", 0 ],
			"obj-118::obj-20" : [ "mute[4]", "mute", 0 ],
			"obj-118::obj-56" : [ "Depth[3]", "Depth", 0 ],
			"obj-118::obj-80" : [ "Ratio[3]", "Ratio", 0 ],
			"obj-118::obj-86" : [ "Amt[3]", "Amt", 0 ],
			"obj-118::obj-91" : [ "Offset[18]", "Offset", 0 ],
			"obj-119::obj-29" : [ "3[9]", "3", 0 ],
			"obj-119::obj-32" : [ "2[9]", "2", 0 ],
			"obj-119::obj-33" : [ "4[9]", "4", 0 ],
			"obj-119::obj-37" : [ "Mute[16]", "Mute", 0 ],
			"obj-119::obj-39" : [ "1[9]", "1", 0 ],
			"obj-119::obj-49" : [ "MuteCh1[9]", "MuteCh1", 0 ],
			"obj-119::obj-58" : [ "MuteCh2[9]", "MuteCh2", 0 ],
			"obj-119::obj-64" : [ "MuteCh3[9]", "MuteCh3", 0 ],
			"obj-119::obj-70" : [ "MuteCh4[9]", "MuteCh4", 0 ],
			"obj-120::obj-29" : [ "3[8]", "3", 0 ],
			"obj-120::obj-32" : [ "2[8]", "2", 0 ],
			"obj-120::obj-33" : [ "4[8]", "4", 0 ],
			"obj-120::obj-37" : [ "Mute[18]", "Mute", 0 ],
			"obj-120::obj-39" : [ "1[8]", "1", 0 ],
			"obj-120::obj-49" : [ "MuteCh1[8]", "MuteCh1", 0 ],
			"obj-120::obj-58" : [ "MuteCh2[8]", "MuteCh2", 0 ],
			"obj-120::obj-64" : [ "MuteCh3[8]", "MuteCh3", 0 ],
			"obj-120::obj-70" : [ "MuteCh4[8]", "MuteCh4", 0 ],
			"obj-121::obj-23" : [ "bypass[8]", "bypass", 0 ],
			"obj-121::obj-28" : [ "Size[3]", "Size", 0 ],
			"obj-121::obj-3" : [ "Regen[3]", "Regen", 0 ],
			"obj-121::obj-60" : [ "Damp[3]", "Damp", 0 ],
			"obj-121::obj-62" : [ "Dry[3]", "Dry", 0 ],
			"obj-121::obj-63" : [ "Early[3]", "Early", 0 ],
			"obj-121::obj-64" : [ "Tail[3]", "Tail", 0 ],
			"obj-121::obj-65" : [ "Spread[3]", "Spread", 0 ],
			"obj-121::obj-66" : [ "Time[3]", "Time", 0 ],
			"obj-124::obj-33" : [ "Quadrants[5]", "Quadrants", 0 ],
			"obj-124::obj-55" : [ "Bypass[8]", "Bypass", 0 ],
			"obj-124::obj-80" : [ "Response[5]", "Response", 0 ],
			"obj-125::obj-33" : [ "Quadrants[4]", "Quadrants", 0 ],
			"obj-125::obj-55" : [ "Bypass[7]", "Bypass", 0 ],
			"obj-125::obj-80" : [ "Response[4]", "Response", 0 ],
			"obj-128::obj-10" : [ "CV2[2]", "CV2", 0 ],
			"obj-128::obj-107" : [ "Linear[4]", "Linear", 0 ],
			"obj-128::obj-129" : [ "CV2[12]", "CV2", 0 ],
			"obj-128::obj-3" : [ "DryWetMix", "Mix", 0 ],
			"obj-128::obj-38" : [ "ThruZero", "ThruZero", 0 ],
			"obj-128::obj-45" : [ "FreqMode[4]", "FreqMode", 0 ],
			"obj-128::obj-46" : [ "Offset[19]", "Offset", 0 ],
			"obj-128::obj-51" : [ "Freq[6]", "Freq", 0 ],
			"obj-128::obj-53" : [ "Mute[19]", "Mute", 0 ],
			"obj-132::obj-1" : [ "Attack", "Attack", 0 ],
			"obj-132::obj-15" : [ "Legato", "Legato", 0 ],
			"obj-132::obj-20" : [ "Mute[21]", "Mute", 0 ],
			"obj-132::obj-29" : [ "Decay", "Decay", 0 ],
			"obj-132::obj-31" : [ "Release", "Release", 0 ],
			"obj-132::obj-32" : [ "Sustain", "Sustain", 0 ],
			"obj-133::obj-101" : [ "Width[2]", "Width", 0 ],
			"obj-133::obj-114" : [ "MaxGrains[2]", "MaxGrains", 0 ],
			"obj-133::obj-115" : [ "NewGrainEvery[2]", "NewGrainEvery", 0 ],
			"obj-133::obj-12" : [ "Mute[22]", "Mute", 0 ],
			"obj-133::obj-141" : [ "live.button[2]", "live.button", 0 ],
			"obj-133::obj-19" : [ "CV2[13]", "CV2", 0 ],
			"obj-133::obj-25" : [ "CV[2]", "CV", 0 ],
			"obj-133::obj-28" : [ "Offset[20]", "Offset", 0 ],
			"obj-133::obj-3" : [ "Position[2]", "Position", 0 ],
			"obj-133::obj-45" : [ "DurationRandomAmt[2]", "Random", 0 ],
			"obj-133::obj-47" : [ "Duration[2]", "Duration", 0 ],
			"obj-133::obj-58" : [ "PanRandomAmt[2]", "Random", 0 ],
			"obj-133::obj-71" : [ "Pan[2]", "Pan", 0 ],
			"obj-133::obj-94" : [ "PitchRandomAmt[2]", "Random", 0 ],
			"obj-133::obj-98::obj-2" : [ "pastebang[2]", "pastebang", 0 ],
			"obj-139::obj-118" : [ "Mix[3]", "Mix", 0 ],
			"obj-139::obj-27" : [ "Feedback[3]", "Feedback", 0 ],
			"obj-139::obj-49" : [ "HPF[2]", "HPF", 0 ],
			"obj-139::obj-50" : [ "LPF[2]", "LPF", 0 ],
			"obj-139::obj-7" : [ "bypass[9]", "bypass", 0 ],
			"obj-139::obj-708" : [ "duration.r[2]", "duration.r", 0 ],
			"obj-139::obj-9" : [ "delay_right[2]", "delay_right", 0 ],
			"obj-139::obj-957" : [ "duration.l[2]", "duration.l", 0 ],
			"obj-139::obj-96" : [ "delay_left[2]", "delay_left", 0 ],
			"obj-141::obj-20" : [ "Freq[9]", "Freq", 0 ],
			"obj-141::obj-22" : [ "TimeMode[4]", "TimeMode", 1 ],
			"obj-141::obj-23" : [ "Offset[21]", "Offset", 0 ],
			"obj-141::obj-51" : [ "CV2[14]", "CV2", 0 ],
			"obj-141::obj-54" : [ "CV1[1]", "CV1", 0 ],
			"obj-141::obj-55" : [ "power[1]", "power", 0 ],
			"obj-141::obj-63" : [ "CV3[7]", "CV3", 0 ],
			"obj-141::obj-68" : [ "Res[1]", "Res", 0 ],
			"obj-141::obj-95" : [ "ResCV[1]", "CV", 0 ],
			"obj-142::obj-12" : [ "Mute[20]", "Mute", 0 ],
			"obj-142::obj-20" : [ "Frequency", "Freq", 0 ],
			"obj-143::obj-101" : [ "Width[3]", "Width", 0 ],
			"obj-143::obj-114" : [ "MaxGrains[3]", "MaxGrains", 0 ],
			"obj-143::obj-115" : [ "NewGrainEvery[3]", "NewGrainEvery", 0 ],
			"obj-143::obj-12" : [ "Mute[23]", "Mute", 0 ],
			"obj-143::obj-141" : [ "live.button[3]", "live.button", 0 ],
			"obj-143::obj-19" : [ "CV2[15]", "CV2", 0 ],
			"obj-143::obj-25" : [ "CV[3]", "CV", 0 ],
			"obj-143::obj-28" : [ "Offset[22]", "Offset", 0 ],
			"obj-143::obj-3" : [ "Position[3]", "Position", 0 ],
			"obj-143::obj-45" : [ "DurationRandomAmt[3]", "Random", 0 ],
			"obj-143::obj-47" : [ "Duration[3]", "Duration", 0 ],
			"obj-143::obj-58" : [ "PanRandomAmt[3]", "Random", 0 ],
			"obj-143::obj-71" : [ "Pan[3]", "Pan", 0 ],
			"obj-143::obj-94" : [ "PitchRandomAmt[3]", "Random", 0 ],
			"obj-143::obj-98::obj-2" : [ "pastebang[3]", "pastebang", 0 ],
			"obj-144::obj-20" : [ "Freq[10]", "Freq", 0 ],
			"obj-144::obj-22" : [ "TimeMode[5]", "TimeMode", 1 ],
			"obj-144::obj-23" : [ "Offset[23]", "Offset", 0 ],
			"obj-144::obj-51" : [ "CV2[16]", "CV2", 0 ],
			"obj-144::obj-54" : [ "CV1[2]", "CV1", 0 ],
			"obj-144::obj-55" : [ "power[2]", "power", 0 ],
			"obj-144::obj-63" : [ "CV3[8]", "CV3", 0 ],
			"obj-144::obj-68" : [ "Res[2]", "Res", 0 ],
			"obj-144::obj-95" : [ "ResCV[2]", "CV", 0 ],
			"obj-145::obj-20" : [ "Freq[11]", "Freq", 0 ],
			"obj-145::obj-22" : [ "TimeMode[6]", "TimeMode", 1 ],
			"obj-145::obj-23" : [ "Offset[24]", "Offset", 0 ],
			"obj-145::obj-51" : [ "CV2[17]", "CV2", 0 ],
			"obj-145::obj-54" : [ "CV1[3]", "CV1", 0 ],
			"obj-145::obj-55" : [ "power[3]", "power", 0 ],
			"obj-145::obj-63" : [ "CV3[9]", "CV3", 0 ],
			"obj-145::obj-68" : [ "Res[3]", "Res", 0 ],
			"obj-145::obj-95" : [ "ResCV[3]", "CV", 0 ],
			"obj-147::obj-1" : [ "Attack[2]", "Attack", 0 ],
			"obj-147::obj-15" : [ "Legato[1]", "Legato", 0 ],
			"obj-147::obj-20" : [ "Mute[24]", "Mute", 0 ],
			"obj-147::obj-29" : [ "Decay[2]", "Decay", 0 ],
			"obj-147::obj-31" : [ "Release[1]", "Release", 0 ],
			"obj-147::obj-32" : [ "Sustain[1]", "Sustain", 0 ],
			"obj-148::obj-1" : [ "Attack[3]", "Attack", 0 ],
			"obj-148::obj-15" : [ "Legato[2]", "Legato", 0 ],
			"obj-148::obj-20" : [ "Mute[25]", "Mute", 0 ],
			"obj-148::obj-29" : [ "Decay[3]", "Decay", 0 ],
			"obj-148::obj-31" : [ "Release[2]", "Release", 0 ],
			"obj-148::obj-32" : [ "Sustain[2]", "Sustain", 0 ],
			"obj-149::obj-118" : [ "Mix[4]", "Mix", 0 ],
			"obj-149::obj-27" : [ "Feedback[4]", "Feedback", 0 ],
			"obj-149::obj-49" : [ "HPF[3]", "HPF", 0 ],
			"obj-149::obj-50" : [ "LPF[3]", "LPF", 0 ],
			"obj-149::obj-7" : [ "bypass[10]", "bypass", 0 ],
			"obj-149::obj-708" : [ "duration.r[3]", "duration.r", 0 ],
			"obj-149::obj-9" : [ "delay_right[3]", "delay_right", 0 ],
			"obj-149::obj-957" : [ "duration.l[3]", "duration.l", 0 ],
			"obj-149::obj-96" : [ "delay_left[3]", "delay_left", 0 ],
			"obj-21::obj-20" : [ "ModWheelActivityLED[1]", "ModWheelActivityLED", 0 ],
			"obj-21::obj-28" : [ "Bend[1]", "Bend", 0 ],
			"obj-21::obj-69" : [ "1voctled[1]", "1voctled", 0 ],
			"obj-32::obj-20" : [ "ModWheelActivityLED[3]", "ModWheelActivityLED", 0 ],
			"obj-32::obj-28" : [ "Bend[3]", "Bend", 0 ],
			"obj-32::obj-69" : [ "1voctled[3]", "1voctled", 0 ],
			"obj-35::obj-20" : [ "ModWheelActivityLED[2]", "ModWheelActivityLED", 0 ],
			"obj-35::obj-28" : [ "Bend[2]", "Bend", 0 ],
			"obj-35::obj-69" : [ "1voctled[2]", "1voctled", 0 ],
			"obj-57::obj-29" : [ "3", "3", 0 ],
			"obj-57::obj-32" : [ "2", "2", 0 ],
			"obj-57::obj-33" : [ "4", "4", 0 ],
			"obj-57::obj-37" : [ "Mute[1]", "Mute", 0 ],
			"obj-57::obj-39" : [ "1", "1", 0 ],
			"obj-57::obj-49" : [ "MuteCh1", "MuteCh1", 0 ],
			"obj-57::obj-58" : [ "MuteCh2", "MuteCh2", 0 ],
			"obj-57::obj-64" : [ "MuteCh3", "MuteCh3", 0 ],
			"obj-57::obj-70" : [ "MuteCh4", "MuteCh4", 0 ],
			"obj-5::obj-20" : [ "ModWheelActivityLED", "ModWheelActivityLED", 0 ],
			"obj-5::obj-28" : [ "Bend", "Bend", 0 ],
			"obj-5::obj-69" : [ "1voctled", "1voctled", 0 ],
			"obj-63::obj-20" : [ "ModWheelActivityLED[4]", "ModWheelActivityLED", 0 ],
			"obj-63::obj-28" : [ "Bend[4]", "Bend", 0 ],
			"obj-63::obj-69" : [ "1voctled[4]", "1voctled", 0 ],
			"obj-67::obj-29" : [ "3[2]", "3", 0 ],
			"obj-67::obj-32" : [ "2[2]", "2", 0 ],
			"obj-67::obj-33" : [ "4[2]", "4", 0 ],
			"obj-67::obj-37" : [ "Mute[8]", "Mute", 0 ],
			"obj-67::obj-39" : [ "1[2]", "1", 0 ],
			"obj-67::obj-49" : [ "MuteCh1[2]", "MuteCh1", 0 ],
			"obj-67::obj-58" : [ "MuteCh2[2]", "MuteCh2", 0 ],
			"obj-67::obj-64" : [ "MuteCh3[2]", "MuteCh3", 0 ],
			"obj-67::obj-70" : [ "MuteCh4[2]", "MuteCh4", 0 ],
			"obj-7::obj-11" : [ "Resonance", "Res", 0 ],
			"obj-7::obj-26" : [ "spectral", "spectral", 0 ],
			"obj-7::obj-51" : [ "CV2[18]", "CV2", 0 ],
			"obj-7::obj-54" : [ "CV1[4]", "CV1", 0 ],
			"obj-7::obj-55" : [ "power[4]", "power", 0 ],
			"obj-7::obj-59" : [ "filter_mode", "filter_mode", 0 ],
			"obj-7::obj-63" : [ "CV3[10]", "CV3", 0 ],
			"obj-7::obj-95" : [ "Freq[12]", "Freq", 0 ],
			"obj-7::obj-98" : [ "Gain[1]", "Gain", 0 ],
			"obj-82::obj-23" : [ "bypass", "bypass", 0 ],
			"obj-82::obj-28" : [ "Size", "Size", 0 ],
			"obj-82::obj-3" : [ "Regen", "Regen", 0 ],
			"obj-82::obj-60" : [ "Damp", "Damp", 0 ],
			"obj-82::obj-62" : [ "Dry", "Dry", 0 ],
			"obj-82::obj-63" : [ "Early", "Early", 0 ],
			"obj-82::obj-64" : [ "Tail", "Tail", 0 ],
			"obj-82::obj-65" : [ "Spread", "Spread", 0 ],
			"obj-82::obj-66" : [ "Time", "Time", 0 ],
			"obj-83::obj-22" : [ "Mute", "Mute", 0 ],
			"obj-83::obj-52" : [ "Level", "Level", 0 ],
			"obj-83::obj-55" : [ "DSP", "DSP", 0 ],
			"obj-83::obj-56" : [ "OutputChannel", "OutputChannel", 0 ],
			"obj-86::obj-20" : [ "mute", "mute", 0 ],
			"obj-86::obj-56" : [ "Depth", "Depth", 0 ],
			"obj-86::obj-80" : [ "Ratio", "Ratio", 0 ],
			"obj-86::obj-86" : [ "Amt", "Amt", 0 ],
			"obj-86::obj-91" : [ "Offset[12]", "Offset", 0 ],
			"obj-87::obj-33" : [ "Quadrants", "Quadrants", 0 ],
			"obj-87::obj-55" : [ "Bypass", "Bypass", 0 ],
			"obj-87::obj-80" : [ "Response", "Response", 0 ],
			"obj-89::obj-101" : [ "Width", "Width", 0 ],
			"obj-89::obj-114" : [ "MaxGrains", "MaxGrains", 0 ],
			"obj-89::obj-115" : [ "NewGrainEvery", "NewGrainEvery", 0 ],
			"obj-89::obj-12" : [ "Mute[6]", "Mute", 0 ],
			"obj-89::obj-141" : [ "live.button", "live.button", 0 ],
			"obj-89::obj-19" : [ "CV2", "CV2", 0 ],
			"obj-89::obj-25" : [ "CV", "CV", 0 ],
			"obj-89::obj-28" : [ "Offset", "Offset", 0 ],
			"obj-89::obj-3" : [ "Position", "Position", 0 ],
			"obj-89::obj-45" : [ "DurationRandomAmt", "Random", 0 ],
			"obj-89::obj-47" : [ "Duration", "Duration", 0 ],
			"obj-89::obj-58" : [ "PanRandomAmt", "Random", 0 ],
			"obj-89::obj-71" : [ "Pan", "Pan", 0 ],
			"obj-89::obj-94" : [ "PitchRandomAmt", "Random", 0 ],
			"obj-89::obj-98::obj-2" : [ "pastebang", "pastebang", 0 ],
			"obj-90::obj-106" : [ "CV3", "CV3", 0 ],
			"obj-90::obj-107" : [ "Linear", "Linear", 0 ],
			"obj-90::obj-129" : [ "CV2[3]", "CV2", 0 ],
			"obj-90::obj-20" : [ "Mute[9]", "Mute", 0 ],
			"obj-90::obj-24" : [ "Freq", "Freq", 0 ],
			"obj-90::obj-331" : [ "WaveformCloud", "Waveform", 0 ],
			"obj-90::obj-45" : [ "TimeMode", "TimeMode", 1 ],
			"obj-90::obj-46" : [ "Offset[13]", "Offset", 0 ],
			"obj-90::obj-51" : [ "Fatness", "Fatness", 0 ],
			"obj-91::obj-33" : [ "Quadrants[3]", "Quadrants", 0 ],
			"obj-91::obj-55" : [ "Bypass[3]", "Bypass", 0 ],
			"obj-91::obj-80" : [ "Response[3]", "Response", 0 ],
			"obj-94::obj-29" : [ "3[4]", "3", 0 ],
			"obj-94::obj-32" : [ "2[4]", "2", 0 ],
			"obj-94::obj-33" : [ "4[4]", "4", 0 ],
			"obj-94::obj-37" : [ "Mute[7]", "Mute", 0 ],
			"obj-94::obj-39" : [ "1[4]", "1", 0 ],
			"obj-94::obj-49" : [ "MuteCh1[4]", "MuteCh1", 0 ],
			"obj-94::obj-58" : [ "MuteCh2[4]", "MuteCh2", 0 ],
			"obj-94::obj-64" : [ "MuteCh3[4]", "MuteCh3", 0 ],
			"obj-94::obj-70" : [ "MuteCh4[4]", "MuteCh4", 0 ],
			"obj-95::obj-29" : [ "3[3]", "3", 0 ],
			"obj-95::obj-32" : [ "2[3]", "2", 0 ],
			"obj-95::obj-33" : [ "4[3]", "4", 0 ],
			"obj-95::obj-37" : [ "Mute[10]", "Mute", 0 ],
			"obj-95::obj-39" : [ "1[3]", "1", 0 ],
			"obj-95::obj-49" : [ "MuteCh1[3]", "MuteCh1", 0 ],
			"obj-95::obj-58" : [ "MuteCh2[3]", "MuteCh2", 0 ],
			"obj-95::obj-64" : [ "MuteCh3[3]", "MuteCh3", 0 ],
			"obj-95::obj-70" : [ "MuteCh4[3]", "MuteCh4", 0 ],
			"obj-96::obj-20" : [ "mute[2]", "mute", 0 ],
			"obj-96::obj-56" : [ "Depth[1]", "Depth", 0 ],
			"obj-96::obj-80" : [ "Ratio[1]", "Ratio", 0 ],
			"obj-96::obj-86" : [ "Amt[1]", "Amt", 0 ],
			"obj-96::obj-91" : [ "Offset[14]", "Offset", 0 ],
			"obj-97::obj-33" : [ "Quadrants[1]", "Quadrants", 0 ],
			"obj-97::obj-55" : [ "Bypass[4]", "Bypass", 0 ],
			"obj-97::obj-80" : [ "Response[1]", "Response", 0 ],
			"obj-98::obj-106" : [ "CV3[4]", "CV3", 0 ],
			"obj-98::obj-107" : [ "Linear[2]", "Linear", 0 ],
			"obj-98::obj-11" : [ "PWM", "PWM", 0 ],
			"obj-98::obj-129" : [ "CV2[7]", "CV2", 0 ],
			"obj-98::obj-36" : [ "PW", "PW", 0 ],
			"obj-98::obj-4" : [ "Waveform", "Waveform", 0 ],
			"obj-98::obj-45" : [ "FreqMode", "FreqMode", 0 ],
			"obj-98::obj-46" : [ "Offset[15]", "Offset", 0 ],
			"obj-98::obj-51" : [ "Freq[7]", "Freq", 0 ],
			"obj-98::obj-53" : [ "Mute[11]", "Mute", 0 ],
			"obj-99::obj-23" : [ "bypass[4]", "bypass", 0 ],
			"obj-99::obj-28" : [ "Size[1]", "Size", 0 ],
			"obj-99::obj-3" : [ "Regen[1]", "Regen", 0 ],
			"obj-99::obj-60" : [ "Damp[1]", "Damp", 0 ],
			"obj-99::obj-62" : [ "Dry[1]", "Dry", 0 ],
			"obj-99::obj-63" : [ "Early[1]", "Early", 0 ],
			"obj-99::obj-64" : [ "Tail[1]", "Tail", 0 ],
			"obj-99::obj-65" : [ "Spread[1]", "Spread", 0 ],
			"obj-99::obj-66" : [ "Time[1]", "Time", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"parameter_overrides" : 			{
				"obj-101::obj-7" : 				{
					"parameter_longname" : "bypass[5]"
				}
,
				"obj-102::obj-29" : 				{
					"parameter_longname" : "3[6]"
				}
,
				"obj-102::obj-32" : 				{
					"parameter_longname" : "2[6]"
				}
,
				"obj-102::obj-33" : 				{
					"parameter_longname" : "4[6]"
				}
,
				"obj-102::obj-37" : 				{
					"parameter_longname" : "Mute[13]"
				}
,
				"obj-102::obj-39" : 				{
					"parameter_longname" : "1[6]"
				}
,
				"obj-102::obj-49" : 				{
					"parameter_longname" : "MuteCh1[6]"
				}
,
				"obj-102::obj-58" : 				{
					"parameter_longname" : "MuteCh2[6]"
				}
,
				"obj-102::obj-64" : 				{
					"parameter_longname" : "MuteCh3[6]"
				}
,
				"obj-102::obj-70" : 				{
					"parameter_longname" : "MuteCh4[6]"
				}
,
				"obj-103::obj-29" : 				{
					"parameter_longname" : "3[5]"
				}
,
				"obj-103::obj-32" : 				{
					"parameter_longname" : "2[5]"
				}
,
				"obj-103::obj-33" : 				{
					"parameter_longname" : "4[5]"
				}
,
				"obj-103::obj-37" : 				{
					"parameter_longname" : "Mute[12]"
				}
,
				"obj-103::obj-39" : 				{
					"parameter_longname" : "1[5]"
				}
,
				"obj-103::obj-49" : 				{
					"parameter_longname" : "MuteCh1[5]"
				}
,
				"obj-103::obj-58" : 				{
					"parameter_longname" : "MuteCh2[5]"
				}
,
				"obj-103::obj-64" : 				{
					"parameter_longname" : "MuteCh3[5]"
				}
,
				"obj-103::obj-70" : 				{
					"parameter_longname" : "MuteCh4[5]"
				}
,
				"obj-104::obj-29" : 				{
					"parameter_longname" : "3[7]"
				}
,
				"obj-104::obj-32" : 				{
					"parameter_longname" : "2[7]"
				}
,
				"obj-104::obj-33" : 				{
					"parameter_longname" : "4[7]"
				}
,
				"obj-104::obj-37" : 				{
					"parameter_longname" : "Mute[14]"
				}
,
				"obj-104::obj-39" : 				{
					"parameter_longname" : "1[7]"
				}
,
				"obj-104::obj-49" : 				{
					"parameter_longname" : "MuteCh1[7]"
				}
,
				"obj-104::obj-58" : 				{
					"parameter_longname" : "MuteCh2[7]"
				}
,
				"obj-104::obj-64" : 				{
					"parameter_longname" : "MuteCh3[7]"
				}
,
				"obj-104::obj-70" : 				{
					"parameter_longname" : "MuteCh4[7]"
				}
,
				"obj-105::obj-23" : 				{
					"parameter_longname" : "bypass[6]"
				}
,
				"obj-105::obj-28" : 				{
					"parameter_longname" : "Size[2]"
				}
,
				"obj-105::obj-3" : 				{
					"parameter_longname" : "Regen[2]"
				}
,
				"obj-105::obj-60" : 				{
					"parameter_longname" : "Damp[2]"
				}
,
				"obj-105::obj-62" : 				{
					"parameter_longname" : "Dry[2]"
				}
,
				"obj-105::obj-63" : 				{
					"parameter_longname" : "Early[2]"
				}
,
				"obj-105::obj-64" : 				{
					"parameter_longname" : "Tail[2]"
				}
,
				"obj-105::obj-65" : 				{
					"parameter_longname" : "Spread[2]"
				}
,
				"obj-105::obj-66" : 				{
					"parameter_longname" : "Time[2]"
				}
,
				"obj-106::obj-20" : 				{
					"parameter_longname" : "mute[3]"
				}
,
				"obj-106::obj-56" : 				{
					"parameter_longname" : "Depth[2]"
				}
,
				"obj-106::obj-80" : 				{
					"parameter_longname" : "Ratio[2]"
				}
,
				"obj-106::obj-86" : 				{
					"parameter_longname" : "Amt[2]"
				}
,
				"obj-106::obj-91" : 				{
					"parameter_longname" : "Offset[8]"
				}
,
				"obj-107::obj-33" : 				{
					"parameter_longname" : "Quadrants[2]"
				}
,
				"obj-107::obj-55" : 				{
					"parameter_longname" : "Bypass[5]"
				}
,
				"obj-107::obj-80" : 				{
					"parameter_longname" : "Response[2]"
				}
,
				"obj-108::obj-101" : 				{
					"parameter_longname" : "Width[1]"
				}
,
				"obj-108::obj-114" : 				{
					"parameter_longname" : "MaxGrains[1]"
				}
,
				"obj-108::obj-115" : 				{
					"parameter_longname" : "NewGrainEvery[1]"
				}
,
				"obj-108::obj-12" : 				{
					"parameter_longname" : "Mute[15]"
				}
,
				"obj-108::obj-141" : 				{
					"parameter_longname" : "live.button[1]"
				}
,
				"obj-108::obj-19" : 				{
					"parameter_longname" : "CV2[9]"
				}
,
				"obj-108::obj-25" : 				{
					"parameter_longname" : "CV[1]"
				}
,
				"obj-108::obj-28" : 				{
					"parameter_longname" : "Offset[9]"
				}
,
				"obj-108::obj-3" : 				{
					"parameter_longname" : "Position[1]"
				}
,
				"obj-108::obj-45" : 				{
					"parameter_longname" : "DurationRandomAmt[1]"
				}
,
				"obj-108::obj-47" : 				{
					"parameter_longname" : "Duration[1]"
				}
,
				"obj-108::obj-58" : 				{
					"parameter_longname" : "PanRandomAmt[1]"
				}
,
				"obj-108::obj-71" : 				{
					"parameter_longname" : "Pan[1]"
				}
,
				"obj-108::obj-94" : 				{
					"parameter_longname" : "PitchRandomAmt[1]"
				}
,
				"obj-108::obj-98::obj-2" : 				{
					"parameter_longname" : "pastebang[1]"
				}
,
				"obj-112::obj-118" : 				{
					"parameter_longname" : "Mix[2]"
				}
,
				"obj-112::obj-27" : 				{
					"parameter_longname" : "Feedback[2]"
				}
,
				"obj-112::obj-49" : 				{
					"parameter_longname" : "HPF[1]"
				}
,
				"obj-112::obj-50" : 				{
					"parameter_longname" : "LPF[1]"
				}
,
				"obj-112::obj-7" : 				{
					"parameter_longname" : "bypass[7]"
				}
,
				"obj-112::obj-708" : 				{
					"parameter_longname" : "duration.r[1]"
				}
,
				"obj-112::obj-9" : 				{
					"parameter_longname" : "delay_right[1]"
				}
,
				"obj-112::obj-957" : 				{
					"parameter_longname" : "duration.l[1]"
				}
,
				"obj-112::obj-96" : 				{
					"parameter_longname" : "delay_left[1]"
				}
,
				"obj-113::obj-55" : 				{
					"parameter_longname" : "Bypass[6]"
				}
,
				"obj-116::obj-20" : 				{
					"parameter_longname" : "Freq[5]"
				}
,
				"obj-116::obj-22" : 				{
					"parameter_longname" : "TimeMode[3]"
				}
,
				"obj-116::obj-23" : 				{
					"parameter_longname" : "Offset[10]"
				}
,
				"obj-116::obj-51" : 				{
					"parameter_longname" : "CV2[10]"
				}
,
				"obj-116::obj-63" : 				{
					"parameter_longname" : "CV3[5]"
				}
,
				"obj-117::obj-106" : 				{
					"parameter_longname" : "CV3[6]"
				}
,
				"obj-117::obj-107" : 				{
					"parameter_longname" : "Linear[3]"
				}
,
				"obj-117::obj-11" : 				{
					"parameter_longname" : "PWM[1]"
				}
,
				"obj-117::obj-129" : 				{
					"parameter_longname" : "CV2[11]"
				}
,
				"obj-117::obj-36" : 				{
					"parameter_longname" : "PW[1]"
				}
,
				"obj-117::obj-4" : 				{
					"parameter_longname" : "Waveform[1]"
				}
,
				"obj-117::obj-45" : 				{
					"parameter_longname" : "FreqMode[3]"
				}
,
				"obj-117::obj-46" : 				{
					"parameter_longname" : "Offset[17]"
				}
,
				"obj-117::obj-51" : 				{
					"parameter_longname" : "Freq[8]"
				}
,
				"obj-117::obj-53" : 				{
					"parameter_longname" : "Mute[17]"
				}
,
				"obj-118::obj-20" : 				{
					"parameter_longname" : "mute[4]"
				}
,
				"obj-118::obj-56" : 				{
					"parameter_longname" : "Depth[3]"
				}
,
				"obj-118::obj-80" : 				{
					"parameter_longname" : "Ratio[3]"
				}
,
				"obj-118::obj-86" : 				{
					"parameter_longname" : "Amt[3]"
				}
,
				"obj-118::obj-91" : 				{
					"parameter_longname" : "Offset[18]"
				}
,
				"obj-119::obj-29" : 				{
					"parameter_longname" : "3[9]"
				}
,
				"obj-119::obj-32" : 				{
					"parameter_longname" : "2[9]"
				}
,
				"obj-119::obj-33" : 				{
					"parameter_longname" : "4[9]"
				}
,
				"obj-119::obj-37" : 				{
					"parameter_longname" : "Mute[16]"
				}
,
				"obj-119::obj-39" : 				{
					"parameter_longname" : "1[9]"
				}
,
				"obj-119::obj-49" : 				{
					"parameter_longname" : "MuteCh1[9]"
				}
,
				"obj-119::obj-58" : 				{
					"parameter_longname" : "MuteCh2[9]"
				}
,
				"obj-119::obj-64" : 				{
					"parameter_longname" : "MuteCh3[9]"
				}
,
				"obj-119::obj-70" : 				{
					"parameter_longname" : "MuteCh4[9]"
				}
,
				"obj-120::obj-29" : 				{
					"parameter_longname" : "3[8]"
				}
,
				"obj-120::obj-32" : 				{
					"parameter_longname" : "2[8]"
				}
,
				"obj-120::obj-33" : 				{
					"parameter_longname" : "4[8]"
				}
,
				"obj-120::obj-37" : 				{
					"parameter_longname" : "Mute[18]"
				}
,
				"obj-120::obj-39" : 				{
					"parameter_longname" : "1[8]"
				}
,
				"obj-120::obj-49" : 				{
					"parameter_longname" : "MuteCh1[8]"
				}
,
				"obj-120::obj-58" : 				{
					"parameter_longname" : "MuteCh2[8]"
				}
,
				"obj-120::obj-64" : 				{
					"parameter_longname" : "MuteCh3[8]"
				}
,
				"obj-120::obj-70" : 				{
					"parameter_longname" : "MuteCh4[8]"
				}
,
				"obj-121::obj-23" : 				{
					"parameter_longname" : "bypass[8]"
				}
,
				"obj-121::obj-28" : 				{
					"parameter_longname" : "Size[3]"
				}
,
				"obj-121::obj-3" : 				{
					"parameter_longname" : "Regen[3]"
				}
,
				"obj-121::obj-60" : 				{
					"parameter_longname" : "Damp[3]"
				}
,
				"obj-121::obj-62" : 				{
					"parameter_longname" : "Dry[3]"
				}
,
				"obj-121::obj-63" : 				{
					"parameter_longname" : "Early[3]"
				}
,
				"obj-121::obj-64" : 				{
					"parameter_longname" : "Tail[3]"
				}
,
				"obj-121::obj-65" : 				{
					"parameter_longname" : "Spread[3]"
				}
,
				"obj-121::obj-66" : 				{
					"parameter_longname" : "Time[3]"
				}
,
				"obj-124::obj-33" : 				{
					"parameter_longname" : "Quadrants[5]"
				}
,
				"obj-124::obj-55" : 				{
					"parameter_longname" : "Bypass[8]"
				}
,
				"obj-124::obj-80" : 				{
					"parameter_longname" : "Response[5]"
				}
,
				"obj-125::obj-33" : 				{
					"parameter_longname" : "Quadrants[4]"
				}
,
				"obj-125::obj-55" : 				{
					"parameter_longname" : "Bypass[7]"
				}
,
				"obj-125::obj-80" : 				{
					"parameter_longname" : "Response[4]"
				}
,
				"obj-128::obj-107" : 				{
					"parameter_longname" : "Linear[4]"
				}
,
				"obj-128::obj-129" : 				{
					"parameter_longname" : "CV2[12]"
				}
,
				"obj-128::obj-45" : 				{
					"parameter_longname" : "FreqMode[4]"
				}
,
				"obj-128::obj-46" : 				{
					"parameter_longname" : "Offset[19]"
				}
,
				"obj-128::obj-51" : 				{
					"parameter_longname" : "Freq[6]"
				}
,
				"obj-128::obj-53" : 				{
					"parameter_longname" : "Mute[19]"
				}
,
				"obj-132::obj-20" : 				{
					"parameter_longname" : "Mute[21]"
				}
,
				"obj-133::obj-101" : 				{
					"parameter_longname" : "Width[2]"
				}
,
				"obj-133::obj-114" : 				{
					"parameter_longname" : "MaxGrains[2]"
				}
,
				"obj-133::obj-115" : 				{
					"parameter_longname" : "NewGrainEvery[2]"
				}
,
				"obj-133::obj-12" : 				{
					"parameter_longname" : "Mute[22]"
				}
,
				"obj-133::obj-141" : 				{
					"parameter_longname" : "live.button[2]"
				}
,
				"obj-133::obj-19" : 				{
					"parameter_longname" : "CV2[13]"
				}
,
				"obj-133::obj-25" : 				{
					"parameter_longname" : "CV[2]"
				}
,
				"obj-133::obj-28" : 				{
					"parameter_longname" : "Offset[20]"
				}
,
				"obj-133::obj-3" : 				{
					"parameter_longname" : "Position[2]"
				}
,
				"obj-133::obj-45" : 				{
					"parameter_longname" : "DurationRandomAmt[2]"
				}
,
				"obj-133::obj-47" : 				{
					"parameter_longname" : "Duration[2]"
				}
,
				"obj-133::obj-58" : 				{
					"parameter_longname" : "PanRandomAmt[2]"
				}
,
				"obj-133::obj-71" : 				{
					"parameter_longname" : "Pan[2]"
				}
,
				"obj-133::obj-94" : 				{
					"parameter_longname" : "PitchRandomAmt[2]"
				}
,
				"obj-133::obj-98::obj-2" : 				{
					"parameter_longname" : "pastebang[2]"
				}
,
				"obj-139::obj-118" : 				{
					"parameter_longname" : "Mix[3]"
				}
,
				"obj-139::obj-27" : 				{
					"parameter_longname" : "Feedback[3]"
				}
,
				"obj-139::obj-49" : 				{
					"parameter_longname" : "HPF[2]"
				}
,
				"obj-139::obj-50" : 				{
					"parameter_longname" : "LPF[2]"
				}
,
				"obj-139::obj-7" : 				{
					"parameter_longname" : "bypass[9]"
				}
,
				"obj-139::obj-708" : 				{
					"parameter_longname" : "duration.r[2]"
				}
,
				"obj-139::obj-9" : 				{
					"parameter_longname" : "delay_right[2]"
				}
,
				"obj-139::obj-957" : 				{
					"parameter_longname" : "duration.l[2]"
				}
,
				"obj-139::obj-96" : 				{
					"parameter_longname" : "delay_left[2]"
				}
,
				"obj-141::obj-20" : 				{
					"parameter_longname" : "Freq[9]"
				}
,
				"obj-141::obj-22" : 				{
					"parameter_longname" : "TimeMode[4]"
				}
,
				"obj-141::obj-23" : 				{
					"parameter_longname" : "Offset[21]"
				}
,
				"obj-141::obj-51" : 				{
					"parameter_longname" : "CV2[14]"
				}
,
				"obj-141::obj-54" : 				{
					"parameter_longname" : "CV1[1]"
				}
,
				"obj-141::obj-55" : 				{
					"parameter_longname" : "power[1]"
				}
,
				"obj-141::obj-63" : 				{
					"parameter_longname" : "CV3[7]"
				}
,
				"obj-141::obj-68" : 				{
					"parameter_longname" : "Res[1]"
				}
,
				"obj-141::obj-95" : 				{
					"parameter_longname" : "ResCV[1]"
				}
,
				"obj-142::obj-12" : 				{
					"parameter_longname" : "Mute[20]"
				}
,
				"obj-143::obj-101" : 				{
					"parameter_longname" : "Width[3]"
				}
,
				"obj-143::obj-114" : 				{
					"parameter_longname" : "MaxGrains[3]"
				}
,
				"obj-143::obj-115" : 				{
					"parameter_longname" : "NewGrainEvery[3]"
				}
,
				"obj-143::obj-12" : 				{
					"parameter_longname" : "Mute[23]"
				}
,
				"obj-143::obj-141" : 				{
					"parameter_longname" : "live.button[3]"
				}
,
				"obj-143::obj-19" : 				{
					"parameter_longname" : "CV2[15]"
				}
,
				"obj-143::obj-25" : 				{
					"parameter_longname" : "CV[3]"
				}
,
				"obj-143::obj-28" : 				{
					"parameter_longname" : "Offset[22]"
				}
,
				"obj-143::obj-3" : 				{
					"parameter_longname" : "Position[3]"
				}
,
				"obj-143::obj-45" : 				{
					"parameter_longname" : "DurationRandomAmt[3]"
				}
,
				"obj-143::obj-47" : 				{
					"parameter_longname" : "Duration[3]"
				}
,
				"obj-143::obj-58" : 				{
					"parameter_longname" : "PanRandomAmt[3]"
				}
,
				"obj-143::obj-71" : 				{
					"parameter_longname" : "Pan[3]"
				}
,
				"obj-143::obj-94" : 				{
					"parameter_longname" : "PitchRandomAmt[3]"
				}
,
				"obj-143::obj-98::obj-2" : 				{
					"parameter_longname" : "pastebang[3]"
				}
,
				"obj-144::obj-20" : 				{
					"parameter_longname" : "Freq[10]"
				}
,
				"obj-144::obj-22" : 				{
					"parameter_longname" : "TimeMode[5]"
				}
,
				"obj-144::obj-23" : 				{
					"parameter_longname" : "Offset[23]"
				}
,
				"obj-144::obj-51" : 				{
					"parameter_longname" : "CV2[16]"
				}
,
				"obj-144::obj-54" : 				{
					"parameter_longname" : "CV1[2]"
				}
,
				"obj-144::obj-55" : 				{
					"parameter_longname" : "power[2]"
				}
,
				"obj-144::obj-63" : 				{
					"parameter_longname" : "CV3[8]"
				}
,
				"obj-144::obj-68" : 				{
					"parameter_longname" : "Res[2]"
				}
,
				"obj-144::obj-95" : 				{
					"parameter_longname" : "ResCV[2]"
				}
,
				"obj-145::obj-20" : 				{
					"parameter_longname" : "Freq[11]"
				}
,
				"obj-145::obj-22" : 				{
					"parameter_longname" : "TimeMode[6]"
				}
,
				"obj-145::obj-23" : 				{
					"parameter_longname" : "Offset[24]"
				}
,
				"obj-145::obj-51" : 				{
					"parameter_longname" : "CV2[17]"
				}
,
				"obj-145::obj-54" : 				{
					"parameter_longname" : "CV1[3]"
				}
,
				"obj-145::obj-55" : 				{
					"parameter_longname" : "power[3]"
				}
,
				"obj-145::obj-63" : 				{
					"parameter_longname" : "CV3[9]"
				}
,
				"obj-145::obj-68" : 				{
					"parameter_longname" : "Res[3]"
				}
,
				"obj-145::obj-95" : 				{
					"parameter_longname" : "ResCV[3]"
				}
,
				"obj-147::obj-1" : 				{
					"parameter_longname" : "Attack[2]"
				}
,
				"obj-147::obj-15" : 				{
					"parameter_longname" : "Legato[1]"
				}
,
				"obj-147::obj-20" : 				{
					"parameter_longname" : "Mute[24]"
				}
,
				"obj-147::obj-29" : 				{
					"parameter_longname" : "Decay[2]"
				}
,
				"obj-147::obj-31" : 				{
					"parameter_longname" : "Release[1]"
				}
,
				"obj-147::obj-32" : 				{
					"parameter_longname" : "Sustain[1]"
				}
,
				"obj-148::obj-1" : 				{
					"parameter_longname" : "Attack[3]"
				}
,
				"obj-148::obj-15" : 				{
					"parameter_longname" : "Legato[2]"
				}
,
				"obj-148::obj-20" : 				{
					"parameter_longname" : "Mute[25]"
				}
,
				"obj-148::obj-29" : 				{
					"parameter_longname" : "Decay[3]"
				}
,
				"obj-148::obj-31" : 				{
					"parameter_longname" : "Release[2]"
				}
,
				"obj-148::obj-32" : 				{
					"parameter_longname" : "Sustain[2]"
				}
,
				"obj-149::obj-118" : 				{
					"parameter_longname" : "Mix[4]"
				}
,
				"obj-149::obj-27" : 				{
					"parameter_longname" : "Feedback[4]"
				}
,
				"obj-149::obj-49" : 				{
					"parameter_longname" : "HPF[3]"
				}
,
				"obj-149::obj-50" : 				{
					"parameter_longname" : "LPF[3]"
				}
,
				"obj-149::obj-7" : 				{
					"parameter_longname" : "bypass[10]"
				}
,
				"obj-149::obj-708" : 				{
					"parameter_longname" : "duration.r[3]"
				}
,
				"obj-149::obj-9" : 				{
					"parameter_longname" : "delay_right[3]"
				}
,
				"obj-149::obj-957" : 				{
					"parameter_longname" : "duration.l[3]"
				}
,
				"obj-149::obj-96" : 				{
					"parameter_longname" : "delay_left[3]"
				}
,
				"obj-21::obj-20" : 				{
					"parameter_longname" : "ModWheelActivityLED[1]"
				}
,
				"obj-21::obj-28" : 				{
					"parameter_longname" : "Bend[1]"
				}
,
				"obj-21::obj-69" : 				{
					"parameter_longname" : "1voctled[1]"
				}
,
				"obj-32::obj-20" : 				{
					"parameter_longname" : "ModWheelActivityLED[3]"
				}
,
				"obj-32::obj-28" : 				{
					"parameter_longname" : "Bend[3]"
				}
,
				"obj-32::obj-69" : 				{
					"parameter_longname" : "1voctled[3]"
				}
,
				"obj-35::obj-20" : 				{
					"parameter_longname" : "ModWheelActivityLED[2]"
				}
,
				"obj-35::obj-28" : 				{
					"parameter_longname" : "Bend[2]"
				}
,
				"obj-35::obj-69" : 				{
					"parameter_longname" : "1voctled[2]"
				}
,
				"obj-57::obj-37" : 				{
					"parameter_longname" : "Mute[1]"
				}
,
				"obj-63::obj-20" : 				{
					"parameter_longname" : "ModWheelActivityLED[4]"
				}
,
				"obj-63::obj-28" : 				{
					"parameter_longname" : "Bend[4]"
				}
,
				"obj-63::obj-69" : 				{
					"parameter_longname" : "1voctled[4]"
				}
,
				"obj-67::obj-29" : 				{
					"parameter_longname" : "3[2]"
				}
,
				"obj-67::obj-32" : 				{
					"parameter_longname" : "2[2]"
				}
,
				"obj-67::obj-33" : 				{
					"parameter_longname" : "4[2]"
				}
,
				"obj-67::obj-37" : 				{
					"parameter_longname" : "Mute[8]"
				}
,
				"obj-67::obj-39" : 				{
					"parameter_longname" : "1[2]"
				}
,
				"obj-67::obj-49" : 				{
					"parameter_longname" : "MuteCh1[2]"
				}
,
				"obj-67::obj-58" : 				{
					"parameter_longname" : "MuteCh2[2]"
				}
,
				"obj-67::obj-64" : 				{
					"parameter_longname" : "MuteCh3[2]"
				}
,
				"obj-67::obj-70" : 				{
					"parameter_longname" : "MuteCh4[2]"
				}
,
				"obj-7::obj-51" : 				{
					"parameter_longname" : "CV2[18]"
				}
,
				"obj-7::obj-54" : 				{
					"parameter_longname" : "CV1[4]"
				}
,
				"obj-7::obj-55" : 				{
					"parameter_longname" : "power[4]"
				}
,
				"obj-7::obj-63" : 				{
					"parameter_longname" : "CV3[10]"
				}
,
				"obj-7::obj-95" : 				{
					"parameter_longname" : "Freq[12]"
				}
,
				"obj-7::obj-98" : 				{
					"parameter_longname" : "Gain[1]"
				}
,
				"obj-86::obj-91" : 				{
					"parameter_longname" : "Offset[12]"
				}
,
				"obj-89::obj-12" : 				{
					"parameter_longname" : "Mute[6]"
				}
,
				"obj-90::obj-129" : 				{
					"parameter_longname" : "CV2[3]"
				}
,
				"obj-90::obj-20" : 				{
					"parameter_longname" : "Mute[9]"
				}
,
				"obj-90::obj-46" : 				{
					"parameter_longname" : "Offset[13]"
				}
,
				"obj-91::obj-33" : 				{
					"parameter_longname" : "Quadrants[3]"
				}
,
				"obj-91::obj-55" : 				{
					"parameter_longname" : "Bypass[3]"
				}
,
				"obj-91::obj-80" : 				{
					"parameter_longname" : "Response[3]"
				}
,
				"obj-94::obj-29" : 				{
					"parameter_longname" : "3[4]"
				}
,
				"obj-94::obj-32" : 				{
					"parameter_longname" : "2[4]"
				}
,
				"obj-94::obj-33" : 				{
					"parameter_longname" : "4[4]"
				}
,
				"obj-94::obj-37" : 				{
					"parameter_longname" : "Mute[7]"
				}
,
				"obj-94::obj-39" : 				{
					"parameter_longname" : "1[4]"
				}
,
				"obj-94::obj-49" : 				{
					"parameter_longname" : "MuteCh1[4]"
				}
,
				"obj-94::obj-58" : 				{
					"parameter_longname" : "MuteCh2[4]"
				}
,
				"obj-94::obj-64" : 				{
					"parameter_longname" : "MuteCh3[4]"
				}
,
				"obj-94::obj-70" : 				{
					"parameter_longname" : "MuteCh4[4]"
				}
,
				"obj-95::obj-29" : 				{
					"parameter_longname" : "3[3]"
				}
,
				"obj-95::obj-32" : 				{
					"parameter_longname" : "2[3]"
				}
,
				"obj-95::obj-33" : 				{
					"parameter_longname" : "4[3]"
				}
,
				"obj-95::obj-37" : 				{
					"parameter_longname" : "Mute[10]"
				}
,
				"obj-95::obj-39" : 				{
					"parameter_longname" : "1[3]"
				}
,
				"obj-95::obj-49" : 				{
					"parameter_longname" : "MuteCh1[3]"
				}
,
				"obj-95::obj-58" : 				{
					"parameter_longname" : "MuteCh2[3]"
				}
,
				"obj-95::obj-64" : 				{
					"parameter_longname" : "MuteCh3[3]"
				}
,
				"obj-95::obj-70" : 				{
					"parameter_longname" : "MuteCh4[3]"
				}
,
				"obj-96::obj-20" : 				{
					"parameter_longname" : "mute[2]"
				}
,
				"obj-96::obj-56" : 				{
					"parameter_longname" : "Depth[1]"
				}
,
				"obj-96::obj-80" : 				{
					"parameter_longname" : "Ratio[1]"
				}
,
				"obj-96::obj-86" : 				{
					"parameter_longname" : "Amt[1]"
				}
,
				"obj-96::obj-91" : 				{
					"parameter_longname" : "Offset[14]"
				}
,
				"obj-97::obj-33" : 				{
					"parameter_longname" : "Quadrants[1]"
				}
,
				"obj-97::obj-55" : 				{
					"parameter_longname" : "Bypass[4]"
				}
,
				"obj-97::obj-80" : 				{
					"parameter_longname" : "Response[1]"
				}
,
				"obj-98::obj-106" : 				{
					"parameter_longname" : "CV3[4]"
				}
,
				"obj-98::obj-107" : 				{
					"parameter_longname" : "Linear[2]"
				}
,
				"obj-98::obj-129" : 				{
					"parameter_longname" : "CV2[7]"
				}
,
				"obj-98::obj-46" : 				{
					"parameter_longname" : "Offset[15]"
				}
,
				"obj-98::obj-51" : 				{
					"parameter_longname" : "Freq[7]"
				}
,
				"obj-98::obj-53" : 				{
					"parameter_longname" : "Mute[11]"
				}
,
				"obj-99::obj-23" : 				{
					"parameter_longname" : "bypass[4]"
				}
,
				"obj-99::obj-28" : 				{
					"parameter_longname" : "Size[1]"
				}
,
				"obj-99::obj-3" : 				{
					"parameter_longname" : "Regen[1]"
				}
,
				"obj-99::obj-60" : 				{
					"parameter_longname" : "Damp[1]"
				}
,
				"obj-99::obj-62" : 				{
					"parameter_longname" : "Dry[1]"
				}
,
				"obj-99::obj-63" : 				{
					"parameter_longname" : "Early[1]"
				}
,
				"obj-99::obj-64" : 				{
					"parameter_longname" : "Tail[1]"
				}
,
				"obj-99::obj-65" : 				{
					"parameter_longname" : "Spread[1]"
				}
,
				"obj-99::obj-66" : 				{
					"parameter_longname" : "Time[1]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "M4L.bal2~.maxpat",
				"bootpath" : "C74:/patchers/m4l/Tools resources",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "background_sm.maxpat",
				"bootpath" : "C74:/packages/BEAP/misc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.ADSR.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Envelope",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Audio Mixer.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Mixers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Classroom Filter.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Filter",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Cloud.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Oscillator",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.FM.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Oscillator",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Frequency Shifter.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Effects",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Gain and Bias.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Level",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Gigaverb.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Effects",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Granular.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Oscillator",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.LFO.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/LFO",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.LPF.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Filter",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.MIDI to Signal.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/MIDI",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Oscillator.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Oscillator",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Stereo.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Output",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.Sync Delay.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Effects",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.VCA.maxpat",
				"bootpath" : "C74:/packages/BEAP/clippings/BEAP/Level",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.arc.accum-2.maxpat",
				"bootpath" : "C74:/packages/BEAP/misc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.arc.knob.maxpat",
				"bootpath" : "C74:/packages/BEAP/misc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.freqshift.poly.maxpat",
				"bootpath" : "C74:/packages/BEAP/misc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bp.rgrain.maxpat",
				"bootpath" : "C74:/packages/BEAP/misc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pastebang.maxpat",
				"bootpath" : "C74:/packages/BEAP/misc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rchoose.maxpat",
				"bootpath" : "~/Library/Application Support/Cycling '74/Max 8/Examples/sampling/granular/lib",
				"patcherrelativepath" : "../../Library/Application Support/Cycling '74/Max 8/Examples/sampling/granular/lib",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rchoosef.maxpat",
				"bootpath" : "C74:/packages/BEAP/misc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sine.svg",
				"bootpath" : "C74:/media/max/picts/m4l-picts",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "square.svg",
				"bootpath" : "C74:/media/max/picts/m4l-picts",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "transratio.maxpat",
				"bootpath" : "~/Library/Application Support/Cycling '74/Max 8/Examples/max-tricks/notes-and-pitch/pitch-to-freq-ratio",
				"patcherrelativepath" : "../../Library/Application Support/Cycling '74/Max 8/Examples/max-tricks/notes-and-pitch/pitch-to-freq-ratio",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "up.svg",
				"bootpath" : "C74:/media/max/picts/m4l-picts",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "updown.svg",
				"bootpath" : "C74:/media/max/picts/m4l-picts",
				"type" : "svg",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
