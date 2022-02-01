# Keine Ligaturen

This script can be used as a filter to add ZERO WIDTH NON-JOINER
characters to German UTF-8 encoded text such that no ligatures are
used by rendering engines such as web browsers.

The data is based on
[selnolig](https://github.com/micoloretan/selnolig/). In fact, the
Perl script simply contains a verbatim copy of
`selnolig-german-patterns.sty` which it parses in order to do the
appropriate replacements.

Example usage:

```
keine-ligaturen < example.md | markdown > example.html
```

Here’s the result piped through grep to make the ZERO WIDTH NON-JOINER
U+200C visible:

<pre><font color="#00BF32">keine-ligaturen</font> <font color="#7CB02C">&lt;</font> <font color="#7CB02C">Farnthal.md</font> <font color="#8EEB00">|</font> <font color="#00BF32">grep</font> <font color="#04819E">-P</font> <font color="#206676">&quot;\x{200c}\S+&quot;</font>
Dämonen, die immer wieder mal auf‌<font color="#EF2828"><b>tauchen:</b></font> **Loki**, der Freund aller
&gt; Gegenzug auf‌<font color="#EF2828"><b>tagen,</b></font> in meinem Namen zum Himmelturm aufzusteigen und
kein Erststüf‌<font color="#EF2828"><b>ler</b></font> mehr, sondern ein Held! Dafür wird natürlich auch
Monsterliste sagt mir, das Bergwölfe vielleicht einen Auf‌<font color="#EF2828"><b>tritt</b></font> haben
Da Teriki und Gundabad die Dorf‌<font color="#EF2828"><b>jugend</b></font> zum Himmelturm schicken wollen,
vertreiben, doch die Dörf‌<font color="#EF2828"><b>ler</b></font> wollen ihre Kinder nicht gefährden.
&gt; vertreiben und ich helfe euch, die Dorf‌<font color="#EF2828"><b>jugend</b></font> für eure Zwecke zu
## Die Dorf‌<font color="#EF2828"><b>jugend</b></font>
Strasse. Damit ist klar, dass die Bergwölfe einen Auf‌<font color="#EF2828"><b>tritt</b></font> haben
nicht an der Dorf‌<font color="#EF2828"><b>jugend;</b></font> Gundabad ist ebenfalls an Schätzen
</pre>
