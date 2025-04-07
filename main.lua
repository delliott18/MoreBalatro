G.MoreBalatro = {}
G.MoreBalatro.C = {}
G.MoreBalatro.FUNCS = {}
G.MoreBalatro.config = SMODS.current_mod.config

if G.MoreBalatro.config.jokers_enabled then  SMODS.load_file('objects/jokers.lua')() end

SMODS.Atlas({
    key = 'modicon',
    path = 'modicon.png',
    px = '34',
    py = '34'
})

SMODS.current_mod.config_tab = function()
	return {
	  n = G.UIT.ROOT,
	  config = { align = 'cm', padding = 0.07, emboss = 0.05, r = 0.1, colour = G.C.BLACK, minh = 4.5 ,minw = 7 },
	  nodes = {
		{
			n = G.UIT.R,
			config = { align = 'cm'},
			nodes = {
				{ n = G.UIT.T, config = { text = localize('MoreBalatro_feature_enable'), colour = G.C.WHITE, scale = 0.5 }},
			}
		},
		{
			n = G.UIT.R,
			config = { align = 'cm', minh = 0.6 },
			nodes = {
				{ n = G.UIT.T, config = { text = localize('MoreBalatro_requires_restart'), colour = G.C.RED, scale = 0.4 }},
			}
		},
		{
		  n = G.UIT.R,
		  nodes = {
			{
			  n = G.UIT.C,
			  nodes = {
				create_toggle {
				  label = localize('MoreBalatro_jokers_enabled'),
				  ref_table = G.MoreBalatro.config,
				  ref_value = 'jokers_enabled',
				},
			  }
			},
		  }
		}
	  }	
	}
  end
