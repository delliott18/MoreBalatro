SMODS.Atlas {
    key = 'Modded_Jokers',
    path = 'Jokers.png',
    px = 71,
    py = 95
}

SMODS.Joker {
    key = 'crib_joker',
    loc_txt = {
        name = 'The Crib',
        text = {
            "{X:mult,C:white} X#1# {} Mult if played",
            "hand contains",
            "a {C:attention}Full House{}"
        }
    },
    blueprint_compat = true,
    perishable_compat = true,
    eternal_compat = true,
    rarity = 3,
    atlas = "Modded_Jokers",
    pos = { x = 0, y = 0 },
    cost = 10,
    unlocked = true,
    discovered = true,
    config = { extra = { Xmult = 3 } },
    loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult } }
	end,
    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands["Full House"]) then
            return {
                message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.Xmult } },
				Xmult_mod = card.ability.extra.Xmult
            }
        end
    end
}
