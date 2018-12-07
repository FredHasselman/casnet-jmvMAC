
// This file is an automatically generated and should not be edited

'use strict';

const options = [{"name":"data","type":"Data"},{"name":"y1","title":"Time Series Y1","type":"Variable"},{"name":"standardise","title":"Transform time series?","type":"List","options":[{"name":"none","title":"No transformation"},{"name":"meanSD","title":"Standardise on Mean and SD"},{"name":"medianMAD","title":"Standardise on Median and MAD"},{"name":"unitScale","title":"Scale to Min. and Max. (unit scale)"},{"name":"symbolicScale","title":"Symbolic representation"}],"default":"none"},{"name":"emLag","title":"Embedding lag","type":"Number","default":1},{"name":"emDim","title":"Embedding dimensions","type":"Number","default":1},{"name":"Gweight","title":"Weighted","type":"Bool"},{"name":"Gdirect","title":"Directed","type":"Bool"},{"name":"Glayout","title":"Graph layout","type":"List","options":[{"name":"ci","title":"Circle"},{"name":"st","title":"Star"},{"name":"ci","title":"Circle"},{"name":"ni","title":"Nicely"},{"name":"fr","title":"Fruchterman-Reingold"},{"name":"kk","title":"Kamada-Kawai"}]},{"name":"fixRR","title":"RR","type":"Number","default":0.05},{"name":"fixRAD","title":"Radius","type":"Number","default":0},{"name":"fixed","title":"Fix","type":"List","default":"RAD","options":[{"name":"RAD","title":"fixed Radius"},{"name":"RR","title":"fixed Recurrence Rate"},{"name":"NO","title":"Unthresholded"}]},{"type":"Number","title":"Minimum diagonal line length","name":"DLmin","default":2},{"type":"Number","title":"Maximum diagonal line length","name":"DLmax","default":0},{"type":"Number","title":"Minimum vertical line length","name":"VLmin","default":2},{"type":"Number","title":"Maximum vertical line length","name":"VLmax","default":0},{"type":"Number","title":"Minimum horizontal line length","name":"HLmin","default":2},{"type":"Number","title":"Maximum horizontal line length","name":"HLmax","default":0},{"type":"Number","title":"Theiler window","name":"theiler","default":0},{"type":"List","title":"Distance norm","name":"norm","options":[{"title":"euclidean","name":"euclidean"},{"title":"maximum","name":"maximum"},{"title":"manhattan","name":"manhattan"},{"title":"canberra","name":"canberra"},{"title":"binary","name":"binary"},{"title":"minkowski","name":"minkowski"}],"default":"euclidean"}];

const view = View.extend({
    jus: "2.0",

    events: [

	]

});

view.layout = ui.extend({

    label: "Recurrence Networks",
    jus: "2.0",
    type: "root",
    stage: 0, //0 - release, 1 - development, 2 - proposed
    controls: [
		{
			type: DefaultControls.VariableSupplier,
			persistentItems: false,
			stretchFactor: 1,
			controls: [
				{
					type: DefaultControls.TargetLayoutBox,
					label: "Time series",
					controls: [
						{
							type: DefaultControls.VariablesListBox,
							name: "y1",
							maxItemCount: 1,
							isTarget: true
						}
					]
				}
			]
		},
		{
			type: DefaultControls.LayoutBox,
			margin: "large",
			controls: [
				{
					type: DefaultControls.Label,
					label: "Adjust time series",
					controls: [
						{
							type: DefaultControls.RadioButton,
							name: "standardise_none",
							optionName: "standardise",
							optionPart: "none"
						},
						{
							type: DefaultControls.RadioButton,
							name: "standardise_meanSD",
							optionName: "standardise",
							optionPart: "meanSD"
						},
						{
							type: DefaultControls.RadioButton,
							name: "standardise_medianMAD",
							optionName: "standardise",
							optionPart: "medianMAD"
						},
						{
							type: DefaultControls.RadioButton,
							name: "standardise_unit",
							optionName: "standardise",
							optionPart: "unitScale"
						},
						{
							type: DefaultControls.RadioButton,
							name: "standardise_symbolic",
							optionName: "standardise",
							optionPart: "symbolicScale"
						}
					]
				}
			]
		},
		{
			type: DefaultControls.CollapseBox,
			label: "Recurrence Network",
			collapsed: false,
			controls: [
				{
					type: DefaultControls.LayoutBox,
					margin: "large",
					controls: [
						{
							type: DefaultControls.ComboBox,
							label: "Graph layout",
							name: "Glayout"
						}
					]
				}
			]
		},
		{
			type: DefaultControls.CollapseBox,
			label: "Phase Space Parameters",
			collapsed: false,
			controls: [
				{
					type: DefaultControls.TextBox,
					label: "Embedding lag",
					name: "emLag",
					format: FormatDef.number,
					inputPattern: "[0-9]+"
				},
				{
					type: DefaultControls.TextBox,
					name: "emDim",
					format: FormatDef.number,
					inputPattern: "[0-9]+"
				},
				{
					type: DefaultControls.LayoutBox,
					margin: "large",
					controls: [
						{
							type: DefaultControls.RadioButton,
							name: "fixed_RAD",
							optionName: "fixed",
							optionPart: "RAD",
							controls: [
								{
									type: DefaultControls.TextBox,
									name: "fixRAD",
									label: "Radius",
									format: FormatDef.number,
									inputPattern: "[0-9]+",
									enable: "(fixed_RAD)"
								}
							]
						},
						{
							type: DefaultControls.RadioButton,
							name: "fixed_RR",
							optionName: "fixed",
							optionPart: "RR",
							controls: [
								{
									type: DefaultControls.TextBox,
									name: "fixRR",
									label: "RR",
									format: FormatDef.number,
									inputPattern: "[0-9]+",
									enable: "(fixed_RR)"
								}
							]
						},
						{
							type: DefaultControls.RadioButton,
							name: "fixed_NO",
							optionName: "fixed",
							optionPart: "NO"
						}
					]
				}
			]
		},
		{
			type: DefaultControls.CollapseBox,
			label: "Analysis Parameters",
			collapsed: true,
			controls: [
				{
					type: DefaultControls.TextBox,
					label: "Minimum diagonal line length",
					name: "DLmin",
					format: FormatDef.number,
					inputPattern: "[0-9]+"
				},
				{
					type: DefaultControls.TextBox,
					label: "Maximum diagonal line length",
					name: "DLmax",
					format: FormatDef.number,
					inputPattern: "[0-9]+"
				},
				{
					type: DefaultControls.TextBox,
					label: "Minimum vertical line length",
					name: "VLmin",
					format: FormatDef.number,
					inputPattern: "[0-9]+"
				},
				{
					type: DefaultControls.TextBox,
					label: "Maximum vertical line length",
					name: "VLmax",
					format: FormatDef.number,
					inputPattern: "[0-9]+"
				},
				{
					type: DefaultControls.TextBox,
					label: "Minimum horizontal line length",
					name: "HLmin",
					format: FormatDef.number,
					inputPattern: "[0-9]+"
				},
				{
					type: DefaultControls.TextBox,
					label: "Maximum horizontal line length",
					name: "HLmax",
					format: FormatDef.number,
					inputPattern: "[0-9]+"
				},
				{
					type: DefaultControls.TextBox,
					label: "Theiler window",
					name: "theiler",
					format: FormatDef.number,
					inputPattern: "[0-9]+"
				},
				{
					type: DefaultControls.ComboBox,
					label: "Distance norm",
					name: "norm"
				}
			]
		},
		{
			type: DefaultControls.LayoutBox,
			margin: "large",
			controls: [
				{
					type: DefaultControls.CheckBox,
					name: "Gweight"
				},
				{
					type: DefaultControls.CheckBox,
					name: "Gdirect"
				}
			]
		}
	]
});

module.exports = { view : view, options: options };
