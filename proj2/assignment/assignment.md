# Projekt č. 2

**Otevřené:** pátek, 8. března 2024, 00.05
**Termín:** čtvrtek, 21. března 2024, 23.59

---

## Sazba dokumentů a matematických výrazů
Instrukce jsou podobné jako v prvním projektu. Vaším úkolem je opět vytvořit v LaTeXu dokument, který bude co nejvíce odpovídat vzorovému dokumentu PDF.

- Na titulní straně dole uveďte své jméno a login.
- Pozorně čtěte text v zadaném PDF. Obsahuje instrukce a nápovědy.
- Používejte vhodné příkazy a konstrukce pro sázení seznamů, odkazů, rovnic,  titulní strany, definic, nadpisů atd. Za ruční sázení natvrdo se strhávají body. 
- Nezlomitelné mezery vkládejte tam, kam patří, ale nikdy tam, kam nepatří.
- Body se strhávají i za stejné chyby jako v prvním projektu. Snažte se je tedy neopakovat.
- Z balíků AMS byly použity příkazy `\newtheorem` a `\binom`, plus další příkazy pro sázení speciálních symbolů. Dále byly až na pár výjimek použity příkazy uvedené na přednáškách (sazba rovnic, matematických výrazů, indexů, mocnin, matic atd.).
- Chybějící nebo nefunkční Makefile povede ke ztrátě až 6 bodů.
- Po odevzdání si zkuste své řešení stáhnout z IS a zkontrolujte, že je lze přeložit na serveru merlin. Nepřeložitelný projekt pravděpodobně povede na 0 bodů.
- Někdy se nepodaří dosáhnout vzhledu naprosto totožného se vzorovým dokumentem. Je lepší použít správné konstrukce LaTeXu než používat nestandardní triky vedoucí k dokonalé kopii vzoru. Zejména se strhávají body za umělé vkládání pevných horizontálních a vertikálních mezer. Výjimku má titulní strana a použití `\qquad` v první rovnici v podsekci 1.2.

## Požadované parametry dokumentu
- rozměry stránky: A4, parametr `a4paper` dokumentové třídy `article`
- sazba na dva sloupce: parametr `twocolumn` dokumentové třídy `article`
- velikost písma: 11 pt, parametr `11pt` dokumentové třídy `article`
- písmo: lmodern (v balíku `lmodern`}
- rozměry textové oblasti: 183 mm × 252 mm (balík `geometry`)
- mezera vlevo: 14 mm (balík `geometry`)
- mezera nahoře: 23 mm (balík `geometry`)
- kódování fontu: T1 (parametr `T1` balíku `fontenc`)
- znaková sada a kódování zdrojového textu: Unicode UTF8 (parametr `utf8` balíku `inputenc`)

## Překlad dokumentu
Text obsahuje odkazy, proto svůj dokument musíte v Makefile zpracovat **dvěma průchody** programem `pdflatex`.

## Odevzdání
Odevzdávejte pouze dva soubory:

- zdrojový soubor `proj2.tex`
- Makefile

Neodevzdávejte soubor PDF. Ten musí být výsledkem volání `make` bez parametrů.

Svoje odevzdané řešení můžete v systému ponechat ve stavu *návrh* pro potřeby dodatečných úprav v rámci lhůty pro vypracování projektu. I projekty ve stavu *návrh* budou chápány jako korektně odevzdané.

## Vzorový dokument
Je dostupný po kliknutí na detail úkolu Projekt č. 2.

- vzor.pdf