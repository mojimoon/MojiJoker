--- STEAMODDED HEADER
--- MOD_NAME: MojiJoker
--- MOD_ID: MojiJoker
--- MOD_AUTHOR: [Mojimoon]
--- MOD_DESCRIPTION: A collection of custom Jokers by Mojimoon.

----------------------------------------------
------------MOD CODE -------------------------

local MOD_ID = "MojiJoker"
local MOD_VERSION = "1.0.8"

local loc_en = {
    j_moji_color_out_of_space = {
        name = "Color Out of Space",
        text = {
            "Gains {X:mult,C:white}X#1#{} multiplier per",
            "consecutive hand containing {C:attention}#3#{}",
            "Otherwise resets",
            "{C:inactive}(Currently {X:mult,C:white} X#2# {C:inactive} Mult)"
        }
    },
    j_moji_garbage_time = {
        name = "Garbage Time",
        text = {
            "{X:mult,C:white}X#2#{} Mult,",
            "loses {X:mult,C:white}X#1#{} Mult",
            "if more than {C:attention}1{} hands are played",
            "by the end of the round"
        }
    },
    j_moji_new_order = {
        name = "The New Order",
        text = {
            "Gains {X:mult,C:white}X#1#{} Mult when {C:attention}#4#{}",
            "is played and scored",
            "Rank decreases by {C:attention}1{} after each trigger",
            "{C:inactive}(A, K, Q, ..., 2, A)",
            "Loses {X:mult,C:white}X#2#{} Mult",
            "if a hand fails to trigger the New Order",
            "{C:inactive}(Currently {X:mult,C:white} X#3# {C:inactive} Mult)"
        }
    },
    j_moji_quantization = {
        name = "Quantization",
        text = {
            "If at least {C:attention}#3#{} scoring cards",
            "are played in one hand,",
            "gains {C:mult}+#1#{} Mult per scoring card",
            "Otherwise resets",
            "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"
        }
    },
    j_moji_satellite_payment = {
        name = "Satellite Payment",
        text = {
            "All items in shop are {C:money}$#1#{} cheaper",
            "per unique {C:planet} planet card used this run",
            "{C:inactive}(Price cannot go below {C:money}$1{C:inactive})",
            "{C:inactive}(Currently {C:money}-$#2#{C:inactive})"
        }
    },
    j_moji_transcendence = {
        name = "Transcendence",
        text = {
            "Create a copy of {C:tarot}The Hanged Man{}",
            "when {C:attention}Blind{} is selected",
            "{C:inactive}(Must have room)"
        }
    },
    j_moji_calamity_star = {
        name = "Calamity Star",
        text = {
            "Create a copy of {C:tarot}The Star{}",
            "when {C:attention}Blind{} is selected",
            "{C:inactive}(Must have room)"
        }
    },
    j_moji_crescent_moon = {
        name = "Crescent Moon",
        text = {
            "Create a copy of {C:tarot}The Moon{}",
            "when {C:attention}Blind{} is selected",
            "{C:inactive}(Must have room)"
        }
    },
    j_moji_solar_eclipse = {
        name = "Solar Eclipse",
        text = {
            "Create a copy of {C:tarot}The Sun{}",
            "when {C:attention}Blind{} is selected",
            "{C:inactive}(Must have room)"
        }
    },
    j_moji_doomed_world = {
        name = "Doomed World",
        text = {
            "Create a copy of {C:tarot}The World{}",
            "when {C:attention}Blind{} is selected",
            "{C:inactive}(Must have room)"
        }
    },
    j_moji_sisyphus = {
        name = "Sisyphus",
        text = {
            "When {C:attention}Blind{} is selected,",
            "enhances all cards of a randomly chosen",
            "{C:attention}rank{} in your deck to {C:attention}Stone Cards{}",
            "Gains {X:mult,C:white}X#1#{} Mult per Stone Card",
            "created by Sisyphus",
            "{C:inactive}(Currently {X:mult,C:white} X#2# {C:inactive} Mult)"
        }
    },
    j_moji_pursue_the_stars = {
        name = "Pursue the Stars",
        text = {
            "{C:mult}+#1#{} Mult for each",
            "{C:diamonds}#3#{} card, except the first",
            "{C:attention}#4#{} in your full deck",
            "{C:inactive}(Effective suit is used)",
            "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"
        }
    },
    j_moji_embrace_the_moon = {
        name = "Embrace the Moon",
        text = {
            "Earn {C:money}$#1#{}",
            "for every {C:attention}#3#{} {C:clubs}#2#{} card",
            "in the remaining deck",
            "at the end of the round",
            "{C:inactive}(Effective suit is used)",
            "{C:inactive}(Currently {C:money}$#4#{C:inactive})"
        }
    },
    j_moji_hold_the_sun = {
        name = "Hold the Sun",
        text = {
            "Once per round,",
            "{C:attention}upgrade{} the played poker hand",
            "if a {C:hearts}#1#{} card is played and scored"
        }
    },
    j_moji_salvage_the_world = {
        name = "Salvage the World",
        text = {
            "{C:chips}+#1#{} Chips",
            "per {C:spades}#2#{} card in your hand"
        }
    },
    j_moji_well_laid_plans = {
        name = "Well-Laid Plans",
        text = {
            "{C:attention}Upgrade{} level of played poker hand",
            "if it is a {C:attention}#1#{}",
            "Poker hand changes after each {C:attention}discard{}"
        }
    },
    j_moji_binoculars = {
        name = "Binoculars",
        text = {
            "When a {C:planet} planet card is used,",
            "use it {C:attention}#1#{} more time"
        }
    },
    j_moji_tax_collector = {
        name = "Tax Collector",
        text = {
            "Earn {C:blue}$#1#{}/{C:green}$#2#{}/{C:red}$#3#{}/{C:legendary}$#4#{}",
            "for each Joker based on its rarity",
            "at the end of the round",
            "{C:inactive}(Currently {C:money}$#5#{C:inactive})"
        }
    },
    j_moji_rocket_test = {
        name = "Rocket Test",
        text = {
            "Each enabled {C:attention}Mod{}",
            "gives {X:mult,C:white}X#1#{} Mult",
            "{C:inactive}(Currently {X:mult,C:white} X#2# {C:inactive} Mult)"
        }
    },
    j_moji_now_printing = {
        name = "Now Printing",
        text = {
            "Add {C:dark_edition}Foil{}, {C:dark_edition}Holographic{}, or",
            "{C:dark_edition}Polychrome{} edition to a random Joker",
            "for the next {C:attention}#1#{} times",
            "a {C:attention}Blind{} is selected",
            "{C:inactive}(Now Printing will be excluded)"
        }
    },
    j_moji_stamp_collection = {
        name = "Stamp Collection",
        text = {
            "{X:mult,C:white}X#1#{} Mult per",
            "Joker with a {C:dark_edition}edition{}",
            "{X:mult,C:white}X#2#{} Mult per",
            "unique {C:dark_edition}edition{}"
        }
    },
    j_moji_free_refill = {
        name = "Free Refill",
        text = {
            "When {C:attention}Blind{} is selected,",
            "create random Jokers",
            "until all slots are filled",
            "Lose {C:money}$#1#{} when selling a Joker"
        }
    },
    j_moji_safety_net = {
        name = "Saftey Net",
        text = {
            "Gains {C:chips}+#1#{} Chips",
            "for each unused {C:red}discard{}",
            "at the end of the round"
        }
    },
    j_moji_luxury_tax = {
        name = "Luxury Tax",
        text = {
            "{C:blue}+#1#{} hand size",
            "{C:red}-#3#{} hand size for",
            "every {C:money}$#2#{} you have",
            "{C:inactive}(Currently {C:attention}+#4#{C:inactive},",
            "minimum {C:attention}+#5#{C:inactive})"
        }
    },
    j_moji_vacant_seat = {
        name = "Vacant Seat",
        text = {
            "{C:red}-#1#{} hand size",
            "{C:mult}+#2#{} Mult per hand size",
            "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult)"
        }
    },
    j_moji_return_on_investment = {
        name = "Return on Investment",
        text = {
            "Gains {C:mult}+#1#{} Mult",
            "for every {C:money}$1{} interest earned",
            "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"
        }
    },
    j_moji_world_heritage = {
        name = "World Heritage",
        text = {
            "Gains {X:mult,C:white}X#1#{} Mult per card discarded",
            "Loses {X:mult,C:white}X#2#{} Mult per card played",
            "{C:inactive}(Currently {X:mult,C:white} X#3# {C:inactive} Mult)"
        }
    },
    j_moji_neutron_star = {
        name = "Neutron Star",
        text = {
            "{C:chips}+#1#{} Chips",
            "per the number of times",
            "the {C:attention}poker hand{} has been played"
        }
    },
    j_moji_hell = {
        name = "The Hell",
        text = {
            "After defeating a {C:attention}Boss Blind{}",
            "with a score of at least {X:black,C:white}#1#X{} requirement,",
            "this card is destroyed",
            "and reduces the ante by {C:red}-#2#{}",
            "The higher the score,",
            "the more the ante is reduced",
            "{C:inactive}(Avici awaits whoever copies this card)"
        }
    },
    j_moji_four_color_theorem = {
        name = "Four Color Theorem",
        text = {
            "{X:mult,C:white}X#1#{} Mult",
            "per unique {C:attention}suit{}",
            "among the played and scored cards"
        }
    },
    j_moji_these_are_the_odds = {
        name = "These Are the Odds",
        text = {
            "After defeating a {C:attention}Boss Blind{}",
            "with a score of at least {X:black,C:white}#1#X{} requirement,",
            "create {C:attention}#2#{} random",
            "{C:dark_edition}negative{} Joker",
            "The higher the score,",
            "the more Jokers are created",
            "{C:inactive}(Materialism confines whoever copies this card)"
        }
    },
    j_moji_startup_capital = {
        name = "Startup Capital",
        text = {
            "After defeating a {C:attention}Boss Blind{}",
            "sell this card to earn {C:money}$#1#{}"
        }
    },
    j_moji_rebate = {
        name = "Rebate",
        text = {
            "Earn {C:money}$#1#{}",
            "at the end of the round",
            "for each {C:voucher}Voucher{} purchased this run",
            "{C:inactive}(Currently {C:money}$#2#{C:inactive})"
        }
    },
    j_moji_colorful_galaxy = {
        name = "Colorful Galaxy",
        text = {
            "{C:green}#1# in #2#{} chance to",
            "add {C:dark_edition}edition{} to a random",
            "{C:attention}Joker{} after playing a hand",
            "The possibility is multiplied by {C:green}#3#{}",
            "per unique {C:attention}suit{}",
            "among the played and scored cards"
        }
    },
    j_moji_contrasting_colors = {
        name = "Contrasting Colors",
        text = {
            "Gains {C:chips}+#1#{} Chips",
            "if a hand contains a {C:attention}#3#{}",
            "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)"
        }
    },
    j_moji_acrobatics = {
        name = "Acrobatics",
        text = {
            "{C:attention}+#1#{} hand size",
            "after each {C:red}discard{}",
            "Resets after {C:blue}playing{} a hand"
        }
    },
    j_moji_buy_one_get_one_free = {
        name = "Buy One Get One Free",
        text = {
            "Create a random {C:planet}Planet{} card",
            "when you spend at least {C:money}$#1#{}",
            "{C:inactive}(Must have room)"
        }
    },
    j_moji_last_ditch_effort = {
        name = "Last-Ditch Effort",
        text = {
            "Apply {C:dark_edition}Eternal{}",
            "to the Joker on the left",
            "when {C:attention}Blind{} is selected",
            "Gains {X:mult,C:white}X#1#{} Mult",
            "for each {C:dark_edition}Eternal{} applied",
            "{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)"
        }
    },
    j_moji_pawn_shop = {
        name = "Pawn Shop",
        text = {
            "Pawn Shop is inherently {C:dark_edition}Eternal{}",
            "{C:attention}+#1#{} Joker slot",
            "for each {C:dark_edition}Eternal{} Joker",
            "you have"
        }
    },
    j_moji_what_if = {
        name = "What If ... ?",
        text = {
            "Destroy the Joker on the right,",
            "gains {X:mult,C:white}X#1#{} Mult",
            "and apply a random effect",
            "based on its rarity and edition",
            "when {C:attention}Blind{} is selected",
            "{C:inactive}(Fortune, Space, Power, Luck)",
            "{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)"
        }
    },
}

local loc_zh = {
    j_moji_color_out_of_space = {
        name = "星之彩",
        text = {
            "连续打出包含{C:attention}#3#{}的牌时，",
            "获得{X:mult,C:white}X#1#{}倍率",
            "否则重置倍率",
            "{C:inactive}（当前为{X:mult,C:white} X#2# {C:inactive}倍率）"
        }
    },
    j_moji_garbage_time = {
        name = "垃圾时间",
        text = {
            "{X:mult,C:white}X#2#{}倍率",
            "若回合结束时，",
            "所用出牌次数超过{C:attention}1{}，",
            "失去{X:mult,C:white}X#1#{}倍率"
        }
    },
    j_moji_new_order = {
        name = "新秩序",
        text = {
            "打出{C:attention}#4#{}并计分时，",
            "获得{X:mult,C:white}X#1#{}倍率",
            "每次触发后目标点数{C:attention}-1{}",
            "{C:inactive}（A、K、Q、……、2、A）",
            "若一次出牌未触发新秩序，",
            "失去{X:mult,C:white}X#2#{}倍率",
            "{C:inactive}（当前为{X:mult,C:white} X#3# {C:inactive}倍率）"
        }
    },
    j_moji_quantization = {
        name = "量(子)化",
        text = {
            "同时打出至少{C:attention}#3#{}张计分牌时，",
            "每有1张计分牌，获得{C:mult}+#1#{}倍率",
            "否则重置倍率",
            "{C:inactive}（当前为{C:mult}+#2#{C:inactive}倍率）"
        }
    },
    j_moji_satellite_payment = {
        name = "卫星支付",
        text = {
            "本局游戏每使用过一种{C:planet}星球牌",
            "所有商品价格降低{C:money}$#1#{}",
            "{C:inactive}（价格不会低于{C:money}$1{C:inactive}）",
            "{C:inactive}（当前为{C:money}-$#2#{C:inactive}）"
        }
    },
    j_moji_transcendence = {
        name = "超凡升天",
        text = {
            "选择{C:attention}盲注{}后",
            "生成一张{C:tarot}倒吊人{}",
            "{C:inactive}（必须有空位）"
        }
    },
    j_moji_calamity_star = {
        name = "灾星",
        text = {
            "选择{C:attention}盲注{}后",
            "生成一张{C:tarot}星星{}",
            "{C:inactive}（必须有空位）"
        }
    },
    j_moji_crescent_moon = {
        name = "残月",
        text = {
            "选择{C:attention}盲注{}后",
            "生成一张{C:tarot}月亮{}",
            "{C:inactive}（必须有空位）"
        }
    },
    j_moji_solar_eclipse = {
        name = "日食",
        text = {
            "选择{C:attention}盲注{}后",
            "生成一张{C:tarot}太阳{}",
            "{C:inactive}（必须有空位）"
        }
    },
    j_moji_doomed_world = {
        name = "末世",
        text = {
            "选择{C:attention}盲注{}后",
            "生成一张{C:tarot}世界{}",
            "{C:inactive}（必须有空位）"
        }
    },
    j_moji_sisyphus = {
        name = "西西弗斯",
        text = {
            "选择{C:attention}盲注{}后",
            "随机选择一种{C:attention}点数{}",
            "将牌组中该点数的牌",
            "增强为{C:attention}石头牌{}",
            "西西弗斯每创建1张石头牌，",
            "获得{X:mult,C:white}X#1#{}倍率",
            "{C:inactive}（当前为{X:mult,C:white} X#2# {C:inactive}倍率）"
        }
    },
    j_moji_pursue_the_stars = {
        name = "逐星",
        text = {
            "完整牌组中的{C:diamonds}#3#{}牌",
            "每比{C:attention}#4#{}张多1张，",
            "提供{C:mult}+#1#{}倍率",
            "{C:inactive}（按有效花色计算）",
            "{C:inactive}（当前为{C:mult}+#2#{C:inactive}倍率）"
        }
    },
    j_moji_embrace_the_moon = {
        name = "捧月",
        text = {
            "回合结束时，剩余牌组中",
            "每有{C:attention}#3#{}张{C:clubs}#2#{}牌，",
            "获得{C:money}$#1#{}",
            "{C:inactive}（按有效花色计算）",
            "{C:inactive}（当前为{C:money}$#4#{C:inactive}）"
        }
    },
    j_moji_hold_the_sun = {
        name = "执日",
        text = {
            "每回合首次",
            "打出{C:hearts}#1#{}牌并计分时，",
            "{C:attention}升级{}出牌牌型"
        }
    },
    j_moji_salvage_the_world = {
        name = "救世",
        text = {
            "手牌中的每张{C:spades}#2#{}牌",
            "提供{C:chips}+#1#{}筹码"
        }
    },
    j_moji_well_laid_plans = {
        name = "计划妥当",
        text = {
            "若出牌牌型为{C:attention}#1#{}，",
            "将其{C:attention}升级{}",
            "每次{C:attention}弃牌{}后牌型都会改变"
        }
    },
    j_moji_binoculars = {
        name = "双筒望远镜",
        text = {
            "使用{C:planet}星球牌{}时，",
            "再使用{C:attention}#1#{}次"
        }
    },
    j_moji_tax_collector = {
        name = "税收官",
        text = {
            "回合结束时，",
            "每张普通/罕见/稀有/传奇小丑牌",
            "分别提供{C:blue}$#1#{}/{C:green}$#2#{}/{C:red}$#3#{}/{C:legendary}$#4#{}",
            "{C:inactive}（当前为{C:money}$#5#{C:inactive}）"
        }
    },
    j_moji_rocket_test = {
        name = "火箭试验",
        text = {
            "每个启用的{C:attention}Mod{}",
            "提供{X:mult,C:white}X#1#{}倍率",
            "{C:inactive}（当前为{X:mult,C:white} X#2# {C:inactive}倍率）"
        }
    },
    j_moji_now_printing = {
        name = "印刷中",
        text = {
            "下{C:attention}#1#{}次选择{C:attention}盲注{}后，",
            "给一张随机小丑牌添加",
            "{C:dark_edition}闪箔{}、{C:dark_edition}镭射{}或{C:dark_edition}多彩{}版本",
            "{C:inactive}（不会添加给印刷中）"
        }
    },
    j_moji_stamp_collection = {
        name = "集邮",
        text = {
            "每张带{C:dark_edition}版本{}的小丑牌",
            "提供{X:mult,C:white}X#1#{}倍率",
            "每种不同的{C:dark_edition}版本{}",
            "提供{X:mult,C:white}X#2#{}倍率"
        }
    },
    j_moji_free_refill = {
        name = "免费续杯",
        text = {
            "选择{C:attention}盲注{}后，",
            "生成随机小丑牌",
            "直到没有空位",
            "出售小丑牌时失去{C:money}$#1#{}"
        }
    },
    j_moji_safety_net = {
        name = "安全网",
        text = {
            "回合结束时，",
            "每有1次未使用的{C:red}弃牌{}次数，",
            "获得{C:chips}+#1#{}筹码",
            "{C:inactive}（当前为{C:chips}+#2#{C:inactive}筹码）"
        }
    },
    j_moji_luxury_tax = {
        name = "奢侈税",
        text = {
            "手牌上限{C:blue}+#1#",
            "每有{C:money}$#2#{}，手牌上限{C:red}-#3#{}",
            "{C:inactive}（当前为{C:attention}+#4#{C:inactive}，最少为{C:attention}+#5#{C:inactive}）"
        }
    },
    j_moji_vacant_seat = {
        name = "虚位以待",
        text = {
            "手牌上限{C:red}-#1#",
            "每有1手牌上限，",
            "提供{C:mult}+#2#{}倍率",
            "{C:inactive}（当前为{C:mult}+#3#{C:inactive}倍率）"
        }
    },
    j_moji_return_on_investment = {
        name = "投资回报率",
        text = {
            "每获得{C:money}$1{}利息，",
            "获得{C:mult}+#1#{}倍率",
            "{C:inactive}（当前为{C:mult}+#2#{C:inactive}倍率）"
        }
    },
    j_moji_world_heritage = {
        name = "世界遗产",
        text = {
            "每弃1张牌，获得{X:mult,C:white}X#1#{}倍率",
            "每出1张牌，失去{X:mult,C:white}X#2#{}倍率",
            "{C:inactive}（当前为{X:mult,C:white} X#3# {C:inactive}倍率）"
        }
    },
    j_moji_neutron_star = {
        name = "中子星",
        text = {
            "{C:attention}出牌牌型{}每被",
            "打出过1次，",
            "提供{C:chips}+#1#{}筹码"
        }
    },
    j_moji_hell = {
        name = "地狱",
        text = {
            "以至少{X:black,C:white}#1#X{}分数要求",
            "击败{C:attention}Boss盲注{}后，",
            "自毁并使底注{C:red}-#2#{}",
            "分数越高，",
            "减少的底注越多",
            "{C:inactive}（复制此牌者将陷入无间地狱）"
        }
    },
    j_moji_four_color_theorem = {
        name = "四色定理",
        text = {
            "打出并计分的牌中",
            "每种不同的{C:attention}花色{}",
            "提供{X:mult,C:white}X#1#{}倍率"
        }
    },
    j_moji_these_are_the_odds = {
        name = "此即可能",
        text = {
            "以至少{X:black,C:white}#1#X{}分数要求",
            "击败{C:attention}Boss盲注{}后，",
            "生成#2#张带{C:dark_edition}负片{}的",
            "随机小丑牌",
            "分数越高，",
            "生成的小丑牌越多",
            "{C:inactive}（复制此牌者将囿于物质）"
        }
    },
    j_moji_startup_capital = {
        name = "启动资金",
        text = {
            "击败{C:attention}Boss盲注{}后，",
            "出售此牌获得{C:money}$#1#{}"
        }
    },
    j_moji_rebate = {
        name = "返现",
        text = {
            "本局游戏每购买过",
            "1张{C:voucher}优惠券{}，",
            "回合结束时获得{C:money}$#1#{}",
            "{C:inactive}（当前为{C:money}$#2#{C:inactive}）"
        }
    },
    j_moji_colorful_galaxy = {
        name = "多彩银河",
        text = {
            "每次出牌时，",
            "有{C:green}#1#/#2#{}几率",
            "给一张随机{C:attention}小丑牌",
            "添加{C:dark_edition}版本{}",
            "打出并计分的牌中，",
            "每种不同的{C:attention}花色{}",
            "使上述概率乘以{C:green}#3#{}"
        }
    },
    j_moji_contrasting_colors = {
        name = "撞色",
        text = {
            "若打出的牌中有{C:attention}#3#{}，",
            "获得{C:chips}+#1#{}筹码",
            "{C:inactive}（当前为{C:chips}+#2#{C:inactive}筹码）"
        }
    },
    j_moji_acrobatics = {
        name = "杂技",
        text = {
            "每次{C:red}弃牌{}后，",
            "手牌上限{C:attention}+#1#{}",
            "每次{C:blue}出牌{}后重置",
        }
    },
    j_moji_buy_one_get_one_free = {
        name = "买一送一",
        text = {
            "每当你消费至少{C:money}$#1#{}时，",
            "生成一张随机的{C:planet}星球牌",
            "{C:inactive}（必须有空位）"
        }
    },
    j_moji_last_ditch_effort = {
        name = "最后一搏",
        text = {
            "选择{C:attention}盲注{}后，",
            "为左侧的小丑牌添加{C:dark_edition}永恒{}",
            "每成功添加1次，",
            "获得{X:mult,C:white}X#1#{}倍率",
            "{C:inactive}（当前为{X:mult,C:white}X#2#{C:inactive}倍率）"
        }
    },
    j_moji_pawn_shop = {
        name = "典当行",
        text = {
            "本牌自动获得{C:dark_edition}永恒{}",
            "每有一张{C:dark_edition}永恒{}小丑牌，",
            "小丑牌槽位{C:attention}+#1#{}"
        }
    },
    j_moji_what_if = {
        name = "假如……？",
        text = {
            "选择{C:attention}盲注{}后，",
            "摧毁右侧的小丑牌",
            "获得{X:mult,C:white}X#1#{}倍率",
            "并根据其稀有度和版本",
            "获得随机效果",
            "{C:inactive}（财富、空间、力量、幸运）",
            "{C:inactive}（当前为{X:mult,C:white}X#2#{C:inactive}倍率）"
        }
    },
}

local misc_loc_en = {
    k_timeup = "Time's up!",
    k_printed = "Prototype printed!",
}

local misc_loc_zh = {
    k_timeup = "时间到！",
    k_printed = "打样成功！",
    k_what_if_double_joker_slot = '小丑牌槽位 X2',
    k_what_if_add_joker_slot = '小丑牌槽位 +1',
    k_what_if_add_consumeable_slot = '消耗牌槽位 +1',
    k_what_if_add_shop_card_slot = '商店卡牌槽位 +1',
    k_what_if_sub_shop_card_slot = '商店卡牌槽位 -1',
    k_what_if_double_interest_cap = '利息上限 X2',
    k_what_if_add_hand_size = '手牌上限 +1',
    k_what_if_sub_hand_size = '手牌上限 -1',
    k_what_if_add_hand = '出牌次数 +1',
    k_what_if_add_discard = '弃牌次数 +1',
    k_what_if_edition_negative = '负片',
    k_what_if_edition_polychrome = '多彩',
    k_what_if_edition_holo = '镭射',
    k_what_if_edition_foil = '闪箔',
    k_what_if_sub_ante = '底注 -#1#',
    k_what_if_random_negative_joker = '随机负片小丑',
    k_what_if_voucher_tag = '优惠券标签',
    k_what_if_double_tag = '双倍标签',
    k_what_if_destroy_random_joker = '摧毁随机小丑',
    k_what_if_duplicate_random_joker = '复制随机小丑',
    k_what_if_duplicate_random_joker_until_full = '复制随机小丑至满',
    k_what_if_add_win_ante = '获胜所需底注 +1',
    k_what_if_destory_playing_card = '摧毁游戏牌',
    k_what_if_duplicate_playing_card = '复制游戏牌',
    k_what_if_double_growth = '本牌成长 X2',
}

local loc_txt = G.SETTINGS.language == "zh_CN" and loc_zh or loc_en
local misc_loc_txt = G.SETTINGS.language == "zh_CN" and misc_loc_zh or misc_loc_en

local jokers = {
    j_moji_color_out_of_space = {
        ability_name = "Color Out of Space",
        slug = "moji_color_out_of_space",
        ability = {extra = {Xmult_add = 0.5, type = 'Flush'}},
        rarity = 2,
        cost = 7,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_garbage_time = {
        ability_name = "Garbage Time",
        slug = "moji_garbage_time",
        ability = {Xmult = 3.5, extra = {Xmult_sub = 0.5}},
        rarity = 2,
        cost = 7,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = false
    },
    j_moji_new_order = {
        ability_name = "The New Order",
        slug = "moji_new_order",
        ability = {extra = {Xmult_add = 0.15, Xmult_sub = 0.1, rank = 14}},
        rarity = 3,
        cost = 8,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_quantization = {
        ability_name = "Quantization",
        slug = "moji_quantization",
        ability = {extra = {mult_add = 1, min_cards = 3}},
        rarity = 2,
        cost = 6,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_satellite_payment = {
        ability_name = "Satellite Payment",
        slug = "moji_satellite_payment",
        ability = {extra = {price_sub = 1, planets_used = 0}},
        rarity = 2,
        cost = 6,
        unlocked = true, discovered = true, blueprint_compat = false, eternal_compat = true
    },
    j_moji_transcendence = {
        ability_name = "Transcendence",
        slug = "moji_transcendence",
        ability = {},
        rarity = 1,
        cost = 5,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_calamity_star = {
        ability_name = "Calamity Star",
        slug = "moji_calamity_star",
        ability = {},
        rarity = 1,
        cost = 5,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_crescent_moon = {
        ability_name = "Crescent Moon",
        slug = "moji_crescent_moon",
        ability = {},
        rarity = 1,
        cost = 5,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_solar_eclipse = {
        ability_name = "Solar Eclipse",
        slug = "moji_solar_eclipse",
        ability = {},
        rarity = 1,
        cost = 5,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_doomed_world = {
        ability_name = "Doomed World",
        slug = "moji_doomed_world",
        ability = {},
        rarity = 1,
        cost = 5,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_sisyphus = {
        ability_name = "Sisyphus",
        slug = "moji_sisyphus",
        ability = {extra = {Xmult_add = 0.15}},
        rarity = 3,
        cost = 9,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_pursue_the_stars = {
        ability_name = "Pursue the Stars",
        slug = "moji_pursue_the_stars",
        ability = {extra = {mult = 5, suit = 'Diamonds', diff_base = 13}},
        rarity = 2,
        cost = 6,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_embrace_the_moon = {
        ability_name = "Embrace the Moon",
        slug = "moji_embrace_the_moon",
        ability = {extra = {dollars = 2, per = 3, suit = 'Clubs', trigger_cnt = 0}},
        rarity = 2,
        cost = 7,
        unlocked = true, discovered = true, blueprint_compat = false, eternal_compat = true
    },
    j_moji_hold_the_sun = {
        ability_name = "Hold the Sun",
        slug = "moji_hold_the_sun",
        ability = {extra = {suit = 'Hearts', trigger_hand = -1}},
        rarity = 2,
        cost = 6,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_salvage_the_world = {
        ability_name = "Salvage the World",
        slug = "moji_salvage_the_world",
        ability = {extra = {chips = 100, suit = 'Spades', trigger_cnt = 0}},
        rarity = 2,
        cost = 7,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_well_laid_plans = {
        ability_name = "Well-Laid Plans",
        slug = "moji_well_laid_plans",
        ability = {extra = {poker_hand = 'High Card'}},
        rarity = 2,
        cost = 8,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_binoculars = {
        ability_name = "Binoculars",
        slug = "moji_binoculars",
        ability = {extra = {repeat_times = 1}},
        rarity = 1,
        cost = 5,
        unlocked = true, discovered = true, blueprint_compat = false, eternal_compat = true
    },
    j_moji_tax_collector = {
        ability_name = "Tax Collector",
        slug = "moji_tax_collector",
        ability = {extra = {dollars = 1}},
        rarity = 2,
        cost = 7,
        unlocked = true, discovered = true, blueprint_compat = false, eternal_compat = true
    },
    j_moji_rocket_test = {
        ability_name = "Rocket Test",
        slug = "moji_rocket_test",
        ability = {},
        rarity = 3,
        cost = 9,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_now_printing = {
        ability_name = "Now Printing",
        slug = "moji_now_printing",
        ability = {extra = {times = 2}},
        rarity = 3,
        cost = 8,
        unlocked = true, discovered = true, blueprint_compat = false, eternal_compat = false
    },
    j_moji_stamp_collection = {
        ability_name = "Stamp Collection",
        slug = "moji_stamp_collection",
        ability = {extra = {Xmult = 1.5, unique_Xmult = 1.5, seen = {}, final_xmult = 1}},
        rarity = 3,
        cost = 9,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_free_refill = {
        ability_name = "Free Refill",
        slug = "moji_free_refill",
        ability = {extra = {dollars_lose = 3}},
        rarity = 2,
        cost = 8,
        unlocked = true, discovered = true, blueprint_compat = false, eternal_compat = true
    },
    j_moji_safety_net = {
        ability_name = "Safety Net",
        slug = "moji_safety_net",
        ability = {extra = {chips = 30, chips_add = 15}},
        rarity = 1,
        cost = 5,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_luxury_tax = {
        ability_name = "Luxury Tax",
        slug = "moji_luxury_tax",
        ability = {extra = {hand_size = 3, per = 20, hand_size_sub = 1, min_hand_size = 0, cur_hand_size = 0}},
        rarity = 1,
        cost = 5,
        unlocked = true, discovered = true, blueprint_compat = false, eternal_compat = true
    },
    j_moji_vacant_seat = {
        ability_name = "Vacant Seat",
        slug = "moji_vacant_seat",
        ability = {extra = {hand_size = -1, mult = 10}},
        rarity = 2,
        cost = 6,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_return_on_investment = {
        ability_name = "Return on Investment",
        slug = "moji_return_on_investment",
        ability = {extra = {mult_add = 1}},
        rarity = 2,
        cost = 6,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_world_heritage = {
        ability_name = "World Heritage",
        slug = "moji_world_heritage",
        ability = {extra = {Xmult_sub = 0.02, Xmult_add = 0.04}},
        rarity = 2,
        cost = 7,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_neutron_star = {
        ability_name = "Neutron Star",
        slug = "moji_neutron_star",
        ability = {extra = {chips = 12}},
        rarity = 1,
        cost = 5,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_hell = {
        ability_name = "The Hell",
        slug = "moji_hell",
        ability = {extra = {score = 2, ante = 1}},
        rarity = 3,
        cost = 10,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = false
    },
    j_moji_four_color_theorem = {
        ability_name = "Four Color Theorem",
        slug = "moji_four_color_theorem",
        ability = {extra = {Xmult = 1.5}},
        rarity = 2,
        cost = 8,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_these_are_the_odds = {
        ability_name = "These Are the Odds",
        slug = "moji_these_are_the_odds",
        ability = {extra = {score = 2, joker = 1}},
        rarity = 4,
        cost = 20,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_startup_capital = {
        ability_name = "Startup Capital",
        slug = "moji_startup_capital",
        ability = {extra = {dollars = 20, active = false}},
        rarity = 1,
        cost = 1,
        unlocked = true, discovered = true, blueprint_compat = false, eternal_compat = false
    },
    j_moji_rebate = {
        ability_name = "Rebate",
        slug = "moji_rebate",
        ability = {extra = {dollars = 3}},
        rarity = 1,
        cost = 5,
        unlocked = true, discovered = true, blueprint_compat = false, eternal_compat = true
    },
    j_moji_colorful_galaxy = {
        ability_name = "Colorful Galaxy",
        slug = "moji_colorful_galaxy",
        ability = {extra = {odds = 81, mult = 3}},
        rarity = 3,
        cost = 9,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_contrasting_colors = {
        ability_name = "Contrasting Colors",
        slug = "moji_contrasting_colors",
        ability = {extra = {chips = 20, chips_add = 10, type = 'Flush'}},
        rarity = 1,
        cost = 5,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_acrobatics = {
        ability_name = "Acrobatics",
        slug = "moji_acrobatics",
        ability = {extra = {hand_size = 3, cur_hand_size = 0}},
        rarity = 1,
        cost = 4,
        unlocked = true, discovered = true, blueprint_compat = false, eternal_compat = true
    },
    j_moji_buy_one_get_one_free = {
        ability_name = "Buy One Get One Free",
        slug = "moji_buy_one_get_one_free",
        ability = {extra = {dollars_min = 4}},
        rarity = 2,
        cost = 6,
        unlocked = true, discovered = true, blueprint_compat = false, eternal_compat = true
    },
    j_moji_last_ditch_effort = {
        ability_name = "Last-Ditch Effort",
        slug = "moji_last_ditch_effort",
        ability = {extra = {Xmult_add = 0.5}},
        rarity = 2,
        cost = 7,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_pawn_shop = {
        ability_name = "Pawn Shop",
        slug = "moji_pawn_shop",
        ability = {extra = {slot = 1, cur_slot = 0}},
        rarity = 3,
        cost = 12,
        unlocked = true, discovered = true, blueprint_compat = false, eternal_compat = true
    },
    j_moji_what_if = {
        ability_name = "What If",
        slug = "moji_what_if",
        ability = {extra = {Xmult_add = 0.5}},
        rarity = 3,
        cost = 12,
        unlocked = true, discovered = true, blueprint_compat = false, eternal_compat = true
    }
}

local rank_to_str = {
    [2] = "2",
    [3] = "3",
    [4] = "4",
    [5] = "5",
    [6] = "6",
    [7] = "7",
    [8] = "8",
    [9] = "9",
    [10] = "10",
    [11] = "J",
    [12] = "Q",
    [13] = "K",
    [14] = "A"
}

-- General helper functions
function rank_dec(rank)
    return rank == 2 and 14 or rank - 1
end

function count_used_consumeables(set)
    local count = 0
    for k, v in pairs(G.GAME.consumeable_usage) do 
        if v.set == set then
            count = count + 1
        end 
    end
    return count
end

function count_used_vouchers()
    if not G.GAME.used_vouchers then return 0 end
    local count = 0
    for k, v in pairs(G.GAME.used_vouchers) do
        if v == true then
            count = count + 1
        end
    end
    return count
end

function count_base_suit(cards, suit)
    local count = 0
    for k, v in pairs(cards) do
        if v.base.suit == suit and v.ability.effect ~= 'Stone Card' then
            count = count + 1
        end
    end
    return count
end

function count_suit(cards, suit)
    local count = 0
    for k, v in pairs(cards) do
        if v:is_suit(suit) then
            count = count + 1
        end
    end
    return count
end

function round(num, numDecimalPlaces)
    local mult = 10^(numDecimalPlaces or 0)
    return math.floor(num * mult + 0.5) / mult
end

-- Joker-specific helper functions
function well_laid_plans_choose(old_hand)
    local _poker_hands = {}
    for k, v in pairs(G.GAME.hands) do
        if v.visible and k ~= old_hand then
            _poker_hands[#_poker_hands + 1] = k
        end
    end
    return pseudorandom_element(_poker_hands, pseudoseed('well_laid_plans'))
end

function tax_collector_count()
    local tax = 0
    for i = 1, #G.jokers.cards do
        tax = tax + (G.jokers.cards[i].config.center.rarity or 1)
    end
    return tax
end

function rocket_test_calculate()
    local count = #SMODS.MODS or 1
    local Xmult = 2.5 + count * 0.5
    if count >= 16 then Xmult = math.pow(1.05, count - 15) * 10 end
    return Xmult, count
end

function SMODS.INIT.MojiJoker()
    for k, v in pairs(misc_loc_txt) do
        G.localization.misc.dictionary[k] = v
    end

    init_localization()

    for k, v in pairs(jokers) do
        local joker = SMODS.Joker:new(
            v.ability_name,
            v.slug,
            v.ability,
            {x = 0, y = 0},
            loc_txt[k],
            v.rarity,
            v.cost,
            v.unlocked, v.discovered, v.blueprint_compat, v.eternal_compat
        )
        joker:register()
        local sprite = SMODS.Sprite:new(
            "j_" .. v.slug,
            SMODS.findModByID(MOD_ID).path,
            "j_" .. v.slug .. ".png",
            71, 95, "asset_atli"
        )
        sprite:register()
    end

    -- Color Out of Space
    SMODS.Jokers.j_moji_color_out_of_space.calculate = function(self, context)
        if context.before and not context.blueprint then
            if next(context.poker_hands[self.ability.extra.type]) then
                self.ability.x_mult = self.ability.x_mult + self.ability.extra.Xmult_add
                return {
                    message = localize{type='variable',key='a_xmult',vars={self.ability.extra.Xmult_add}},
                    colour = G.C.MULT,
                    card = self
                }
            else
                if self.ability.x_mult > 1 then
                    self.ability.x_mult = 1
                    return {
                        card = self,
                        message = localize('k_reset')
                    }
                end
            end
        end
    end

    SMODS.Jokers.j_moji_color_out_of_space.loc_def = function(card)
        return {card.ability.extra.Xmult_add, card.ability.x_mult, localize(card.ability.extra.type, 'poker_hands')}
    end

    -- Garbage Time
    SMODS.Jokers.j_moji_garbage_time.calculate = function(self, context)
        if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
            if G.GAME.current_round.hands_played > 1 then
                local new_mult = self.ability.x_mult - self.ability.extra.Xmult_sub
                if new_mult <= 1 then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            play_sound('tarot1')
                            self.T.r = -0.2
                            self:juice_up(0.3, 0.4)
                            self.states.drag.is = true
                            self.children.center.pinch.x = true
                            G.E_MANAGER:add_event(Event({hand_trigger = 'after', delay = 0.3, blockable = false,
                                func = function()
                                        G.jokers:remove_card(self)
                                        self:remove()
                                        self = nil
                                    return true; end})) 
                            return true
                        end
                    }))
                    return {
                        message = localize('k_timeup'),
                        colour = G.C.FILTER
                    }
                else
                    self.ability.x_mult = new_mult
                    return {
                        message = localize{type='variable',key='a_xmult_minus',vars={self.ability.extra.Xmult_sub}},
                        colour = G.C.RED,
                        card = self
                    }
                end
            end
        end
    end

    SMODS.Jokers.j_moji_garbage_time.loc_def = function(card)
        return {card.ability.extra.Xmult_sub, card.ability.x_mult}
    end

    -- The New Order
    SMODS.Jokers.j_moji_new_order.calculate = function(self, context)
        if context.before and not context.blueprint then
            local hand_trigger = 0
            for i = 1, #context.scoring_hand do
                if context.scoring_hand[i]:get_id() == self.ability.extra.rank then
                    hand_trigger = hand_trigger + 1
                    self.ability.extra.rank = rank_dec(self.ability.extra.rank)
                end
            end
            if hand_trigger > 0 then
                local add_mult = self.ability.extra.Xmult_add * hand_trigger
                self.ability.x_mult = self.ability.x_mult + add_mult
                return {
                    message = localize{type='variable',key='a_xmult',vars={add_mult}},
                    colour = G.C.MULT,
                    card = self
                }
            else
                self.ability.x_mult = self.ability.x_mult - self.ability.extra.Xmult_sub
                if self.ability.x_mult >= 1 then
                    return {
                        message = localize{type='variable',key='a_xmult_minus',vars={self.ability.extra.Xmult_sub}},
                        colour = G.C.RED,
                        card = self
                    }
                else
                    self.ability.x_mult = 1
                end
            end
        end
    end

    SMODS.Jokers.j_moji_new_order.loc_def = function(card)
        return {card.ability.extra.Xmult_add, card.ability.extra.Xmult_sub, card.ability.x_mult, rank_to_str[card.ability.extra.rank]}
    end

    -- Quantization
    SMODS.Jokers.j_moji_quantization.calculate = function(self, context)
        if context.before and not context.blueprint then
            if #context.scoring_hand >= self.ability.extra.min_cards then
                local add_mult = self.ability.extra.mult_add * #context.scoring_hand
                self.ability.mult = self.ability.mult + add_mult
                return {
                    card = self,
                    message = localize{type='variable',key='a_mult',vars={add_mult}},
                }
            else
                if self.ability.mult > 0 then
                    self.ability.mult = 0
                    return {
                        card = self,
                        message = localize('k_reset')
                    }
                end
            end
        end

        if SMODS.end_calculate_context(context) then
            if self.ability.mult > 0 then
                return {
                    message = localize{type='variable',key='a_mult',vars={self.ability.mult}},
                    colour = G.C.RED,
                    mult_mod = self.ability.mult
                }
            end
        end
    end

    SMODS.Jokers.j_moji_quantization.loc_def = function(card)
        return {card.ability.extra.mult_add, card.ability.mult, card.ability.extra.min_cards}
    end

    -- Satellite Payment
    SMODS.Jokers.j_moji_satellite_payment.calculate = function(self, context)
        if context.using_consumeable and not context.blueprint and context.consumeable.ability.set == 'Planet' then
            self.ability.extra.planets_used = count_used_consumeables('Planet')
            G.E_MANAGER:add_event(Event({func = function()
                for k, v in pairs(G.I.CARD) do
                    if v.set_cost then v:set_cost() end
                end
                return true end }))
        end
    end

    SMODS.Jokers.j_moji_satellite_payment.loc_def = function(card)
        card.ability.extra.planets_used = count_used_consumeables('Planet')
        return {card.ability.extra.price_sub, card.ability.extra.planets_used * card.ability.extra.price_sub}
    end

    -- Transcendence
    SMODS.Jokers.j_moji_transcendence.calculate = function(self, context)
        if context.setting_blind then
            if not (context.blueprint_card or self).getting_sliced and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        G.E_MANAGER:add_event(Event({
                            func = function() 
                                local card = create_card('Tarot',G.consumeables, nil, nil, nil, nil, 'c_hanged_man', nil)
                                card:add_to_deck()
                                G.consumeables:emplace(card)
                                G.GAME.consumeable_buffer = 0
                                return true
                            end}))   
                            card_eval_status_text(context.blueprint_card or self, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
                        return true
                    end)}))
            end
        end
    end

    SMODS.Jokers.j_moji_transcendence.loc_def = function(card)
        return {}
    end

    -- Calamity Star
    SMODS.Jokers.j_moji_calamity_star.calculate = function(self, context)
        if context.setting_blind then
            if not (context.blueprint_card or self).getting_sliced and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        G.E_MANAGER:add_event(Event({
                            func = function() 
                                local card = create_card('Tarot',G.consumeables, nil, nil, nil, nil, 'c_star', nil)
                                card:add_to_deck()
                                G.consumeables:emplace(card)
                                G.GAME.consumeable_buffer = 0
                                return true
                            end}))   
                            card_eval_status_text(context.blueprint_card or self, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
                        return true
                    end)}))
            end
        end
    end

    SMODS.Jokers.j_moji_calamity_star.loc_def = function(card)
        return {}
    end

    -- Crescent Moon
    SMODS.Jokers.j_moji_crescent_moon.calculate = function(self, context)
        if context.setting_blind then
            if not (context.blueprint_card or self).getting_sliced and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        G.E_MANAGER:add_event(Event({
                            func = function() 
                                local card = create_card('Tarot',G.consumeables, nil, nil, nil, nil, 'c_moon', nil)
                                card:add_to_deck()
                                G.consumeables:emplace(card)
                                G.GAME.consumeable_buffer = 0
                                return true
                            end}))   
                            card_eval_status_text(context.blueprint_card or self, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
                        return true
                    end)}))
            end
        end
    end

    SMODS.Jokers.j_moji_crescent_moon.loc_def = function(card)
        return {}
    end

    -- Solar Eclipse
    SMODS.Jokers.j_moji_solar_eclipse.calculate = function(self, context)
        if context.setting_blind then
            if not (context.blueprint_card or self).getting_sliced and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        G.E_MANAGER:add_event(Event({
                            func = function() 
                                local card = create_card('Tarot',G.consumeables, nil, nil, nil, nil, 'c_sun', nil)
                                card:add_to_deck()
                                G.consumeables:emplace(card)
                                G.GAME.consumeable_buffer = 0
                                return true
                            end}))   
                            card_eval_status_text(context.blueprint_card or self, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
                        return true
                    end)}))
            end
        end
    end

    SMODS.Jokers.j_moji_solar_eclipse.loc_def = function(card)
        return {}
    end

    -- Doomed World
    SMODS.Jokers.j_moji_doomed_world.calculate = function(self, context)
        if context.setting_blind then
            if not (context.blueprint_card or self).getting_sliced and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        G.E_MANAGER:add_event(Event({
                            func = function() 
                                local card = create_card('Tarot',G.consumeables, nil, nil, nil, nil, 'c_world', nil)
                                card:add_to_deck()
                                G.consumeables:emplace(card)
                                G.GAME.consumeable_buffer = 0
                                return true
                            end}))   
                            card_eval_status_text(context.blueprint_card or self, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
                        return true
                    end)}))
            end
        end
    end

    SMODS.Jokers.j_moji_doomed_world.loc_def = function(card)
        return {}
    end
    
    -- Sisyphus
    SMODS.Jokers.j_moji_sisyphus.calculate = function(self, context)
        if context.setting_blind and not self.getting_sliced and not context.blueprint then
            local non_stone_cards = {}
            for i = 1, #G.deck.cards do
                if G.deck.cards[i].ability.effect ~= 'Stone Card' then
                    non_stone_cards[#non_stone_cards + 1] = G.deck.cards[i]
                end
            end
            if #non_stone_cards == 0 then return end
            local target_rank = pseudorandom_element(non_stone_cards, pseudoseed('sisyphus')):get_id()
            local stones_created = 0
            for i = 1, #G.deck.cards do
                if G.deck.cards[i]:get_id() == target_rank then
                    if G.deck.cards[i].ability.effect ~= 'Stone Card' then
                        G.deck.cards[i]:set_ability(G.P_CENTERS.m_stone)
                        stones_created = stones_created + 1
                    end
                end
            end
            if stones_created > 0 then
                local add_mult = self.ability.extra.Xmult_add * stones_created
                self.ability.x_mult = self.ability.x_mult + add_mult
                G.E_MANAGER:add_event(Event({func = function()
                    card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_xmult', vars = {add_mult}}, colour = G.C.MULT})
                return true end }))
            end
        end
    end

    SMODS.Jokers.j_moji_sisyphus.loc_def = function(card)
        return {card.ability.extra.Xmult_add, card.ability.x_mult}
    end

    -- Pursue the Stars
    SMODS.Jokers.j_moji_pursue_the_stars.calculate = function(self, context)
        if SMODS.end_calculate_context(context) then
            local diff = count_suit(G.playing_cards, self.ability.extra.suit) - self.ability.extra.diff_base
            if diff > 0 then
                return {
                    message = localize{type='variable',key='a_mult',vars={diff * self.ability.extra.mult}},
                    colour = G.C.MULT,
                    mult_mod = diff * self.ability.extra.mult
                }
            end
        end
    end

    SMODS.Jokers.j_moji_pursue_the_stars.set_ability = function(self, center, initial, delay_sprites)
        self.ability.extra.diff_base = G.GAME.starting_deck_size / 4 or 13
    end

    SMODS.Jokers.j_moji_pursue_the_stars.loc_def = function(card)
        local diff = G.playing_cards and (count_suit(G.playing_cards, card.ability.extra.suit) - card.ability.extra.diff_base) or 0
        return {card.ability.extra.mult, (diff > 0 and diff * card.ability.extra.mult or 0), localize(card.ability.extra.suit, 'suits_singular'), card.ability.extra.diff_base}
    end

    -- Embrace the Moon
    SMODS.Jokers.j_moji_embrace_the_moon.calculate = function(self, context)
        if context.setting_blind and not context.blueprint then
            self.ability.extra.trigger_cnt = 0
        end

        if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
            self.ability.extra.trigger_cnt = count_suit(G.deck.cards, self.ability.extra.suit)
        end
    end

    SMODS.Jokers.j_moji_embrace_the_moon.loc_def = function(card)
        local count = G.deck and count_suit(G.deck.cards, card.ability.extra.suit) or 0
        return {card.ability.extra.dollars, localize(card.ability.extra.suit, 'suits_plural'), card.ability.extra.per, card.ability.extra.dollars * math.floor(count / card.ability.extra.per)}
    end

    -- Hold the Sun
    SMODS.Jokers.j_moji_hold_the_sun.calculate = function(self, context)
        if context.setting_blind and not self.getting_sliced and not context.blueprint then
            self.ability.extra.trigger_hand = -1
        end

        if context.before then
            if self.ability.extra.trigger_hand ~= -1 and G.GAME.current_round.hands_played > self.ability.extra.trigger_hand then return end
            local has_hearts = false
            for i = 1, #context.scoring_hand do
                if context.scoring_hand[i]:is_suit(self.ability.extra.suit) and not context.scoring_hand[i].debuff then
                    has_hearts = true
                    break
                end
            end
            if has_hearts then
                self.ability.extra.trigger_hand = G.GAME.current_round.hands_played
                return {
                    card = self,
                    level_up = true,
                    message = localize('k_level_up_ex')
                }
            end
        end
    end

    SMODS.Jokers.j_moji_hold_the_sun.loc_def = function(card)
        return {localize(card.ability.extra.suit, 'suits_singular')}
    end

    -- Salvage the World
    SMODS.Jokers.j_moji_salvage_the_world.calculate = function(self, context)
        if context.before then
            self.ability.extra.trigger_cnt = 0
        end

        if context.individual and not context.blueprint then
            if context.cardarea == G.hand then
                if context.other_card:is_suit(self.ability.extra.suit) and not context.other_card.debuff then
                    self.ability.extra.trigger_cnt = self.ability.extra.trigger_cnt + 1
                    return {
                        message = localize{type='variable',key='a_chips',vars={self.ability.extra.chips}},
                        colour = G.C.CHIPS,
                        card = context.other_card
                    }
                end
            end
        end

        if SMODS.end_calculate_context(context) then
            if self.ability.extra.trigger_cnt > 0 then
                return {
                    chip_mod = self.ability.extra.chips * self.ability.extra.trigger_cnt
                }
            end
        end
    end

    SMODS.Jokers.j_moji_salvage_the_world.loc_def = function(card)
        return {card.ability.extra.chips, localize(card.ability.extra.suit, 'suits_singular')}
    end

    -- Well-Laid Plans
    SMODS.Jokers.j_moji_well_laid_plans.calculate = function(self, context)
        if context.before then
            if context.scoring_name == self.ability.extra.poker_hand then
                return {
                    card = self,
                    level_up = true,
                    message = localize('k_level_up_ex')
                }
            end
        end

        if context.discard and not context.blueprint and context.other_card == context.full_hand[#context.full_hand] then
            local new_hand = well_laid_plans_choose(self.ability.extra.poker_hand)
            if new_hand then
                self.ability.extra.poker_hand = new_hand
                return {
                    card = self,
                    message = localize(new_hand, 'poker_hands')
                }
            end
        end
    end

    SMODS.Jokers.j_moji_well_laid_plans.set_ability = function(self, center, initial, delay_sprites)
        self.ability.extra.poker_hand = well_laid_plans_choose(nil)
    end

    SMODS.Jokers.j_moji_well_laid_plans.loc_def = function(card)
        return {localize(card.ability.extra.poker_hand, 'poker_hands')}
    end

    -- Binoculars
    SMODS.Jokers.j_moji_binoculars.loc_def = function(card)
        return {card.ability.extra.repeat_times}
    end
    
    -- Tax Collector
    SMODS.Jokers.j_moji_tax_collector.loc_def = function(card)
        local tax = G.jokers and tax_collector_count() or 0
        return {card.ability.extra.dollars, card.ability.extra.dollars * 2, card.ability.extra.dollars * 3, card.ability.extra.dollars * 4, tax * card.ability.extra.dollars}
    end
    
    -- Rocket Test
    SMODS.Jokers.j_moji_rocket_test.calculate = function(self, context)
        if context.before and not context.blueprint then
            local tmp = nil
            self.ability.x_mult, tmp = rocket_test_calculate()
        end
    end

    SMODS.Jokers.j_moji_rocket_test.loc_def = function(card)
        local x_mult, count = rocket_test_calculate()
        return {string.format("%.2f", math.pow(x_mult, 1 / count)), string.format("%.2f", x_mult)}
    end

    -- Now Printing
    SMODS.Jokers.j_moji_now_printing.calculate = function(self, context)
        if context.setting_blind and not context.blueprint and not self.getting_sliced then
            local eligible_cards = {}
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i].ability.name ~= 'Now Printing' and (not G.jokers.cards[i].edition) then
                    eligible_cards[#eligible_cards + 1] = G.jokers.cards[i]
                end
            end
            if #eligible_cards > 0 then
                local card = pseudorandom_element(eligible_cards, pseudoseed('now_printing'))
                local edition = poll_edition('now_printing', nil, true, true)
                card:set_edition(edition, true)
                self.ability.extra.times = self.ability.extra.times - 1
            end
            if self.ability.extra.times == 0 then
                G.E_MANAGER:add_event(Event({func = function()
                    card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_printed'), colour = G.C.FILTER})
                return true end }))
                G.E_MANAGER:add_event(Event({
                    func = function()
                        play_sound('tarot1')
                        self.T.r = -0.2
                        self:juice_up(0.3, 0.4)
                        self.states.drag.is = true
                        self.children.center.pinch.x = true
                        G.E_MANAGER:add_event(Event({hand_trigger = 'after', delay = 1.0, blockable = false,
                            func = function()
                                    G.jokers:remove_card(self)
                                    self:remove()
                                    self = nil
                                return true; end})) 
                        return true
                    end
                }))
            end
        end
    end

    SMODS.Jokers.j_moji_now_printing.loc_def = function(card)
        return {card.ability.extra.times}
    end

    -- Stamp Collection
    SMODS.Jokers.j_moji_stamp_collection.calculate = function(self, context)
        if context.before and not context.blueprint then
            self.ability.extra.seen = {foil = nil, holo = nil, polychrome = nil, negative = nil}
            self.ability.extra.final_xmult = 0
        end

        if context.other_joker then
            if context.other_joker.edition then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        context.other_joker:juice_up(0.5, 0.5)
                        return true
                    end
                }))
                return {
                    message = localize{type='variable',key='a_xmult',vars={self.ability.extra.Xmult}},
                    colour = G.C.MULT,
                    Xmult_mod = self.ability.extra.Xmult
                }
            end
        end

        if SMODS.end_calculate_context(context) then
            if self.ability.extra.final_xmult == 0 then
                local count = 0
                for i = 1, #G.jokers.cards do
                    if G.jokers.cards[i].edition then
                        if G.jokers.cards[i].edition.foil and not self.ability.extra.seen.foil then
                            self.ability.extra.seen.foil = true
                            count = count + 1
                        elseif G.jokers.cards[i].edition.holo and not self.ability.extra.seen.holo then
                            self.ability.extra.seen.holo = true
                            count = count + 1
                        elseif G.jokers.cards[i].edition.polychrome and not self.ability.extra.seen.polychrome then
                            self.ability.extra.seen.polychrome = true
                            count = count + 1
                        elseif G.jokers.cards[i].edition.negative and not self.ability.extra.seen.negative then
                            self.ability.extra.seen.negative = true
                            count = count + 1
                        end
                    end
                end
                self.ability.extra.final_xmult = math.pow(self.ability.extra.unique_Xmult, count)
            end
            if self.ability.extra.final_xmult > 1 then
                return {
                    message = localize{type='variable',key='a_xmult',vars={self.ability.extra.final_xmult}},
                    colour = G.C.RED,
                    Xmult_mod = self.ability.extra.final_xmult
                }
            end
        end
    end

    SMODS.Jokers.j_moji_stamp_collection.loc_def = function(card)
        return {card.ability.extra.Xmult, card.ability.extra.unique_Xmult}
    end

    -- Free Refill
    SMODS.Jokers.j_moji_free_refill.calculate = function(self, context)
        if context.setting_blind and not context.blueprint and not self.getting_sliced then
            local jokers_to_create = math.max(0, G.jokers.config.card_limit - (#G.jokers.cards + G.GAME.joker_buffer))
            if jokers_to_create == 0 then return end
            G.GAME.joker_buffer = G.GAME.joker_buffer + jokers_to_create
            G.E_MANAGER:add_event(Event({
                func = function() 
                    for i = 1, jokers_to_create do
                        local card = create_card('Joker', G.jokers, nil, nil, nil, nil, nil, 'free_refill')
                        card:add_to_deck()
                        G.jokers:emplace(card)
                        card:start_materialize()
                        G.GAME.joker_buffer = 0
                    end
                    return true
                end}))
            card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_plus_joker'), colour = G.C.BLUE}) 
        end
    end

    SMODS.Jokers.j_moji_free_refill.loc_def = function(card)
        return {card.ability.extra.dollars_lose}
    end

    -- Safety Net
    SMODS.Jokers.j_moji_safety_net.calculate = function(self, context)
        if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
            local add_chips = self.ability.extra.chips_add * G.GAME.current_round.discards_left
            if add_chips > 0 then
                self.ability.extra.chips = self.ability.extra.chips + add_chips
                return {
                    message = localize{type='variable',key='a_chips',vars={add_chips}},
                    colour = G.C.CHIPS,
                    card = self
                }
            end
        end

        if SMODS.end_calculate_context(context) then
            return {
                message = localize{type='variable',key='a_chips',vars={self.ability.extra.chips}},
                chip_mod = self.ability.extra.chips, 
                colour = G.C.CHIPS
            }
        end
    end

    SMODS.Jokers.j_moji_safety_net.loc_def = function(card)
        return {card.ability.extra.chips_add, card.ability.extra.chips}
    end

    -- Luxury Tax
    SMODS.Jokers.j_moji_luxury_tax.calculate = function(self, context)
        if context.setting_blind and not context.blueprint and not self.getting_sliced then
            local new_hand_size = math.max(self.ability.extra.hand_size - self.ability.extra.hand_size_sub * (G.GAME.dollars > 0 and math.floor(G.GAME.dollars / self.ability.extra.per) or 0), self.ability.extra.min_hand_size)
            if new_hand_size ~= self.ability.extra.hand_size then
                G.hand:change_size(new_hand_size - self.ability.extra.hand_size)
                self.ability.extra.hand_size = new_hand_size
            end
        end
    end

    SMODS.Jokers.j_moji_luxury_tax.loc_def = function(card)
        local cur_hand_size = math.max(card.ability.extra.hand_size - card.ability.extra.hand_size_sub * (G.GAME.dollars > 0 and math.floor(G.GAME.dollars / card.ability.extra.per) or 0), card.ability.extra.min_hand_size)
        return {card.ability.extra.hand_size, card.ability.extra.per, card.ability.extra.hand_size_sub, cur_hand_size, card.ability.extra.min_hand_size}
    end

    -- Vacant Seat
    SMODS.Jokers.j_moji_vacant_seat.calculate = function(self, context)
        if SMODS.end_calculate_context(context) then
            return {
                message = localize{type='variable',key='a_mult',vars={G.hand.config.card_limit * self.ability.extra.mult}},
                colour = G.C.MULT,
                mult_mod = G.hand.config.card_limit * self.ability.extra.mult
            }
        end
    end

    SMODS.Jokers.j_moji_vacant_seat.loc_def = function(card)
        return {-card.ability.extra.hand_size, card.ability.extra.mult, (G.hand and G.hand.config.card_limit or 0) * card.ability.extra.mult}
    end

    -- Return on Investment
    SMODS.Jokers.j_moji_return_on_investment.calculate = function(self, context)
        if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
            if G.GAME.dollars < 5 then return end
            local interest = G.GAME.interest_amount*math.min(math.floor(G.GAME.dollars/5), G.GAME.interest_cap/5)
            self.ability.mult = self.ability.mult + interest * self.ability.extra.mult_add
            G.E_MANAGER:add_event(Event({func = function()
                card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_mult', vars = {interest * self.ability.extra.mult_add}}, colour = G.C.RED})
            return true end }))
        end

        if SMODS.end_calculate_context(context) then
            if self.ability.mult > 0 then
                return {
                    message = localize{type='variable',key='a_mult',vars={self.ability.mult}},
                    colour = G.C.RED,
                    mult_mod = self.ability.mult
                }
            end
        end
    end

    SMODS.Jokers.j_moji_return_on_investment.loc_def = function(card)
        return {card.ability.extra.mult_add, card.ability.mult}
    end

    -- World Heritage
    SMODS.Jokers.j_moji_world_heritage.calculate = function(self, context)
        if context.before and not context.blueprint then
            local sub_mult = self.ability.extra.Xmult_sub * #context.full_hand
            if self.ability.x_mult - sub_mult < 1 then
                sub_mult = self.ability.x_mult - 1
            end
            self.ability.x_mult = self.ability.x_mult - sub_mult
            return {
                message = localize{type='variable',key='a_xmult_minus',vars={sub_mult}},
                colour = G.C.RED,
                card = self
            }
        end

        if context.discard and not context.blueprint then
            self.ability.x_mult = self.ability.x_mult + self.ability.extra.Xmult_add
            return {
                message = localize{type='variable',key='a_xmult',vars={self.ability.extra.Xmult_add}},
                colour = G.C.MULT,
                card = self
            }
        end
    end

    SMODS.Jokers.j_moji_world_heritage.loc_def = function(card)
        return {card.ability.extra.Xmult_add, card.ability.extra.Xmult_sub, card.ability.x_mult}
    end

    -- Neutron Star
    SMODS.Jokers.j_moji_neutron_star.calculate = function(self, context)
        if SMODS.end_calculate_context(context) then
            return {
                message = localize{type='variable',key='a_chips',vars={G.GAME.hands[context.scoring_name].played * self.ability.extra.chips}},
                colour = G.C.CHIPS,
                chip_mod = G.GAME.hands[context.scoring_name].played * self.ability.extra.chips
            }
        end
    end

    SMODS.Jokers.j_moji_neutron_star.loc_def = function(card)
        return {card.ability.extra.chips}
    end

    -- Hell
    SMODS.Jokers.j_moji_hell.calculate = function(self, context)
        if context.end_of_round and not context.individual and not context.repetition then
            if G.GAME.last_blind and G.GAME.last_blind.boss then
                if G.GAME.blind.chips == math.inf then return end
                local G_GAME_chips = (G.GAME.chips == math.inf and 1.79e308 or G.GAME.chips)
                local score_mult = G_GAME_chips / G.GAME.blind.chips
                if score_mult < self.ability.extra.score then return end
                local ante = math.floor((1 + math.log(math.log(score_mult, self.ability.extra.score), self.ability.extra.score)) * self.ability.extra.ante)
                ease_ante(-ante)
                G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante or G.GAME.round_resets.ante
                G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante + (-ante)
                G.E_MANAGER:add_event(Event({
                    func = function()
                        card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_active_ex'), colour = G.C.FILTER})
                        play_sound('tarot1')
                        self.T.r = -0.2
                        self:juice_up(0.3, 0.4)
                        self.states.drag.is = true
                        self.children.center.pinch.x = true
                        G.E_MANAGER:add_event(Event({hand_trigger = 'after', delay = 0.3, blockable = false,
                            func = function()
                                    G.jokers:remove_card(self)
                                    self:remove()
                                    self = nil
                                return true; end})) 
                        return true
                    end
                }))
            end
        end
    end
    
    SMODS.Jokers.j_moji_hell.loc_def = function(card)
        return {card.ability.extra.score, card.ability.extra.ante}
    end

    -- Four Color Theorem
    SMODS.Jokers.j_moji_four_color_theorem.calculate = function(self, context)
        if SMODS.end_calculate_context(context) then
            local suits = {
                ['Hearts'] = 0,
                ['Diamonds'] = 0,
                ['Spades'] = 0,
                ['Clubs'] = 0
            }
            for i = 1, #context.scoring_hand do
                if context.scoring_hand[i].ability.name ~= 'Wild Card' then
                    if context.scoring_hand[i]:is_suit('Hearts') and suits["Hearts"] == 0 then suits["Hearts"] = suits["Hearts"] + 1
                    elseif context.scoring_hand[i]:is_suit('Diamonds') and suits["Diamonds"] == 0  then suits["Diamonds"] = suits["Diamonds"] + 1
                    elseif context.scoring_hand[i]:is_suit('Spades') and suits["Spades"] == 0  then suits["Spades"] = suits["Spades"] + 1
                    elseif context.scoring_hand[i]:is_suit('Clubs') and suits["Clubs"] == 0  then suits["Clubs"] = suits["Clubs"] + 1 end
                end
            end
            for i = 1, #context.scoring_hand do
                if context.scoring_hand[i].ability.name == 'Wild Card' then
                    if context.scoring_hand[i]:is_suit('Hearts') and suits["Hearts"] == 0 then suits["Hearts"] = suits["Hearts"] + 1
                    elseif context.scoring_hand[i]:is_suit('Diamonds') and suits["Diamonds"] == 0  then suits["Diamonds"] = suits["Diamonds"] + 1
                    elseif context.scoring_hand[i]:is_suit('Spades') and suits["Spades"] == 0  then suits["Spades"] = suits["Spades"] + 1
                    elseif context.scoring_hand[i]:is_suit('Clubs') and suits["Clubs"] == 0  then suits["Clubs"] = suits["Clubs"] + 1 end
                end
            end
            local count = suits["Hearts"] + suits["Diamonds"] + suits["Spades"] + suits["Clubs"]
            local Xmult = math.pow(self.ability.extra.Xmult, count)
            return {
                message = localize{type='variable',key='a_xmult',vars={Xmult}},
                Xmult_mod = Xmult
            }
        end
    end

    SMODS.Jokers.j_moji_four_color_theorem.loc_def = function(card)
        return {card.ability.extra.Xmult}
    end

    -- These Are the Odds
    SMODS.Jokers.j_moji_these_are_the_odds.calculate = function(self, context)
        if context.end_of_round and not context.individual and not context.repetition then
            if G.GAME.last_blind and G.GAME.last_blind.boss then
                if G.GAME.blind.chips == math.inf then return end
                local G_GAME_chips = (G.GAME.chips == math.inf and 1.79e308 or G.GAME.chips)
                local score_mult = G_GAME_chips / G.GAME.blind.chips
                if score_mult < self.ability.extra.score then return end
                local jokers = math.floor((1 + math.log(math.log(score_mult, self.ability.extra.score), self.ability.extra.score)) * self.ability.extra.joker)
                G.E_MANAGER:add_event(Event({
                    func = function() 
                        self:juice_up(0.8, 0.5)
                        for i = 1, jokers do
                            local card = create_card('Joker', G.jokers, nil, nil, nil, nil, nil, 'these_are_the_odds')
                            card:set_edition({negative = true}, true)
                            card:add_to_deck()
                            G.jokers:emplace(card)
                            card:start_materialize()
                            G.GAME.joker_buffer = 0
                        end
                        return true
                    end}))   
                card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_plus_joker'), colour = G.C.BLUE})
            end
        end
    end

    SMODS.Jokers.j_moji_these_are_the_odds.loc_def = function(card)
        return {card.ability.extra.score, card.ability.extra.joker}
    end

    -- Startup Capital
    SMODS.Jokers.j_moji_startup_capital.calculate = function(self, context)
        if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
            if G.GAME.last_blind and G.GAME.last_blind.boss then
                if not self.ability.extra.active then
                    self.ability.extra.active = true
                    local eval = function(card) return not card.REMOVED end
                    juice_card_until(self, eval, true)
                    return {
                        message = localize('k_active_ex'),
                        colour = G.C.FILTER
                    }
                end
            end
        end

        if context.selling_self and not context.blueprint then
            if self.ability.extra.active then
                ease_dollars(self.ability.extra.dollars)
                card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('$') .. self.ability.extra.dollars, dollars = self.ability.extra.dollars, colour = G.C.MONEY, instant = true})
            end
        end
    end

    SMODS.Jokers.j_moji_startup_capital.loc_def = function(card)
        return {card.ability.extra.dollars}
    end

    -- Rebate
    SMODS.Jokers.j_moji_rebate.loc_def = function(card)
        return {card.ability.extra.dollars, count_used_vouchers() * card.ability.extra.dollars}
    end

    -- Colorful Galaxy
    SMODS.Jokers.j_moji_colorful_galaxy.calculate = function(self, context)
        if context.before and not context.blueprint then
            local suits = {
                ['Hearts'] = 0,
                ['Diamonds'] = 0,
                ['Spades'] = 0,
                ['Clubs'] = 0
            }
            for i = 1, #context.scoring_hand do
                if context.scoring_hand[i].ability.name ~= 'Wild Card' then
                    if context.scoring_hand[i]:is_suit('Hearts') and suits["Hearts"] == 0 then suits["Hearts"] = suits["Hearts"] + 1
                    elseif context.scoring_hand[i]:is_suit('Diamonds') and suits["Diamonds"] == 0  then suits["Diamonds"] = suits["Diamonds"] + 1
                    elseif context.scoring_hand[i]:is_suit('Spades') and suits["Spades"] == 0  then suits["Spades"] = suits["Spades"] + 1
                    elseif context.scoring_hand[i]:is_suit('Clubs') and suits["Clubs"] == 0  then suits["Clubs"] = suits["Clubs"] + 1 end
                end
            end
            for i = 1, #context.scoring_hand do
                if context.scoring_hand[i].ability.name == 'Wild Card' then
                    if context.scoring_hand[i]:is_suit('Hearts') and suits["Hearts"] == 0 then suits["Hearts"] = suits["Hearts"] + 1
                    elseif context.scoring_hand[i]:is_suit('Diamonds') and suits["Diamonds"] == 0  then suits["Diamonds"] = suits["Diamonds"] + 1
                    elseif context.scoring_hand[i]:is_suit('Spades') and suits["Spades"] == 0  then suits["Spades"] = suits["Spades"] + 1
                    elseif context.scoring_hand[i]:is_suit('Clubs') and suits["Clubs"] == 0  then suits["Clubs"] = suits["Clubs"] + 1 end
                end
            end
            local count = suits["Hearts"] + suits["Diamonds"] + suits["Spades"] + suits["Clubs"]
            if pseudorandom('colorful_galaxy_trigger') < (G.GAME and G.GAME.probabilities.normal or 1) * math.pow(self.ability.extra.mult, count) / self.ability.extra.odds then
                local eligible_cards = {}
                for i = 1, #G.jokers.cards do
                    if not G.jokers.cards[i].edition then
                        eligible_cards[#eligible_cards + 1] = G.jokers.cards[i]
                    end
                end
                if #eligible_cards > 0 then
                    G.E_MANAGER:add_event(Event({func = function() 
                        self:juice_up(0.8, 0.5) 
                        card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_active_ex'), colour = G.C.FILTER})
                        return true end}))
                    local card = pseudorandom_element(eligible_cards, pseudoseed('colorful_galaxy_card'))
                    local editions = {{foil = true}, {holo = true}, {polychrome = true}, {negative = true}}
                    local edition = pseudorandom_element(editions, pseudoseed('colorful_galaxy_edition'))
                    card:set_edition(edition, true)
                end
            end
        end
    end
    SMODS.Jokers.j_moji_colorful_galaxy.loc_def = function(card)
        return {(G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.mult}
    end

    -- Contrasting Colors
    SMODS.Jokers.j_moji_contrasting_colors.calculate = function(self, context)
        if context.before and not context.blueprint then
            if next(context.poker_hands[self.ability.extra.type]) then
                self.ability.extra.chips = self.ability.extra.chips + self.ability.extra.chips_add
                card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize{type='variable',key='a_chips',vars={self.ability.extra.chips_add}}, colour = G.C.CHIPS})
            end
        end

        if SMODS.end_calculate_context(context) then
            return {
                message = localize{type='variable',key='a_chips',vars={self.ability.extra.chips}},
                colour = G.C.CHIPS,
                chip_mod = self.ability.extra.chips
            }
        end
    end

    SMODS.Jokers.j_moji_contrasting_colors.loc_def = function(card)
        return {card.ability.extra.chips_add, card.ability.extra.chips, localize(card.ability.extra.type, 'poker_hands')}
    end

    -- Acrobatics
    SMODS.Jokers.j_moji_acrobatics.calculate = function(self, context)
        if context.discard and not context.blueprint and context.other_card == context.full_hand[#context.full_hand] then
            G.hand:change_size(self.ability.extra.hand_size)
            self.ability.extra.cur_hand_size = self.ability.extra.cur_hand_size + self.ability.extra.hand_size
            G.E_MANAGER:add_event(Event({func = function() self:juice_up(0.8, 0.5) return true end}))
        end

        if context.after and not context.blueprint then
            G.hand:change_size(-self.ability.extra.cur_hand_size)
            self.ability.extra.cur_hand_size = 0
        end

        if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
            G.hand:change_size(-self.ability.extra.cur_hand_size)
            self.ability.extra.cur_hand_size = 0
        end
    end

    SMODS.Jokers.j_moji_acrobatics.loc_def = function(card)
        return {card.ability.extra.hand_size}
    end

    -- Buy One Get One Free
    SMODS.Jokers.j_moji_buy_one_get_one_free.loc_def = function(card)
        return {card.ability.extra.dollars_min}
    end

    -- Last-Ditch Effort
    SMODS.Jokers.j_moji_last_ditch_effort.calculate = function(self, context)
        if context.setting_blind and not context.blueprint and not self.getting_sliced then
            local joker_on_the_left = nil
            for i = #G.jokers.cards, 1, -1 do
                if G.jokers.cards[i].ability.name == 'Last-Ditch Effort' then
                    joker_on_the_left = i == 1 and nil or G.jokers.cards[i - 1]
                    break
                end
            end
            if not joker_on_the_left or joker_on_the_left.ability.eternal then return end
            joker_on_the_left:set_eternal(true)
            if joker_on_the_left.ability.eternal then
                self.ability.x_mult = self.ability.x_mult + self.ability.extra.Xmult_add
                G.E_MANAGER:add_event(Event({func = function()
                    card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_xmult', vars = {self.ability.extra.Xmult_add}}, colour = G.C.MULT})
                return true end }))
            end
        end
    end

    SMODS.Jokers.j_moji_last_ditch_effort.loc_def = function(card)
        return {card.ability.extra.Xmult_add, card.ability.x_mult}
    end

    -- Pawn Shop
    SMODS.Jokers.j_moji_pawn_shop.calculate = function(self, context)
        if context.setting_blind or context.end_of_round then
            if not context.blueprint then
                local cur_slot = 0
                for i = 1, #G.jokers.cards do
                    if G.jokers.cards[i].ability.eternal then
                        cur_slot = cur_slot + 1
                    end
                end
                if cur_slot ~= self.ability.extra.cur_slot then
                    G.jokers.config.card_limit = G.jokers.config.card_limit - self.ability.extra.cur_slot + cur_slot
                    self.ability.extra.cur_slot = cur_slot
                    G.E_MANAGER:add_event(Event({func = function() self:juice_up(0.8, 0.5) return true end}))
                end
            end
        end
    end

    SMODS.Jokers.j_moji_pawn_shop.loc_def = function(card)
        return {card.ability.extra.slot}
    end

    -- What If ... ? (ability name: What If)
    SMODS.Jokers.j_moji_what_if.calculate = function(self, context)
        if context.setting_blind and not context.blueprint and not self.getting_sliced then
            local j = nil
            for i = 1, #G.jokers.cards do
                sendDebugMessage('joker #' .. i .. ' ' .. G.jokers.cards[i].ability.name .. '\n')
                if G.jokers.cards[i].ability.name == 'What If' then
                    j = (i == #G.jokers.cards) and nil or G.jokers.cards[i + 1]
                    break
                end
            end
            if not j or j.ability.eternal then return end

            local eligible_cards = {}
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i] ~= j and (not G.jokers.cards[i].edition) then
                    eligible_cards[#eligible_cards + 1] = G.jokers.cards[i]
                end
            end
            local t = pseudorandom_element(eligible_cards, pseudoseed('what_if_joker'))
            local d = pseudorandom('what_if_dice', 1, 100)
            local joker_slot_to_remove = 0

            -- legendary
            if j.config.center.rarity == 4 then
                -- negative => x2 joker slot
                if j.edition and j.edition.negative then
                    sendDebugMessage('What If: Legendary Negative')
                    G.jokers.config.card_limit = G.jokers.config.card_limit * 2
                    -- card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize{type='variable',key='k_what_if_double_joker_slot',vars={2}}, colour = G.C.FILTER})
                    card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_double_joker_slot'), colour = G.C.FILTER})
                -- others => +2 joker slot & duplicate until full
                else
                    sendDebugMessage('What If: Legendary Non-Negative')
                    G.jokers.config.card_limit = G.jokers.config.card_limit + 3
                    -- card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize{type='variable',key='k_what_if_add_joker_slot',vars={2}}, colour = G.C.BLUE})
                    card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_add_joker_slot'), colour = G.C.BLUE})
                    local no_of_copy = G.jokers.config.card_limit - #G.jokers.cards
                    G.E_MANAGER:add_event(Event({trigger = 'before', delay = 0.4, func = function()
                        for i = 1, no_of_copy do
                            local card = copy_card(t, nil, nil, nil, nil)
                            card:start_materialize()
                            card:add_to_deck()
                            G.jokers:emplace(card)
                        end
                        return true
                    end}))
                    joker_slot_to_remove = 1
                end
            -- negative
            elseif j.edition and j.edition.negative then
                -- 20% => +1 joker slot
                if (d <= 20) then
                    sendDebugMessage('What If: Non-Legendary Negative 1: +1 Joker Slot')
                    G.jokers.config.card_limit = G.jokers.config.card_limit + 1
                    -- card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize{type='variable',key='k_what_if_add_joker_slot',vars={1}}, colour = G.C.ORANGE})
                    card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_add_joker_slot'), colour = G.C.ORANGE})
                end
                -- 20% => -1 ante
                if (21 <= d and d <= 40) then
                    sendDebugMessage('What If: Non-Legendary Negative 2: -1 Ante')
                    ease_ante(-1)
                    -- card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize{type='variable',key='k_what_if_sub_ante',vars={1}}, colour = G.C.PURPLE})
                    card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_sub_ante'), colour = G.C.PURPLE})
                end
                -- 20% => random negative joker
                if (41 <= d and d <= 60) then
                    sendDebugMessage('What If: Non-Legendary Negative 3: Random Negative Joker')
                    G.GAME.joker_buffer = G.GAME.joker_buffer + 1
                    G.E_MANAGER:add_event(Event({func = function()
                        local card = create_card('Joker', G.jokers, pseudorandom('what_if_legendary') < G.GAME.probabilities.normal / 100 and true or nil, nil, nil, nil, nil, 'what_if_random_negative_joker')
                        card:set_edition({negative = true}, true)
                        card:add_to_deck()
                        G.jokers:emplace(card)
                        card:start_materialize()
                        G.GAME.joker_buffer = 0
                    return true end}))
                    card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_random_negative_joker'), colour = G.C.BLUE})
                end
                -- 20% => duplicate random joker
                if (61 <= d and d <= 80) then
                    sendDebugMessage('What If: Non-Legendary Negative 4: Duplicate Random Joker')
                    G.Jokers.config.card_limit = G.jokers.config.card_limit + 1
                    G.E_MANAGER:add_event(Event({trigger = 'before', delay = 0.4, func = function()
                        local card = copy_card(t, nil, nil, nil, nil)
                        card:start_materialize()
                        card:add_to_deck()
                        G.jokers:emplace(card)
                        return true
                    end}))
                    card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_duplicate_random_joker'), colour = G.C.GREEN})
                    joker_slot_to_remove = 1
                end
                -- 20% => double tag
                if (81 <= d and d <= 100) then
                    sendDebugMessage('What If: Non-Legendary Negative 5: Double Tag')
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            add_tag(Tag('tag_double'))
                            play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
                            play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
                            return true
                        end
                    }))
                    card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_double_tag'), colour = G.C.RED})
                end
            -- rare
            elseif j.config.center.rarity == 3 then
                local fail = false
                -- 20% => +1 shop card slot
                if (d <= 20) then
                    sendDebugMessage('What If: Rare Non-Negative 1: +1 Shop Card Slot')
                    if G.GAME.shop.joker_max > 7 then
                        fail = true
                    else
                        change_shop_size(1)
                        -- card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize{type='variable',key='k_what_if_add_shop_card_slot',vars={1}}, colour = G.C.ORANGE})
                        card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_add_shop_card_slot'), colour = G.C.ORANGE})
                    end
                end
                -- 20% => +1 consumeable slot
                if (21 <= d and d <= 40) or fail then
                    sendDebugMessage('What If: Rare Non-Negative 2: +1 Consumeable Slot')
                    G.consumeables.config.card_limit = G.consumeables.config.card_limit + 1
                    -- card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize{type='variable',key='k_what_if_add_consumeable_slot',vars={1}}, colour = G.C.PURPLE})
                    card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_add_consumeable_slot'), colour = G.C.PURPLE})
                    fail = false
                end
                -- 10% => X2 interest cap
                if (41 <= d and d <= 50) then
                    sendDebugMessage('What If: Rare Non-Negative 3: X2 Interest Cap')
                    if G.GAME.modifiers.no_interest then
                        fail = true
                    else
                        G.GAME.interest_cap = math.max(0, G.GAME.interest_cap * 2)
                        -- card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize{type='variable',key='k_what_if_double_interest_cap',vars={2}}, colour = G.C.BLUE})
                        card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_double_interest_cap'), colour = G.C.BLUE})
                    end
                end
                -- 10% => apply negative
                if (51 <= d and d <= 60) or fail then
                    sendDebugMessage('What If: Rare Non-Negative 4: Apply Negative')
                    t:set_edition({negative = true}, true)
                    card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_edition_negative'), colour = G.C.GREEN})
                    fail = false
                end
                -- 20% => double money
                if (61 <= d and d <= 80) then
                    sendDebugMessage('What If: Rare Non-Negative 5: Double Money')
                    local dollars = G.GAME.dollars
                    if dollars + G.GAME.dollars < 20 then dollars = 20 - G.GAME.dollars end
                    ease_dollars(dollars)
                    card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('$') .. dollars, dollars = dollars, colour = G.C.MONEY, instant = true})
                end
                -- 20% => negative effect
                if (81 <= d and d <= 100) or fail then
                    local n = pseudorandom('what_if_negative', 1, 100)
                    -- 50% => -1 shop card slot
                    if n <= 50 and G.GAME.shop.joker_max > 1 then
                        sendDebugMessage('What If: Rare Non-Negative 6.1: -1 Shop Card Slot')
                        change_shop_size(-1)
                        -- card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize{type='variable',key='k_what_if_sub_shop_card_slot',vars={1}}, colour = G.C.RED})
                        card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_sub_shop_card_slot'), colour = G.C.RED})
                    -- 50% => destroy random joker
                    else
                        sendDebugMessage('What If: Rare Non-Negative 6.2: Destroy Random Joker')
                        local destructable_jokers = {}
                        for i = 1, #G.jokers.cards do
                            if G.jokers.cards[i] ~= self and G.jokers.cards[i] ~= j and not G.jokers.cards[i].getting_sliced then
                                destructable_jokers[#destructable_jokers + 1] = G.jokers.cards[i]
                            end
                        end
                        local target = #destructable_jokers > 0 and pseudorandom_element(destructable_jokers, pseudoseed('what_if_destroy')) or nil

                        if target then
                            target.getting_sliced = true
                            G.E_MANAGER:add_event(Event({func = function()
                                target:start_dissolve({G.C.RED}, nil, 1.6)
                            return true end}))
                            card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_destroy_random_joker'), colour = G.C.RED})
                        end
                    end
                end
            -- uncommon
            elseif j.config.center.rarity == 2 then
                local fail = false
                -- 20% => apply polychrome
                if (d <= 20) then
                    sendDebugMessage('What If: Uncommon Non-Negative 1: Apply Polychrome')
                    t:set_edition({polychrome = true}, true)
                    card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_edition_polychrome'), colour = G.C.ORANGE})
                end
                -- 20% => Xmult x2
                if (21 <= d and d <= 40) then
                    sendDebugMessage('What If: Uncommon Non-Negative 2: Xmult x2')
                    self.ability.x_mult = self.ability.x_mult * 2
                    card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize{type='variable',key='a_xmult',vars={self.ability.x_mult / 2}}, colour = G.C.PURPLE})
                end
                -- 20% => apply holo
                if (41 <= d and d <= 60) then
                    sendDebugMessage('What If: Uncommon Non-Negative 3: Apply Holo')
                    t:set_edition({holo = true}, true)
                    card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_edition_holo'), colour = G.C.BLUE})
                end
                -- 10% => duplicate playing cards
                if (61 <= d and d <= 70) then
                    sendDebugMessage('What If: Uncommon Non-Negative 4: Duplicate Playing Cards')
                    local _t = pseudorandom('what_if_duplicate_card', 1, #G.playing_cards)
                    local _card = G.playing_cards[_t]
                    local dupe = pseudorandom('what_if_duplicate_card', 1, 100)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            local _first_dissolve = nil
                            local new_cards = {}
                            for i = 1, dupe do
                                G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                                local card = copy_card(_card, nil, nil, G.playing_card)
                                card:add_to_deck()
                                G.deck.config.card_limit = G.deck.config.card_limit + 1
                                table.insert(G.playing_cards, card)
                                _card:start_materialize(nil, _first_dissolve)
                                _first_dissolve = true
                                new_cards[#new_cards+1] = card
                            end
                            playing_card_joker_effects(new_cards)
                            return true
                        end
                    }))
                    card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_duplicate_playing_card'), colour = G.C.GREEN})
                end
                -- 30% => negative effect
                if (71 <= d and d <= 100) then
                    local n = pseudorandom('what_if_negative', 1, 100)
                    -- 50% => +1 win ante
                    if n <= 50 then
                        sendDebugMessage('What If: Uncommon Non-Negative 5.1: +1 Win Ante')
                        G.GAME.win_ante = G.GAME.win_ante + 1
                        -- card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize{type='variable',key='k_what_if_add_win_ante',vars={1}}, colour = G.C.BLUE})
                        card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_add_win_ante'), colour = G.C.BLUE})
                    -- 50% => destroy playing cards
                    else
                        sendDebugMessage('What If: Uncommon Non-Negative 5.2: Destroy Playing Cards')
                        local destroy_threshold = pseudorandom('what_if_destroy')
                        G.E_MANAGER:add_event(Event({
                            trigger = 'after',
                            delay = 0.2,
                            func = function() 
                                for i=#G.playing_cards, 2, -1 do
                                    if pseudorandom('what_if_destroy_card') <= destroy_threshold then
                                        local card = G.playing_cards[i]
                                        if card.ability.name == 'Glass Card' then 
                                            card:shatter()
                                        else
                                            card:start_dissolve()
                                        end
                                    end
                                end
                                return true
                            end
                        }))
                        card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_destory_playing_card'), colour = G.C.RED})
                    end
                end
            -- common
            else
                -- 20% => apply foil
                if (d <= 20) then
                    sendDebugMessage('What If: Common Non-Negative 1: Apply Foil')
                    t:set_edition({foil = true}, true)
                    card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_edition_foil'), colour = G.C.ORANGE})
                end
                -- 20% => growth x2
                if (21 <= d and d <= 40) then
                    sendDebugMessage('What If: Common Non-Negative 2: Growth x2')
                    self.ability.extra.Xmult_add = self.ability.extra.Xmult_add * 2
                    -- card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize{type='variable',key='k_what_if_double_growth',vars={2}}, colour = G.C.PURPLE})
                    card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_double_growth'), colour = G.C.PURPLE})
                end
                -- 20% => +1 hand size
                if (41 <= d and d <= 60) then
                    sendDebugMessage('What If: Common Non-Negative 3: +1 Hand Size')
                    G.hand:change_size(1)
                    -- card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize{type='variable',key='k_what_if_add_hand_size',vars={1}}, colour = G.C.BLUE})
                    card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_add_hand_size'), colour = G.C.BLUE})
                end
                -- 10% => +1 discard
                if (61 <= d and d <= 70) then
                    sendDebugMessage('What If: Common Non-Negative 4: +1 Discard')
                    G.GAME.round_resets.discards = G.GAME.round_resets.discards + 1
                    card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_add_discard'), colour = G.C.GREEN})
                end
                -- 30% => negative effect
                if (71 <= d and d <= 100) then
                    local n = pseudorandom('what_if_negative', 1, 100)
                    -- 50% => lose $10
                    if n <= 50 then
                        sendDebugMessage('What If: Common Non-Negative 5.1: Lose $10')
                        local dollars = -10
                        ease_dollars(dollars)
                        card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('$') .. dollars, dollars = dollars, colour = G.C.RED, instant = true})
                    -- 50% => -1 hand size
                    elseif G.hand.config.card_limit > 5 then
                        sendDebugMessage('What If: Common Non-Negative 5.2: -1 Hand Size')
                        G.hand:change_size(-1)
                        -- card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize{type='variable',key='k_what_if_sub_hand_size',vars={1}}, colour = G.C.RED})
                        card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize('k_what_if_sub_hand_size'), colour = G.C.RED})
                    end
                end
            end

            self.ability.x_mult = self.ability.x_mult + self.ability.extra.Xmult_add
            card_eval_status_text(self, 'extra', nil, nil, nil, {message = localize{type = 'variable', key = 'a_xmult', vars = {self.ability.extra.Xmult_add}}, colour = G.C.MULT})

            j.getting_sliced = true
            G.E_MANAGER:add_event(Event({func = function()
                self:juice_up(0.8, 0.5)
                j:start_dissolve({G.C.RED}, nil, 1.6)
            return true end }))

            if joker_slot_to_remove > 0 then
                G.jokers.config.card_limit = G.jokers.config.card_limit - joker_slot_to_remove
            end
        end
    end
    SMODS.Jokers.j_moji_what_if.loc_def = function(card)
        return {card.ability.extra.Xmult_add, card.ability.x_mult}
    end
end

local Card_set_cost_ref = Card.set_cost
function Card:set_cost()
    local price_adjust = 0
    if G.jokers then
        for i = 1, #G.jokers.cards do
            if G.jokers.cards[i].ability.name == 'Satellite Payment' then
                price_adjust = price_adjust - G.jokers.cards[i].ability.extra.planets_used * G.jokers.cards[i].ability.extra.price_sub
            end
        end
    end
    self.base_cost = self.base_cost + price_adjust
    Card_set_cost_ref(self)
    self.base_cost = self.base_cost - price_adjust
end

local Card_add_to_deck_ref = Card.add_to_deck
function Card:add_to_deck(from_debuff)
    if not self.added_to_deck and self.ability.set == 'Joker' then
        self.added_to_deck = true
        if self.ability.name == 'Satellite Payment' then
            self.ability.extra.planets_used = count_used_consumeables('Planet')
            G.E_MANAGER:add_event(Event({func = function()
                for k, v in pairs(G.I.CARD) do
                    if v.set_cost then v:set_cost() end
                end
                return true end }))
        elseif self.ability.name == 'Vacant Seat' then
            G.hand:change_size(self.ability.extra.hand_size)
        elseif self.ability.name == 'Luxury Tax' then
            self.ability.extra.cur_hand_size = math.max(self.ability.extra.hand_size - self.ability.extra.hand_size_sub * (G.GAME.dollars > 0 and math.floor(G.GAME.dollars / self.ability.extra.per) or 0), self.ability.extra.min_hand_size)
            G.hand:change_size(self.ability.extra.cur_hand_size)
        elseif self.ability.name == 'Pawn Shop' then
            self:set_eternal(true)
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i].ability.eternal then
                    self.ability.extra.cur_slot = self.ability.extra.slot + 1
                end
            end
            G.jokers.config.card_limit = G.jokers.config.card_limit + self.ability.extra.cur_slot
            G.E_MANAGER:add_event(Event({func = function() self:juice_up(0.8, 0.5) return true end}))
        else
            if self.ability.eternal then
                for i = 1, #G.jokers.cards do
                    if G.jokers.cards[i].ability.name == 'Pawn Shop' then
                        G.jokers.cards[i].ability.extra.cur_slot = G.jokers.cards[i].ability.extra.cur_slot + 1
                        G.jokers.config.card_limit = G.jokers.config.card_limit + 1
                        G.E_MANAGER:add_event(Event({func = function() G.jokers.cards[i]:juice_up(0.8, 0.5) return true end}))
                    end
                end
            end
            self.added_to_deck = false
        end
    end
    Card_add_to_deck_ref(self, from_debuff)
end

local Card_remove_from_deck_ref = Card.remove_from_deck
function Card:remove_from_deck(from_debuff)
    if self.added_to_deck and self.ability.set == 'Joker' then
        self.added_to_deck = false
        if self.ability.name == 'Satellite Payment' then
            G.E_MANAGER:add_event(Event({func = function()
                for k, v in pairs(G.I.CARD) do
                    if v.set_cost then v:set_cost() end
                end
                return true end }))
        elseif self.ability.name == 'Vacant Seat' then
            G.hand:change_size(-self.ability.extra.hand_size)
        elseif self.ability.name == 'Luxury Tax' then
            G.hand:change_size(-self.ability.extra.cur_hand_size)
        elseif self.ability.name == 'Acrobatics' then
            G.hand:change_size(-self.ability.extra.cur_hand_size)
        elseif self.ability.name == 'Pawn Shop' then
            G.jokers.config.card_limit = G.jokers.config.card_limit - self.ability.extra.cur_slot
        else
            if self.ability.eternal then
                for i = 1, #G.jokers.cards do
                    if G.jokers.cards[i].ability.name == 'Pawn Shop' then
                        G.jokers.cards[i].ability.extra.cur_slot = G.jokers.cards[i].ability.extra.cur_slot - 1
                        G.jokers.config.card_limit = G.jokers.config.card_limit - 1
                        G.E_MANAGER:add_event(Event({func = function() G.jokers.cards[i]:juice_up(0.8, 0.5) return true end}))
                    end
                end
            end
            self.added_to_deck = true
        end
    end
    Card_remove_from_deck_ref(self, from_debuff)
end

local Card_calculate_dollar_bonus_ref = Card.calculate_dollar_bonus
function Card:calculate_dollar_bonus()
    if self.debuff then return end
    if self.ability.set == 'Joker' then
        local dollars = -1
        if self.ability.name == 'Embrace the Moon' then
            dollars = self.ability.extra.dollars * math.floor(self.ability.extra.trigger_cnt / self.ability.extra.per)
        elseif self.ability.name == 'Tax Collector' then 
            dollars = tax_collector_count() * self.ability.extra.dollars
        elseif self.ability.name == 'Rebate' then
            dollars = count_used_vouchers() * self.ability.extra.dollars
        end
        if dollars > 0 then
            return dollars
        elseif dollars == 0 then
            return
        end
    end
    return Card_calculate_dollar_bonus_ref(self)
end

local Card_sell_card_ref = Card.sell_card
function Card:sell_card()
    if self.ability.set == 'Joker' then
        local free_refill_index = #find_joker('Free Refill')
        if free_refill_index > 0 and G.jokers.cards[free_refill_index] ~= self then
            local free_refill = G.jokers.cards[free_refill_index]
            G.E_MANAGER:add_event(Event({hand_trigger = 'after', delay = 0.3, func = function()
                ease_dollars(-free_refill.ability.extra.dollars_lose, true)
                card_eval_status_text(free_refill, 'extra', nil, nil, nil, {message = '-' .. localize('$') .. free_refill.ability.extra.dollars_lose, dollars = free_refill.ability.extra.dollars_lose, colour = G.C.MONEY, instant = true})
                return true end }))
        end
    end
    Card_sell_card_ref(self)
end

local ease_dollars_ref = ease_dollars
function ease_dollars(mod, instant)
    if mod < 0 and G.jokers then
        local max_possible = G.consumeables.config.card_limit - #G.consumeables.cards - G.GAME.consumeable_buffer
        if max_possible > 0 then
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i].ability.name == 'Buy One Get One Free' and -mod >= G.jokers.cards[i].ability.extra.dollars_min then
                    G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                    G.E_MANAGER:add_event(Event({
                        func = (function()
                            G.E_MANAGER:add_event(Event({
                                func = function() 
                                    local card = create_card('Planet',G.consumeables, nil, nil, nil, nil, nil, nil)
                                    card:add_to_deck()
                                    G.consumeables:emplace(card)
                                    G.GAME.consumeable_buffer = 0
                                    return true
                                end}))   
                                card_eval_status_text(G.jokers.cards[i], 'extra', nil, nil, nil, {message = localize('k_plus_planet'), colour = G.C.BLUE})
                            return true
                        end)}))
                    end
                    max_possible = max_possible - 1
                    if max_possible == 0 then break end
                end
            end
    end
    ease_dollars_ref(mod, instant)
end

local G_FUNCS_use_card_ref = G.FUNCS.use_card
G.FUNCS.use_card = function(e, mute, nosave)
    e.config.button = nil
    local card = e.config.ref_table
    local area = card.area
    local prev_state = G.STATE
    local dont_dissolve = nil
    local delay_fac = 1

    if card:check_use() then 
        G.E_MANAGER:add_event(Event({func = function()
        e.disable_button = nil
        e.config.button = 'use_card'
        return true end }))
        return
    end

    local count_binoculars = 0
    if G.jokers then
        for i = 1, #G.jokers.cards do
            if G.jokers.cards[i].ability.name == 'Binoculars' then
                count_binoculars = count_binoculars + G.jokers.cards[i].ability.extra.repeat_times
            end
        end
    end

    if card.ability.set == 'Planet' and count_binoculars > 0 then
        G.TAROT_INTERRUPT = G.STATE

        G.CONTROLLER.locks.use = true
        if G.booster_pack and not G.booster_pack.alignment.offset.py and (card.ability.consumeable or not (G.GAME.pack_choices and G.GAME.pack_choices > 1)) then
            G.booster_pack.alignment.offset.py = G.booster_pack.alignment.offset.y
            G.booster_pack.alignment.offset.y = G.ROOM.T.y + 29
        end
        if G.shop and not G.shop.alignment.offset.py then
            G.shop.alignment.offset.py = G.shop.alignment.offset.y
            G.shop.alignment.offset.y = G.ROOM.T.y + 29
        end
        if G.blind_select and not G.blind_select.alignment.offset.py then
            G.blind_select.alignment.offset.py = G.blind_select.alignment.offset.y
            G.blind_select.alignment.offset.y = G.ROOM.T.y + 39
        end
        if G.round_eval and not G.round_eval.alignment.offset.py then
            G.round_eval.alignment.offset.py = G.round_eval.alignment.offset.y
            G.round_eval.alignment.offset.y = G.ROOM.T.y + 29
        end
    
        if card.children.use_button then card.children.use_button:remove(); card.children.use_button = nil end
        if card.children.sell_button then card.children.sell_button:remove(); card.children.sell_button = nil end
        if card.children.price then card.children.price:remove(); card.children.price = nil end
    
        if card.area then card.area:remove_card(card) end

        if G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.PLANET_PACK or G.STATE == G.STATES.SPECTRAL_PACK then
            card.T.x = G.hand.T.x + G.hand.T.w/2 - card.T.w/2
            card.T.y = G.hand.T.y + G.hand.T.h/2 - card.T.h/2 - 0.5
            discover_card(card.config.center)
        else draw_card(G.hand, G.play, 1, 'up', true, card, nil, mute) end
        delay(0.2)
        for i = 0, count_binoculars do
            e.config.ref_table:use_consumeable(area)
            for i = 1, #G.jokers.cards do
                G.jokers.cards[i]:calculate_joker({using_consumeable = true, consumeable = card})
            end
        end

        G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.2,
        func = function()
            if not dont_dissolve then card:start_dissolve() end
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,
            func = function()
                G.STATE = prev_state
                G.TAROT_INTERRUPT=nil
                G.CONTROLLER.locks.use = false
                if (prev_state == G.STATES.TAROT_PACK or prev_state == G.STATES.PLANET_PACK or
                prev_state == G.STATES.SPECTRAL_PACK or prev_state == G.STATES.STANDARD_PACK or
                prev_state == G.STATES.BUFFOON_PACK) and G.booster_pack then
                if area == G.consumeables then
                    G.booster_pack.alignment.offset.y = G.booster_pack.alignment.offset.py
                    G.booster_pack.alignment.offset.py = nil
                elseif G.GAME.pack_choices and G.GAME.pack_choices > 1 then
                    if G.booster_pack.alignment.offset.py then 
                    G.booster_pack.alignment.offset.y = G.booster_pack.alignment.offset.py
                    G.booster_pack.alignment.offset.py = nil
                    end
                    G.GAME.pack_choices = G.GAME.pack_choices - 1
                else
                    G.CONTROLLER.interrupt.focus = true
                    if prev_state == G.STATES.TAROT_PACK then inc_career_stat('c_tarot_reading_used', 1) end
                    if prev_state == G.STATES.PLANET_PACK then inc_career_stat('c_planetarium_used', 1) end
                    G.FUNCS.end_consumeable(nil, delay_fac)
                end
                else
                if G.shop then 
                    G.shop.alignment.offset.y = G.shop.alignment.offset.py
                    G.shop.alignment.offset.py = nil
                end
                if G.blind_select then
                    G.blind_select.alignment.offset.y = G.blind_select.alignment.offset.py
                    G.blind_select.alignment.offset.py = nil
                end
                if G.round_eval then
                    G.round_eval.alignment.offset.y = G.round_eval.alignment.offset.py
                    G.round_eval.alignment.offset.py = nil
                end
                if area and area.cards[1] then 
                    G.E_MANAGER:add_event(Event({func = function()
                    G.E_MANAGER:add_event(Event({func = function()
                        G.CONTROLLER.interrupt.focus = nil
                        if card.ability.set == 'Voucher' then 
                        G.CONTROLLER:snap_to({node = G.shop:get_UIE_by_ID('next_round_button')})
                        elseif area then
                        G.CONTROLLER:recall_cardarea_focus(area)
                        end
                    return true end }))
                    return true end }))
                end
                end
            return true
        end}))
        return true
    end}))

        return
    end
    G_FUNCS_use_card_ref(e, mute, nosave)
end

----------------------------------------------
------------MOD CODE END----------------------
