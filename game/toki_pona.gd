@tool
class_name TokiPona

# UCSUR unicode characters
# https://github.com/etbcor/nasin-nanpa/tree/main/ahk-script
# https://github.com/spacehare/tp.py

static var nimi: Dictionary[String, String] = {
	'kijetesantakalu': char("0xF1980".hex_to_int()), # 󱦀
	'misikeke': char("0xF1987".hex_to_int()), # 󱦇
	'kokosila': char("0xF1984".hex_to_int()), # 󱦄
	'kepeken': char("0xF1919".hex_to_int()), # 󱤙
	'sitelen': char("0xF1960".hex_to_int()), # 󱥠
	'monsuta': char("0xF197D".hex_to_int()), # 󱥽
	'lanpan': char("0xF1985".hex_to_int()), # 󱦅
	'kalama': char("0xF1915".hex_to_int()), # 󱤕
	'kulupu': char("0xF191F".hex_to_int()), # 󱤟
	'pakala': char("0xF1948".hex_to_int()), # 󱥈
	'palisa': char("0xF194A".hex_to_int()), # 󱥊
	'pimeja': char("0xF194F".hex_to_int()), # 󱥏
	'sijelo': char("0xF195B".hex_to_int()), # 󱥛
	'sinpin': char("0xF195F".hex_to_int()), # 󱥟
	'soweli': char("0xF1962".hex_to_int()), # 󱥢
	'majuna': char("0xF19A2".hex_to_int()), # 󱦢
	'namako': char("0xF1978".hex_to_int()), # 󱥸
	'kipisi': char("0xF197B".hex_to_int()), # 󱥻
	'jasima': char("0xF197F".hex_to_int()), # 󱥿
	'akesi': char("0xF1901".hex_to_int()), # 󱤁
	'apeja': char("0xF19A1".hex_to_int()), # 󱦡
	'kiwen': char("0xF191B".hex_to_int()), # 󱤛
	'linja': char("0xF1929".hex_to_int()), # 󱤩
	'lukin': char("0xF192E".hex_to_int()), # 󱤮
	'monsi': char("0xF1938".hex_to_int()), # 󱤸
	'nanpa': char("0xF193D".hex_to_int()), # 󱤽
	'nasin': char("0xF193F".hex_to_int()), # 󱤿
	'pilin': char("0xF194E".hex_to_int()), # 󱥎
	'tenpo': char("0xF196B".hex_to_int()), # 󱥫
	'utala': char("0xF1971".hex_to_int()), # 󱥱
	'tonsi': char("0xF197E".hex_to_int()), # 󱥾
	'epiku': char("0xF1983".hex_to_int()), # 󱦃
	'alasa': char("0xF1903".hex_to_int()), # 󱤃
	'insa': char("0xF190F".hex_to_int()), # 󱤏
	'jaki': char("0xF1910".hex_to_int()), # 󱤐
	'jelo': char("0xF1912".hex_to_int()), # 󱤒
	'kala': char("0xF1914".hex_to_int()), # 󱤔
	'kama': char("0xF1916".hex_to_int()), # 󱤕
	'kasi': char("0xF1917".hex_to_int()), # 󱤗
	'kili': char("0xF191A".hex_to_int()), # 󱤚
	'kule': char("0xF191E".hex_to_int()), # 󱤞
	'kute': char("0xF1920".hex_to_int()), # 󱤠
	'lape': char("0xF1922".hex_to_int()), # 󱤢
	'laso': char("0xF1923".hex_to_int()), # 󱤣
	'lawa': char("0xF1924".hex_to_int()), # 󱤤
	'lete': char("0xF1926".hex_to_int()), # 󱤦
	'lili': char("0xF1928".hex_to_int()), # 󱤨
	'lipu': char("0xF192A".hex_to_int()), # 󱤪
	'loje': char("0xF192B".hex_to_int()), # 󱤫
	'luka': char("0xF192D".hex_to_int()), # 󱤭
	'lupa': char("0xF192F".hex_to_int()), # 󱤯
	'mama': char("0xF1931".hex_to_int()), # 󱤱
	'mani': char("0xF1932".hex_to_int()), # 󱤲
	'mije': char("0xF1935".hex_to_int()), # 󱤵
	'moku': char("0xF1936".hex_to_int()), # 󱤶
	'moli': char("0xF1937".hex_to_int()), # 󱤷
	'musi': char("0xF193B".hex_to_int()), # 󱤻
	'mute': char("0xF193C".hex_to_int()), # 󱤼
	'nasa': char("0xF193E".hex_to_int()), # 󱤾
	'nena': char("0xF1940".hex_to_int()), # 󱥀
	'nimi': char("0xF1942".hex_to_int()), # 󱥂
	'noka': char("0xF1943".hex_to_int()), # 󱥃
	'olin': char("0xF1945".hex_to_int()), # 󱥅
	'open': char("0xF1947".hex_to_int()), # 󱥇
	'pake': char("0xF19A0".hex_to_int()), # 󱦠
	'pali': char("0xF1949".hex_to_int()), # 󱥉
	'pana': char("0xF194C".hex_to_int()), # 󱥌
	'pini': char("0xF1950".hex_to_int()), # 󱥐
	'pipi': char("0xF1951".hex_to_int()), # 󱥑
	'poka': char("0xF1952".hex_to_int()), # 󱥒
	'poki': char("0xF1953".hex_to_int()), # 󱥓
	'pona': char("0xF1954".hex_to_int()), # 󱥔
	'powe': char("0xF19A3".hex_to_int()), # 󱦣
	'sama': char("0xF1956".hex_to_int()), # 󱥖
	'seli': char("0xF1957".hex_to_int()), # 󱥗
	'selo': char("0xF1958".hex_to_int()), # 󱥘
	'seme': char("0xF1959".hex_to_int()), # 󱥙
	'sewi': char("0xF195A".hex_to_int()), # 󱥚
	'sike': char("0xF195C".hex_to_int()), # 󱥜
	'sina': char("0xF195E".hex_to_int()), # 󱥞
	'sona': char("0xF1961".hex_to_int()), # 󱥡
	'suli': char("0xF1963".hex_to_int()), # 󱥣
	'suno': char("0xF1964".hex_to_int()), # 󱥤
	'supa': char("0xF1965".hex_to_int()), # 󱥥
	'suwi': char("0xF1966".hex_to_int()), # 󱥦
	'taso': char("0xF1968".hex_to_int()), # 󱥨
	'tawa': char("0xF1969".hex_to_int()), # 󱥩
	'telo': char("0xF196A".hex_to_int()), # 󱥪
	'toki': char("0xF196C".hex_to_int()), # 󱥬
	'tomo': char("0xF196D".hex_to_int()), # 󱥭
	'unpa': char("0xF196F".hex_to_int()), # 󱥯
	'walo': char("0xF1972".hex_to_int()), # 󱥲
	'waso': char("0xF1974".hex_to_int()), # 󱥴
	'wawa': char("0xF1975".hex_to_int()), # 󱥵
	'weka': char("0xF1976".hex_to_int()), # 󱥶
	'wile': char("0xF1977".hex_to_int()), # 󱥷
	'leko': char("0xF197C".hex_to_int()), # 󱥼
	'soko': char("0xF1981".hex_to_int()), # 󱦁
	'meso': char("0xF1982".hex_to_int()), # 󱦂
	'meli': char("0xF1933".hex_to_int()), # 󱤳
	'anpa': char("0xF1905".hex_to_int()), # 󱤅
	'ante': char("0xF1906".hex_to_int()), # 󱤆
	'awen': char("0xF1908".hex_to_int()), # 󱤈
	'esun': char("0xF190B".hex_to_int()), # 󱤋
	'ilo': char("0xF190E".hex_to_int()), # 󱤎
	'jan': char("0xF1911".hex_to_int()), # 󱤑
	'ken': char("0xF1918".hex_to_int()), # 󱤘
	'kon': char("0xF191D".hex_to_int()), # 󱤝
	'len': char("0xF1925".hex_to_int()), # 󱤥
	'lon': char("0xF192C".hex_to_int()), # 󱤬
	'mun': char("0xF193A".hex_to_int()), # 󱤺
	'ona': char("0xF1946".hex_to_int()), # 󱥆
	'pan': char("0xF194B".hex_to_int()), # 󱥋
	'sin': char("0xF195D".hex_to_int()), # 󱥝
	'tan': char("0xF1967".hex_to_int()), # 󱥧
	'uta': char("0xF1970".hex_to_int()), # 󱥰
	'wan': char("0xF1973".hex_to_int()), # 󱥳
	'kin': char("0xF1979".hex_to_int()), # 󱥹
	'oko': char("0xF197A".hex_to_int()), # 󱥺
	'ike': char("0xF190D".hex_to_int()), # 󱤍
	'ala': char("0xF1902".hex_to_int()), # 󱤂
	'ale': char("0xF1904".hex_to_int()), # 󱤄
	'anu': char("0xF1907".hex_to_int()), # 󱤇
	'ijo': char("0xF190C".hex_to_int()), # 󱤌
	'jo': char("0xF1913".hex_to_int()), # 󱤓
	'ko': char("0xF191C".hex_to_int()), # 󱤜
	'la': char("0xF1921".hex_to_int()), # 󱤡
	'li': char("0xF1927".hex_to_int()), # 󱤧
	'ma': char("0xF1930".hex_to_int()), # 󱤰
	'mi': char("0xF1934".hex_to_int()), # 󱤴
	'mu': char("0xF1939".hex_to_int()), # 󱤹
	'ni': char("0xF1941".hex_to_int()), # 󱥁
	'pi': char("0xF194D".hex_to_int()), # 󱥍
	'pu': char("0xF1955".hex_to_int()), # 󱥕
	'tu': char("0xF196E".hex_to_int()), # 󱥮
	'ku': char("0xF1988".hex_to_int()), # 󱦈
	'en': char("0xF190A".hex_to_int()), # 󱤊
	'o': char("0xF1944".hex_to_int()), # 󱥄
	'n': char("0xF1986".hex_to_int()), # 󱦆
	'a': char("0xF1900".hex_to_int()), # 󱤀
	'e': char("0xF1909".hex_to_int()), # 󱤉
	'[': char("0xF1990".hex_to_int()), # cartouche start
	']': char("0xF1991".hex_to_int()), # cartouche end
	'=': char("0xF1992".hex_to_int()), # cartouche extender

	'-': char("0x200D".hex_to_int()), # default zero width joiner
	'^': char("0xF1995".hex_to_int()), # stacking joiner
	'*': char("0xF1996".hex_to_int()), # scaling joiner

	'(': char("0xF1997".hex_to_int()), # start left-combining (normal) long glyph
	')': char("0xF1998".hex_to_int()), # end left-combining (normal) long glyph
	'_': char("0xF1999".hex_to_int()), # container extender

	'{': char("0xF199A".hex_to_int()), # start right-combining (reversed) long glyph
	'}': char("0xF199B".hex_to_int()), # end right-combining (reversed) long glyph

	'.': char("0xF199C".hex_to_int()), # sitelen pona full stop
	':': char("0xF199D".hex_to_int()), # sitelen pona colon


	' ': char("0x3000".hex_to_int()), # logograph fullwidth space
	'<': char("0x300C".hex_to_int()), # 「 start quote
	'>': char("0x300D".hex_to_int()), # 」 end quote


	'~~': char("0xFE01".hex_to_int()), # variation selector 2
	'~': char("0xFE00".hex_to_int()), # variation selector 1
}

static func ucsurize(string: String) -> String:
	var split = string.split(' ')
	var output: Array[String] = []
	for word in split:
		var result: String = nimi.get(word, word)
		output.push_back(result)
	return ' '.join(output)
