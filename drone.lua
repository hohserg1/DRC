a,b=component,debug;for c,d in component.list()do if d~="computer"then _G[d]=component.proxy(c)end end;e,f,g,h,i=drone,modem,computer,eeprom,leash;j,k,l,m,n,o,p,q,r,s=e.setLightColor,e.getLightColor,e.inventorySize,e.getAcceleration,e.setAcceleration,e.select,e.setStatusText,g.getDeviceInfo,g.uptime,f.address;t,u,v,w,x,y=tonumber,tostring,math,true,false,table;j(0x42dff4)if g.getArchitecture()=="Lua 5.2"then g.setArchitecture("Lua 5.3")end;z,A,B,C,D,E,F,G,H,I,J=0,0,0,x,x,x,"","",t(q()[s].width),t(q()[s].capacity)-128,setmetatable({},{__index=_G,__metatable=""})function K(...)f.send(F,B,...)end;function L(M)for N=1,M.n do if type(M[N])=="table"then if serialization then M[N]=serialization.serialize(M[N],w).."\t"else M[N]=u(M[N])end else M[N]=u(M[N])end end;return y.concat(M,",  ")end;function O(P,...)M=y.pack(...)K("print",P,L(M):sub(1,I))end;function Q()K("data",m(),z,A,e.count(),k(),g.energy()/(g.maxEnergy()/100),C)end;function R()j(0xffffff)p("I'm ready!")Q()end;function S(s,T)if T then F=""h.setData()S()else if s then F=s;h.setData(s..","..B)K("OK")R()else G=h.getData()U=tonumber(G:match(",(%d+)"))if U then F,B=G:match("([%w%p+]+),"),U;f.open(B)R()else B=v.floor(v.random(65535))f.close()f.open(B)j(0xe0b714)p("Pair Me!\n"..u(B))end end end end;function V(W,X,Y)e.move(W,X,Y)while e.getOffset()>.7 or e.getVelocity()>.7 do sleep(.1,w)end end;function Z(_,a0)return type(_)=="number"and _ or a0 end;function a1()K("ping")return Z(select(5,pull(3,w)),0)end;function a2()if a1()>5 then a3=k()j(0x0094ff)Q()repeat E=w;a4=a1()V(1,0,0)a5=a1()V(-1,1,0)a6=a1()V(0,-1,1)a7=a1()V(0,0,-1)W=(a4*a4-a5*a5+1)/2;X=(a4*a4-a6*a6+1)/2;Y=(a4*a4-a7*a7+1)/2-1;if v.ceil(a4)==v.ceil(a1())then E=x;V(W,X,Y)end until a1()<=5;j(a3)Q()end end;function a8(slot)if l()>1 then if slot>l()then o(l())A=l()else o(slot)A=slot end end end;function a9(aa,ab)return load(aa,"=stdin","t",not ab and J)end;function ac(aa,ad,ae)if aa:sub(1,1)=="="then aa=aa:sub(2,#aa)end;af,ag=a9("return "..aa,ae)if not af then af,ag=a9(aa,ae)if not af then O(w,ae and"Syntax error("..ae.."): "..ag or"Syntax error: "..ag)end end;if af then D=w;ah=y.pack(xpcall(af,b.traceback))if ah[1]then if ah.n>1 and not ae then y.remove(ah,1)O(x,y.unpack(ah,1,ah.n-1))end else if ad then ag=ah[2]else ag=ah[2]:match("(.+)\nstack")if not ag then if ah[2]:match("stack")then ag="task failed succefully!"else ag=ah[2]end end end;O(w,ae and"Runtime error("..ae.."): "..ag or"Runtime error: "..ag)end;D=x end;K("r-end")end;function ai(aj,aa,ak)if not C then if ak=="end"then C=w else module=aa;ac(ak or aa,x,aj)end end end;function pull(al)am=r()+Z(al,v.huge)an={g.pullSignal(am-r())}if an[1]=="modem_message"then if an[3]==F then if an[6]=="chunk"then G=G..an[7]elseif an[6]=="d-end"then ao={}ap,aq=1,""while ap<#G do aq,ap=string.unpack(">s2",G,ap)table.insert(ao,aq)end;if cmd[ao[1]]and not E then cmd[ao[1]](y.unpack(ao,2,#ao))end;G=""elseif an[6]=="data"then Q()elseif cmd[an[6]]and not E then cmd[an[6]](y.unpack(an,7,#an))elseif an[6]=="unpair"then S(x,w)elseif an[6]=="strength"then f.setStrength(H/100*an[7])elseif an[6]=="interrupt"and D then error("interrupted")end elseif an[5]<=5 and an[6]=="pair"and#F==0 then S(an[3])end end;return y.unpack(an,1,#an)end;function sleep(al)am=r()+Z(al,0)repeat pull(am-r())until r()>=am end;cmd={move=e.move,swing=function()e.swing(z)end,place=function()e.place(z)end,suck=function()if l()>1 then for N=1,l()do o(N)e.suck(z)end;o(A)end end,drop=function()if l()>1 then for N=1,l()do o(N)e.drop(z)end;o(A)end end,leash=function()if i then for ar=0,5 do i.leash(ar)end end end,unleash=function()if i then i.unleash()end end,shutboot=g.shutdown,acceleration=function()if m()+0.5<2.5 then n(m()+.5)else n(.5)end;Q()end,selectSide=function(ar)z=ar end,selectSlot=a8,light=function(as)j(as)Q()end,runCode=ac,goToMe=a2,goToCoords=function(W,X,Y)V(0,X,0)V(W,0,Y)V(0,-X,0)end,loadModule=ai}print,V,distance,a2,slot=function(...)O(x,...)end,V,a1,a2,a8;f.setWakeMessage("shutboot")a8(1)S()while w do pull()end
