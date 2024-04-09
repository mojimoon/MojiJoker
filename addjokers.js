let jokers = [
  {
    name: "安全网",
    text: [
      "回合结束时，",
      "每有1次未使用的{C:red}弃牌{}次数，",
      "获得{C:chips}+15{}筹码",
      "{C:inactive}（当前为{C:chips}+30{C:inactive}筹码）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_safety_net.png",
    rarity: "普通",
    cost: 5
  },
  {
    name: "中子星",
    text: [
      "{C:attention}出牌牌型{}每被",
      "打出过1次，",
      "提供{C:chips}+12{}筹码"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_neutron_star.png",
    rarity: "普通",
    cost: 5
  },
  {
    name: "撞色",
    text: [
      "若打出的牌中有{C:attention}同花{}，",
      "获得{C:chips}+10{}筹码",
      "{C:inactive}（当前为{C:chips}+20{C:inactive}筹码）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_contrasting_colors.png",
    rarity: "普通",
    cost: 5
  },
  {
    name: "启动资金",
    text: [
      "击败{C:attention}Boss盲注{}后，",
      "出售本牌以获得{C:money}$20{}"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_startup_capital.png",
    rarity: "普通",
    cost: 1
  },
  {
    name: "返现",
    text: [
      "本局游戏每购买过",
      "1张{C:voucher}优惠券{}，",
      "回合结束时获得{C:money}$3{}",
      "{C:inactive}（当前为{C:money}$0{C:inactive}）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_rebate.png",
    rarity: "普通",
    cost: 5
  },
  {
    name: "双筒望远镜",
    text: [
      "使用{C:planet}星球牌{}时，",
      "再使用{C:attention}1{}次"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_binoculars.png",
    rarity: "普通",
    cost: 5
  },
  {
    name: "灾星",
    text: [
      "选择{C:attention}盲注{}后",
      "生成一张{C:tarot}星星{}",
      "{C:inactive}（必须有空位）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_calamity_star.png",
    rarity: "普通",
    cost: 5
  },
  {
    name: "残月",
    text: [
      "选择{C:attention}盲注{}后",
      "生成一张{C:tarot}月亮{}",
      "{C:inactive}（必须有空位）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_crescent_moon.png",
    rarity: "普通",
    cost: 5
  },
  {
    name: "日食",
    text: [
      "选择{C:attention}盲注{}后",
      "生成一张{C:tarot}太阳{}",
      "{C:inactive}（必须有空位）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_solar_eclipse.png",
    rarity: "普通",
    cost: 5
  },
  {
    name: "末世",
    text: [
      "选择{C:attention}盲注{}后",
      "生成一张{C:tarot}世界{}",
      "{C:inactive}（必须有空位）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_doomed_world.png",
    rarity: "普通",
    cost: 5
  },
  {
    name: "超凡升天",
    text: [
      "选择{C:attention}盲注{}后",
      "生成一张{C:tarot}倒吊人{}",
      "{C:inactive}（必须有空位）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_transcendence.png",
    rarity: "普通",
    cost: 5
  },
  {
    name: "杂技",
    text: [
      "每次{C:red}弃牌{}后，",
      "手牌上限{C:attention}+3{}",
      "每次{C:blue}出牌{}后重置",
    ],
    image_url: "MojiJoker/assets/2x/j_moji_acrobatics.png",
    rarity: "普通",
    cost: 4
  },
  {
    name: "奢侈税",
    text: [
      "手牌上限{C:blue}+3",
      "每有{C:money}$20{}，手牌上限{C:red}-1{}",
      "{C:inactive}（当前为{C:attention}+3{C:inactive}，最少为{C:attention}+0{C:inactive}）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_luxury_tax.png",
    rarity: "普通",
    cost: 5
  },
  {
    name: "量(子)化",
    text: [
      "同时打出至少{C:attention}3{}张计分牌时，",
      "每有1张计分牌，获得{C:mult}+1{}倍率",
      "否则重置倍率",
      "{C:inactive}（当前为{C:mult}+0{C:inactive}倍率）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_quantization.png",
    rarity: "罕见",
    cost: 6
  },
  {
    name: "虚位以待",
    text: [
      "手牌上限{C:red}-1",
      "每有1手牌上限，",
      "提供{C:mult}+10{}倍率"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_vacant_seat.png",
    rarity: "罕见",
    cost: 6
  },
  {
    name: "投资回报率",
    text: [
      "每获得{C:money}$1{}利息，",
      "获得{C:mult}+1{}倍率",
      "{C:inactive}（当前为{C:mult}+0{C:inactive}倍率）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_return_on_investment.png",
    rarity: "罕见",
    cost: 6
  },
  {
    name: "逐星",
    text: [
      "完整牌组中的{C:diamonds}方片{}牌",
      "每比{C:attention}13{}张多1张，",
      "提供{C:mult}+5{}倍率",
      "{C:inactive}（按有效花色计算）",
      "{C:inactive}（当前为{C:mult}+0{C:inactive}倍率）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_pursue_the_stars.png",
    rarity: "罕见",
    cost: 6
  },
  {
    name: "捧月",
    text: [
      "回合结束时，剩余牌组中",
      "每有{C:attention}3{}张{C:clubs}梅花{}牌，",
      "获得{C:money}$2{}",
      "{C:inactive}（按有效花色计算）",
      "{C:inactive}（当前为{C:money}$0{C:inactive}）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_embrace_the_moon.png",
    rarity: "罕见",
    cost: 7
  },
  {
    name: "执日",
    text: [
      "每回合首次",
      "打出{C:hearts}红桃{}牌并计分时，",
      "{C:attention}升级{}出牌牌型"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_hold_the_sun.png",
    rarity: "罕见",
    cost: 6
  },
  {
    name: "救世",
    text: [
      "手牌中的每张{C:spades}黑桃{}牌",
      "提供{C:chips}+100{}筹码"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_salvage_the_world.png",
    rarity: "罕见",
    cost: 7
  },
  {
    name: "星之彩",
    text: [
      "连续打出包含{C:attention}同花{}的牌时，",
      "获得{X:mult,C:white}X0.5{}倍率",
      "否则重置倍率",
      "{C:inactive}（当前为{X:mult,C:white}X1{C:inactive}倍率）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_color_out_of_space.png",
    rarity: "罕见",
    cost: 7
  },
  {
    name: "垃圾时间",
    text: [
      "{X:mult,C:white}X3.5{}倍率",
      "若回合结束时，",
      "所用出牌次数超过{C:attention}1{}，",
      "失去{X:mult,C:white}X0.5{}倍率"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_garbage_time.png",
    rarity: "罕见",
    cost: 7
  },
  {
    name: "世界遗产",
    text: [
      "每弃1张牌，获得{X:mult,C:white}X0.04{}倍率",
      "每出1张牌，失去{X:mult,C:white}X0.02{}倍率",
      "{C:inactive}（当前为{X:mult,C:white}X1{C:inactive}倍率）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_world_heritage.png",
    rarity: "罕见",
    cost: 7
  },
  {
    name: "四色定理",
    text: [
      "打出并计分的牌中",
      "每种不同的{C:attention}花色{}",
      "提供{X:mult,C:white}X1.5{}倍率"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_four_color_theorem.png",
    rarity: "罕见",
    cost: 8
  },
  {
    name: "最后一搏",
    text: [
      "选择{C:attention}盲注{}后，",
      "为左侧的小丑牌添加{C:dark_edition}永恒{}",
      "每成功添加1次，",
      "获得{X:mult,C:white}X0.5{}倍率",
      "{C:inactive}（当前为{X:mult,C:white}X1{C:inactive}倍率）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_last_ditch_effort.png",
    rarity: "罕见",
    cost: 7
  },
  {
    name: "卫星支付",
    text: [
      "本局游戏每使用过一种{C:planet}星球牌",
      "所有商品价格降低{C:money}$1{}",
      "{C:inactive}（价格不会低于{C:money}$1{C:inactive}）",
      "{C:inactive}（当前为{C:money}-$0{C:inactive}）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_satellite_payment.png",
    rarity: "罕见",
    cost: 6
  },
  {
    name: "税收官",
    text: [
      "回合结束时，",
      "每张普通/罕见/稀有/传奇小丑牌",
      "分别提供{C:blue}$1{}/{C:green}$2{}/{C:red}$3{}/{C:legendary}$4{}",
      "{C:inactive}（当前为{C:money}$0{C:inactive}）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_tax_collector.png",
    rarity: "罕见",
    cost: 7
  },
  {
    name: "买一送一",
    text: [
      "每当你消费至少{C:money}$4{}时，",
      "生成一张随机的{C:planet}星球牌",
      "{C:inactive}（必须有空位）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_buy_one_get_one_free.png",
    rarity: "罕见",
    cost: 6
  },
  {
    name: "计划妥当",
    text: [
      "若出牌牌型为{C:attention}[牌型]{}，",
      "将其{C:attention}升级{}",
      "每次{C:attention}弃牌{}后牌型都会改变"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_well_laid_plans.png",
    rarity: "罕见",
    cost: 8
  },
  {
    name: "免费续杯",
    text: [
      "选择{C:attention}盲注{}后，",
      "生成随机小丑牌",
      "直到没有空位",
      "出售小丑牌时失去{C:money}$3{}"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_free_refill.png",
    rarity: "罕见",
    cost: 8
  },
  {
    name: "印刷中",
    text: [
      "下{C:attention}2{}次选择{C:attention}盲注{}后，",
      "给一张随机小丑牌添加",
      "{C:dark_edition}闪箔{}、{C:dark_edition}镭射{}或{C:dark_edition}多彩{}版本",
      "{C:inactive}（不会添加给印刷中）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_now_printing.png",
    rarity: "罕见",
    cost: 8
  },
  {
    name: "新秩序",
    text: [
      "打出{C:attention}A{}并计分时，",
      "获得{X:mult,C:white}X0.15{}倍率",
      "每次触发后目标点数{C:attention}-1{}",
      "{C:inactive}（A、K、Q、……、2、A）",
      "若一次出牌未触发新秩序，",
      "失去{X:mult,C:white}X0.1{}倍率",
      "{C:inactive}（当前为{X:mult,C:white}X1{C:inactive}倍率）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_new_order.png",
    rarity: "稀有",
    cost: 8
  },
  {
    name: "西西弗斯",
    text: [
      "选择{C:attention}盲注{}后",
      "随机选择一种{C:attention}点数{}",
      "将牌组中该点数的牌",
      "增强为{C:attention}石头牌{}",
      "西西弗斯每创建1张石头牌，",
      "获得{X:mult,C:white}X0.15{}倍率",
      "{C:inactive}（当前为{X:mult,C:white}X1{C:inactive}倍率）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_sisyphus.png",
    rarity: "稀有",
    cost: 9
  },
  {
    name: "火箭试验",
    text: [
      "每个启用的{C:attention}Mod{}",
      "提供{X:mult,C:white}X?.??{}倍率",
      "{C:inactive}（当前为{X:mult,C:white}X?.??{C:inactive}倍率）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_rocket_test.png",
    rarity: "稀有",
    cost: 9
  },
  {
    name: "集邮",
    text: [
      "每张带{C:dark_edition}版本{}的小丑牌",
      "提供{X:mult,C:white}X1.5{}倍率",
      "每种不同的{C:dark_edition}版本{}",
      "提供{X:mult,C:white}X1.5{}倍率"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_stamp_collection.png",
    rarity: "稀有",
    cost: 9
  },
  {
    name: "地狱",
    text: [
      "以至少{X:green,C:white}2X{}分数要求",
      "击败{C:attention}Boss盲注{}后，",
      "自毁并使底注{C:red}-1{}",
      "分数越高，",
      "减少的底注越多",
      "{C:inactive}（复制此牌者将陷入无间地狱）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_hell.png",
    rarity: "稀有",
    cost: 10
  },
  {
    name: "多彩银河",
    text: [
      "每次出牌时，",
      "有{C:green}1/81{}几率",
      "给一张随机{C:attention}小丑牌",
      "添加{C:dark_edition}版本{}",
      "打出并计分的牌中，",
      "每种不同的{C:attention}花色{}",
      "使上述概率乘以{C:green}3{}"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_colorful_galaxy.png",
    rarity: "稀有",
    cost: 9
  },
  {
    name: "典当行",
    text: [
      "本牌自动获得{C:dark_edition}永恒{}",
      "每有一张{C:dark_edition}永恒{}小丑牌，",
      "小丑牌槽位{C:attention}+1{}"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_pawn_shop.png",
    rarity: "稀有",
    cost: 12
  },
  {
    name: "假如……？",
    text: [
      "选择{C:attention}盲注{}后，",
      "摧毁右侧的小丑牌",
      "获得{X:mult,C:white}X0.5{}倍率",
      "并根据其稀有度和版本",
      "获得随机效果",
      "{C:inactive}（财富、空间、力量、幸运）",
      "{C:inactive}（当前为{X:mult,C:white}X1{C:inactive}倍率）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_what_if.png",
    rarity: "稀有",
    cost: 12
  },
  {
    name: "此即可能",
    text: [
      "以至少{X:green,C:white}2X{}分数要求",
      "击败{C:attention}Boss盲注{}后，",
      "生成1张带{C:dark_edition}负片{}的",
      "随机小丑牌",
      "分数越高，",
      "生成的小丑牌越多",
      "{C:inactive}（复制此牌者将囿于物质）"
    ],
    image_url: "MojiJoker/assets/2x/j_moji_these_are_the_odds.png",
    rarity: "传奇",
    cost: 20
  },
  // {
  //   name: "先古契约",
  //   text: [
  //     "{C:green}罕见{}、{C:red}稀有{}小丑牌和{C:dark_edition}版本{}",
  //     "出现概率提高{C:attention}100%{}"
  //   ],
  //   image_url: "MojiJoker/assets/2x/j_moji_world_heritage.png",
  //   rarity: "罕见",
  //   cost: 8
  // },
  // {
  //   name: "BO3",
  //   text: [
  //     "每在同一回合中",
  //     "打出同一牌型{C:attention}2{}次，",
  //     "将其{C:attention}升级{}"
  //   ],
  //   image_url: "MojiJoker/assets/2x/j_moji_pawn_shop.png",
  //   rarity: "罕见",
  //   cost: 7
  // },
  // {
  //   name: "定期存款",
  //   text: [
  //     "获得本牌时将所有资金",
  //     "储存于本牌{C:inactive}（最多{C:money}$50{C:inactive}）",
  //     "{C:attention}2{}回合后，",
  //     "出售本牌可获得",
  //     "储存资金的{C:attention}2{}倍"
  //   ],
  //   image_url: "MojiJoker/assets/2x/j_moji_fixed_deposit.png",
  //   rarity: "罕见",
  //   cost: 1
  // },
  // {
  //   name: "回扣",
  //   text: [
  //     "获得牌时获得{C:money}$4{}",
  //     "出售牌时失去{C:money}$3{}"
  //   ],
  //   image_url: "MojiJoker/assets/2x/j_moji_rebate.png",
  //   rarity: "普通",
  //   cost: 4
  // },
  // {
  //   name: "人寿保险",
  //   text: [
  //     "选择{C:attention}盲注{}后，",
  //     "失去当前筹码的{C:red}12.5%{}，",
  //     "获得等于资金{C:money}50%{}的筹码",
  //     "{C:inactive}（当前为{C:chips}+0{C:inactive}筹码）"
  //   ],
  //   image_url: "MojiJoker/assets/2x/j_moji_buy_one_get_one_free.png",
  //   rarity: "罕见",
  //   cost: 6
  // },
  // {
  //   name: "形影成双",
  //   text: [
  //     "打出的每对点数相同的牌",
  //     "和手牌中每对点数相同的牌",
  //     "都提供{X:mult,C:white}X1.44{}倍率"
  //   ],
  //   image_url: "MojiJoker/assets/2x/j_moji_double_shadow.png",
  //   rarity: "稀有",
  //   cost: 9
  // },
]

// works the same. 
let consumables = [
  // {
  //   name: "Joker",
  //   text: [
  //     "{C:mult}+4{} Mult"
  //   ],
  //   image_url: "MojiJoker/assets/2x/j_joker.png",
  //   rarity: "Tarot"
  // },
  // {
  //   name: "Joker",
  //   text: [
  //     "{C:mult}+4{} Mult"
  //   ],
  //   image_url: "MojiJoker/assets/2x/j_joker.png",
  //   rarity: "Planet"
  // },
  // {
  //   name: "Joker",
  //   text: [
  //     "{C:mult}+4{} Mult"
  //   ],
  //   image_url: "MojiJoker/assets/2x/j_joker.png",
  //   rarity: "Spectral"
  // },
]

let cols = {
  
  MULT: "#FE5F55",
  CHIPS: "#009dff",
  MONEY: "#f3b958",
  XMULT: "#FE5F55",
  FILTER: "#ff9a00",
  ATTENTION: "#ff9a00",
  BLUE: "#009dff",
  RED: "#FE5F55",
  GREEN: "#4BC292",
  PALE_GREEN: "#56a887",
  ORANGE: "#fda200",
  IMPORTANT: "#ff9a00",
  GOLD: "#eac058",
  YELLOW: "#ffff00",
  CLEAR: "#00000000", 
  WHITE: "#ffffff",
  PURPLE: "#8867a5",
  BLACK: "#374244",
  L_BLACK: "#4f6367",
  GREY: "#5f7377",
  CHANCE: "#4BC292",
  JOKER_GREY: "#bfc7d5",
  VOUCHER: "#cb724c",
  BOOSTER: "#646eb7",
  EDITION: "#ffffff",
  DARK_EDITION: "#9d9dff",
  ETERNAL: "#c75985",
  INACTIVE: "#ffffff99",
  LEGENDARY: "#b26cbb",
  TAROT: "#a782d1",
  PLANET: "#13afce",
  SPECTRAL: "#4584fa",
  VOUCHER: "#fd682b",
  EDITION: "#4ca893",
  DYN_UI: {
    MAIN: "#374244",
    DARK: "#374244",
    BOSS_MAIN: "#374244",
    BOSS_DARK: "#374244",
    BOSS_PALE: "#374244"
  },
  SO_1: {
    Hearts: "#f03464",
    Diamonds: "#f06b3f",
    Spades: "#403995",
    Clubs: "#235955",
  },
  SO_2: {
    Hearts: "#f83b2f",
    Diamonds: "#e29000",
    Spades: "#4f31b9",
    Clubs: "#008ee6",
  },
  SUITS: {
      Hearts: "#FE5F55",
      Diamonds: "#FE5F55",
      Spades: "#374649",
      Clubs: "#424e54",
  },
  
  SET: {
    Default: "#cdd9dc",
    Enhanced: "#cdd9dc",
    Joker: "#424e54",
    Tarot: "#424e54",
    Planet: "#424e54",
    Spectral: "#424e54",
    Voucher: "#424e54",
  }, 
  SECONDARY_SET: {
    Default: "#9bb6bdFF",
    Enhanced: "#8389DDFF",
    Joker: "#708b91",
    Tarot: "#a782d1",
    Planet: "#13afce",
    Spectral: "#4584fa",
    Voucher: "#fd682b",
    Edition: "#4ca893",
  },
}

let rarities = {
  "普通": "#009dff", 
  "罕见": "#4BC292",
  "稀有": "#fe5f55",
  "传奇": "#b26cbb",
  "小丑牌": "#708b91",
  "塔罗牌": "#a782d1",
  "星球牌": "#13afce",
  "幻灵牌": "#4584fa",
  "优惠券": "#fd682b",
  "版本": "#4ca893",
}

regex = /{([^}]+)}/g;

let jokers_div = document.querySelector(".jokers");

for (let joker of jokers) {
  console.log("adding joker", joker.name);

  joker.text = joker.text.map((line) => { return line + "{}"});

  joker.text = joker.text.join("<br/>");
  joker.text = joker.text.replaceAll("{}", "</span>");
  joker.text = joker.text.replace(regex, function replacer(match, p1, offset, string, groups) {
    let classes = p1.split(",");

    let css_styling = "";

    for (let i = 0; i < classes.length; i++) {
      let parts = classes[i].split(":");
      if (parts[0] === "C") {
        css_styling += `color: ${cols[parts[1].toUpperCase()]};`;
      } else if (parts[0] === "X") {
        css_styling += `background-color: ${cols[parts[1].toUpperCase()]}; border-radius: 5px; padding: 0 5px;`;
      }
    }

    return `</span><span style='${css_styling}'>`;
  });

  let joker_div = document.createElement("div");
  joker_div.classList.add("joker");
  if (joker.soul) {
    joker_div.innerHTML = `
      <h3>${joker.name}</h3>
      <span class="soulholder">
        <img src="${joker.image_url}" alt="${joker.name}" class="soul-bg" />
        <img src="${joker.image_url}" alt="${joker.name}" class="soul-top" />
      </span>
      <h4 class="rarity" style="background-color: ${rarities[joker.rarity]}">${joker.rarity}</h4>
      <div class="text">${joker.text}</div>
    `;
  } else {
    joker_div.innerHTML = `
      <h3>${joker.name}</h3>
      <img src="${joker.image_url}" alt="${joker.name}" />
      <h4 class="rarity" style="background-color: ${rarities[joker.rarity]}">${joker.rarity} ${joker.cost ? `$${joker.cost}` : ""}</h4>
      <div class="text">${joker.text}</div>
    `;
  }

  jokers_div.appendChild(joker_div);
}

if (consumables.length === 0) {
  document.querySelector(".consumableshidebydefault").style.display = "none"
}

let consumables_div = document.querySelector(".consumables");

for (let consumable of consumables) {
  console.log("adding consumable", consumable.name);

  consumable.text = consumable.text.map((line) => { return line + "{}"});

  consumable.text = consumable.text.join("<br/>");
  consumable.text = consumable.text.replaceAll("{}", "</span>");
  consumable.text = consumable.text.replace(regex, function replacer(match, p1, offset, string, groups) {
    let classes = p1.split(",");

    let css_styling = "";

    for (let i = 0; i < classes.length; i++) {
      let parts = classes[i].split(":");
      if (parts[0] === "C") {
        css_styling += `color: ${cols[parts[1].toUpperCase()]};`;
      } else if (parts[0] === "X") {
        css_styling += `background-color: ${cols[parts[1].toUpperCase()]}; border-radius: 5px; padding: 0 5px;`;
      }
    }

    return `</span><span style='${css_styling}'>`;
  });

  let consumable_div = document.createElement("div");
  consumable_div.classList.add("joker");
  if (consumable.soul) {
    consumable_div.innerHTML = `
      <h3>${consumable.name}</h3>
      <span class="soulholder">
        <img src="${consumable.image_url}" alt="${consumable.name}" class="soul-bg" />
        <img src="${consumable.image_url}" alt="${consumable.name}" class="soul-top" />
      </span>
      <h4 class="rarity" style="background-color: ${rarities[consumable.rarity]}">${consumable.rarity}</h4>
      <div class="text">${consumable.text}</div>
    `;
  } else {
    consumable_div.innerHTML = `
      <h3>${consumable.name}</h3>
      <img src="${consumable.image_url}" alt="${consumable.name}" />
      <h4 class="rarity" style="background-color: ${rarities[consumable.rarity]}">${consumable.rarity}</h4>
      <div class="text">${consumable.text}</div>
    `;
  }

  consumables_div.appendChild(consumable_div);
}
