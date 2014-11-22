---
layout:   post
title:    "LaTeX"
date:     2014-11-10 18:09:20 +0800
modified: 2014-11-22 13:49:54 +0800
mathjax:  true
---

> Don't learn, just use. -- To \\(\LaTeX\\)

## Contents

- [Fonts](#fonts)
  - [Fonts Styles](#font-styles)
  - [Fonts Sizes](#font-sizes)
- [Symbols](#symbols)
  - [Greek Letters](#greek-letters)
  - [Binary Operation Symbols](#binary-operation-symbols)
  - [Relation Symbols](#relation-symbols)
  - [Delimiters](#delimiters)
  - [Arrow Symbols](#arrow-symbols)
  - [Miscellaneous Symbols](#miscellaneous-symbols)
  - [Log-like Symbols](#log-like-symbols)
  - [Math Mode Accents](#math-mode-accents)
  - [Variable-sized Symbols](#variable-sized-symbols)
  - [Math Constructs](#math-constructs)


## Fonts

### Font Styles

| \\(\mathrm{XYZ}\\) | `\mathrm` |
| \\(\mathbf{XYZ}\\) | `\mathbf` | \\(\mathit{XYZ}\\) | `\mathit` | \\(\mathsf{XYZ}\\) | `\mathsf` | \\(\mathtt{XYZ}\\) | `\mathtt` |
| \\(\mathfrak{XYZ}\\) | `\mathfrak` | \\(\mathcal{XYZ}\\) | `\mathcal` | \\(\mathbb{XYZ}\\) | `\mathbb` | \\(\mathscr{XYZ}\\) | `\mathscr` |

#### Exceptions

- `\mathbf\alpha` (\\(\mathbf\alpha\\)) should be `\boldsymbol\alpha` (\\(\boldsymbol\alpha\\))

### Font Sizes

| \\(\tiny tiny\\) | `\tiny` | \\(\scriptsize script\\) | `\scriptsize` | \\(\small small\\) | `\small` | \\(\normalsize normal\\) | `\normalsize` |

| \\(\large large\\) | `\large` | \\(\Large Large\\) | `\Large` | \\(\LARGE LARGE\\) | `\LARGE` |

| \\(\huge huge\\) | `\huge` | \\(\Huge Huge\\) | `\Huge` |


## Symbols

### Greek Letters

 | \\(\alpha\\) | `\alpha` | \\(\theta\\) | `\theta` | o | o | \\(\tau\\) | `\tau` |
 | \\(\beta\\) | `\beta` | \\(\vartheta\\) | `\vartheta` | \\(\pi\\) | `\pi` | \\(\upsilon\\) | `\upsilon` |
 | \\(\gamma\\) | `\gamma` | \\(\gamma\\) | `\gamma` | \\(\varpi\\) | `\varpi` | \\(\phi\\) | `\phi` |
 | \\(\delta\\) | `\delta` | \\(\kappa\\) | `\kappa` | \\(\rho\\) | `\rho` | \\(\varphi\\) | `\varphi` |
 | \\(\epsilon\\) | `\epsilon` | \\(\lambda\\) | `\lambda` | \\(\varrho\\) | `\varrho` | \\(\chi\\) | `\chi` |
 | \\(\varepsilon\\) | `\varepsilon` | \\(\mu\\) | `\mu` | \\(\sigma\\) | `\sigma` | \\(\psi\\) | `\psi` |
 | \\(\zeta\\) | `\zeta` | \\(\nu\\) | `\nu` | \\(\varsigma\\) | `\varsigma` | \\(\omega\\) | `\omega` |
 | \\(\eta\\) | `\eta` | \\(\xi\\) | `\xi` |
 ||
 | \\(\Gamma\\) | `\Gamma` | \\(\Lambda\\) | `\Lambda` | \\(\Sigma\\) | `\Sigma` | \\(\Psi\\) | `\Psi` |
 | \\(\Delta\\) | `\Delta` | \\(\Xi\\) | `\Xi` | \\(\Upsilon\\) | `\Upsilon` | \\(\Omega\\) | `\Omega` |
 | \\(\Theta\\) | `\Theta` | \\(\Pi\\) | `\Pi` | \\(\Phi\\) | `\Phi` |

### Binary Operation Symbols

| \\(\pm\\) | `\pm` | \\(\cap\\) | `\cap` | \\(\diamond\\) | `\diamond` | \\(\oplus\\) | `\oplus` |
| \\(\mp\\) | `\mp` | \\(\cup\\) | `\cup` | \\(\bigtriangleup\\) | `\bigtriangleup` | \\(\ominus\\) | `\ominus` |
| \\(\times\\) | `\times` | \\(\uplus\\) | `\uplus` | \\(\bigtriangledown\\) | `\bigtriangledown` | \\(\otimes\\) | `\otimes` |
| \\(\div\\) | `\div` | \\(\sqcap\\) | `\sqcap` | \\(\triangleleft\\) | `\triangleleft` | \\(\oslash\\) | `\oslash` |
| \\(\ast\\) | `\ast` | \\(\sqcup\\) | `\sqcup` | \\(\triangleright\\) | `\triangleright` | \\(\odot\\) | `\odot` |
| \\(\star\\) | `\star` | \\(\vee\\) | `\vee` | \\(\lhd\\) | `\lhd` | \\(\bigcirc\\) | `\bigcirc` |
| \\(\circ\\) | `\circ` | \\(\wedge\\) | `\wedge` | \\(\rhd\\) | `\rhd` | \\(\dagger\\) | `\dagger` |
| \\(\cdot\\) | `\cdot` | \\(\wr\\) | `\wr` | \\(\unrhd\\) | `\unrhd` | \\(\amalg\\) | `\amalg` |

### Relation Symbols

| \\(\leq\\) | `\leq` | \\(\geq\\) | `\geq` | \\(\equiv\\) | `\equiv` | \\(\models\\) | `\models` |
| \\(\prec\\) | `\prec` | \\(\succ\\) | `\succ` | \\(\sim\\) | `\sim` | \\(\perp\\) | `\perp` |
| \\(\preceq\\) | `\preceq` | \\(\succeq\\) | `\succeq` | \\(\simeq\\) | `\simeq` | \\(\mid\\) | `\mid` |
| \\(\ll\\) | `\ll` | \\(\gg\\) | `\gg` | \\(\asymp\\) | `\asymp` | \\(\parallel\\) | `\parallel` |
| \\(\subset\\) | `\subset` | \\(\supset\\) | `\supset` | \\(\approx\\) | `\approx` | \\(\bowtie\\) | `\bowtie` |
| \\(\subseteq\\) | `\subseteq` | \\(\supseteq\\) | `\supseteq` | \\(\cong\\) | `\cong` | \\(\Join\\) | `\Join` |
| \\(\sqsubset\\) | `\sqsubset` | \\(\sqsupset\\) | `\sqsupset` | \\(\sqsubseteq\\) | `\sqsubseteq` | \\(\sqsupseteq\\) | `\sqsupseteq` |
| \\(=\\) | `=` | \\(\neq\\) | `\neq` | \\(\smile\\) | `\smile` | \\(\frown\\) | `\frown` |
| \\(\doteq\\) | `\doteq` | \\(\in\\) | `\in` | \\(\ni\\) | `\ni` | \\(\propto\\) | `\propto` |
| \\(\vdash\\) | `\vdash` | \\(\dashv\\) | `\dashv` | \\(<\\) | `<` | \\(>\\) | `>` |

### Delimiters

| \\(\rmoustache\\) | `\rmoustache` | \\(\lmoustache\\) | `\lmoustache` | \\(\rgroup\\) | `\rgroup` | \\(\lgroup\\) | `\lgroup` |
| \\(\arrowvert\\) | `\arrowvert` | \\(\Arrowvert\\) | `\Arrowvert` | \\(\bracevert\\) | `\bracevert` |
| \\(\uparrow\\) | `\uparrow` | \\(\Uparrow\\) | `\Uparrow` | \\(\downarrow\\) | `\downarrow` | \\(\Downarrow\\) | `\Downarrow` |
| \\(\{\\) | `\{` | \\(\}\\) | `\}` | \\(\updownarrow\\) | `\updownarrow` | \\(\Updownarrow\\) | `\Updownarrow` |
| \\(\lfloor\\) | `\lfloor` | \\(\rfloor\\) | `\rfloor` | \\(\lceil\\) | `\lceil` | \\(\rceil\\) | `\rceil` |
| \\(\langle\\) | `\langle` | \\(\rangle\\) | `\rangle` | \\(/\\) | `/` | \\(\backslash\\) | `\backslash` |
| \\(\|\\) | `|` | \\(\\\\|\\) | `\|` |

### Arrow Symbols

| \\(\leftarrow\\) | `\leftarrow` | \\(\longleftarrow\\) | `\longleftarrow` | \\(\uparrow\\) | `\uparrow` |
| \\(\Leftarrow\\) | `\Leftarrow` | \\(\Longleftarrow\\) | `\Longleftarrow` | \\(\Uparrow\\) | `\Uparrow` |
| \\(\rightarrow\\) | `\rightarrow` | \\(\longrightarrow\\) | `\longrightarrow` | \\(\downarrow\\) | `\downarrow` |
| \\(\Rightarrow\\) | `\Rightarrow` | \\(\Longrightarrow\\) | `\Longrightarrow` | \\(\Downarrow\\) | `\Downarrow` |
| \\(\leftrightarrow\\) | `\leftrightarrow` | \\(\longleftrightarrow\\) | `\longleftrightarrow` | \\(\updownarrow\\) | `\updownarrow` |
| \\(\Leftrightarrow\\) | `\Leftrightarrow` | \\(\Longleftrightarrow\\) | `\Longleftrightarrow` | \\(\Updownarrow\\) | `\Updownarrow` |
| \\(\mapsto\\) | `\mapsto` | \\(\longmapsto\\) | `\longmapsto` | \\(\nearrow\\) | `\nearrow` |
| \\(\hookleftarrow\\) | `\hookleftarrow` | \\(\hookrightarrow\\) | `\hookrightarrow` | \\(\searrow\\) | `\searrow` |
| \\(\leftharpoonup\\) | `\leftharpoonup` | \\(\rightharpoonup\\) | `\rightharpoonup` | \\(\swarrow\\) | `\swarrow` |
| \\(\leftharpoondown\\) | `\leftharpoondown` | \\(\rightharpoondown\\) | `\rightharpoondown` | \\(\nwarrow\\) | `\nwarrow` |

### Miscellaneous Symbols

| \\(\dots\\) | `\dots` | \\(\cdots\\) | `\cdots` | \\(\vdots\\) | `\vdots` | \\(\ddots\\) | `\ddots` |
| \\(\aleph\\) | `\aleph` | \\(\prime\\) | `\prime` | \\(\forall\\) | `\forall` | \\(\infty\\) | `\infty` |
| \\(\hbar\\) | `\hbar` | \\(\emptyset\\) | `\emptyset` | \\(\exists\\) | `\exists` | \\(\nabla\\) | `\nabla` |
| \\(\surd\\) | `\surd` | \\(\Box\\) | `\Box` | \\(\triangle\\) | `\triangle` | \\(\Diamond\\) | `\Diamond` |
| \\(\imath\\) | `\imath` | \\(\jmath\\) | `\jmath` | \\(\ell\\) | `\ell` | \\(\neg\\) | `\neg` |
| \\(\top\\) | `\top` | \\(\flat\\) | `\flat` | \\(\natural\\) | `\natural` | \\(\sharp\\) | `\sharp` |
| \\(\wp\\) | `\wp` | \\(\bot\\) | `\bot` | \\(\clubsuit\\) | `\clubsuit` | \\(\diamondsuit\\) | `\diamondsuit` |
| \\(\heartsuit\\) | `\heartsuit` | \\(\spadesuit\\) | `\spadesuit` | \\(\mho\\) | `\mho` | \\(\Re\\) | `\Re` |
| \\(\Im\\) | `\Im` | \\(\angle\\) | `\angle` | \\(\partial\\) | `\partial` |

### Log-like Symbols

| \\(\arccos\\) | `\arccos` | \\(\cos\\) | `\cos` | \\(\csc\\) | `\csc` | \\(\exp\\) | `\exp` |
| \\(\ker\\) | `\ker` | \\(\limsup\\) | `\limsup` | \\(\min\\) | `\min` | \\(\sinh\\) | `\sinh` |
| \\(\arcsin\\) | `\arcsin` | \\(\cosh\\) | `\cosh` | \\(\deg\\) | `\deg` | \\(\gcd\\) | `\gcd` |
| \\(\lg\\) | `\lg` | \\(\ln\\) | `\ln` | \\(\Pr\\) | `\Pr` | \\(\sup\\) | `\sup` |
| \\(\arctan\\) | `\arctan` | \\(\cot\\) | `\cot` | \\(\det\\) | `\det` | \\(\hom\\) | `\hom` |
| \\(\lim\\) | `\lim` | \\(\log\\) | `\log` | \\(\sec\\) | `\sec` | \\(\tan\\) | `\tan` |
| \\(\arg\\) | `\arg` | \\(\coth\\) | `\coth` | \\(\dim\\) | `\dim` | \\(\inf\\) | `\inf` |
| \\(\liminf\\) | `\liminf` | \\(\max\\) | `\max` | \\(\sin\\) | `\sin` | \\(\tanh\\) | `\tanh` |

### Math Mode Accents

| \\(\hat{a}\\) | `\hat{a}` | \\(\acute{a}\\) | `\acute{a}` | \\(\bar{a}\\) | `\bar{a}` | \\(\dot{a}\\) | `\dot{a}` |
| \\(\breve{a}\\) | `\breve{a}` | \\(\check{a}\\) | `\check{a}` | \\(\grave{a}\\) | `\grave{a}` | \\(\vec{a}\\) | `\vec{a}` |
| \\(\ddot{a}\\) | `\ddot{a}` | \\(\tilde{a}\\) | `\tilde{a}` |

### Variable-sized Symbols

| \\(\sum\\) | `\sum` | \\(\prod\\) | `\prod` | \\(\coprod\\) | `\coprod` | \\(\int\\) | `\int` |
| \\(\oint\\) | `\oint` | \\(\bigcap\\) | `\bigcap` | \\(\bigcup\\) | `\bigcup` | \\(\bigsqcup\\) | `\bigsqcup` |
| \\(\bigvee\\) | `\bigvee` | \\(\bigwedge\\) | `\bigwedge` | \\(\bigodot\\) | `\bigodot` | \\(\bigotimes\\) | `\bigotimes` |
| \\(\bigoplus\\) | `\bigoplus` | \\(\biguplus\\) | `\biguplus` |

### Math Constructs

| \\(\widetilde{abc}\\) | `\widetilde{abc}` | \\(\widehat{abc}\\) | `\widehat{abc}` |
| \\(\overleftarrow{abc}\\) | `\overleftarrow{abc}` | \\(\overrightarrow{abc}\\) | `\overrightarrow{abc}` |
| \\(\overline{abc}\\) | `\overline{abc}` | \\(\underline{abc}\\) | `\underline{abc}` |
| \\(\overbrace{abc}\\) | `\overbrace{abc}` | \\(\underbrace{abc}\\) | `\underbrace{abc}` |
| \\(\sqrt{abc}\\) | `\sqrt{abc}` | \\(\sqrt[n]{abc}\\) | `\sqrt[n]{abc}` |
| \\(f'\\) | `f'` | \\(\frac{abc}{xyz}\\) | `\frac{abc}{xyz}` |


## Reference

1. Essential \\(\LaTeX\\) [http://www.andy-roberts.net/res/writing/latex/symbols.pdf]()
