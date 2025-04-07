SMODS.Atlas {
    key = 'Modded_Jokers',
    path = 'Jokers.png',
    px = 71,
    py = 95
}

SMODS.Joker {
    key = 'stranger_joker',
    loc_txt = {
        name = 'The Stranger',
        text = {
            "{X:mult,C:white} X#1# {} Mult if played",
            "hand contains",
            "a {C:attention}High Card{}"
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
    config = { extra = { Xmult = 4 } },
    loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult } }
	end,
    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands["High Card"]) then
            return {
                message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.Xmult } },
				Xmult_mod = card.ability.extra.Xmult
            }
        end
    end
}

SMODS.Joker {
    key = 'twoMan_joker',
    loc_txt = {
        name = 'The Two Man',
        text = {
            "{X:mult,C:white} X#1# {} Mult if played",
            "hand contains",
            "a {C:attention}Two Pair{}"
        }
    },
    blueprint_compat = true,
    perishable_compat = true,
    eternal_compat = true,
    rarity = 3,
    atlas = "Modded_Jokers",
    pos = { x = 1, y = 0 },
    cost = 10,
    unlocked = true,
    discovered = true,
    config = { extra = { Xmult = 3 } },
    loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult } }
	end,
    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands["Two Pair"]) then
            return {
                message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.Xmult } },
				Xmult_mod = card.ability.extra.Xmult
            }
        end
    end
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
    pos = { x = 2, y = 0 },
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

SMODS.Joker {
    key = 'staightFlush_joker',
    loc_txt = {
        name = 'The Sequence',
        text = {
            "{X:mult,C:white} X#1# {} Mult if played",
            "hand contains",
            "a {C:attention}Straight Flush{}"
        }
    },
    blueprint_compat = true,
    perishable_compat = true,
    eternal_compat = true,
    rarity = 3,
    atlas = "Modded_Jokers",
    pos = { x = 3, y = 0 },
    cost = 10,
    unlocked = true,
    discovered = true,
    config = { extra = { Xmult = 7 } },
    loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult } }
	end,
    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands["Straight Flush"]) then
            return {
                message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.Xmult } },
				Xmult_mod = card.ability.extra.Xmult
            }
        end
    end
}

SMODS.Joker {
    key = 'monarchy_joker',
    loc_txt = {
        name = 'The Monarchy',
        text = {
            "{X:mult,C:white} X#1# {} Mult if played",
            "hand contains",
            "a {C:attention}Royal Flush{}"
        }
    },
    blueprint_compat = true,
    perishable_compat = true,
    eternal_compat = true,
    rarity = 3,
    atlas = "Modded_Jokers",
    pos = { x = 4, y = 0 },
    cost = 12,
    unlocked = true,
    discovered = true,
    config = { extra = { Xmult = 10 } },
    loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult } }
	end,
    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands["Straight Flush"]) then
            local total = 0
			for i = 1, #context.scoring_hand do
				if context.scoring_hand[i]:get_id() == 10 then total = total + 1 end
                if context.scoring_hand[i]:get_id() == 11 then total = total + 1 end
                if context.scoring_hand[i]:get_id() == 12 then total = total + 1 end
                if context.scoring_hand[i]:get_id() == 13 then total = total + 1 end
				if context.scoring_hand[i]:get_id() == 14 then total = total + 1 end
			end
			if total >= 4 then
                return {
                    message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.Xmult } },
				    Xmult_mod = card.ability.extra.Xmult
                }
            end
        end
    end
}

SMODS.Joker {
    key = 'squad_joker',
    loc_txt = {
        name = 'The Squad',
        text = {
            "{X:mult,C:white} X#1# {} Mult if played",
            "hand contains",
            "a {C:attention}Five of a Kind{}"
        }
    },
    blueprint_compat = true,
    perishable_compat = true,
    eternal_compat = true,
    rarity = 3,
    atlas = "Modded_Jokers",
    pos = { x = 0, y = 1 },
    cost = 12,
    unlocked = true,
    discovered = true,
    config = { extra = { Xmult = 4 } },
    loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult } }
	end,
    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands["Five of a Kind"]) then
            return {
                message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.Xmult } },
				Xmult_mod = card.ability.extra.Xmult
            }
        end
    end
}

SMODS.Joker {
    key = 'frat_joker',
    loc_txt = {
        name = 'The Frat',
        text = {
            "{X:mult,C:white} X#1# {} Mult if played",
            "hand contains",
            "a {C:attention}Flush House{}"
        }
    },
    blueprint_compat = true,
    perishable_compat = true,
    eternal_compat = true,
    rarity = 3,
    atlas = "Modded_Jokers",
    pos = { x = 1, y = 1 },
    cost = 12,
    unlocked = true,
    discovered = true,
    config = { extra = { Xmult = 6 } },
    loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult } }
	end,
    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands["Flush House"]) then
            return {
                message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.Xmult } },
				Xmult_mod = card.ability.extra.Xmult
            }
        end
    end
}


SMODS.Joker {
    key = 'gang_joker',
    loc_txt = {
        name = 'The Gang',
        text = {
            "{X:mult,C:white} X#1# {} Mult if played",
            "hand contains",
            "a {C:attention}Flush Five{}"
        }
    },
    blueprint_compat = true,
    perishable_compat = true,
    eternal_compat = true,
    rarity = 3,
    atlas = "Modded_Jokers",
    pos = { x = 2, y = 1 },
    cost = 12,
    unlocked = true,
    discovered = true,
    config = { extra = { Xmult = 5 } },
    loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult } }
	end,
    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands["Flush Five"]) then
            return {
                message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.Xmult } },
				Xmult_mod = card.ability.extra.Xmult
            }
        end
    end
}

SMODS.Joker {
    key = 'yotie_joker',
    loc_txt = {
        name = 'Yotie',
        text = {
            "Retrigger each played {C:attention}Jack{}",
            "{C:attention}3{} additional times"
        }
    },
    blueprint_compat = true,
    perishable_compat = true,
    eternal_compat = true,
    rarity = 4,
    atlas = "Modded_Jokers",
    pos = { x = 3, y = 1 },
    soul_pos = { x = 4, y = 1},
    cost = 12,
    unlocked = true,
    discovered = true,
    config = { extra = 3 },
    loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra } }
	end,
    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play then
            if context.other_card:get_id() == 11 then
                return {
                    repetitions = card.ability.extra,
                    message = "Puff!",
                    card = card
                }
            end
        end
    end
}
