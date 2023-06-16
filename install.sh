#!/bin/bash
skip=50
set -e
case $(printf 'X\n' | tail -n +1 2>/dev/null) in
X) tail_n=-n;;
*) tail_n=;;
esac

z="
";n55=' | b';Gg='prin';Ll8s='4 -d';npeT='tf "';Ht=' rev';iLJB='=ogCYlGb5R3UgYmctASbypgLuACZjpwboNWZKIiP90TP90TP90TP90TP90TP90TP90TP90TP90TP90TP90TP90TP90TP90TP9wjIg8GajVmCis2bvxGIl12bzV2dhBSZoRHIlV2cgQmbhBCe11mclRHIyV3b5BiblB3blJFIiAyboNWZKICZlRXZsBXbvNGIzlGIwVHdlNHIYlGb5R3UgACIgACIgACIiAyboNWZKIiP90TP90TP90TP90TP90TP90TP90TP90TP90TP90TP90TP90TP90TP90TP9wjIg8GajVmCigVLyV2ajFGSy1EI5JEIgACIgACIgACIgACIgICIvh2YlpgI+0TP90TP90TP90TP90TP90TP90TP90TP90TP90TP90TP90TP90TP90TP9wjIg8GajVmCvh2YlpgC4lGb5R3cu8SZt9GavMXZslmZvgXdtJXZ05SbvN2LhRXYk9SY0FGZvAibpd2bsBidtpgCul2ZvxGI+4DIkJ3b3N3chBHJg8GajVmCul2ZvxGI+4DIl1WYuJXZzVHJg8GajVmCKUmbvRmCi4ibpF2ZhBSeyRHIlNXYlxGUg4CZlZXalNWZyBCdv5GIu9Wa0FWbylmZu92Qg0VIbJCIvh2YlBCIgAiCKkmZgACIgoAcv9GbgUGa0BCdphXZgwCZlZXalNWZyBibvlGdh1mcpZmbvNEIjACIrFWZyJGIgACIgACIgogblhGdgsTXdBCMgEXZtAyPkAyWbBiZpBCIgAiCkVmdpV2YlJHIzlGIu9Wa0FWbylmZu92YgUGa0BiZpByajVGaDByIgACIgogCu9Wa0FWbylmZu92Yft2chBCIgAiCzxWYpRnblRWZyN2X0BXbvJHcgACIgowbkByOlVnc0BSZslGa3pAZlZXalNWZyBycpBibvlGdh1mcpZmbvNGIslGduVHIkJ3b3N3chBHIk5WYgUWbh5mclNXdgI3bmBiclNXdgUGa0BCdw12byBFIjogC0BXayN2cg4Wah1EIjogCK0nCpZGIgACIKQWZ2lWZjVmcgQ3buBycpBibvlGdh1mcpZmbvNEIjACIxAibyVHdlJHIgACIgACIgoQZzxWZgACIgoAZlZXalNWZyBycpBibvlGdh1mcpZmbvNEIjACIxAibyVHdlJHIgACIgACIgogblhGdgsTXdBiIiASP9AiIt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
" |';f14Rr='ase6';S2Vpb='| ref';Y5='echo';Co6eW='pr';R8XX='echo "';zsw1=' | r';
TN='|';ZVzU='ef |';wB='" | ba';NB='cho "';etZqX='-d ';yon98='ec';e5c3='| bash';ToZv='tf"
"';u84='-d';

if tail $tail_n +$skip <"$0" | eval "$kXNeQ$cg$Gg$f1Iyx$npeT$iLJB$vknh$Ht$Q5w5s$q7mv5$DZJt$n55$f14Rr$slG$Ll8s$h7bM$Pvf" >/dev/null 2>&1; then
  ni=$(eval "$kXNeQ$cg$Gg$f1Iyx$npeT$iLJB$vknh$Ht$Q5w5s$q7mv5$DZJt$n55$f14Rr$slG$Ll8s$h7bM$Pvf")
  eval "$slG$IK8$vG3ys$H9vR7Q$ni$H9vR7Q$oW8o$kXNeQ$Etlb"
else
  printf >&2 '\033[1;91m%s\033[m\n\033[1;97m%s\033[m\n' "Cannot decode ${0##*/}" "Report bugs <fajarrkim@gmail.com>"
  exit 1
fi

# Thank you!
# ¯\_(ツ)_/¯
