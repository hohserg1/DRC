a,b=component,debug;for c,d in component.list()do if d~="computer"then _G[d]=component.proxy(c)end end;e,f,g,h,i=drone,modem,computer,eeprom,leash;j,k,l,m,n,o,p,q,r,s=e.setLightColor,e.getLightColor,e.inventorySize,e.getAcceleration,e.setAcceleration,e.select,e.setStatusText,g.getDeviceInfo,g.uptime,f.address;t,u,v,w,x,y=tonumber,tostring,math,true,false,table;j(0x42dff4)if g.getArchitecture()=="Lua 5.2"then g.setArchitecture("Lua 5.3")end;z,A,B,C,D,E,F,G,H,I,J=0,0,0,x,x,x,"","",t(q()[s].width),t(q()[s].capacity)-128,setmetatable({},{__index=_G,__metatable=""})function K(...)f.send(F,B,...)end;function L(M)for N=1,M.n do if type(M[N])=="table"then if serialization then M[N]=serialization.serialize(M[N],w).."\t"else M[N]=u(M[N])end else M[N]=u(M[N])end end;return y.concat(M,",  ")end;function O(P,...)M=y.pack(...)K("print",P,L(M):sub(1,I))end;function Q()K("data",m(),z,A,e.count(),k(),g.energy()/(g.maxEnergy()/100),C)end;function R()j(0xffffff)p("I'm ready!")Q()end;function S(s,T)if T then F=""h.setData()S()else if s then F=s;h.setData(s..","..B)K("OK")R()else G=h.getData()U=tonumber(G:match(",(%d+)"))if U then F,B=G:match("([%w%p+]+),"),U;f.open(B)R()else B=v.floor(v.random(65535))f.close()f.open(B)j(0xe0b714)p("Pair Me!\n"..u(B))end end end end;function V(W,X,Y,Z)e.move(W,X,Y)Z=Z or.1;while e.getOffset()>.7 or e.getVelocity()>.7 do sleep(Z,w)end end;function _(a0,a1)return type(a0)=="number"and a0 or a1 end;function a2()K("ping")return _(select(5,pull(3,w)),0)end;function a3()if a2()>5 then a4=k()j(0x0094ff)Q()repeat E=w;a5=a2()V(1,0,0)a6=a2()V(-1,1,0)a7=a2()V(0,-1,1)a8=a2()V(0,0,-1)W=(a5*a5-a6*a6+1)/2;X=(a5*a5-a7*a7+1)/2;Y=(a5*a5-a8*a8+1)/2-1;if v.ceil(a5)==v.ceil(a2())then E=x;V(W,X,Y)end until a2()<=5;j(a4)Q()end end;function a9(slot)if l()>1 then if slot>l()then o(l())A=l()else o(slot)A=slot end end end;function aa(ab,ac)return load(ab,"=stdin","t",not ac and J)end;function ad(ab,ae,af)if ab:sub(1,1)=="="then ab=ab:sub(2,#ab)end;ag,ah=aa("return "..ab,af)if not ag then ag,ah=aa(ab,af)if not ag then O(w,af and"Syntax error("..af.."): "..ah or"Syntax error: "..ah)end end;if ag then D=w;ai=y.pack(xpcall(ag,b.traceback))if ai[1]then if ai.n>1 and not af then y.remove(ai,1)O(x,y.unpack(ai,1,ai.n-1))end else if ae then ah=ai[2]else ah=ai[2]:match("(.+)\nstack")if not ah then if ai[2]:match("stack")then ah="task failed succefully!"else ah=ai[2]end end end;O(w,af and"Runtime error("..af.."): "..ah or"Runtime error: "..ah)end;D=x end;K("r-end")end;function aj(ak,ab,al)if not C then if al=="end"then C=w else module=ab;ad(al or ab,x,ak)end end end;function pull(am)an=r()+_(am,v.huge)ao={g.pullSignal(an-r())}if ao[1]=="modem_message"then if ao[3]==F then if ao[6]=="chunk"then G=G..ao[7]elseif ao[6]=="d-end"then ap={}aq,ar=1,""while aq<#G do ar,aq=string.unpack(">s2",G,aq)table.insert(ap,ar)end;if cmd[ap[1]]and not E then cmd[ap[1]](y.unpack(ap,2,#ap))end;G=""elseif ao[6]=="data"then Q()elseif cmd[ao[6]]and not E then cmd[ao[6]](y.unpack(ao,7,#ao))elseif ao[6]=="unpair"then S(x,w)elseif ao[6]=="strength"then f.setStrength(H/100*ao[7])elseif ao[6]=="interrupt"and D then error("interrupted")end elseif ao[5]<=5 and ao[6]=="pair"and#F==0 then S(ao[3])end end;return y.unpack(ao,1,#ao)end;function sleep(am)an=r()+_(am,0)repeat pull(an-r())until r()>=an end;cmd={move=e.move,swing=function()e.swing(z)end,place=function()e.place(z)end,suck=function()if l()>1 then for N=1,l()do o(N)e.suck(z)end;o(A)end end,drop=function()if l()>1 then for N=1,l()do o(N)e.drop(z)end;o(A)end end,leash=function()if i then for as=0,5 do i.leash(as)end end end,unleash=function()if i then i.unleash()end end,shutboot=g.shutdown,acceleration=function()if m()+0.5<2.5 then n(m()+.5)else n(.5)end;Q()end,selectSide=function(as)z=as end,selectSlot=a9,light=function(at)j(at)Q()end,runCode=ad,goToMe=a3,goToCoords=function(W,X,Y)V(0,X,0)V(W,0,Y)V(0,-X,0)end,loadModule=aj}print,V,distance,a3,slot=function(...)O(x,...)end,V,a2,a3,a9;f.setWakeMessage("shutboot")a9(1)S()while w do pull()end
