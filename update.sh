# hyperfine --style=full  'neofetch' 'fastfetch'  > hyperfine.ans

# neofetch > neofetch.ans

for i in neofetch hyperfine
do
  ansi2 $i.ans > $i.svg
  ansi2 $i.ans --mode dark > $i.dark.svg
  ansi2 $i.ans --mode light > $i.light.svg

  resvg $i.dark.svg $i.dark.png
  resvg $i.light.svg $i.light.png
done