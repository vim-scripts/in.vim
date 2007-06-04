" Vim syntax file
" Language:     Silvaco
" Maintainer:   Derek Hullinger <derek.hullinger@gmail.com>
" Last Change:  2007 May 8

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

augroup filetypedetect 
au BufNewFile,BufRead *.in    setf in
augroup END

setlocal iskeyword+=.

" Athena statements
syntax keyword inAthenaStatement ab[erration] adapt.m[esh] adapt.p[ar] bak[e] 
  \ base.m[esh] base.p[ar] bo[undary] cl[uster] com[ment] cp[ulog] dep[osit]
  \ dev[elop] dif[fuse] dis[loc.loop] ele[ctrode] ep[itaxy] et[ch] exp[ose]
  \ ext[ract] for[each] g[o] h[elp] illum.[filter] illumi[nation] ima[ge]
  \ impl[ant] impu[rity] ini[tialize] inters[titial] va[cancy] lay[out] li[ne]
  \ mas[k] mat[erial] met[hod] mom[ents] optic[al] option ox[ide] po[lish]
  \ print.[1d] printf prof[ile] proj[ection pu[pil.filter] qu[it] rate.dep[o]
  \ rate.dev[elop] rate.do[pe] rate.e[tch] rate.p[olish] regi[on] rel[ax] 
  \ sel[ect] set setm[ode] sil[icide] sou[rce] stres[s] stret[ch] stri[p]
  \ stru[cture] sys[tem] to[nyplot] tr[ap] un[setmode] contained

" Atlas statements
syntax keyword inAtlasStatement be[am] com[ment] con[tact] cu[rvetrace] db[r]
  \ def[ects] deg[radation] do[ping] ele[ctrode] eli[minate] ext[ract] 
  \ ey[e.diagram] fou[rier] g[o] impa[ct] intd[efects] interf[ace] intt[rap]
  \ las[er] loa[d] log lx[.mesh] ly[.mesh] mat[erial] mea[sure] mes[h] met[hod]
  \ mob[ility] mod[els] mq[w] od[efects] options ou[tput] ph[otogenerate]
  \ prob[e] qtx[.mesh] qty[.mesh] qu[it] regi[on] regr[id] sa[ve] set
  \ sin[gleeventupset] sol[ve] spx[.mesh] spy[.mesh] sym[bolic] spr[ead]
  \ sys[tem] th[ermcontact] ti[tle] to[nyplot] tr[ap] ut[most] vc[sel] 
  \ w[aveform] x.[mesh] y.[mesh] z.[mesh] contained

syntax cluster inStatement contains=inAthenaStatement,inAtlasStatement

syn match inFirstWord /^\S*/ contains=@inStatement
syntax match inComment /#.*/
syn match inConstant /=\S*/ms=s+1
syn match inNumber                 "-\=\<\d\+\>"
syn region inPreProc start=/go/ end=/$/

highlight link inAtlasStatement Statement
highlight link inAthenaStatement Statement
highlight link inComment Comment
highlight link inPreProc PreProc
highlight link inConstant Constant
highlight link inNumber Number
