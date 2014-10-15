package Domain::PublicSuffix::Default;
$Domain::PublicSuffix::Default::VERSION = '0.10';
use strict;
use warnings;
use utf8;

=head1 NAME

Domain::PublicSuffix::Default - Default PublicSuffix data file

=head1 SYNOPSIS

 use Domain::PublicSuffix::Default;

 my $tld_list = Domain::PublicSuffix::Default::retrieve();

=head1 DESCRIPTION

This module provides a default public suffix list, as distributed by Mozilla
at time of module release. This was last updated 2013-03-18.

=head1 PUBLIC ACCESSORS

=over 4

=item retrieve()

Returns current list as a scalar.

=back

=cut

sub retrieve {
    my @lines = split(/\n/, q{// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

// ===BEGIN ICANN DOMAINS===

// ac : http://en.wikipedia.org/wiki/.ac
ac
com.ac
edu.ac
gov.ac
net.ac
mil.ac
org.ac

// ad : http://en.wikipedia.org/wiki/.ad
ad
nom.ad

// ae : http://en.wikipedia.org/wiki/.ae
// see also: "Domain Name Eligibility Policy" at http://www.aeda.ae/eng/aepolicy.php
ae
co.ae
net.ae
org.ae
sch.ae
ac.ae
gov.ae
mil.ae

// aero : see http://www.information.aero/index.php?id=66
aero
accident-investigation.aero
accident-prevention.aero
aerobatic.aero
aeroclub.aero
aerodrome.aero
agents.aero
aircraft.aero
airline.aero
airport.aero
air-surveillance.aero
airtraffic.aero
air-traffic-control.aero
ambulance.aero
amusement.aero
association.aero
author.aero
ballooning.aero
broker.aero
caa.aero
cargo.aero
catering.aero
certification.aero
championship.aero
charter.aero
civilaviation.aero
club.aero
conference.aero
consultant.aero
consulting.aero
control.aero
council.aero
crew.aero
design.aero
dgca.aero
educator.aero
emergency.aero
engine.aero
engineer.aero
entertainment.aero
equipment.aero
exchange.aero
express.aero
federation.aero
flight.aero
freight.aero
fuel.aero
gliding.aero
government.aero
groundhandling.aero
group.aero
hanggliding.aero
homebuilt.aero
insurance.aero
journal.aero
journalist.aero
leasing.aero
logistics.aero
magazine.aero
maintenance.aero
marketplace.aero
media.aero
microlight.aero
modelling.aero
navigation.aero
parachuting.aero
paragliding.aero
passenger-association.aero
pilot.aero
press.aero
production.aero
recreation.aero
repbody.aero
res.aero
research.aero
rotorcraft.aero
safety.aero
scientist.aero
services.aero
show.aero
skydiving.aero
software.aero
student.aero
taxi.aero
trader.aero
trading.aero
trainer.aero
union.aero
workinggroup.aero
works.aero

// af : http://www.nic.af/help.jsp
af
gov.af
com.af
org.af
net.af
edu.af

// ag : http://www.nic.ag/prices.htm
ag
com.ag
org.ag
net.ag
co.ag
nom.ag

// ai : http://nic.com.ai/
ai
off.ai
com.ai
net.ai
org.ai

// al : http://www.ert.gov.al/ert_alb/faq_det.html?Id=31
al
com.al
edu.al
gov.al
mil.al
net.al
org.al

// am : http://en.wikipedia.org/wiki/.am
am

// an : http://www.una.an/an_domreg/default.asp
an
com.an
net.an
org.an
edu.an

// ao : http://en.wikipedia.org/wiki/.ao
// http://www.dns.ao/REGISTR.DOC
ao
ed.ao
gv.ao
og.ao
co.ao
pb.ao
it.ao

// aq : http://en.wikipedia.org/wiki/.aq
aq

// ar : https://nic.ar/normativa-vigente.xhtml
ar
com.ar
edu.ar
gob.ar
gov.ar
int.ar
mil.ar
net.ar
org.ar
tur.ar

// arpa : http://en.wikipedia.org/wiki/.arpa
// Confirmed by registry <iana-questions@icann.org> 2008-06-18
arpa
e164.arpa
in-addr.arpa
ip6.arpa
iris.arpa
uri.arpa
urn.arpa

// as : http://en.wikipedia.org/wiki/.as
as
gov.as

// asia : http://en.wikipedia.org/wiki/.asia
asia

// at : http://en.wikipedia.org/wiki/.at
// Confirmed by registry <it@nic.at> 2008-06-17
at
ac.at
co.at
gv.at
or.at

// au : http://en.wikipedia.org/wiki/.au
// http://www.auda.org.au/
au
// 2LDs
com.au
net.au
org.au
edu.au
gov.au
asn.au
id.au
// Historic 2LDs (closed to new registration, but sites still exist)
info.au
conf.au
oz.au
// CGDNs - http://www.cgdn.org.au/
act.au
nsw.au
nt.au
qld.au
sa.au
tas.au
vic.au
wa.au
// 3LDs
act.edu.au
nsw.edu.au
nt.edu.au
qld.edu.au
sa.edu.au
tas.edu.au
vic.edu.au
wa.edu.au
// act.gov.au  Bug 984824 - Removed at request of Greg Tankard
// nsw.gov.au  Bug 547985 - Removed at request of <Shae.Donelan@services.nsw.gov.au>
// nt.gov.au  Bug 940478 - Removed at request of Greg Connors <Greg.Connors@nt.gov.au>
qld.gov.au
sa.gov.au
tas.gov.au
vic.gov.au
wa.gov.au

// aw : http://en.wikipedia.org/wiki/.aw
aw
com.aw

// ax : http://en.wikipedia.org/wiki/.ax
ax

// az : http://en.wikipedia.org/wiki/.az
az
com.az
net.az
int.az
gov.az
org.az
edu.az
info.az
pp.az
mil.az
name.az
pro.az
biz.az

// ba : http://en.wikipedia.org/wiki/.ba
ba
org.ba
net.ba
edu.ba
gov.ba
mil.ba
unsa.ba
unbi.ba
co.ba
com.ba
rs.ba

// bb : http://en.wikipedia.org/wiki/.bb
bb
biz.bb
co.bb
com.bb
edu.bb
gov.bb
info.bb
net.bb
org.bb
store.bb
tv.bb

// bd : http://en.wikipedia.org/wiki/.bd
*.bd

// be : http://en.wikipedia.org/wiki/.be
// Confirmed by registry <tech@dns.be> 2008-06-08
be
ac.be

// bf : http://en.wikipedia.org/wiki/.bf
bf
gov.bf

// bg : http://en.wikipedia.org/wiki/.bg
// https://www.register.bg/user/static/rules/en/index.html
bg
a.bg
b.bg
c.bg
d.bg
e.bg
f.bg
g.bg
h.bg
i.bg
j.bg
k.bg
l.bg
m.bg
n.bg
o.bg
p.bg
q.bg
r.bg
s.bg
t.bg
u.bg
v.bg
w.bg
x.bg
y.bg
z.bg
0.bg
1.bg
2.bg
3.bg
4.bg
5.bg
6.bg
7.bg
8.bg
9.bg

// bh : http://en.wikipedia.org/wiki/.bh
bh
com.bh
edu.bh
net.bh
org.bh
gov.bh

// bi : http://en.wikipedia.org/wiki/.bi
// http://whois.nic.bi/
bi
co.bi
com.bi
edu.bi
or.bi
org.bi

// biz : http://en.wikipedia.org/wiki/.biz
biz

// bj : http://en.wikipedia.org/wiki/.bj
bj
asso.bj
barreau.bj
gouv.bj

// bm : http://www.bermudanic.bm/dnr-text.txt
bm
com.bm
edu.bm
gov.bm
net.bm
org.bm

// bn : http://en.wikipedia.org/wiki/.bn
*.bn

// bo : http://www.nic.bo/
bo
com.bo
edu.bo
gov.bo
gob.bo
int.bo
org.bo
net.bo
mil.bo
tv.bo

// br : http://registro.br/dominio/categoria.html
// Submitted by registry <fneves@registro.br> 2014-08-11
br
adm.br
adv.br
agr.br
am.br
arq.br
art.br
ato.br
b.br
bio.br
blog.br
bmd.br
cim.br
cng.br
cnt.br
com.br
coop.br
ecn.br
eco.br
edu.br
emp.br
eng.br
esp.br
etc.br
eti.br
far.br
flog.br
fm.br
fnd.br
fot.br
fst.br
g12.br
ggf.br
gov.br
imb.br
ind.br
inf.br
jor.br
jus.br
leg.br
lel.br
mat.br
med.br
mil.br
mp.br
mus.br
net.br
*.nom.br
not.br
ntr.br
odo.br
org.br
ppg.br
pro.br
psc.br
psi.br
qsl.br
radio.br
rec.br
slg.br
srv.br
taxi.br
teo.br
tmp.br
trd.br
tur.br
tv.br
vet.br
vlog.br
wiki.br
zlg.br

// bs : http://www.nic.bs/rules.html
bs
com.bs
net.bs
org.bs
edu.bs
gov.bs

// bt : http://en.wikipedia.org/wiki/.bt
bt
com.bt
edu.bt
gov.bt
net.bt
org.bt

// bv : No registrations at this time.
// Submitted by registry <jarle@uninett.no> 2006-06-16
bv

// bw : http://en.wikipedia.org/wiki/.bw
// http://www.gobin.info/domainname/bw.doc
// list of other 2nd level tlds ?
bw
co.bw
org.bw

// by : http://en.wikipedia.org/wiki/.by
// http://tld.by/rules_2006_en.html
// list of other 2nd level tlds ?
by
gov.by
mil.by
// Official information does not indicate that com.by is a reserved
// second-level domain, but it's being used as one (see www.google.com.by and
// www.yahoo.com.by, for example), so we list it here for safety's sake.
com.by

// http://hoster.by/
of.by

// bz : http://en.wikipedia.org/wiki/.bz
// http://www.belizenic.bz/
bz
com.bz
net.bz
org.bz
edu.bz
gov.bz

// ca : http://en.wikipedia.org/wiki/.ca
ca
// ca geographical names
ab.ca
bc.ca
mb.ca
nb.ca
nf.ca
nl.ca
ns.ca
nt.ca
nu.ca
on.ca
pe.ca
qc.ca
sk.ca
yk.ca
// gc.ca: http://en.wikipedia.org/wiki/.gc.ca
// see also: http://registry.gc.ca/en/SubdomainFAQ
gc.ca

// cat : http://en.wikipedia.org/wiki/.cat
cat

// cc : http://en.wikipedia.org/wiki/.cc
cc

// cd : http://en.wikipedia.org/wiki/.cd
// see also: https://www.nic.cd/domain/insertDomain_2.jsp?act=1
cd
gov.cd

// cf : http://en.wikipedia.org/wiki/.cf
cf

// cg : http://en.wikipedia.org/wiki/.cg
cg

// ch : http://en.wikipedia.org/wiki/.ch
ch

// ci : http://en.wikipedia.org/wiki/.ci
// http://www.nic.ci/index.php?page=charte
ci
org.ci
or.ci
com.ci
co.ci
edu.ci
ed.ci
ac.ci
net.ci
go.ci
asso.ci
aéroport.ci
int.ci
presse.ci
md.ci
gouv.ci

// ck : http://en.wikipedia.org/wiki/.ck
*.ck
!www.ck

// cl : http://en.wikipedia.org/wiki/.cl
cl
gov.cl
gob.cl
co.cl
mil.cl

// cm : http://en.wikipedia.org/wiki/.cm plus bug 981927
cm
co.cm
com.cm
gov.cm
net.cm

// cn : http://en.wikipedia.org/wiki/.cn
// Submitted by registry <tanyaling@cnnic.cn> 2008-06-11
cn
ac.cn
com.cn
edu.cn
gov.cn
net.cn
org.cn
mil.cn
公司.cn
网络.cn
網絡.cn
// cn geographic names
ah.cn
bj.cn
cq.cn
fj.cn
gd.cn
gs.cn
gz.cn
gx.cn
ha.cn
hb.cn
he.cn
hi.cn
hl.cn
hn.cn
jl.cn
js.cn
jx.cn
ln.cn
nm.cn
nx.cn
qh.cn
sc.cn
sd.cn
sh.cn
sn.cn
sx.cn
tj.cn
xj.cn
xz.cn
yn.cn
zj.cn
hk.cn
mo.cn
tw.cn

// co : http://en.wikipedia.org/wiki/.co
// Submitted by registry <tecnico@uniandes.edu.co> 2008-06-11
co
arts.co
com.co
edu.co
firm.co
gov.co
info.co
int.co
mil.co
net.co
nom.co
org.co
rec.co
web.co

// com : http://en.wikipedia.org/wiki/.com
com

// coop : http://en.wikipedia.org/wiki/.coop
coop

// cr : http://www.nic.cr/niccr_publico/showRegistroDominiosScreen.do
cr
ac.cr
co.cr
ed.cr
fi.cr
go.cr
or.cr
sa.cr

// cu : http://en.wikipedia.org/wiki/.cu
cu
com.cu
edu.cu
org.cu
net.cu
gov.cu
inf.cu

// cv : http://en.wikipedia.org/wiki/.cv
cv

// cw : http://www.una.cw/cw_registry/
// Confirmed by registry <registry@una.net> 2013-03-26
cw
com.cw
edu.cw
net.cw
org.cw

// cx : http://en.wikipedia.org/wiki/.cx
// list of other 2nd level tlds ?
cx
gov.cx

// cy : http://en.wikipedia.org/wiki/.cy
*.cy

// cz : http://en.wikipedia.org/wiki/.cz
cz

// de : http://en.wikipedia.org/wiki/.de
// Confirmed by registry <ops@denic.de> (with technical
// reservations) 2008-07-01
de

// dj : http://en.wikipedia.org/wiki/.dj
dj

// dk : http://en.wikipedia.org/wiki/.dk
// Confirmed by registry <robert@dk-hostmaster.dk> 2008-06-17
dk

// dm : http://en.wikipedia.org/wiki/.dm
dm
com.dm
net.dm
org.dm
edu.dm
gov.dm

// do : http://en.wikipedia.org/wiki/.do
do
art.do
com.do
edu.do
gob.do
gov.do
mil.do
net.do
org.do
sld.do
web.do

// dz : http://en.wikipedia.org/wiki/.dz
dz
com.dz
org.dz
net.dz
gov.dz
edu.dz
asso.dz
pol.dz
art.dz

// ec : http://www.nic.ec/reg/paso1.asp
// Submitted by registry <vabboud@nic.ec> 2008-07-04
ec
com.ec
info.ec
net.ec
fin.ec
k12.ec
med.ec
pro.ec
org.ec
edu.ec
gov.ec
gob.ec
mil.ec

// edu : http://en.wikipedia.org/wiki/.edu
edu

// ee : http://www.eenet.ee/EENet/dom_reeglid.html#lisa_B
ee
edu.ee
gov.ee
riik.ee
lib.ee
med.ee
com.ee
pri.ee
aip.ee
org.ee
fie.ee

// eg : http://en.wikipedia.org/wiki/.eg
eg
com.eg
edu.eg
eun.eg
gov.eg
mil.eg
name.eg
net.eg
org.eg
sci.eg

// er : http://en.wikipedia.org/wiki/.er
*.er

// es : https://www.nic.es/site_ingles/ingles/dominios/index.html
es
com.es
nom.es
org.es
gob.es
edu.es

// et : http://en.wikipedia.org/wiki/.et
et
com.et
gov.et
org.et
edu.et
biz.et
name.et
info.et

// eu : http://en.wikipedia.org/wiki/.eu
eu

// fi : http://en.wikipedia.org/wiki/.fi
fi
// aland.fi : http://en.wikipedia.org/wiki/.ax
// This domain is being phased out in favor of .ax. As there are still many
// domains under aland.fi, we still keep it on the list until aland.fi is
// completely removed.
// TODO: Check for updates (expected to be phased out around Q1/2009)
aland.fi

// fj : http://en.wikipedia.org/wiki/.fj
*.fj

// fk : http://en.wikipedia.org/wiki/.fk
*.fk

// fm : http://en.wikipedia.org/wiki/.fm
fm

// fo : http://en.wikipedia.org/wiki/.fo
fo

// fr : http://www.afnic.fr/
// domaines descriptifs : http://www.afnic.fr/obtenir/chartes/nommage-fr/annexe-descriptifs
fr
com.fr
asso.fr
nom.fr
prd.fr
presse.fr
tm.fr
// domaines sectoriels : http://www.afnic.fr/obtenir/chartes/nommage-fr/annexe-sectoriels
aeroport.fr
assedic.fr
avocat.fr
avoues.fr
cci.fr
chambagri.fr
chirurgiens-dentistes.fr
experts-comptables.fr
geometre-expert.fr
gouv.fr
greta.fr
huissier-justice.fr
medecin.fr
notaires.fr
pharmacien.fr
port.fr
veterinaire.fr

// ga : http://en.wikipedia.org/wiki/.ga
ga

// gb : This registry is effectively dormant
// Submitted by registry <Damien.Shaw@ja.net> 2008-06-12
gb

// gd : http://en.wikipedia.org/wiki/.gd
gd

// ge : http://www.nic.net.ge/policy_en.pdf
ge
com.ge
edu.ge
gov.ge
org.ge
mil.ge
net.ge
pvt.ge

// gf : http://en.wikipedia.org/wiki/.gf
gf

// gg : http://www.channelisles.net/register-domains/
// Confirmed by registry <nigel@channelisles.net> 2013-11-28
gg
co.gg
net.gg
org.gg

// gh : http://en.wikipedia.org/wiki/.gh
// see also: http://www.nic.gh/reg_now.php
// Although domains directly at second level are not possible at the moment,
// they have been possible for some time and may come back.
gh
com.gh
edu.gh
gov.gh
org.gh
mil.gh

// gi : http://www.nic.gi/rules.html
gi
com.gi
ltd.gi
gov.gi
mod.gi
edu.gi
org.gi

// gl : http://en.wikipedia.org/wiki/.gl
// http://nic.gl
gl

// gm : http://www.nic.gm/htmlpages%5Cgm-policy.htm
gm

// gn : http://psg.com/dns/gn/gn.txt
// Submitted by registry <randy@psg.com> 2008-06-17
gn
ac.gn
com.gn
edu.gn
gov.gn
org.gn
net.gn

// gov : http://en.wikipedia.org/wiki/.gov
gov

// gp : http://www.nic.gp/index.php?lang=en
gp
com.gp
net.gp
mobi.gp
edu.gp
org.gp
asso.gp

// gq : http://en.wikipedia.org/wiki/.gq
gq

// gr : https://grweb.ics.forth.gr/english/1617-B-2005.html
// Submitted by registry <segred@ics.forth.gr> 2008-06-09
gr
com.gr
edu.gr
net.gr
org.gr
gov.gr

// gs : http://en.wikipedia.org/wiki/.gs
gs

// gt : http://www.gt/politicas_de_registro.html
gt
com.gt
edu.gt
gob.gt
ind.gt
mil.gt
net.gt
org.gt

// gu : http://gadao.gov.gu/registration.txt
*.gu

// gw : http://en.wikipedia.org/wiki/.gw
gw

// gy : http://en.wikipedia.org/wiki/.gy
// http://registry.gy/
gy
co.gy
com.gy
net.gy

// hk : https://www.hkdnr.hk
// Submitted by registry <hk.tech@hkirc.hk> 2008-06-11
hk
com.hk
edu.hk
gov.hk
idv.hk
net.hk
org.hk
公司.hk
教育.hk
敎育.hk
政府.hk
個人.hk
个人.hk
箇人.hk
網络.hk
网络.hk
组織.hk
網絡.hk
网絡.hk
组织.hk
組織.hk
組织.hk

// hm : http://en.wikipedia.org/wiki/.hm
hm

// hn : http://www.nic.hn/politicas/ps02,,05.html
hn
com.hn
edu.hn
org.hn
net.hn
mil.hn
gob.hn

// hr : http://www.dns.hr/documents/pdf/HRTLD-regulations.pdf
hr
iz.hr
from.hr
name.hr
com.hr

// ht : http://www.nic.ht/info/charte.cfm
ht
com.ht
shop.ht
firm.ht
info.ht
adult.ht
net.ht
pro.ht
org.ht
med.ht
art.ht
coop.ht
pol.ht
asso.ht
edu.ht
rel.ht
gouv.ht
perso.ht

// hu : http://www.domain.hu/domain/English/sld.html
// Confirmed by registry <pasztor@iszt.hu> 2008-06-12
hu
co.hu
info.hu
org.hu
priv.hu
sport.hu
tm.hu
2000.hu
agrar.hu
bolt.hu
casino.hu
city.hu
erotica.hu
erotika.hu
film.hu
forum.hu
games.hu
hotel.hu
ingatlan.hu
jogasz.hu
konyvelo.hu
lakas.hu
media.hu
news.hu
reklam.hu
sex.hu
shop.hu
suli.hu
szex.hu
tozsde.hu
utazas.hu
video.hu

// id : https://register.pandi.or.id/
id
ac.id
biz.id
co.id
desa.id
go.id
mil.id
my.id
net.id
or.id
sch.id
web.id

// ie : http://en.wikipedia.org/wiki/.ie
ie
gov.ie

// il : http://en.wikipedia.org/wiki/.il
*.il

// im : https://www.nic.im/
// Submitted by registry <info@nic.im> 2013-11-15
im
ac.im
co.im
com.im
ltd.co.im
net.im
org.im
plc.co.im
tt.im
tv.im

// in : http://en.wikipedia.org/wiki/.in
// see also: http://www.inregistry.in/policies/
// Please note, that nic.in is not an offical eTLD, but used by most
// government institutions.
in
co.in
firm.in
net.in
org.in
gen.in
ind.in
nic.in
ac.in
edu.in
res.in
gov.in
mil.in

// info : http://en.wikipedia.org/wiki/.info
info

// int : http://en.wikipedia.org/wiki/.int
// Confirmed by registry <iana-questions@icann.org> 2008-06-18
int
eu.int

// io : http://www.nic.io/rules.html
// list of other 2nd level tlds ?
io
com.io

// iq : http://www.cmc.iq/english/iq/iqregister1.htm
iq
gov.iq
edu.iq
mil.iq
com.iq
org.iq
net.iq

// ir : http://www.nic.ir/Terms_and_Conditions_ir,_Appendix_1_Domain_Rules
// Also see http://www.nic.ir/Internationalized_Domain_Names
// Two <iran>.ir entries added at request of <tech-team@nic.ir>, 2010-04-16
ir
ac.ir
co.ir
gov.ir
id.ir
net.ir
org.ir
sch.ir
// xn--mgba3a4f16a.ir (<iran>.ir, Persian YEH)
ایران.ir
// xn--mgba3a4fra.ir (<iran>.ir, Arabic YEH)
ايران.ir

// is : http://www.isnic.is/domain/rules.php
// Confirmed by registry <marius@isgate.is> 2008-12-06
is
net.is
com.is
edu.is
gov.is
org.is
int.is

// it : http://en.wikipedia.org/wiki/.it
it
gov.it
edu.it
// Reserved geo-names:
// http://www.nic.it/documenti/regolamenti-e-linee-guida/regolamento-assegnazione-versione-6.0.pdf
// There is also a list of reserved geo-names corresponding to Italian municipalities
// http://www.nic.it/documenti/appendice-c.pdf, but it is not included here.
// Regions
abr.it
abruzzo.it
aosta-valley.it
aostavalley.it
bas.it
basilicata.it
cal.it
calabria.it
cam.it
campania.it
emilia-romagna.it
emiliaromagna.it
emr.it
friuli-v-giulia.it
friuli-ve-giulia.it
friuli-vegiulia.it
friuli-venezia-giulia.it
friuli-veneziagiulia.it
friuli-vgiulia.it
friuliv-giulia.it
friulive-giulia.it
friulivegiulia.it
friulivenezia-giulia.it
friuliveneziagiulia.it
friulivgiulia.it
fvg.it
laz.it
lazio.it
lig.it
liguria.it
lom.it
lombardia.it
lombardy.it
lucania.it
mar.it
marche.it
mol.it
molise.it
piedmont.it
piemonte.it
pmn.it
pug.it
puglia.it
sar.it
sardegna.it
sardinia.it
sic.it
sicilia.it
sicily.it
taa.it
tos.it
toscana.it
trentino-a-adige.it
trentino-aadige.it
trentino-alto-adige.it
trentino-altoadige.it
trentino-s-tirol.it
trentino-stirol.it
trentino-sud-tirol.it
trentino-sudtirol.it
trentino-sued-tirol.it
trentino-suedtirol.it
trentinoa-adige.it
trentinoaadige.it
trentinoalto-adige.it
trentinoaltoadige.it
trentinos-tirol.it
trentinostirol.it
trentinosud-tirol.it
trentinosudtirol.it
trentinosued-tirol.it
trentinosuedtirol.it
tuscany.it
umb.it
umbria.it
val-d-aosta.it
val-daosta.it
vald-aosta.it
valdaosta.it
valle-aosta.it
valle-d-aosta.it
valle-daosta.it
valleaosta.it
valled-aosta.it
valledaosta.it
vallee-aoste.it
valleeaoste.it
vao.it
vda.it
ven.it
veneto.it
// Provinces
ag.it
agrigento.it
al.it
alessandria.it
alto-adige.it
altoadige.it
an.it
ancona.it
andria-barletta-trani.it
andria-trani-barletta.it
andriabarlettatrani.it
andriatranibarletta.it
ao.it
aosta.it
aoste.it
ap.it
aq.it
aquila.it
ar.it
arezzo.it
ascoli-piceno.it
ascolipiceno.it
asti.it
at.it
av.it
avellino.it
ba.it
balsan.it
bari.it
barletta-trani-andria.it
barlettatraniandria.it
belluno.it
benevento.it
bergamo.it
bg.it
bi.it
biella.it
bl.it
bn.it
bo.it
bologna.it
bolzano.it
bozen.it
br.it
brescia.it
brindisi.it
bs.it
bt.it
bz.it
ca.it
cagliari.it
caltanissetta.it
campidano-medio.it
campidanomedio.it
campobasso.it
carbonia-iglesias.it
carboniaiglesias.it
carrara-massa.it
carraramassa.it
caserta.it
catania.it
catanzaro.it
cb.it
ce.it
cesena-forli.it
cesenaforli.it
ch.it
chieti.it
ci.it
cl.it
cn.it
co.it
como.it
cosenza.it
cr.it
cremona.it
crotone.it
cs.it
ct.it
cuneo.it
cz.it
dell-ogliastra.it
dellogliastra.it
en.it
enna.it
fc.it
fe.it
fermo.it
ferrara.it
fg.it
fi.it
firenze.it
florence.it
fm.it
foggia.it
forli-cesena.it
forlicesena.it
fr.it
frosinone.it
ge.it
genoa.it
genova.it
go.it
gorizia.it
gr.it
grosseto.it
iglesias-carbonia.it
iglesiascarbonia.it
im.it
imperia.it
is.it
isernia.it
kr.it
la-spezia.it
laquila.it
laspezia.it
latina.it
lc.it
le.it
lecce.it
lecco.it
li.it
livorno.it
lo.it
lodi.it
lt.it
lu.it
lucca.it
macerata.it
mantova.it
massa-carrara.it
massacarrara.it
matera.it
mb.it
mc.it
me.it
medio-campidano.it
mediocampidano.it
messina.it
mi.it
milan.it
milano.it
mn.it
mo.it
modena.it
monza-brianza.it
monza-e-della-brianza.it
monza.it
monzabrianza.it
monzaebrianza.it
monzaedellabrianza.it
ms.it
mt.it
na.it
naples.it
napoli.it
no.it
novara.it
nu.it
nuoro.it
og.it
ogliastra.it
olbia-tempio.it
olbiatempio.it
or.it
oristano.it
ot.it
pa.it
padova.it
padua.it
palermo.it
parma.it
pavia.it
pc.it
pd.it
pe.it
perugia.it
pesaro-urbino.it
pesarourbino.it
pescara.it
pg.it
pi.it
piacenza.it
pisa.it
pistoia.it
pn.it
po.it
pordenone.it
potenza.it
pr.it
prato.it
pt.it
pu.it
pv.it
pz.it
ra.it
ragusa.it
ravenna.it
rc.it
re.it
reggio-calabria.it
reggio-emilia.it
reggiocalabria.it
reggioemilia.it
rg.it
ri.it
rieti.it
rimini.it
rm.it
rn.it
ro.it
roma.it
rome.it
rovigo.it
sa.it
salerno.it
sassari.it
savona.it
si.it
siena.it
siracusa.it
so.it
sondrio.it
sp.it
sr.it
ss.it
suedtirol.it
sv.it
ta.it
taranto.it
te.it
tempio-olbia.it
tempioolbia.it
teramo.it
terni.it
tn.it
to.it
torino.it
tp.it
tr.it
trani-andria-barletta.it
trani-barletta-andria.it
traniandriabarletta.it
tranibarlettaandria.it
trapani.it
trentino.it
trento.it
treviso.it
trieste.it
ts.it
turin.it
tv.it
ud.it
udine.it
urbino-pesaro.it
urbinopesaro.it
va.it
varese.it
vb.it
vc.it
ve.it
venezia.it
venice.it
verbania.it
vercelli.it
verona.it
vi.it
vibo-valentia.it
vibovalentia.it
vicenza.it
viterbo.it
vr.it
vs.it
vt.it
vv.it

// je : http://www.channelisles.net/register-domains/
// Confirmed by registry <nigel@channelisles.net> 2013-11-28
je
co.je
net.je
org.je

// jm : http://www.com.jm/register.html
*.jm

// jo : http://www.dns.jo/Registration_policy.aspx
jo
com.jo
org.jo
net.jo
edu.jo
sch.jo
gov.jo
mil.jo
name.jo

// jobs : http://en.wikipedia.org/wiki/.jobs
jobs

// jp : http://en.wikipedia.org/wiki/.jp
// http://jprs.co.jp/en/jpdomain.html
// Submitted by registry <info@jprs.jp> 2014-02-28
jp
// jp organizational type names
ac.jp
ad.jp
co.jp
ed.jp
go.jp
gr.jp
lg.jp
ne.jp
or.jp
// jp preficture type names
aichi.jp
akita.jp
aomori.jp
chiba.jp
ehime.jp
fukui.jp
fukuoka.jp
fukushima.jp
gifu.jp
gunma.jp
hiroshima.jp
hokkaido.jp
hyogo.jp
ibaraki.jp
ishikawa.jp
iwate.jp
kagawa.jp
kagoshima.jp
kanagawa.jp
kochi.jp
kumamoto.jp
kyoto.jp
mie.jp
miyagi.jp
miyazaki.jp
nagano.jp
nagasaki.jp
nara.jp
niigata.jp
oita.jp
okayama.jp
okinawa.jp
osaka.jp
saga.jp
saitama.jp
shiga.jp
shimane.jp
shizuoka.jp
tochigi.jp
tokushima.jp
tokyo.jp
tottori.jp
toyama.jp
wakayama.jp
yamagata.jp
yamaguchi.jp
yamanashi.jp
// jp geographic type names
// http://jprs.jp/doc/rule/saisoku-1.html
*.kawasaki.jp
*.kitakyushu.jp
*.kobe.jp
*.nagoya.jp
*.sapporo.jp
*.sendai.jp
*.yokohama.jp
!city.kawasaki.jp
!city.kitakyushu.jp
!city.kobe.jp
!city.nagoya.jp
!city.sapporo.jp
!city.sendai.jp
!city.yokohama.jp
// 4th level registration
aisai.aichi.jp
ama.aichi.jp
anjo.aichi.jp
asuke.aichi.jp
chiryu.aichi.jp
chita.aichi.jp
fuso.aichi.jp
gamagori.aichi.jp
handa.aichi.jp
hazu.aichi.jp
hekinan.aichi.jp
higashiura.aichi.jp
ichinomiya.aichi.jp
inazawa.aichi.jp
inuyama.aichi.jp
isshiki.aichi.jp
iwakura.aichi.jp
kanie.aichi.jp
kariya.aichi.jp
kasugai.aichi.jp
kira.aichi.jp
kiyosu.aichi.jp
komaki.aichi.jp
konan.aichi.jp
kota.aichi.jp
mihama.aichi.jp
miyoshi.aichi.jp
nishio.aichi.jp
nisshin.aichi.jp
obu.aichi.jp
oguchi.aichi.jp
oharu.aichi.jp
okazaki.aichi.jp
owariasahi.aichi.jp
seto.aichi.jp
shikatsu.aichi.jp
shinshiro.aichi.jp
shitara.aichi.jp
tahara.aichi.jp
takahama.aichi.jp
tobishima.aichi.jp
toei.aichi.jp
togo.aichi.jp
tokai.aichi.jp
tokoname.aichi.jp
toyoake.aichi.jp
toyohashi.aichi.jp
toyokawa.aichi.jp
toyone.aichi.jp
toyota.aichi.jp
tsushima.aichi.jp
yatomi.aichi.jp
akita.akita.jp
daisen.akita.jp
fujisato.akita.jp
gojome.akita.jp
hachirogata.akita.jp
happou.akita.jp
higashinaruse.akita.jp
honjo.akita.jp
honjyo.akita.jp
ikawa.akita.jp
kamikoani.akita.jp
kamioka.akita.jp
katagami.akita.jp
kazuno.akita.jp
kitaakita.akita.jp
kosaka.akita.jp
kyowa.akita.jp
misato.akita.jp
mitane.akita.jp
moriyoshi.akita.jp
nikaho.akita.jp
noshiro.akita.jp
odate.akita.jp
oga.akita.jp
ogata.akita.jp
semboku.akita.jp
yokote.akita.jp
yurihonjo.akita.jp
aomori.aomori.jp
gonohe.aomori.jp
hachinohe.aomori.jp
hashikami.aomori.jp
hiranai.aomori.jp
hirosaki.aomori.jp
itayanagi.aomori.jp
kuroishi.aomori.jp
misawa.aomori.jp
mutsu.aomori.jp
nakadomari.aomori.jp
noheji.aomori.jp
oirase.aomori.jp
owani.aomori.jp
rokunohe.aomori.jp
sannohe.aomori.jp
shichinohe.aomori.jp
shingo.aomori.jp
takko.aomori.jp
towada.aomori.jp
tsugaru.aomori.jp
tsuruta.aomori.jp
abiko.chiba.jp
asahi.chiba.jp
chonan.chiba.jp
chosei.chiba.jp
choshi.chiba.jp
chuo.chiba.jp
funabashi.chiba.jp
futtsu.chiba.jp
hanamigawa.chiba.jp
ichihara.chiba.jp
ichikawa.chiba.jp
ichinomiya.chiba.jp
inzai.chiba.jp
isumi.chiba.jp
kamagaya.chiba.jp
kamogawa.chiba.jp
kashiwa.chiba.jp
katori.chiba.jp
katsuura.chiba.jp
kimitsu.chiba.jp
kisarazu.chiba.jp
kozaki.chiba.jp
kujukuri.chiba.jp
kyonan.chiba.jp
matsudo.chiba.jp
midori.chiba.jp
mihama.chiba.jp
minamiboso.chiba.jp
mobara.chiba.jp
mutsuzawa.chiba.jp
nagara.chiba.jp
nagareyama.chiba.jp
narashino.chiba.jp
narita.chiba.jp
noda.chiba.jp
oamishirasato.chiba.jp
omigawa.chiba.jp
onjuku.chiba.jp
otaki.chiba.jp
sakae.chiba.jp
sakura.chiba.jp
shimofusa.chiba.jp
shirako.chiba.jp
shiroi.chiba.jp
shisui.chiba.jp
sodegaura.chiba.jp
sosa.chiba.jp
tako.chiba.jp
tateyama.chiba.jp
togane.chiba.jp
tohnosho.chiba.jp
tomisato.chiba.jp
urayasu.chiba.jp
yachimata.chiba.jp
yachiyo.chiba.jp
yokaichiba.chiba.jp
yokoshibahikari.chiba.jp
yotsukaido.chiba.jp
ainan.ehime.jp
honai.ehime.jp
ikata.ehime.jp
imabari.ehime.jp
iyo.ehime.jp
kamijima.ehime.jp
kihoku.ehime.jp
kumakogen.ehime.jp
masaki.ehime.jp
matsuno.ehime.jp
matsuyama.ehime.jp
namikata.ehime.jp
niihama.ehime.jp
ozu.ehime.jp
saijo.ehime.jp
seiyo.ehime.jp
shikokuchuo.ehime.jp
tobe.ehime.jp
toon.ehime.jp
uchiko.ehime.jp
uwajima.ehime.jp
yawatahama.ehime.jp
echizen.fukui.jp
eiheiji.fukui.jp
fukui.fukui.jp
ikeda.fukui.jp
katsuyama.fukui.jp
mihama.fukui.jp
minamiechizen.fukui.jp
obama.fukui.jp
ohi.fukui.jp
ono.fukui.jp
sabae.fukui.jp
sakai.fukui.jp
takahama.fukui.jp
tsuruga.fukui.jp
wakasa.fukui.jp
ashiya.fukuoka.jp
buzen.fukuoka.jp
chikugo.fukuoka.jp
chikuho.fukuoka.jp
chikujo.fukuoka.jp
chikushino.fukuoka.jp
chikuzen.fukuoka.jp
chuo.fukuoka.jp
dazaifu.fukuoka.jp
fukuchi.fukuoka.jp
hakata.fukuoka.jp
higashi.fukuoka.jp
hirokawa.fukuoka.jp
hisayama.fukuoka.jp
iizuka.fukuoka.jp
inatsuki.fukuoka.jp
kaho.fukuoka.jp
kasuga.fukuoka.jp
kasuya.fukuoka.jp
kawara.fukuoka.jp
keisen.fukuoka.jp
koga.fukuoka.jp
kurate.fukuoka.jp
kurogi.fukuoka.jp
kurume.fukuoka.jp
minami.fukuoka.jp
miyako.fukuoka.jp
miyama.fukuoka.jp
miyawaka.fukuoka.jp
mizumaki.fukuoka.jp
munakata.fukuoka.jp
nakagawa.fukuoka.jp
nakama.fukuoka.jp
nishi.fukuoka.jp
nogata.fukuoka.jp
ogori.fukuoka.jp
okagaki.fukuoka.jp
okawa.fukuoka.jp
oki.fukuoka.jp
omuta.fukuoka.jp
onga.fukuoka.jp
onojo.fukuoka.jp
oto.fukuoka.jp
saigawa.fukuoka.jp
sasaguri.fukuoka.jp
shingu.fukuoka.jp
shinyoshitomi.fukuoka.jp
shonai.fukuoka.jp
soeda.fukuoka.jp
sue.fukuoka.jp
tachiarai.fukuoka.jp
tagawa.fukuoka.jp
takata.fukuoka.jp
toho.fukuoka.jp
toyotsu.fukuoka.jp
tsuiki.fukuoka.jp
ukiha.fukuoka.jp
umi.fukuoka.jp
usui.fukuoka.jp
yamada.fukuoka.jp
yame.fukuoka.jp
yanagawa.fukuoka.jp
yukuhashi.fukuoka.jp
aizubange.fukushima.jp
aizumisato.fukushima.jp
aizuwakamatsu.fukushima.jp
asakawa.fukushima.jp
bandai.fukushima.jp
date.fukushima.jp
fukushima.fukushima.jp
furudono.fukushima.jp
futaba.fukushima.jp
hanawa.fukushima.jp
higashi.fukushima.jp
hirata.fukushima.jp
hirono.fukushima.jp
iitate.fukushima.jp
inawashiro.fukushima.jp
ishikawa.fukushima.jp
iwaki.fukushima.jp
izumizaki.fukushima.jp
kagamiishi.fukushima.jp
kaneyama.fukushima.jp
kawamata.fukushima.jp
kitakata.fukushima.jp
kitashiobara.fukushima.jp
koori.fukushima.jp
koriyama.fukushima.jp
kunimi.fukushima.jp
miharu.fukushima.jp
mishima.fukushima.jp
namie.fukushima.jp
nango.fukushima.jp
nishiaizu.fukushima.jp
nishigo.fukushima.jp
okuma.fukushima.jp
omotego.fukushima.jp
ono.fukushima.jp
otama.fukushima.jp
samegawa.fukushima.jp
shimogo.fukushima.jp
shirakawa.fukushima.jp
showa.fukushima.jp
soma.fukushima.jp
sukagawa.fukushima.jp
taishin.fukushima.jp
tamakawa.fukushima.jp
tanagura.fukushima.jp
tenei.fukushima.jp
yabuki.fukushima.jp
yamato.fukushima.jp
yamatsuri.fukushima.jp
yanaizu.fukushima.jp
yugawa.fukushima.jp
anpachi.gifu.jp
ena.gifu.jp
gifu.gifu.jp
ginan.gifu.jp
godo.gifu.jp
gujo.gifu.jp
hashima.gifu.jp
hichiso.gifu.jp
hida.gifu.jp
higashishirakawa.gifu.jp
ibigawa.gifu.jp
ikeda.gifu.jp
kakamigahara.gifu.jp
kani.gifu.jp
kasahara.gifu.jp
kasamatsu.gifu.jp
kawaue.gifu.jp
kitagata.gifu.jp
mino.gifu.jp
minokamo.gifu.jp
mitake.gifu.jp
mizunami.gifu.jp
motosu.gifu.jp
nakatsugawa.gifu.jp
ogaki.gifu.jp
sakahogi.gifu.jp
seki.gifu.jp
sekigahara.gifu.jp
shirakawa.gifu.jp
tajimi.gifu.jp
takayama.gifu.jp
tarui.gifu.jp
toki.gifu.jp
tomika.gifu.jp
wanouchi.gifu.jp
yamagata.gifu.jp
yaotsu.gifu.jp
yoro.gifu.jp
annaka.gunma.jp
chiyoda.gunma.jp
fujioka.gunma.jp
higashiagatsuma.gunma.jp
isesaki.gunma.jp
itakura.gunma.jp
kanna.gunma.jp
kanra.gunma.jp
katashina.gunma.jp
kawaba.gunma.jp
kiryu.gunma.jp
kusatsu.gunma.jp
maebashi.gunma.jp
meiwa.gunma.jp
midori.gunma.jp
minakami.gunma.jp
naganohara.gunma.jp
nakanojo.gunma.jp
nanmoku.gunma.jp
numata.gunma.jp
oizumi.gunma.jp
ora.gunma.jp
ota.gunma.jp
shibukawa.gunma.jp
shimonita.gunma.jp
shinto.gunma.jp
showa.gunma.jp
takasaki.gunma.jp
takayama.gunma.jp
tamamura.gunma.jp
tatebayashi.gunma.jp
tomioka.gunma.jp
tsukiyono.gunma.jp
tsumagoi.gunma.jp
ueno.gunma.jp
yoshioka.gunma.jp
asaminami.hiroshima.jp
daiwa.hiroshima.jp
etajima.hiroshima.jp
fuchu.hiroshima.jp
fukuyama.hiroshima.jp
hatsukaichi.hiroshima.jp
higashihiroshima.hiroshima.jp
hongo.hiroshima.jp
jinsekikogen.hiroshima.jp
kaita.hiroshima.jp
kui.hiroshima.jp
kumano.hiroshima.jp
kure.hiroshima.jp
mihara.hiroshima.jp
miyoshi.hiroshima.jp
naka.hiroshima.jp
onomichi.hiroshima.jp
osakikamijima.hiroshima.jp
otake.hiroshima.jp
saka.hiroshima.jp
sera.hiroshima.jp
seranishi.hiroshima.jp
shinichi.hiroshima.jp
shobara.hiroshima.jp
takehara.hiroshima.jp
abashiri.hokkaido.jp
abira.hokkaido.jp
aibetsu.hokkaido.jp
akabira.hokkaido.jp
akkeshi.hokkaido.jp
asahikawa.hokkaido.jp
ashibetsu.hokkaido.jp
ashoro.hokkaido.jp
assabu.hokkaido.jp
atsuma.hokkaido.jp
bibai.hokkaido.jp
biei.hokkaido.jp
bifuka.hokkaido.jp
bihoro.hokkaido.jp
biratori.hokkaido.jp
chippubetsu.hokkaido.jp
chitose.hokkaido.jp
date.hokkaido.jp
ebetsu.hokkaido.jp
embetsu.hokkaido.jp
eniwa.hokkaido.jp
erimo.hokkaido.jp
esan.hokkaido.jp
esashi.hokkaido.jp
fukagawa.hokkaido.jp
fukushima.hokkaido.jp
furano.hokkaido.jp
furubira.hokkaido.jp
haboro.hokkaido.jp
hakodate.hokkaido.jp
hamatonbetsu.hokkaido.jp
hidaka.hokkaido.jp
higashikagura.hokkaido.jp
higashikawa.hokkaido.jp
hiroo.hokkaido.jp
hokuryu.hokkaido.jp
hokuto.hokkaido.jp
honbetsu.hokkaido.jp
horokanai.hokkaido.jp
horonobe.hokkaido.jp
ikeda.hokkaido.jp
imakane.hokkaido.jp
ishikari.hokkaido.jp
iwamizawa.hokkaido.jp
iwanai.hokkaido.jp
kamifurano.hokkaido.jp
kamikawa.hokkaido.jp
kamishihoro.hokkaido.jp
kamisunagawa.hokkaido.jp
kamoenai.hokkaido.jp
kayabe.hokkaido.jp
kembuchi.hokkaido.jp
kikonai.hokkaido.jp
kimobetsu.hokkaido.jp
kitahiroshima.hokkaido.jp
kitami.hokkaido.jp
kiyosato.hokkaido.jp
koshimizu.hokkaido.jp
kunneppu.hokkaido.jp
kuriyama.hokkaido.jp
kuromatsunai.hokkaido.jp
kushiro.hokkaido.jp
kutchan.hokkaido.jp
kyowa.hokkaido.jp
mashike.hokkaido.jp
matsumae.hokkaido.jp
mikasa.hokkaido.jp
minamifurano.hokkaido.jp
mombetsu.hokkaido.jp
moseushi.hokkaido.jp
mukawa.hokkaido.jp
muroran.hokkaido.jp
naie.hokkaido.jp
nakagawa.hokkaido.jp
nakasatsunai.hokkaido.jp
nakatombetsu.hokkaido.jp
nanae.hokkaido.jp
nanporo.hokkaido.jp
nayoro.hokkaido.jp
nemuro.hokkaido.jp
niikappu.hokkaido.jp
niki.hokkaido.jp
nishiokoppe.hokkaido.jp
noboribetsu.hokkaido.jp
numata.hokkaido.jp
obihiro.hokkaido.jp
obira.hokkaido.jp
oketo.hokkaido.jp
okoppe.hokkaido.jp
otaru.hokkaido.jp
otobe.hokkaido.jp
otofuke.hokkaido.jp
otoineppu.hokkaido.jp
oumu.hokkaido.jp
ozora.hokkaido.jp
pippu.hokkaido.jp
rankoshi.hokkaido.jp
rebun.hokkaido.jp
rikubetsu.hokkaido.jp
rishiri.hokkaido.jp
rishirifuji.hokkaido.jp
saroma.hokkaido.jp
sarufutsu.hokkaido.jp
shakotan.hokkaido.jp
shari.hokkaido.jp
shibecha.hokkaido.jp
shibetsu.hokkaido.jp
shikabe.hokkaido.jp
shikaoi.hokkaido.jp
shimamaki.hokkaido.jp
shimizu.hokkaido.jp
shimokawa.hokkaido.jp
shinshinotsu.hokkaido.jp
shintoku.hokkaido.jp
shiranuka.hokkaido.jp
shiraoi.hokkaido.jp
shiriuchi.hokkaido.jp
sobetsu.hokkaido.jp
sunagawa.hokkaido.jp
taiki.hokkaido.jp
takasu.hokkaido.jp
takikawa.hokkaido.jp
takinoue.hokkaido.jp
teshikaga.hokkaido.jp
tobetsu.hokkaido.jp
tohma.hokkaido.jp
tomakomai.hokkaido.jp
tomari.hokkaido.jp
toya.hokkaido.jp
toyako.hokkaido.jp
toyotomi.hokkaido.jp
toyoura.hokkaido.jp
tsubetsu.hokkaido.jp
tsukigata.hokkaido.jp
urakawa.hokkaido.jp
urausu.hokkaido.jp
uryu.hokkaido.jp
utashinai.hokkaido.jp
wakkanai.hokkaido.jp
wassamu.hokkaido.jp
yakumo.hokkaido.jp
yoichi.hokkaido.jp
aioi.hyogo.jp
akashi.hyogo.jp
ako.hyogo.jp
amagasaki.hyogo.jp
aogaki.hyogo.jp
asago.hyogo.jp
ashiya.hyogo.jp
awaji.hyogo.jp
fukusaki.hyogo.jp
goshiki.hyogo.jp
harima.hyogo.jp
himeji.hyogo.jp
ichikawa.hyogo.jp
inagawa.hyogo.jp
itami.hyogo.jp
kakogawa.hyogo.jp
kamigori.hyogo.jp
kamikawa.hyogo.jp
kasai.hyogo.jp
kasuga.hyogo.jp
kawanishi.hyogo.jp
miki.hyogo.jp
minamiawaji.hyogo.jp
nishinomiya.hyogo.jp
nishiwaki.hyogo.jp
ono.hyogo.jp
sanda.hyogo.jp
sannan.hyogo.jp
sasayama.hyogo.jp
sayo.hyogo.jp
shingu.hyogo.jp
shinonsen.hyogo.jp
shiso.hyogo.jp
sumoto.hyogo.jp
taishi.hyogo.jp
taka.hyogo.jp
takarazuka.hyogo.jp
takasago.hyogo.jp
takino.hyogo.jp
tamba.hyogo.jp
tatsuno.hyogo.jp
toyooka.hyogo.jp
yabu.hyogo.jp
yashiro.hyogo.jp
yoka.hyogo.jp
yokawa.hyogo.jp
ami.ibaraki.jp
asahi.ibaraki.jp
bando.ibaraki.jp
chikusei.ibaraki.jp
daigo.ibaraki.jp
fujishiro.ibaraki.jp
hitachi.ibaraki.jp
hitachinaka.ibaraki.jp
hitachiomiya.ibaraki.jp
hitachiota.ibaraki.jp
ibaraki.ibaraki.jp
ina.ibaraki.jp
inashiki.ibaraki.jp
itako.ibaraki.jp
iwama.ibaraki.jp
joso.ibaraki.jp
kamisu.ibaraki.jp
kasama.ibaraki.jp
kashima.ibaraki.jp
kasumigaura.ibaraki.jp
koga.ibaraki.jp
miho.ibaraki.jp
mito.ibaraki.jp
moriya.ibaraki.jp
naka.ibaraki.jp
namegata.ibaraki.jp
oarai.ibaraki.jp
ogawa.ibaraki.jp
omitama.ibaraki.jp
ryugasaki.ibaraki.jp
sakai.ibaraki.jp
sakuragawa.ibaraki.jp
shimodate.ibaraki.jp
shimotsuma.ibaraki.jp
shirosato.ibaraki.jp
sowa.ibaraki.jp
suifu.ibaraki.jp
takahagi.ibaraki.jp
tamatsukuri.ibaraki.jp
tokai.ibaraki.jp
tomobe.ibaraki.jp
tone.ibaraki.jp
toride.ibaraki.jp
tsuchiura.ibaraki.jp
tsukuba.ibaraki.jp
uchihara.ibaraki.jp
ushiku.ibaraki.jp
yachiyo.ibaraki.jp
yamagata.ibaraki.jp
yawara.ibaraki.jp
yuki.ibaraki.jp
anamizu.ishikawa.jp
hakui.ishikawa.jp
hakusan.ishikawa.jp
kaga.ishikawa.jp
kahoku.ishikawa.jp
kanazawa.ishikawa.jp
kawakita.ishikawa.jp
komatsu.ishikawa.jp
nakanoto.ishikawa.jp
nanao.ishikawa.jp
nomi.ishikawa.jp
nonoichi.ishikawa.jp
noto.ishikawa.jp
shika.ishikawa.jp
suzu.ishikawa.jp
tsubata.ishikawa.jp
tsurugi.ishikawa.jp
uchinada.ishikawa.jp
wajima.ishikawa.jp
fudai.iwate.jp
fujisawa.iwate.jp
hanamaki.iwate.jp
hiraizumi.iwate.jp
hirono.iwate.jp
ichinohe.iwate.jp
ichinoseki.iwate.jp
iwaizumi.iwate.jp
iwate.iwate.jp
joboji.iwate.jp
kamaishi.iwate.jp
kanegasaki.iwate.jp
karumai.iwate.jp
kawai.iwate.jp
kitakami.iwate.jp
kuji.iwate.jp
kunohe.iwate.jp
kuzumaki.iwate.jp
miyako.iwate.jp
mizusawa.iwate.jp
morioka.iwate.jp
ninohe.iwate.jp
noda.iwate.jp
ofunato.iwate.jp
oshu.iwate.jp
otsuchi.iwate.jp
rikuzentakata.iwate.jp
shiwa.iwate.jp
shizukuishi.iwate.jp
sumita.iwate.jp
tanohata.iwate.jp
tono.iwate.jp
yahaba.iwate.jp
yamada.iwate.jp
ayagawa.kagawa.jp
higashikagawa.kagawa.jp
kanonji.kagawa.jp
kotohira.kagawa.jp
manno.kagawa.jp
marugame.kagawa.jp
mitoyo.kagawa.jp
naoshima.kagawa.jp
sanuki.kagawa.jp
tadotsu.kagawa.jp
takamatsu.kagawa.jp
tonosho.kagawa.jp
uchinomi.kagawa.jp
utazu.kagawa.jp
zentsuji.kagawa.jp
akune.kagoshima.jp
amami.kagoshima.jp
hioki.kagoshima.jp
isa.kagoshima.jp
isen.kagoshima.jp
izumi.kagoshima.jp
kagoshima.kagoshima.jp
kanoya.kagoshima.jp
kawanabe.kagoshima.jp
kinko.kagoshima.jp
kouyama.kagoshima.jp
makurazaki.kagoshima.jp
matsumoto.kagoshima.jp
minamitane.kagoshima.jp
nakatane.kagoshima.jp
nishinoomote.kagoshima.jp
satsumasendai.kagoshima.jp
soo.kagoshima.jp
tarumizu.kagoshima.jp
yusui.kagoshima.jp
aikawa.kanagawa.jp
atsugi.kanagawa.jp
ayase.kanagawa.jp
chigasaki.kanagawa.jp
ebina.kanagawa.jp
fujisawa.kanagawa.jp
hadano.kanagawa.jp
hakone.kanagawa.jp
hiratsuka.kanagawa.jp
isehara.kanagawa.jp
kaisei.kanagawa.jp
kamakura.kanagawa.jp
kiyokawa.kanagawa.jp
matsuda.kanagawa.jp
minamiashigara.kanagawa.jp
miura.kanagawa.jp
nakai.kanagawa.jp
ninomiya.kanagawa.jp
odawara.kanagawa.jp
oi.kanagawa.jp
oiso.kanagawa.jp
sagamihara.kanagawa.jp
samukawa.kanagawa.jp
tsukui.kanagawa.jp
yamakita.kanagawa.jp
yamato.kanagawa.jp
yokosuka.kanagawa.jp
yugawara.kanagawa.jp
zama.kanagawa.jp
zushi.kanagawa.jp
aki.kochi.jp
geisei.kochi.jp
hidaka.kochi.jp
higashitsuno.kochi.jp
ino.kochi.jp
kagami.kochi.jp
kami.kochi.jp
kitagawa.kochi.jp
kochi.kochi.jp
mihara.kochi.jp
motoyama.kochi.jp
muroto.kochi.jp
nahari.kochi.jp
nakamura.kochi.jp
nankoku.kochi.jp
nishitosa.kochi.jp
niyodogawa.kochi.jp
ochi.kochi.jp
okawa.kochi.jp
otoyo.kochi.jp
otsuki.kochi.jp
sakawa.kochi.jp
sukumo.kochi.jp
susaki.kochi.jp
tosa.kochi.jp
tosashimizu.kochi.jp
toyo.kochi.jp
tsuno.kochi.jp
umaji.kochi.jp
yasuda.kochi.jp
yusuhara.kochi.jp
amakusa.kumamoto.jp
arao.kumamoto.jp
aso.kumamoto.jp
choyo.kumamoto.jp
gyokuto.kumamoto.jp
hitoyoshi.kumamoto.jp
kamiamakusa.kumamoto.jp
kashima.kumamoto.jp
kikuchi.kumamoto.jp
kosa.kumamoto.jp
kumamoto.kumamoto.jp
mashiki.kumamoto.jp
mifune.kumamoto.jp
minamata.kumamoto.jp
minamioguni.kumamoto.jp
nagasu.kumamoto.jp
nishihara.kumamoto.jp
oguni.kumamoto.jp
ozu.kumamoto.jp
sumoto.kumamoto.jp
takamori.kumamoto.jp
uki.kumamoto.jp
uto.kumamoto.jp
yamaga.kumamoto.jp
yamato.kumamoto.jp
yatsushiro.kumamoto.jp
ayabe.kyoto.jp
fukuchiyama.kyoto.jp
higashiyama.kyoto.jp
ide.kyoto.jp
ine.kyoto.jp
joyo.kyoto.jp
kameoka.kyoto.jp
kamo.kyoto.jp
kita.kyoto.jp
kizu.kyoto.jp
kumiyama.kyoto.jp
kyotamba.kyoto.jp
kyotanabe.kyoto.jp
kyotango.kyoto.jp
maizuru.kyoto.jp
minami.kyoto.jp
minamiyamashiro.kyoto.jp
miyazu.kyoto.jp
muko.kyoto.jp
nagaokakyo.kyoto.jp
nakagyo.kyoto.jp
nantan.kyoto.jp
oyamazaki.kyoto.jp
sakyo.kyoto.jp
seika.kyoto.jp
tanabe.kyoto.jp
uji.kyoto.jp
ujitawara.kyoto.jp
wazuka.kyoto.jp
yamashina.kyoto.jp
yawata.kyoto.jp
asahi.mie.jp
inabe.mie.jp
ise.mie.jp
kameyama.mie.jp
kawagoe.mie.jp
kiho.mie.jp
kisosaki.mie.jp
kiwa.mie.jp
komono.mie.jp
kumano.mie.jp
kuwana.mie.jp
matsusaka.mie.jp
meiwa.mie.jp
mihama.mie.jp
minamiise.mie.jp
misugi.mie.jp
miyama.mie.jp
nabari.mie.jp
shima.mie.jp
suzuka.mie.jp
tado.mie.jp
taiki.mie.jp
taki.mie.jp
tamaki.mie.jp
toba.mie.jp
tsu.mie.jp
udono.mie.jp
ureshino.mie.jp
watarai.mie.jp
yokkaichi.mie.jp
furukawa.miyagi.jp
higashimatsushima.miyagi.jp
ishinomaki.miyagi.jp
iwanuma.miyagi.jp
kakuda.miyagi.jp
kami.miyagi.jp
kawasaki.miyagi.jp
kesennuma.miyagi.jp
marumori.miyagi.jp
matsushima.miyagi.jp
minamisanriku.miyagi.jp
misato.miyagi.jp
murata.miyagi.jp
natori.miyagi.jp
ogawara.miyagi.jp
ohira.miyagi.jp
onagawa.miyagi.jp
osaki.miyagi.jp
rifu.miyagi.jp
semine.miyagi.jp
shibata.miyagi.jp
shichikashuku.miyagi.jp
shikama.miyagi.jp
shiogama.miyagi.jp
shiroishi.miyagi.jp
tagajo.miyagi.jp
taiwa.miyagi.jp
tome.miyagi.jp
tomiya.miyagi.jp
wakuya.miyagi.jp
watari.miyagi.jp
yamamoto.miyagi.jp
zao.miyagi.jp
aya.miyazaki.jp
ebino.miyazaki.jp
gokase.miyazaki.jp
hyuga.miyazaki.jp
kadogawa.miyazaki.jp
kawaminami.miyazaki.jp
kijo.miyazaki.jp
kitagawa.miyazaki.jp
kitakata.miyazaki.jp
kitaura.miyazaki.jp
kobayashi.miyazaki.jp
kunitomi.miyazaki.jp
kushima.miyazaki.jp
mimata.miyazaki.jp
miyakonojo.miyazaki.jp
miyazaki.miyazaki.jp
morotsuka.miyazaki.jp
nichinan.miyazaki.jp
nishimera.miyazaki.jp
nobeoka.miyazaki.jp
saito.miyazaki.jp
shiiba.miyazaki.jp
shintomi.miyazaki.jp
takaharu.miyazaki.jp
takanabe.miyazaki.jp
takazaki.miyazaki.jp
tsuno.miyazaki.jp
achi.nagano.jp
agematsu.nagano.jp
anan.nagano.jp
aoki.nagano.jp
asahi.nagano.jp
azumino.nagano.jp
chikuhoku.nagano.jp
chikuma.nagano.jp
chino.nagano.jp
fujimi.nagano.jp
hakuba.nagano.jp
hara.nagano.jp
hiraya.nagano.jp
iida.nagano.jp
iijima.nagano.jp
iiyama.nagano.jp
iizuna.nagano.jp
ikeda.nagano.jp
ikusaka.nagano.jp
ina.nagano.jp
karuizawa.nagano.jp
kawakami.nagano.jp
kiso.nagano.jp
kisofukushima.nagano.jp
kitaaiki.nagano.jp
komagane.nagano.jp
komoro.nagano.jp
matsukawa.nagano.jp
matsumoto.nagano.jp
miasa.nagano.jp
minamiaiki.nagano.jp
minamimaki.nagano.jp
minamiminowa.nagano.jp
minowa.nagano.jp
miyada.nagano.jp
miyota.nagano.jp
mochizuki.nagano.jp
nagano.nagano.jp
nagawa.nagano.jp
nagiso.nagano.jp
nakagawa.nagano.jp
nakano.nagano.jp
nozawaonsen.nagano.jp
obuse.nagano.jp
ogawa.nagano.jp
okaya.nagano.jp
omachi.nagano.jp
omi.nagano.jp
ookuwa.nagano.jp
ooshika.nagano.jp
otaki.nagano.jp
otari.nagano.jp
sakae.nagano.jp
sakaki.nagano.jp
saku.nagano.jp
sakuho.nagano.jp
shimosuwa.nagano.jp
shinanomachi.nagano.jp
shiojiri.nagano.jp
suwa.nagano.jp
suzaka.nagano.jp
takagi.nagano.jp
takamori.nagano.jp
takayama.nagano.jp
tateshina.nagano.jp
tatsuno.nagano.jp
togakushi.nagano.jp
togura.nagano.jp
tomi.nagano.jp
ueda.nagano.jp
wada.nagano.jp
yamagata.nagano.jp
yamanouchi.nagano.jp
yasaka.nagano.jp
yasuoka.nagano.jp
chijiwa.nagasaki.jp
futsu.nagasaki.jp
goto.nagasaki.jp
hasami.nagasaki.jp
hirado.nagasaki.jp
iki.nagasaki.jp
isahaya.nagasaki.jp
kawatana.nagasaki.jp
kuchinotsu.nagasaki.jp
matsuura.nagasaki.jp
nagasaki.nagasaki.jp
obama.nagasaki.jp
omura.nagasaki.jp
oseto.nagasaki.jp
saikai.nagasaki.jp
sasebo.nagasaki.jp
seihi.nagasaki.jp
shimabara.nagasaki.jp
shinkamigoto.nagasaki.jp
togitsu.nagasaki.jp
tsushima.nagasaki.jp
unzen.nagasaki.jp
ando.nara.jp
gose.nara.jp
heguri.nara.jp
higashiyoshino.nara.jp
ikaruga.nara.jp
ikoma.nara.jp
kamikitayama.nara.jp
kanmaki.nara.jp
kashiba.nara.jp
kashihara.nara.jp
katsuragi.nara.jp
kawai.nara.jp
kawakami.nara.jp
kawanishi.nara.jp
koryo.nara.jp
kurotaki.nara.jp
mitsue.nara.jp
miyake.nara.jp
nara.nara.jp
nosegawa.nara.jp
oji.nara.jp
ouda.nara.jp
oyodo.nara.jp
sakurai.nara.jp
sango.nara.jp
shimoichi.nara.jp
shimokitayama.nara.jp
shinjo.nara.jp
soni.nara.jp
takatori.nara.jp
tawaramoto.nara.jp
tenkawa.nara.jp
tenri.nara.jp
uda.nara.jp
yamatokoriyama.nara.jp
yamatotakada.nara.jp
yamazoe.nara.jp
yoshino.nara.jp
aga.niigata.jp
agano.niigata.jp
gosen.niigata.jp
itoigawa.niigata.jp
izumozaki.niigata.jp
joetsu.niigata.jp
kamo.niigata.jp
kariwa.niigata.jp
kashiwazaki.niigata.jp
minamiuonuma.niigata.jp
mitsuke.niigata.jp
muika.niigata.jp
murakami.niigata.jp
myoko.niigata.jp
nagaoka.niigata.jp
niigata.niigata.jp
ojiya.niigata.jp
omi.niigata.jp
sado.niigata.jp
sanjo.niigata.jp
seiro.niigata.jp
seirou.niigata.jp
sekikawa.niigata.jp
shibata.niigata.jp
tagami.niigata.jp
tainai.niigata.jp
tochio.niigata.jp
tokamachi.niigata.jp
tsubame.niigata.jp
tsunan.niigata.jp
uonuma.niigata.jp
yahiko.niigata.jp
yoita.niigata.jp
yuzawa.niigata.jp
beppu.oita.jp
bungoono.oita.jp
bungotakada.oita.jp
hasama.oita.jp
hiji.oita.jp
himeshima.oita.jp
hita.oita.jp
kamitsue.oita.jp
kokonoe.oita.jp
kuju.oita.jp
kunisaki.oita.jp
kusu.oita.jp
oita.oita.jp
saiki.oita.jp
taketa.oita.jp
tsukumi.oita.jp
usa.oita.jp
usuki.oita.jp
yufu.oita.jp
akaiwa.okayama.jp
asakuchi.okayama.jp
bizen.okayama.jp
hayashima.okayama.jp
ibara.okayama.jp
kagamino.okayama.jp
kasaoka.okayama.jp
kibichuo.okayama.jp
kumenan.okayama.jp
kurashiki.okayama.jp
maniwa.okayama.jp
misaki.okayama.jp
nagi.okayama.jp
niimi.okayama.jp
nishiawakura.okayama.jp
okayama.okayama.jp
satosho.okayama.jp
setouchi.okayama.jp
shinjo.okayama.jp
shoo.okayama.jp
soja.okayama.jp
takahashi.okayama.jp
tamano.okayama.jp
tsuyama.okayama.jp
wake.okayama.jp
yakage.okayama.jp
aguni.okinawa.jp
ginowan.okinawa.jp
ginoza.okinawa.jp
gushikami.okinawa.jp
haebaru.okinawa.jp
higashi.okinawa.jp
hirara.okinawa.jp
iheya.okinawa.jp
ishigaki.okinawa.jp
ishikawa.okinawa.jp
itoman.okinawa.jp
izena.okinawa.jp
kadena.okinawa.jp
kin.okinawa.jp
kitadaito.okinawa.jp
kitanakagusuku.okinawa.jp
kumejima.okinawa.jp
kunigami.okinawa.jp
minamidaito.okinawa.jp
motobu.okinawa.jp
nago.okinawa.jp
naha.okinawa.jp
nakagusuku.okinawa.jp
nakijin.okinawa.jp
nanjo.okinawa.jp
nishihara.okinawa.jp
ogimi.okinawa.jp
okinawa.okinawa.jp
onna.okinawa.jp
shimoji.okinawa.jp
taketomi.okinawa.jp
tarama.okinawa.jp
tokashiki.okinawa.jp
tomigusuku.okinawa.jp
tonaki.okinawa.jp
urasoe.okinawa.jp
uruma.okinawa.jp
yaese.okinawa.jp
yomitan.okinawa.jp
yonabaru.okinawa.jp
yonaguni.okinawa.jp
zamami.okinawa.jp
abeno.osaka.jp
chihayaakasaka.osaka.jp
chuo.osaka.jp
daito.osaka.jp
fujiidera.osaka.jp
habikino.osaka.jp
hannan.osaka.jp
higashiosaka.osaka.jp
higashisumiyoshi.osaka.jp
higashiyodogawa.osaka.jp
hirakata.osaka.jp
ibaraki.osaka.jp
ikeda.osaka.jp
izumi.osaka.jp
izumiotsu.osaka.jp
izumisano.osaka.jp
kadoma.osaka.jp
kaizuka.osaka.jp
kanan.osaka.jp
kashiwara.osaka.jp
katano.osaka.jp
kawachinagano.osaka.jp
kishiwada.osaka.jp
kita.osaka.jp
kumatori.osaka.jp
matsubara.osaka.jp
minato.osaka.jp
minoh.osaka.jp
misaki.osaka.jp
moriguchi.osaka.jp
neyagawa.osaka.jp
nishi.osaka.jp
nose.osaka.jp
osakasayama.osaka.jp
sakai.osaka.jp
sayama.osaka.jp
sennan.osaka.jp
settsu.osaka.jp
shijonawate.osaka.jp
shimamoto.osaka.jp
suita.osaka.jp
tadaoka.osaka.jp
taishi.osaka.jp
tajiri.osaka.jp
takaishi.osaka.jp
takatsuki.osaka.jp
tondabayashi.osaka.jp
toyonaka.osaka.jp
toyono.osaka.jp
yao.osaka.jp
ariake.saga.jp
arita.saga.jp
fukudomi.saga.jp
genkai.saga.jp
hamatama.saga.jp
hizen.saga.jp
imari.saga.jp
kamimine.saga.jp
kanzaki.saga.jp
karatsu.saga.jp
kashima.saga.jp
kitagata.saga.jp
kitahata.saga.jp
kiyama.saga.jp
kouhoku.saga.jp
kyuragi.saga.jp
nishiarita.saga.jp
ogi.saga.jp
omachi.saga.jp
ouchi.saga.jp
saga.saga.jp
shiroishi.saga.jp
taku.saga.jp
tara.saga.jp
tosu.saga.jp
yoshinogari.saga.jp
arakawa.saitama.jp
asaka.saitama.jp
chichibu.saitama.jp
fujimi.saitama.jp
fujimino.saitama.jp
fukaya.saitama.jp
hanno.saitama.jp
hanyu.saitama.jp
hasuda.saitama.jp
hatogaya.saitama.jp
hatoyama.saitama.jp
hidaka.saitama.jp
higashichichibu.saitama.jp
higashimatsuyama.saitama.jp
honjo.saitama.jp
ina.saitama.jp
iruma.saitama.jp
iwatsuki.saitama.jp
kamiizumi.saitama.jp
kamikawa.saitama.jp
kamisato.saitama.jp
kasukabe.saitama.jp
kawagoe.saitama.jp
kawaguchi.saitama.jp
kawajima.saitama.jp
kazo.saitama.jp
kitamoto.saitama.jp
koshigaya.saitama.jp
kounosu.saitama.jp
kuki.saitama.jp
kumagaya.saitama.jp
matsubushi.saitama.jp
minano.saitama.jp
misato.saitama.jp
miyashiro.saitama.jp
miyoshi.saitama.jp
moroyama.saitama.jp
nagatoro.saitama.jp
namegawa.saitama.jp
niiza.saitama.jp
ogano.saitama.jp
ogawa.saitama.jp
ogose.saitama.jp
okegawa.saitama.jp
omiya.saitama.jp
otaki.saitama.jp
ranzan.saitama.jp
ryokami.saitama.jp
saitama.saitama.jp
sakado.saitama.jp
satte.saitama.jp
sayama.saitama.jp
shiki.saitama.jp
shiraoka.saitama.jp
soka.saitama.jp
sugito.saitama.jp
toda.saitama.jp
tokigawa.saitama.jp
tokorozawa.saitama.jp
tsurugashima.saitama.jp
urawa.saitama.jp
warabi.saitama.jp
yashio.saitama.jp
yokoze.saitama.jp
yono.saitama.jp
yorii.saitama.jp
yoshida.saitama.jp
yoshikawa.saitama.jp
yoshimi.saitama.jp
aisho.shiga.jp
gamo.shiga.jp
higashiomi.shiga.jp
hikone.shiga.jp
koka.shiga.jp
konan.shiga.jp
kosei.shiga.jp
koto.shiga.jp
kusatsu.shiga.jp
maibara.shiga.jp
moriyama.shiga.jp
nagahama.shiga.jp
nishiazai.shiga.jp
notogawa.shiga.jp
omihachiman.shiga.jp
otsu.shiga.jp
ritto.shiga.jp
ryuoh.shiga.jp
takashima.shiga.jp
takatsuki.shiga.jp
torahime.shiga.jp
toyosato.shiga.jp
yasu.shiga.jp
akagi.shimane.jp
ama.shimane.jp
gotsu.shimane.jp
hamada.shimane.jp
higashiizumo.shimane.jp
hikawa.shimane.jp
hikimi.shimane.jp
izumo.shimane.jp
kakinoki.shimane.jp
masuda.shimane.jp
matsue.shimane.jp
misato.shimane.jp
nishinoshima.shimane.jp
ohda.shimane.jp
okinoshima.shimane.jp
okuizumo.shimane.jp
shimane.shimane.jp
tamayu.shimane.jp
tsuwano.shimane.jp
unnan.shimane.jp
yakumo.shimane.jp
yasugi.shimane.jp
yatsuka.shimane.jp
arai.shizuoka.jp
atami.shizuoka.jp
fuji.shizuoka.jp
fujieda.shizuoka.jp
fujikawa.shizuoka.jp
fujinomiya.shizuoka.jp
fukuroi.shizuoka.jp
gotemba.shizuoka.jp
haibara.shizuoka.jp
hamamatsu.shizuoka.jp
higashiizu.shizuoka.jp
ito.shizuoka.jp
iwata.shizuoka.jp
izu.shizuoka.jp
izunokuni.shizuoka.jp
kakegawa.shizuoka.jp
kannami.shizuoka.jp
kawanehon.shizuoka.jp
kawazu.shizuoka.jp
kikugawa.shizuoka.jp
kosai.shizuoka.jp
makinohara.shizuoka.jp
matsuzaki.shizuoka.jp
minamiizu.shizuoka.jp
mishima.shizuoka.jp
morimachi.shizuoka.jp
nishiizu.shizuoka.jp
numazu.shizuoka.jp
omaezaki.shizuoka.jp
shimada.shizuoka.jp
shimizu.shizuoka.jp
shimoda.shizuoka.jp
shizuoka.shizuoka.jp
susono.shizuoka.jp
yaizu.shizuoka.jp
yoshida.shizuoka.jp
ashikaga.tochigi.jp
bato.tochigi.jp
haga.tochigi.jp
ichikai.tochigi.jp
iwafune.tochigi.jp
kaminokawa.tochigi.jp
kanuma.tochigi.jp
karasuyama.tochigi.jp
kuroiso.tochigi.jp
mashiko.tochigi.jp
mibu.tochigi.jp
moka.tochigi.jp
motegi.tochigi.jp
nasu.tochigi.jp
nasushiobara.tochigi.jp
nikko.tochigi.jp
nishikata.tochigi.jp
nogi.tochigi.jp
ohira.tochigi.jp
ohtawara.tochigi.jp
oyama.tochigi.jp
sakura.tochigi.jp
sano.tochigi.jp
shimotsuke.tochigi.jp
shioya.tochigi.jp
takanezawa.tochigi.jp
tochigi.tochigi.jp
tsuga.tochigi.jp
ujiie.tochigi.jp
utsunomiya.tochigi.jp
yaita.tochigi.jp
aizumi.tokushima.jp
anan.tokushima.jp
ichiba.tokushima.jp
itano.tokushima.jp
kainan.tokushima.jp
komatsushima.tokushima.jp
matsushige.tokushima.jp
mima.tokushima.jp
minami.tokushima.jp
miyoshi.tokushima.jp
mugi.tokushima.jp
nakagawa.tokushima.jp
naruto.tokushima.jp
sanagochi.tokushima.jp
shishikui.tokushima.jp
tokushima.tokushima.jp
wajiki.tokushima.jp
adachi.tokyo.jp
akiruno.tokyo.jp
akishima.tokyo.jp
aogashima.tokyo.jp
arakawa.tokyo.jp
bunkyo.tokyo.jp
chiyoda.tokyo.jp
chofu.tokyo.jp
chuo.tokyo.jp
edogawa.tokyo.jp
fuchu.tokyo.jp
fussa.tokyo.jp
hachijo.tokyo.jp
hachioji.tokyo.jp
hamura.tokyo.jp
higashikurume.tokyo.jp
higashimurayama.tokyo.jp
higashiyamato.tokyo.jp
hino.tokyo.jp
hinode.tokyo.jp
hinohara.tokyo.jp
inagi.tokyo.jp
itabashi.tokyo.jp
katsushika.tokyo.jp
kita.tokyo.jp
kiyose.tokyo.jp
kodaira.tokyo.jp
koganei.tokyo.jp
kokubunji.tokyo.jp
komae.tokyo.jp
koto.tokyo.jp
kouzushima.tokyo.jp
kunitachi.tokyo.jp
machida.tokyo.jp
meguro.tokyo.jp
minato.tokyo.jp
mitaka.tokyo.jp
mizuho.tokyo.jp
musashimurayama.tokyo.jp
musashino.tokyo.jp
nakano.tokyo.jp
nerima.tokyo.jp
ogasawara.tokyo.jp
okutama.tokyo.jp
ome.tokyo.jp
oshima.tokyo.jp
ota.tokyo.jp
setagaya.tokyo.jp
shibuya.tokyo.jp
shinagawa.tokyo.jp
shinjuku.tokyo.jp
suginami.tokyo.jp
sumida.tokyo.jp
tachikawa.tokyo.jp
taito.tokyo.jp
tama.tokyo.jp
toshima.tokyo.jp
chizu.tottori.jp
hino.tottori.jp
kawahara.tottori.jp
koge.tottori.jp
kotoura.tottori.jp
misasa.tottori.jp
nanbu.tottori.jp
nichinan.tottori.jp
sakaiminato.tottori.jp
tottori.tottori.jp
wakasa.tottori.jp
yazu.tottori.jp
yonago.tottori.jp
asahi.toyama.jp
fuchu.toyama.jp
fukumitsu.toyama.jp
funahashi.toyama.jp
himi.toyama.jp
imizu.toyama.jp
inami.toyama.jp
johana.toyama.jp
kamiichi.toyama.jp
kurobe.toyama.jp
nakaniikawa.toyama.jp
namerikawa.toyama.jp
nanto.toyama.jp
nyuzen.toyama.jp
oyabe.toyama.jp
taira.toyama.jp
takaoka.toyama.jp
tateyama.toyama.jp
toga.toyama.jp
tonami.toyama.jp
toyama.toyama.jp
unazuki.toyama.jp
uozu.toyama.jp
yamada.toyama.jp
arida.wakayama.jp
aridagawa.wakayama.jp
gobo.wakayama.jp
hashimoto.wakayama.jp
hidaka.wakayama.jp
hirogawa.wakayama.jp
inami.wakayama.jp
iwade.wakayama.jp
kainan.wakayama.jp
kamitonda.wakayama.jp
katsuragi.wakayama.jp
kimino.wakayama.jp
kinokawa.wakayama.jp
kitayama.wakayama.jp
koya.wakayama.jp
koza.wakayama.jp
kozagawa.wakayama.jp
kudoyama.wakayama.jp
kushimoto.wakayama.jp
mihama.wakayama.jp
misato.wakayama.jp
nachikatsuura.wakayama.jp
shingu.wakayama.jp
shirahama.wakayama.jp
taiji.wakayama.jp
tanabe.wakayama.jp
wakayama.wakayama.jp
yuasa.wakayama.jp
yura.wakayama.jp
asahi.yamagata.jp
funagata.yamagata.jp
higashine.yamagata.jp
iide.yamagata.jp
kahoku.yamagata.jp
kaminoyama.yamagata.jp
kaneyama.yamagata.jp
kawanishi.yamagata.jp
mamurogawa.yamagata.jp
mikawa.yamagata.jp
murayama.yamagata.jp
nagai.yamagata.jp
nakayama.yamagata.jp
nanyo.yamagata.jp
nishikawa.yamagata.jp
obanazawa.yamagata.jp
oe.yamagata.jp
oguni.yamagata.jp
ohkura.yamagata.jp
oishida.yamagata.jp
sagae.yamagata.jp
sakata.yamagata.jp
sakegawa.yamagata.jp
shinjo.yamagata.jp
shirataka.yamagata.jp
shonai.yamagata.jp
takahata.yamagata.jp
tendo.yamagata.jp
tozawa.yamagata.jp
tsuruoka.yamagata.jp
yamagata.yamagata.jp
yamanobe.yamagata.jp
yonezawa.yamagata.jp
yuza.yamagata.jp
abu.yamaguchi.jp
hagi.yamaguchi.jp
hikari.yamaguchi.jp
hofu.yamaguchi.jp
iwakuni.yamaguchi.jp
kudamatsu.yamaguchi.jp
mitou.yamaguchi.jp
nagato.yamaguchi.jp
oshima.yamaguchi.jp
shimonoseki.yamaguchi.jp
shunan.yamaguchi.jp
tabuse.yamaguchi.jp
tokuyama.yamaguchi.jp
toyota.yamaguchi.jp
ube.yamaguchi.jp
yuu.yamaguchi.jp
chuo.yamanashi.jp
doshi.yamanashi.jp
fuefuki.yamanashi.jp
fujikawa.yamanashi.jp
fujikawaguchiko.yamanashi.jp
fujiyoshida.yamanashi.jp
hayakawa.yamanashi.jp
hokuto.yamanashi.jp
ichikawamisato.yamanashi.jp
kai.yamanashi.jp
kofu.yamanashi.jp
koshu.yamanashi.jp
kosuge.yamanashi.jp
minami-alps.yamanashi.jp
minobu.yamanashi.jp
nakamichi.yamanashi.jp
nanbu.yamanashi.jp
narusawa.yamanashi.jp
nirasaki.yamanashi.jp
nishikatsura.yamanashi.jp
oshino.yamanashi.jp
otsuki.yamanashi.jp
showa.yamanashi.jp
tabayama.yamanashi.jp
tsuru.yamanashi.jp
uenohara.yamanashi.jp
yamanakako.yamanashi.jp
yamanashi.yamanashi.jp

// ke : http://www.kenic.or.ke/index.php?option=com_content&task=view&id=117&Itemid=145
*.ke

// kg : http://www.domain.kg/dmn_n.html
kg
org.kg
net.kg
com.kg
edu.kg
gov.kg
mil.kg

// kh : http://www.mptc.gov.kh/dns_registration.htm
*.kh

// ki : http://www.ki/dns/index.html
ki
edu.ki
biz.ki
net.ki
org.ki
gov.ki
info.ki
com.ki

// km : http://en.wikipedia.org/wiki/.km
// http://www.domaine.km/documents/charte.doc
km
org.km
nom.km
gov.km
prd.km
tm.km
edu.km
mil.km
ass.km
com.km
// These are only mentioned as proposed suggestions at domaine.km, but
// http://en.wikipedia.org/wiki/.km says they're available for registration:
coop.km
asso.km
presse.km
medecin.km
notaires.km
pharmaciens.km
veterinaire.km
gouv.km

// kn : http://en.wikipedia.org/wiki/.kn
// http://www.dot.kn/domainRules.html
kn
net.kn
org.kn
edu.kn
gov.kn

// kp : http://www.kcce.kp/en_index.php
kp
com.kp
edu.kp
gov.kp
org.kp
rep.kp
tra.kp

// kr : http://en.wikipedia.org/wiki/.kr
// see also: http://domain.nida.or.kr/eng/registration.jsp
kr
ac.kr
co.kr
es.kr
go.kr
hs.kr
kg.kr
mil.kr
ms.kr
ne.kr
or.kr
pe.kr
re.kr
sc.kr
// kr geographical names
busan.kr
chungbuk.kr
chungnam.kr
daegu.kr
daejeon.kr
gangwon.kr
gwangju.kr
gyeongbuk.kr
gyeonggi.kr
gyeongnam.kr
incheon.kr
jeju.kr
jeonbuk.kr
jeonnam.kr
seoul.kr
ulsan.kr

// kw : http://en.wikipedia.org/wiki/.kw
*.kw

// ky : http://www.icta.ky/da_ky_reg_dom.php
// Confirmed by registry <kysupport@perimeterusa.com> 2008-06-17
ky
edu.ky
gov.ky
com.ky
org.ky
net.ky

// kz : http://en.wikipedia.org/wiki/.kz
// see also: http://www.nic.kz/rules/index.jsp
kz
org.kz
edu.kz
net.kz
gov.kz
mil.kz
com.kz

// la : http://en.wikipedia.org/wiki/.la
// Submitted by registry <gavin.brown@nic.la> 2008-06-10
la
int.la
net.la
info.la
edu.la
gov.la
per.la
com.la
org.la

// lb : http://en.wikipedia.org/wiki/.lb
// Submitted by registry <randy@psg.com> 2008-06-17
lb
com.lb
edu.lb
gov.lb
net.lb
org.lb

// lc : http://en.wikipedia.org/wiki/.lc
// see also: http://www.nic.lc/rules.htm
lc
com.lc
net.lc
co.lc
org.lc
edu.lc
gov.lc

// li : http://en.wikipedia.org/wiki/.li
li

// lk : http://www.nic.lk/seclevpr.html
lk
gov.lk
sch.lk
net.lk
int.lk
com.lk
org.lk
edu.lk
ngo.lk
soc.lk
web.lk
ltd.lk
assn.lk
grp.lk
hotel.lk

// lr : http://psg.com/dns/lr/lr.txt
// Submitted by registry <randy@psg.com> 2008-06-17
lr
com.lr
edu.lr
gov.lr
org.lr
net.lr

// ls : http://en.wikipedia.org/wiki/.ls
ls
co.ls
org.ls

// lt : http://en.wikipedia.org/wiki/.lt
lt
// gov.lt : http://www.gov.lt/index_en.php
gov.lt

// lu : http://www.dns.lu/en/
lu

// lv : http://www.nic.lv/DNS/En/generic.php
lv
com.lv
edu.lv
gov.lv
org.lv
mil.lv
id.lv
net.lv
asn.lv
conf.lv

// ly : http://www.nic.ly/regulations.php
ly
com.ly
net.ly
gov.ly
plc.ly
edu.ly
sch.ly
med.ly
org.ly
id.ly

// ma : http://en.wikipedia.org/wiki/.ma
// http://www.anrt.ma/fr/admin/download/upload/file_fr782.pdf
ma
co.ma
net.ma
gov.ma
org.ma
ac.ma
press.ma

// mc : http://www.nic.mc/
mc
tm.mc
asso.mc

// md : http://en.wikipedia.org/wiki/.md
md

// me : http://en.wikipedia.org/wiki/.me
me
co.me
net.me
org.me
edu.me
ac.me
gov.me
its.me
priv.me

// mg : http://www.nic.mg/tarif.htm
mg
org.mg
nom.mg
gov.mg
prd.mg
tm.mg
edu.mg
mil.mg
com.mg

// mh : http://en.wikipedia.org/wiki/.mh
mh

// mil : http://en.wikipedia.org/wiki/.mil
mil

// mk : http://en.wikipedia.org/wiki/.mk
// see also: http://dns.marnet.net.mk/postapka.php
mk
com.mk
org.mk
net.mk
edu.mk
gov.mk
inf.mk
name.mk

// ml : http://www.gobin.info/domainname/ml-template.doc
// see also: http://en.wikipedia.org/wiki/.ml
ml
com.ml
edu.ml
gouv.ml
gov.ml
net.ml
org.ml
presse.ml

// mm : http://en.wikipedia.org/wiki/.mm
*.mm

// mn : http://en.wikipedia.org/wiki/.mn
mn
gov.mn
edu.mn
org.mn

// mo : http://www.monic.net.mo/
mo
com.mo
net.mo
org.mo
edu.mo
gov.mo

// mobi : http://en.wikipedia.org/wiki/.mobi
mobi

// mp : http://www.dot.mp/
// Confirmed by registry <dcamacho@saipan.com> 2008-06-17
mp

// mq : http://en.wikipedia.org/wiki/.mq
mq

// mr : http://en.wikipedia.org/wiki/.mr
mr
gov.mr

// ms : http://www.nic.ms/pdf/MS_Domain_Name_Rules.pdf
ms
com.ms
edu.ms
gov.ms
net.ms
org.ms

// mt : https://www.nic.org.mt/go/policy
// Submitted by registry <help@nic.org.mt> 2013-11-19
mt
com.mt
edu.mt
net.mt
org.mt

// mu : http://en.wikipedia.org/wiki/.mu
mu
com.mu
net.mu
org.mu
gov.mu
ac.mu
co.mu
or.mu

// museum : http://about.museum/naming/
// http://index.museum/
museum
academy.museum
agriculture.museum
air.museum
airguard.museum
alabama.museum
alaska.museum
amber.museum
ambulance.museum
american.museum
americana.museum
americanantiques.museum
americanart.museum
amsterdam.museum
and.museum
annefrank.museum
anthro.museum
anthropology.museum
antiques.museum
aquarium.museum
arboretum.museum
archaeological.museum
archaeology.museum
architecture.museum
art.museum
artanddesign.museum
artcenter.museum
artdeco.museum
arteducation.museum
artgallery.museum
arts.museum
artsandcrafts.museum
asmatart.museum
assassination.museum
assisi.museum
association.museum
astronomy.museum
atlanta.museum
austin.museum
australia.museum
automotive.museum
aviation.museum
axis.museum
badajoz.museum
baghdad.museum
bahn.museum
bale.museum
baltimore.museum
barcelona.museum
baseball.museum
basel.museum
baths.museum
bauern.museum
beauxarts.museum
beeldengeluid.museum
bellevue.museum
bergbau.museum
berkeley.museum
berlin.museum
bern.museum
bible.museum
bilbao.museum
bill.museum
birdart.museum
birthplace.museum
bonn.museum
boston.museum
botanical.museum
botanicalgarden.museum
botanicgarden.museum
botany.museum
brandywinevalley.museum
brasil.museum
bristol.museum
british.museum
britishcolumbia.museum
broadcast.museum
brunel.museum
brussel.museum
brussels.museum
bruxelles.museum
building.museum
burghof.museum
bus.museum
bushey.museum
cadaques.museum
california.museum
cambridge.museum
can.museum
canada.museum
capebreton.museum
carrier.museum
cartoonart.museum
casadelamoneda.museum
castle.museum
castres.museum
celtic.museum
center.museum
chattanooga.museum
cheltenham.museum
chesapeakebay.museum
chicago.museum
children.museum
childrens.museum
childrensgarden.museum
chiropractic.museum
chocolate.museum
christiansburg.museum
cincinnati.museum
cinema.museum
circus.museum
civilisation.museum
civilization.museum
civilwar.museum
clinton.museum
clock.museum
coal.museum
coastaldefence.museum
cody.museum
coldwar.museum
collection.museum
colonialwilliamsburg.museum
coloradoplateau.museum
columbia.museum
columbus.museum
communication.museum
communications.museum
community.museum
computer.museum
computerhistory.museum
comunicações.museum
contemporary.museum
contemporaryart.museum
convent.museum
copenhagen.museum
corporation.museum
correios-e-telecomunicações.museum
corvette.museum
costume.museum
countryestate.museum
county.museum
crafts.museum
cranbrook.museum
creation.museum
cultural.museum
culturalcenter.museum
culture.museum
cyber.museum
cymru.museum
dali.museum
dallas.museum
database.museum
ddr.museum
decorativearts.museum
delaware.museum
delmenhorst.museum
denmark.museum
depot.museum
design.museum
detroit.museum
dinosaur.museum
discovery.museum
dolls.museum
donostia.museum
durham.museum
eastafrica.museum
eastcoast.museum
education.museum
educational.museum
egyptian.museum
eisenbahn.museum
elburg.museum
elvendrell.museum
embroidery.museum
encyclopedic.museum
england.museum
entomology.museum
environment.museum
environmentalconservation.museum
epilepsy.museum
essex.museum
estate.museum
ethnology.museum
exeter.museum
exhibition.museum
family.museum
farm.museum
farmequipment.museum
farmers.museum
farmstead.museum
field.museum
figueres.museum
filatelia.museum
film.museum
fineart.museum
finearts.museum
finland.museum
flanders.museum
florida.museum
force.museum
fortmissoula.museum
fortworth.museum
foundation.museum
francaise.museum
frankfurt.museum
franziskaner.museum
freemasonry.museum
freiburg.museum
fribourg.museum
frog.museum
fundacio.museum
furniture.museum
gallery.museum
garden.museum
gateway.museum
geelvinck.museum
gemological.museum
geology.museum
georgia.museum
giessen.museum
glas.museum
glass.museum
gorge.museum
grandrapids.museum
graz.museum
guernsey.museum
halloffame.museum
hamburg.museum
handson.museum
harvestcelebration.museum
hawaii.museum
health.museum
heimatunduhren.museum
hellas.museum
helsinki.museum
hembygdsforbund.museum
heritage.museum
histoire.museum
historical.museum
historicalsociety.museum
historichouses.museum
historisch.museum
historisches.museum
history.museum
historyofscience.museum
horology.museum
house.museum
humanities.museum
illustration.museum
imageandsound.museum
indian.museum
indiana.museum
indianapolis.museum
indianmarket.museum
intelligence.museum
interactive.museum
iraq.museum
iron.museum
isleofman.museum
jamison.museum
jefferson.museum
jerusalem.museum
jewelry.museum
jewish.museum
jewishart.museum
jfk.museum
journalism.museum
judaica.museum
judygarland.museum
juedisches.museum
juif.museum
karate.museum
karikatur.museum
kids.museum
koebenhavn.museum
koeln.museum
kunst.museum
kunstsammlung.museum
kunstunddesign.museum
labor.museum
labour.museum
lajolla.museum
lancashire.museum
landes.museum
lans.museum
läns.museum
larsson.museum
lewismiller.museum
lincoln.museum
linz.museum
living.museum
livinghistory.museum
localhistory.museum
london.museum
losangeles.museum
louvre.museum
loyalist.museum
lucerne.museum
luxembourg.museum
luzern.museum
mad.museum
madrid.museum
mallorca.museum
manchester.museum
mansion.museum
mansions.museum
manx.museum
marburg.museum
maritime.museum
maritimo.museum
maryland.museum
marylhurst.museum
media.museum
medical.museum
medizinhistorisches.museum
meeres.museum
memorial.museum
mesaverde.museum
michigan.museum
midatlantic.museum
military.museum
mill.museum
miners.museum
mining.museum
minnesota.museum
missile.museum
missoula.museum
modern.museum
moma.museum
money.museum
monmouth.museum
monticello.museum
montreal.museum
moscow.museum
motorcycle.museum
muenchen.museum
muenster.museum
mulhouse.museum
muncie.museum
museet.museum
museumcenter.museum
museumvereniging.museum
music.museum
national.museum
nationalfirearms.museum
nationalheritage.museum
nativeamerican.museum
naturalhistory.museum
naturalhistorymuseum.museum
naturalsciences.museum
nature.museum
naturhistorisches.museum
natuurwetenschappen.museum
naumburg.museum
naval.museum
nebraska.museum
neues.museum
newhampshire.museum
newjersey.museum
newmexico.museum
newport.museum
newspaper.museum
newyork.museum
niepce.museum
norfolk.museum
north.museum
nrw.museum
nuernberg.museum
nuremberg.museum
nyc.museum
nyny.museum
oceanographic.museum
oceanographique.museum
omaha.museum
online.museum
ontario.museum
openair.museum
oregon.museum
oregontrail.museum
otago.museum
oxford.museum
pacific.museum
paderborn.museum
palace.museum
paleo.museum
palmsprings.museum
panama.museum
paris.museum
pasadena.museum
pharmacy.museum
philadelphia.museum
philadelphiaarea.museum
philately.museum
phoenix.museum
photography.museum
pilots.museum
pittsburgh.museum
planetarium.museum
plantation.museum
plants.museum
plaza.museum
portal.museum
portland.museum
portlligat.museum
posts-and-telecommunications.museum
preservation.museum
presidio.museum
press.museum
project.museum
public.museum
pubol.museum
quebec.museum
railroad.museum
railway.museum
research.museum
resistance.museum
riodejaneiro.museum
rochester.museum
rockart.museum
roma.museum
russia.museum
saintlouis.museum
salem.museum
salvadordali.museum
salzburg.museum
sandiego.museum
sanfrancisco.museum
santabarbara.museum
santacruz.museum
santafe.museum
saskatchewan.museum
satx.museum
savannahga.museum
schlesisches.museum
schoenbrunn.museum
schokoladen.museum
school.museum
schweiz.museum
science.museum
scienceandhistory.museum
scienceandindustry.museum
sciencecenter.museum
sciencecenters.museum
science-fiction.museum
sciencehistory.museum
sciences.museum
sciencesnaturelles.museum
scotland.museum
seaport.museum
settlement.museum
settlers.museum
shell.museum
sherbrooke.museum
sibenik.museum
silk.museum
ski.museum
skole.museum
society.museum
sologne.museum
soundandvision.museum
southcarolina.museum
southwest.museum
space.museum
spy.museum
square.museum
stadt.museum
stalbans.museum
starnberg.museum
state.museum
stateofdelaware.museum
station.museum
steam.museum
steiermark.museum
stjohn.museum
stockholm.museum
stpetersburg.museum
stuttgart.museum
suisse.museum
surgeonshall.museum
surrey.museum
svizzera.museum
sweden.museum
sydney.museum
tank.museum
tcm.museum
technology.museum
telekommunikation.museum
television.museum
texas.museum
textile.museum
theater.museum
time.museum
timekeeping.museum
topology.museum
torino.museum
touch.museum
town.museum
transport.museum
tree.museum
trolley.museum
trust.museum
trustee.museum
uhren.museum
ulm.museum
undersea.museum
university.museum
usa.museum
usantiques.museum
usarts.museum
uscountryestate.museum
usculture.museum
usdecorativearts.museum
usgarden.museum
ushistory.museum
ushuaia.museum
uslivinghistory.museum
utah.museum
uvic.museum
valley.museum
vantaa.museum
versailles.museum
viking.museum
village.museum
virginia.museum
virtual.museum
virtuel.museum
vlaanderen.museum
volkenkunde.museum
wales.museum
wallonie.museum
war.museum
washingtondc.museum
watchandclock.museum
watch-and-clock.museum
western.museum
westfalen.museum
whaling.museum
wildlife.museum
williamsburg.museum
windmill.museum
workshop.museum
york.museum
yorkshire.museum
yosemite.museum
youth.museum
zoological.museum
zoology.museum
ירושלים.museum
иком.museum

// mv : http://en.wikipedia.org/wiki/.mv
// "mv" included because, contra Wikipedia, google.mv exists.
mv
aero.mv
biz.mv
com.mv
coop.mv
edu.mv
gov.mv
info.mv
int.mv
mil.mv
museum.mv
name.mv
net.mv
org.mv
pro.mv

// mw : http://www.registrar.mw/
mw
ac.mw
biz.mw
co.mw
com.mw
coop.mw
edu.mw
gov.mw
int.mw
museum.mw
net.mw
org.mw

// mx : http://www.nic.mx/
// Submitted by registry <farias@nic.mx> 2008-06-19
mx
com.mx
org.mx
gob.mx
edu.mx
net.mx

// my : http://www.mynic.net.my/
my
com.my
net.my
org.my
gov.my
edu.my
mil.my
name.my

// mz : http://www.gobin.info/domainname/mz-template.doc
*.mz
!teledata.mz

// na : http://www.na-nic.com.na/
// http://www.info.na/domain/
na
info.na
pro.na
name.na
school.na
or.na
dr.na
us.na
mx.na
ca.na
in.na
cc.na
tv.na
ws.na
mobi.na
co.na
com.na
org.na

// name : has 2nd-level tlds, but there's no list of them
name

// nc : http://www.cctld.nc/
nc
asso.nc

// ne : http://en.wikipedia.org/wiki/.ne
ne

// net : http://en.wikipedia.org/wiki/.net
net

// nf : http://en.wikipedia.org/wiki/.nf
nf
com.nf
net.nf
per.nf
rec.nf
web.nf
arts.nf
firm.nf
info.nf
other.nf
store.nf

// ng : http://psg.com/dns/ng/
ng
com.ng
edu.ng
name.ng
net.ng
org.ng
sch.ng
gov.ng
mil.ng
mobi.ng

// ni : http://www.nic.ni/dominios.htm
*.ni

// nl : http://www.domain-registry.nl/ace.php/c,728,122,,,,Home.html
// Confirmed by registry <Antoin.Verschuren@sidn.nl> (with technical
// reservations) 2008-06-08
nl

// BV.nl will be a registry for dutch BV's (besloten vennootschap)
bv.nl

// no : http://www.norid.no/regelverk/index.en.html
// The Norwegian registry has declined to notify us of updates. The web pages
// referenced below are the official source of the data. There is also an
// announce mailing list:
// https://postlister.uninett.no/sympa/info/norid-diskusjon
no
// Norid generic domains : http://www.norid.no/regelverk/vedlegg-c.en.html
fhs.no
vgs.no
fylkesbibl.no
folkebibl.no
museum.no
idrett.no
priv.no
// Non-Norid generic domains : http://www.norid.no/regelverk/vedlegg-d.en.html
mil.no
stat.no
dep.no
kommune.no
herad.no
// no geographical names : http://www.norid.no/regelverk/vedlegg-b.en.html
// counties
aa.no
ah.no
bu.no
fm.no
hl.no
hm.no
jan-mayen.no
mr.no
nl.no
nt.no
of.no
ol.no
oslo.no
rl.no
sf.no
st.no
svalbard.no
tm.no
tr.no
va.no
vf.no
// primary and lower secondary schools per county
gs.aa.no
gs.ah.no
gs.bu.no
gs.fm.no
gs.hl.no
gs.hm.no
gs.jan-mayen.no
gs.mr.no
gs.nl.no
gs.nt.no
gs.of.no
gs.ol.no
gs.oslo.no
gs.rl.no
gs.sf.no
gs.st.no
gs.svalbard.no
gs.tm.no
gs.tr.no
gs.va.no
gs.vf.no
// cities
akrehamn.no
åkrehamn.no
algard.no
ålgård.no
arna.no
brumunddal.no
bryne.no
bronnoysund.no
brønnøysund.no
drobak.no
drøbak.no
egersund.no
fetsund.no
floro.no
florø.no
fredrikstad.no
hokksund.no
honefoss.no
hønefoss.no
jessheim.no
jorpeland.no
jørpeland.no
kirkenes.no
kopervik.no
krokstadelva.no
langevag.no
langevåg.no
leirvik.no
mjondalen.no
mjøndalen.no
mo-i-rana.no
mosjoen.no
mosjøen.no
nesoddtangen.no
orkanger.no
osoyro.no
osøyro.no
raholt.no
råholt.no
sandnessjoen.no
sandnessjøen.no
skedsmokorset.no
slattum.no
spjelkavik.no
stathelle.no
stavern.no
stjordalshalsen.no
stjørdalshalsen.no
tananger.no
tranby.no
vossevangen.no
// communities
afjord.no
åfjord.no
agdenes.no
al.no
ål.no
alesund.no
ålesund.no
alstahaug.no
alta.no
áltá.no
alaheadju.no
álaheadju.no
alvdal.no
amli.no
åmli.no
amot.no
åmot.no
andebu.no
andoy.no
andøy.no
andasuolo.no
ardal.no
årdal.no
aremark.no
arendal.no
ås.no
aseral.no
åseral.no
asker.no
askim.no
askvoll.no
askoy.no
askøy.no
asnes.no
åsnes.no
audnedaln.no
aukra.no
aure.no
aurland.no
aurskog-holand.no
aurskog-høland.no
austevoll.no
austrheim.no
averoy.no
averøy.no
balestrand.no
ballangen.no
balat.no
bálát.no
balsfjord.no
bahccavuotna.no
báhccavuotna.no
bamble.no
bardu.no
beardu.no
beiarn.no
bajddar.no
bájddar.no
baidar.no
báidár.no
berg.no
bergen.no
berlevag.no
berlevåg.no
bearalvahki.no
bearalváhki.no
bindal.no
birkenes.no
bjarkoy.no
bjarkøy.no
bjerkreim.no
bjugn.no
bodo.no
bodø.no
badaddja.no
bådåddjå.no
budejju.no
bokn.no
bremanger.no
bronnoy.no
brønnøy.no
bygland.no
bykle.no
barum.no
bærum.no
bo.telemark.no
bø.telemark.no
bo.nordland.no
bø.nordland.no
bievat.no
bievát.no
bomlo.no
bømlo.no
batsfjord.no
båtsfjord.no
bahcavuotna.no
báhcavuotna.no
dovre.no
drammen.no
drangedal.no
dyroy.no
dyrøy.no
donna.no
dønna.no
eid.no
eidfjord.no
eidsberg.no
eidskog.no
eidsvoll.no
eigersund.no
elverum.no
enebakk.no
engerdal.no
etne.no
etnedal.no
evenes.no
evenassi.no
evenášši.no
evje-og-hornnes.no
farsund.no
fauske.no
fuossko.no
fuoisku.no
fedje.no
fet.no
finnoy.no
finnøy.no
fitjar.no
fjaler.no
fjell.no
flakstad.no
flatanger.no
flekkefjord.no
flesberg.no
flora.no
fla.no
flå.no
folldal.no
forsand.no
fosnes.no
frei.no
frogn.no
froland.no
frosta.no
frana.no
fræna.no
froya.no
frøya.no
fusa.no
fyresdal.no
forde.no
førde.no
gamvik.no
gangaviika.no
gáŋgaviika.no
gaular.no
gausdal.no
gildeskal.no
gildeskål.no
giske.no
gjemnes.no
gjerdrum.no
gjerstad.no
gjesdal.no
gjovik.no
gjøvik.no
gloppen.no
gol.no
gran.no
grane.no
granvin.no
gratangen.no
grimstad.no
grong.no
kraanghke.no
kråanghke.no
grue.no
gulen.no
hadsel.no
halden.no
halsa.no
hamar.no
hamaroy.no
habmer.no
hábmer.no
hapmir.no
hápmir.no
hammerfest.no
hammarfeasta.no
hámmárfeasta.no
haram.no
hareid.no
harstad.no
hasvik.no
aknoluokta.no
ákŋoluokta.no
hattfjelldal.no
aarborte.no
haugesund.no
hemne.no
hemnes.no
hemsedal.no
heroy.more-og-romsdal.no
herøy.møre-og-romsdal.no
heroy.nordland.no
herøy.nordland.no
hitra.no
hjartdal.no
hjelmeland.no
hobol.no
hobøl.no
hof.no
hol.no
hole.no
holmestrand.no
holtalen.no
holtålen.no
hornindal.no
horten.no
hurdal.no
hurum.no
hvaler.no
hyllestad.no
hagebostad.no
hægebostad.no
hoyanger.no
høyanger.no
hoylandet.no
høylandet.no
ha.no
hå.no
ibestad.no
inderoy.no
inderøy.no
iveland.no
jevnaker.no
jondal.no
jolster.no
jølster.no
karasjok.no
karasjohka.no
kárášjohka.no
karlsoy.no
galsa.no
gálsá.no
karmoy.no
karmøy.no
kautokeino.no
guovdageaidnu.no
klepp.no
klabu.no
klæbu.no
kongsberg.no
kongsvinger.no
kragero.no
kragerø.no
kristiansand.no
kristiansund.no
krodsherad.no
krødsherad.no
kvalsund.no
rahkkeravju.no
ráhkkerávju.no
kvam.no
kvinesdal.no
kvinnherad.no
kviteseid.no
kvitsoy.no
kvitsøy.no
kvafjord.no
kvæfjord.no
giehtavuoatna.no
kvanangen.no
kvænangen.no
navuotna.no
návuotna.no
kafjord.no
kåfjord.no
gaivuotna.no
gáivuotna.no
larvik.no
lavangen.no
lavagis.no
loabat.no
loabát.no
lebesby.no
davvesiida.no
leikanger.no
leirfjord.no
leka.no
leksvik.no
lenvik.no
leangaviika.no
leaŋgaviika.no
lesja.no
levanger.no
lier.no
lierne.no
lillehammer.no
lillesand.no
lindesnes.no
lindas.no
lindås.no
lom.no
loppa.no
lahppi.no
láhppi.no
lund.no
lunner.no
luroy.no
lurøy.no
luster.no
lyngdal.no
lyngen.no
ivgu.no
lardal.no
lerdal.no
lærdal.no
lodingen.no
lødingen.no
lorenskog.no
lørenskog.no
loten.no
løten.no
malvik.no
masoy.no
måsøy.no
muosat.no
muosát.no
mandal.no
marker.no
marnardal.no
masfjorden.no
meland.no
meldal.no
melhus.no
meloy.no
meløy.no
meraker.no
meråker.no
moareke.no
moåreke.no
midsund.no
midtre-gauldal.no
modalen.no
modum.no
molde.no
moskenes.no
moss.no
mosvik.no
malselv.no
målselv.no
malatvuopmi.no
málatvuopmi.no
namdalseid.no
aejrie.no
namsos.no
namsskogan.no
naamesjevuemie.no
nååmesjevuemie.no
laakesvuemie.no
nannestad.no
narvik.no
narviika.no
naustdal.no
nedre-eiker.no
nes.akershus.no
nes.buskerud.no
nesna.no
nesodden.no
nesseby.no
unjarga.no
unjárga.no
nesset.no
nissedal.no
nittedal.no
nord-aurdal.no
nord-fron.no
nord-odal.no
norddal.no
nordkapp.no
davvenjarga.no
davvenjárga.no
nordre-land.no
nordreisa.no
raisa.no
ráisa.no
nore-og-uvdal.no
notodden.no
naroy.no
nærøy.no
notteroy.no
nøtterøy.no
odda.no
oksnes.no
øksnes.no
oppdal.no
oppegard.no
oppegård.no
orkdal.no
orland.no
ørland.no
orskog.no
ørskog.no
orsta.no
ørsta.no
os.hedmark.no
os.hordaland.no
osen.no
osteroy.no
osterøy.no
ostre-toten.no
østre-toten.no
overhalla.no
ovre-eiker.no
øvre-eiker.no
oyer.no
øyer.no
oygarden.no
øygarden.no
oystre-slidre.no
øystre-slidre.no
porsanger.no
porsangu.no
porsáŋgu.no
porsgrunn.no
radoy.no
radøy.no
rakkestad.no
rana.no
ruovat.no
randaberg.no
rauma.no
rendalen.no
rennebu.no
rennesoy.no
rennesøy.no
rindal.no
ringebu.no
ringerike.no
ringsaker.no
rissa.no
risor.no
risør.no
roan.no
rollag.no
rygge.no
ralingen.no
rælingen.no
rodoy.no
rødøy.no
romskog.no
rømskog.no
roros.no
røros.no
rost.no
røst.no
royken.no
røyken.no
royrvik.no
røyrvik.no
rade.no
råde.no
salangen.no
siellak.no
saltdal.no
salat.no
sálát.no
sálat.no
samnanger.no
sande.more-og-romsdal.no
sande.møre-og-romsdal.no
sande.vestfold.no
sandefjord.no
sandnes.no
sandoy.no
sandøy.no
sarpsborg.no
sauda.no
sauherad.no
sel.no
selbu.no
selje.no
seljord.no
sigdal.no
siljan.no
sirdal.no
skaun.no
skedsmo.no
ski.no
skien.no
skiptvet.no
skjervoy.no
skjervøy.no
skierva.no
skiervá.no
skjak.no
skjåk.no
skodje.no
skanland.no
skånland.no
skanit.no
skánit.no
smola.no
smøla.no
snillfjord.no
snasa.no
snåsa.no
snoasa.no
snaase.no
snåase.no
sogndal.no
sokndal.no
sola.no
solund.no
songdalen.no
sortland.no
spydeberg.no
stange.no
stavanger.no
steigen.no
steinkjer.no
stjordal.no
stjørdal.no
stokke.no
stor-elvdal.no
stord.no
stordal.no
storfjord.no
omasvuotna.no
strand.no
stranda.no
stryn.no
sula.no
suldal.no
sund.no
sunndal.no
surnadal.no
sveio.no
svelvik.no
sykkylven.no
sogne.no
søgne.no
somna.no
sømna.no
sondre-land.no
søndre-land.no
sor-aurdal.no
sør-aurdal.no
sor-fron.no
sør-fron.no
sor-odal.no
sør-odal.no
sor-varanger.no
sør-varanger.no
matta-varjjat.no
mátta-várjjat.no
sorfold.no
sørfold.no
sorreisa.no
sørreisa.no
sorum.no
sørum.no
tana.no
deatnu.no
time.no
tingvoll.no
tinn.no
tjeldsund.no
dielddanuorri.no
tjome.no
tjøme.no
tokke.no
tolga.no
torsken.no
tranoy.no
tranøy.no
tromso.no
tromsø.no
tromsa.no
romsa.no
trondheim.no
troandin.no
trysil.no
trana.no
træna.no
trogstad.no
trøgstad.no
tvedestrand.no
tydal.no
tynset.no
tysfjord.no
divtasvuodna.no
divttasvuotna.no
tysnes.no
tysvar.no
tysvær.no
tonsberg.no
tønsberg.no
ullensaker.no
ullensvang.no
ulvik.no
utsira.no
vadso.no
vadsø.no
cahcesuolo.no
čáhcesuolo.no
vaksdal.no
valle.no
vang.no
vanylven.no
vardo.no
vardø.no
varggat.no
várggát.no
vefsn.no
vaapste.no
vega.no
vegarshei.no
vegårshei.no
vennesla.no
verdal.no
verran.no
vestby.no
vestnes.no
vestre-slidre.no
vestre-toten.no
vestvagoy.no
vestvågøy.no
vevelstad.no
vik.no
vikna.no
vindafjord.no
volda.no
voss.no
varoy.no
værøy.no
vagan.no
vågan.no
voagat.no
vagsoy.no
vågsøy.no
vaga.no
vågå.no
valer.ostfold.no
våler.østfold.no
valer.hedmark.no
våler.hedmark.no

// np : http://www.mos.com.np/register.html
*.np

// nr : http://cenpac.net.nr/dns/index.html
// Confirmed by registry <technician@cenpac.net.nr> 2008-06-17
nr
biz.nr
info.nr
gov.nr
edu.nr
org.nr
net.nr
com.nr

// nu : http://en.wikipedia.org/wiki/.nu
nu

// nz : http://en.wikipedia.org/wiki/.nz
// Confirmed by registry <jay@nzrs.net.nz> 2014-05-19
nz
ac.nz
co.nz
cri.nz
geek.nz
gen.nz
govt.nz
health.nz
iwi.nz
kiwi.nz
maori.nz
mil.nz
māori.nz
net.nz
org.nz
parliament.nz
school.nz

// om : http://en.wikipedia.org/wiki/.om
om
co.om
com.om
edu.om
gov.om
med.om
museum.om
net.om
org.om
pro.om

// org : http://en.wikipedia.org/wiki/.org
org

// pa : http://www.nic.pa/
// Some additional second level "domains" resolve directly as hostnames, such as
// pannet.pa, so we add a rule for "pa".
pa
ac.pa
gob.pa
com.pa
org.pa
sld.pa
edu.pa
net.pa
ing.pa
abo.pa
med.pa
nom.pa

// pe : https://www.nic.pe/InformeFinalComision.pdf
pe
edu.pe
gob.pe
nom.pe
mil.pe
org.pe
com.pe
net.pe

// pf : http://www.gobin.info/domainname/formulaire-pf.pdf
pf
com.pf
org.pf
edu.pf

// pg : http://en.wikipedia.org/wiki/.pg
*.pg

// ph : http://www.domains.ph/FAQ2.asp
// Submitted by registry <jed@email.com.ph> 2008-06-13
ph
com.ph
net.ph
org.ph
gov.ph
edu.ph
ngo.ph
mil.ph
i.ph

// pk : http://pk5.pknic.net.pk/pk5/msgNamepk.PK
pk
com.pk
net.pk
edu.pk
org.pk
fam.pk
biz.pk
web.pk
gov.pk
gob.pk
gok.pk
gon.pk
gop.pk
gos.pk
info.pk

// pl : http://www.dns.pl/english/
pl
// NASK functional domains (nask.pl / dns.pl) : http://www.dns.pl/english/dns-funk.html
aid.pl
agro.pl
atm.pl
auto.pl
biz.pl
com.pl
edu.pl
gmina.pl
gsm.pl
info.pl
mail.pl
miasta.pl
media.pl
mil.pl
net.pl
nieruchomosci.pl
nom.pl
org.pl
pc.pl
powiat.pl
priv.pl
realestate.pl
rel.pl
sex.pl
shop.pl
sklep.pl
sos.pl
szkola.pl
targi.pl
tm.pl
tourism.pl
travel.pl
turystyka.pl
// ICM functional domains (icm.edu.pl)
6bone.pl
art.pl
mbone.pl
// Government domains (administred by ippt.gov.pl)
gov.pl
uw.gov.pl
um.gov.pl
ug.gov.pl
upow.gov.pl
starostwo.gov.pl
so.gov.pl
sr.gov.pl
po.gov.pl
pa.gov.pl
// other functional domains
ngo.pl
irc.pl
usenet.pl
// NASK geographical domains : http://www.dns.pl/english/dns-regiony.html
augustow.pl
babia-gora.pl
bedzin.pl
beskidy.pl
bialowieza.pl
bialystok.pl
bielawa.pl
bieszczady.pl
boleslawiec.pl
bydgoszcz.pl
bytom.pl
cieszyn.pl
czeladz.pl
czest.pl
dlugoleka.pl
elblag.pl
elk.pl
glogow.pl
gniezno.pl
gorlice.pl
grajewo.pl
ilawa.pl
jaworzno.pl
jelenia-gora.pl
jgora.pl
kalisz.pl
kazimierz-dolny.pl
karpacz.pl
kartuzy.pl
kaszuby.pl
katowice.pl
kepno.pl
ketrzyn.pl
klodzko.pl
kobierzyce.pl
kolobrzeg.pl
konin.pl
konskowola.pl
kutno.pl
lapy.pl
lebork.pl
legnica.pl
lezajsk.pl
limanowa.pl
lomza.pl
lowicz.pl
lubin.pl
lukow.pl
malbork.pl
malopolska.pl
mazowsze.pl
mazury.pl
mielec.pl
mielno.pl
mragowo.pl
naklo.pl
nowaruda.pl
nysa.pl
olawa.pl
olecko.pl
olkusz.pl
olsztyn.pl
opoczno.pl
opole.pl
ostroda.pl
ostroleka.pl
ostrowiec.pl
ostrowwlkp.pl
pila.pl
pisz.pl
podhale.pl
podlasie.pl
polkowice.pl
pomorze.pl
pomorskie.pl
prochowice.pl
pruszkow.pl
przeworsk.pl
pulawy.pl
radom.pl
rawa-maz.pl
rybnik.pl
rzeszow.pl
sanok.pl
sejny.pl
siedlce.pl
slask.pl
slupsk.pl
sosnowiec.pl
stalowa-wola.pl
skoczow.pl
starachowice.pl
stargard.pl
suwalki.pl
swidnica.pl
swiebodzin.pl
swinoujscie.pl
szczecin.pl
szczytno.pl
tarnobrzeg.pl
tgory.pl
turek.pl
tychy.pl
ustka.pl
walbrzych.pl
warmia.pl
warszawa.pl
waw.pl
wegrow.pl
wielun.pl
wlocl.pl
wloclawek.pl
wodzislaw.pl
wolomin.pl
wroclaw.pl
zachpomor.pl
zagan.pl
zarow.pl
zgora.pl
zgorzelec.pl
// TASK geographical domains (www.task.gda.pl/uslugi/dns)
gda.pl
gdansk.pl
gdynia.pl
med.pl
sopot.pl
// other geographical domains
gliwice.pl
krakow.pl
poznan.pl
wroc.pl
zakopane.pl

// pm : http://www.afnic.fr/medias/documents/AFNIC-naming-policy2012.pdf
pm

// pn : http://www.government.pn/PnRegistry/policies.htm
pn
gov.pn
co.pn
org.pn
edu.pn
net.pn

// post : http://en.wikipedia.org/wiki/.post
post

// pr : http://www.nic.pr/index.asp?f=1
pr
com.pr
net.pr
org.pr
gov.pr
edu.pr
isla.pr
pro.pr
biz.pr
info.pr
name.pr
// these aren't mentioned on nic.pr, but on http://en.wikipedia.org/wiki/.pr
est.pr
prof.pr
ac.pr

// pro : http://www.nic.pro/support_faq.htm
pro
aca.pro
bar.pro
cpa.pro
jur.pro
law.pro
med.pro
eng.pro

// ps : http://en.wikipedia.org/wiki/.ps
// http://www.nic.ps/registration/policy.html#reg
ps
edu.ps
gov.ps
sec.ps
plo.ps
com.ps
org.ps
net.ps

// pt : http://online.dns.pt/dns/start_dns
pt
net.pt
gov.pt
org.pt
edu.pt
int.pt
publ.pt
com.pt
nome.pt

// pw : http://en.wikipedia.org/wiki/.pw
pw
co.pw
ne.pw
or.pw
ed.pw
go.pw
belau.pw

// py : http://www.nic.py/pautas.html#seccion_9
// Confirmed by registry 2012-10-03
py
com.py
coop.py
edu.py
gov.py
mil.py
net.py
org.py

// qa : http://domains.qa/en/
qa
com.qa
edu.qa
gov.qa
mil.qa
name.qa
net.qa
org.qa
sch.qa

// re : http://www.afnic.re/obtenir/chartes/nommage-re/annexe-descriptifs
re
com.re
asso.re
nom.re

// ro : http://www.rotld.ro/
ro
com.ro
org.ro
tm.ro
nt.ro
nom.ro
info.ro
rec.ro
arts.ro
firm.ro
store.ro
www.ro

// rs : http://en.wikipedia.org/wiki/.rs
rs
co.rs
org.rs
edu.rs
ac.rs
gov.rs
in.rs

// ru : http://www.cctld.ru/ru/docs/aktiv_8.php
// Industry domains
ru
ac.ru
com.ru
edu.ru
int.ru
net.ru
org.ru
pp.ru
// Geographical domains
adygeya.ru
altai.ru
amur.ru
arkhangelsk.ru
astrakhan.ru
bashkiria.ru
belgorod.ru
bir.ru
bryansk.ru
buryatia.ru
cbg.ru
chel.ru
chelyabinsk.ru
chita.ru
chukotka.ru
chuvashia.ru
dagestan.ru
dudinka.ru
e-burg.ru
grozny.ru
irkutsk.ru
ivanovo.ru
izhevsk.ru
jar.ru
joshkar-ola.ru
kalmykia.ru
kaluga.ru
kamchatka.ru
karelia.ru
kazan.ru
kchr.ru
kemerovo.ru
khabarovsk.ru
khakassia.ru
khv.ru
kirov.ru
koenig.ru
komi.ru
kostroma.ru
krasnoyarsk.ru
kuban.ru
kurgan.ru
kursk.ru
lipetsk.ru
magadan.ru
mari.ru
mari-el.ru
marine.ru
mordovia.ru
mosreg.ru
msk.ru
murmansk.ru
nalchik.ru
nnov.ru
nov.ru
novosibirsk.ru
nsk.ru
omsk.ru
orenburg.ru
oryol.ru
palana.ru
penza.ru
perm.ru
ptz.ru
rnd.ru
ryazan.ru
sakhalin.ru
samara.ru
saratov.ru
simbirsk.ru
smolensk.ru
spb.ru
stavropol.ru
stv.ru
surgut.ru
tambov.ru
tatarstan.ru
tom.ru
tomsk.ru
tsaritsyn.ru
tsk.ru
tula.ru
tuva.ru
tver.ru
tyumen.ru
udm.ru
udmurtia.ru
ulan-ude.ru
vladikavkaz.ru
vladimir.ru
vladivostok.ru
volgograd.ru
vologda.ru
voronezh.ru
vrn.ru
vyatka.ru
yakutia.ru
yamal.ru
yaroslavl.ru
yekaterinburg.ru
yuzhno-sakhalinsk.ru
// More geographical domains
amursk.ru
baikal.ru
cmw.ru
fareast.ru
jamal.ru
kms.ru
k-uralsk.ru
kustanai.ru
kuzbass.ru
magnitka.ru
mytis.ru
nakhodka.ru
nkz.ru
norilsk.ru
oskol.ru
pyatigorsk.ru
rubtsovsk.ru
snz.ru
syzran.ru
vdonsk.ru
zgrad.ru
// State domains
gov.ru
mil.ru
// Technical domains
test.ru

// rw : http://www.nic.rw/cgi-bin/policy.pl
rw
gov.rw
net.rw
edu.rw
ac.rw
com.rw
co.rw
int.rw
mil.rw
gouv.rw

// sa : http://www.nic.net.sa/
sa
com.sa
net.sa
org.sa
gov.sa
med.sa
pub.sa
edu.sa
sch.sa

// sb : http://www.sbnic.net.sb/
// Submitted by registry <lee.humphries@telekom.com.sb> 2008-06-08
sb
com.sb
edu.sb
gov.sb
net.sb
org.sb

// sc : http://www.nic.sc/
sc
com.sc
gov.sc
net.sc
org.sc
edu.sc

// sd : http://www.isoc.sd/sudanic.isoc.sd/billing_pricing.htm
// Submitted by registry <admin@isoc.sd> 2008-06-17
sd
com.sd
net.sd
org.sd
edu.sd
med.sd
tv.sd
gov.sd
info.sd

// se : http://en.wikipedia.org/wiki/.se
// Submitted by registry <patrik.wallstrom@iis.se> 2014-03-18
se
a.se
ac.se
b.se
bd.se
brand.se
c.se
d.se
e.se
f.se
fh.se
fhsk.se
fhv.se
g.se
h.se
i.se
k.se
komforb.se
kommunalforbund.se
komvux.se
l.se
lanbib.se
m.se
n.se
naturbruksgymn.se
o.se
org.se
p.se
parti.se
pp.se
press.se
r.se
s.se
t.se
tm.se
u.se
w.se
x.se
y.se
z.se

// sg : http://www.nic.net.sg/page/registration-policies-procedures-and-guidelines
sg
com.sg
net.sg
org.sg
gov.sg
edu.sg
per.sg

// sh : http://www.nic.sh/registrar.html
sh
com.sh
net.sh
gov.sh
org.sh
mil.sh

// si : http://en.wikipedia.org/wiki/.si
si

// sj : No registrations at this time.
// Submitted by registry <jarle@uninett.no> 2008-06-16
sj

// sk : http://en.wikipedia.org/wiki/.sk
// list of 2nd level domains ?
sk

// sl : http://www.nic.sl
// Submitted by registry <adam@neoip.com> 2008-06-12
sl
com.sl
net.sl
edu.sl
gov.sl
org.sl

// sm : http://en.wikipedia.org/wiki/.sm
sm

// sn : http://en.wikipedia.org/wiki/.sn
sn
art.sn
com.sn
edu.sn
gouv.sn
org.sn
perso.sn
univ.sn

// so : http://www.soregistry.com/
so
com.so
net.so
org.so

// sr : http://en.wikipedia.org/wiki/.sr
sr

// st : http://www.nic.st/html/policyrules/
st
co.st
com.st
consulado.st
edu.st
embaixada.st
gov.st
mil.st
net.st
org.st
principe.st
saotome.st
store.st

// su : http://en.wikipedia.org/wiki/.su
su

// sv : http://www.svnet.org.sv/niveldos.pdf
sv
com.sv
edu.sv
gob.sv
org.sv
red.sv

// sx : http://en.wikipedia.org/wiki/.sx
// Confirmed by registry <jcvignes@openregistry.com> 2012-05-31
sx
gov.sx

// sy : http://en.wikipedia.org/wiki/.sy
// see also: http://www.gobin.info/domainname/sy.doc
sy
edu.sy
gov.sy
net.sy
mil.sy
com.sy
org.sy

// sz : http://en.wikipedia.org/wiki/.sz
// http://www.sispa.org.sz/
sz
co.sz
ac.sz
org.sz

// tc : http://en.wikipedia.org/wiki/.tc
tc

// td : http://en.wikipedia.org/wiki/.td
td

// tel: http://en.wikipedia.org/wiki/.tel
// http://www.telnic.org/
tel

// tf : http://en.wikipedia.org/wiki/.tf
tf

// tg : http://en.wikipedia.org/wiki/.tg
// http://www.nic.tg/
tg

// th : http://en.wikipedia.org/wiki/.th
// Submitted by registry <krit@thains.co.th> 2008-06-17
th
ac.th
co.th
go.th
in.th
mi.th
net.th
or.th

// tj : http://www.nic.tj/policy.html
tj
ac.tj
biz.tj
co.tj
com.tj
edu.tj
go.tj
gov.tj
int.tj
mil.tj
name.tj
net.tj
nic.tj
org.tj
test.tj
web.tj

// tk : http://en.wikipedia.org/wiki/.tk
tk

// tl : http://en.wikipedia.org/wiki/.tl
tl
gov.tl

// tm : http://www.nic.tm/local.html
tm
com.tm
co.tm
org.tm
net.tm
nom.tm
gov.tm
mil.tm
edu.tm

// tn : http://en.wikipedia.org/wiki/.tn
// http://whois.ati.tn/
tn
com.tn
ens.tn
fin.tn
gov.tn
ind.tn
intl.tn
nat.tn
net.tn
org.tn
info.tn
perso.tn
tourism.tn
edunet.tn
rnrt.tn
rns.tn
rnu.tn
mincom.tn
agrinet.tn
defense.tn
turen.tn

// to : http://en.wikipedia.org/wiki/.to
// Submitted by registry <egullich@colo.to> 2008-06-17
to
com.to
gov.to
net.to
org.to
edu.to
mil.to

// tp : No registrations at this time.
// Submitted by Ryan Sleevi <ryan.sleevi@gmail.com> 2014-01-03
tp

// subTLDs: https://www.nic.tr/forms/eng/policies.pdf
//     and: https://www.nic.tr/forms/politikalar.pdf
// Submitted by <mehmetgurevin@gmail.com> 2014-07-19
tr
com.tr
info.tr
biz.tr
net.tr
org.tr
web.tr
gen.tr
tv.tr
av.tr
dr.tr
bbs.tr
name.tr
tel.tr
gov.tr
bel.tr
pol.tr
mil.tr
k12.tr
edu.tr
kep.tr

// Used by Northern Cyprus
nc.tr

// Used by government agencies of Northern Cyprus
gov.nc.tr

// travel : http://en.wikipedia.org/wiki/.travel
travel

// tt : http://www.nic.tt/
tt
co.tt
com.tt
org.tt
net.tt
biz.tt
info.tt
pro.tt
int.tt
coop.tt
jobs.tt
mobi.tt
travel.tt
museum.tt
aero.tt
name.tt
gov.tt
edu.tt

// tv : http://en.wikipedia.org/wiki/.tv
// Not listing any 2LDs as reserved since none seem to exist in practice,
// Wikipedia notwithstanding.
tv

// tw : http://en.wikipedia.org/wiki/.tw
tw
edu.tw
gov.tw
mil.tw
com.tw
net.tw
org.tw
idv.tw
game.tw
ebiz.tw
club.tw
網路.tw
組織.tw
商業.tw

// tz : http://www.tznic.or.tz/index.php/domains
// Confirmed by registry <manager@tznic.or.tz> 2013-01-22
tz
ac.tz
co.tz
go.tz
hotel.tz
info.tz
me.tz
mil.tz
mobi.tz
ne.tz
or.tz
sc.tz
tv.tz

// ua : https://hostmaster.ua/policy/?ua
// Submitted by registry <dk@cctld.ua> 2012-04-27
ua
// ua 2LD
com.ua
edu.ua
gov.ua
in.ua
net.ua
org.ua
// ua geographic names
// https://hostmaster.ua/2ld/
cherkassy.ua
cherkasy.ua
chernigov.ua
chernihiv.ua
chernivtsi.ua
chernovtsy.ua
ck.ua
cn.ua
cr.ua
crimea.ua
cv.ua
dn.ua
dnepropetrovsk.ua
dnipropetrovsk.ua
dominic.ua
donetsk.ua
dp.ua
if.ua
ivano-frankivsk.ua
kh.ua
kharkiv.ua
kharkov.ua
kherson.ua
khmelnitskiy.ua
khmelnytskyi.ua
kiev.ua
kirovograd.ua
km.ua
kr.ua
krym.ua
ks.ua
kv.ua
kyiv.ua
lg.ua
lt.ua
lugansk.ua
lutsk.ua
lv.ua
lviv.ua
mk.ua
mykolaiv.ua
nikolaev.ua
od.ua
odesa.ua
odessa.ua
pl.ua
poltava.ua
rivne.ua
rovno.ua
rv.ua
sb.ua
sebastopol.ua
sevastopol.ua
sm.ua
sumy.ua
te.ua
ternopil.ua
uz.ua
uzhgorod.ua
vinnica.ua
vinnytsia.ua
vn.ua
volyn.ua
yalta.ua
zaporizhzhe.ua
zaporizhzhia.ua
zhitomir.ua
zhytomyr.ua
zp.ua
zt.ua

// Private registries in .ua
co.ua
pp.ua

// ug : https://www.registry.co.ug/
ug
co.ug
or.ug
ac.ug
sc.ug
go.ug
ne.ug
com.ug
org.ug

// uk : http://en.wikipedia.org/wiki/.uk
// Submitted by registry <Michael.Daly@nominet.org.uk>
uk
ac.uk
co.uk
gov.uk
ltd.uk
me.uk
net.uk
nhs.uk
org.uk
plc.uk
police.uk
*.sch.uk

// us : http://en.wikipedia.org/wiki/.us
us
dni.us
fed.us
isa.us
kids.us
nsn.us
// us geographic names
ak.us
al.us
ar.us
as.us
az.us
ca.us
co.us
ct.us
dc.us
de.us
fl.us
ga.us
gu.us
hi.us
ia.us
id.us
il.us
in.us
ks.us
ky.us
la.us
ma.us
md.us
me.us
mi.us
mn.us
mo.us
ms.us
mt.us
nc.us
nd.us
ne.us
nh.us
nj.us
nm.us
nv.us
ny.us
oh.us
ok.us
or.us
pa.us
pr.us
ri.us
sc.us
sd.us
tn.us
tx.us
ut.us
vi.us
vt.us
va.us
wa.us
wi.us
wv.us
wy.us
// The registrar notes several more specific domains available in each state,
// such as state.*.us, dst.*.us, etc., but resolution of these is somewhat
// haphazard; in some states these domains resolve as addresses, while in others
// only subdomains are available, or even nothing at all. We include the
// most common ones where it's clear that different sites are different
// entities.
k12.ak.us
k12.al.us
k12.ar.us
k12.as.us
k12.az.us
k12.ca.us
k12.co.us
k12.ct.us
k12.dc.us
k12.de.us
k12.fl.us
k12.ga.us
k12.gu.us
// k12.hi.us  Bug 614565 - Hawaii has a state-wide DOE login
k12.ia.us
k12.id.us
k12.il.us
k12.in.us
k12.ks.us
k12.ky.us
k12.la.us
k12.ma.us
k12.md.us
k12.me.us
k12.mi.us
k12.mn.us
k12.mo.us
k12.ms.us
k12.mt.us
k12.nc.us
// k12.nd.us  Bug 1028347 - Removed at request of Travis Rosso <trossow@nd.gov>
k12.ne.us
k12.nh.us
k12.nj.us
k12.nm.us
k12.nv.us
k12.ny.us
k12.oh.us
k12.ok.us
k12.or.us
k12.pa.us
k12.pr.us
k12.ri.us
k12.sc.us
// k12.sd.us  Bug 934131 - Removed at request of James Booze <James.Booze@k12.sd.us>
k12.tn.us
k12.tx.us
k12.ut.us
k12.vi.us
k12.vt.us
k12.va.us
k12.wa.us
k12.wi.us
// k12.wv.us  Bug 947705 - Removed at request of Verne Britton <verne@wvnet.edu>
k12.wy.us
cc.ak.us
cc.al.us
cc.ar.us
cc.as.us
cc.az.us
cc.ca.us
cc.co.us
cc.ct.us
cc.dc.us
cc.de.us
cc.fl.us
cc.ga.us
cc.gu.us
cc.hi.us
cc.ia.us
cc.id.us
cc.il.us
cc.in.us
cc.ks.us
cc.ky.us
cc.la.us
cc.ma.us
cc.md.us
cc.me.us
cc.mi.us
cc.mn.us
cc.mo.us
cc.ms.us
cc.mt.us
cc.nc.us
cc.nd.us
cc.ne.us
cc.nh.us
cc.nj.us
cc.nm.us
cc.nv.us
cc.ny.us
cc.oh.us
cc.ok.us
cc.or.us
cc.pa.us
cc.pr.us
cc.ri.us
cc.sc.us
cc.sd.us
cc.tn.us
cc.tx.us
cc.ut.us
cc.vi.us
cc.vt.us
cc.va.us
cc.wa.us
cc.wi.us
cc.wv.us
cc.wy.us
lib.ak.us
lib.al.us
lib.ar.us
lib.as.us
lib.az.us
lib.ca.us
lib.co.us
lib.ct.us
lib.dc.us
lib.de.us
lib.fl.us
lib.ga.us
lib.gu.us
lib.hi.us
lib.ia.us
lib.id.us
lib.il.us
lib.in.us
lib.ks.us
lib.ky.us
lib.la.us
lib.ma.us
lib.md.us
lib.me.us
lib.mi.us
lib.mn.us
lib.mo.us
lib.ms.us
lib.mt.us
lib.nc.us
lib.nd.us
lib.ne.us
lib.nh.us
lib.nj.us
lib.nm.us
lib.nv.us
lib.ny.us
lib.oh.us
lib.ok.us
lib.or.us
lib.pa.us
lib.pr.us
lib.ri.us
lib.sc.us
lib.sd.us
lib.tn.us
lib.tx.us
lib.ut.us
lib.vi.us
lib.vt.us
lib.va.us
lib.wa.us
lib.wi.us
// lib.wv.us  Bug 941670 - Removed at request of Larry W Arnold <arnold@wvlc.lib.wv.us>
lib.wy.us
// k12.ma.us contains school districts in Massachusetts. The 4LDs are
//  managed indepedently except for private (PVT), charter (CHTR) and
//  parochial (PAROCH) schools.  Those are delegated dorectly to the
//  5LD operators.   <k12-ma-hostmaster _ at _ rsuc.gweep.net>
pvt.k12.ma.us
chtr.k12.ma.us
paroch.k12.ma.us

// uy : http://www.nic.org.uy/
uy
com.uy
edu.uy
gub.uy
mil.uy
net.uy
org.uy

// uz : http://www.reg.uz/
uz
co.uz
com.uz
net.uz
org.uz

// va : http://en.wikipedia.org/wiki/.va
va

// vc : http://en.wikipedia.org/wiki/.vc
// Submitted by registry <kshah@ca.afilias.info> 2008-06-13
vc
com.vc
net.vc
org.vc
gov.vc
mil.vc
edu.vc

// ve : https://registro.nic.ve/
// Confirmed by registry 2012-10-04
// Updated 2014-05-20 - Bug 940478
ve
arts.ve
co.ve
com.ve
e12.ve
edu.ve
firm.ve
gob.ve
gov.ve
info.ve
int.ve
mil.ve
net.ve
org.ve
rec.ve
store.ve
tec.ve
web.ve

// vg : http://en.wikipedia.org/wiki/.vg
vg

// vi : http://www.nic.vi/newdomainform.htm
// http://www.nic.vi/Domain_Rules/body_domain_rules.html indicates some other
// TLDs are "reserved", such as edu.vi and gov.vi, but doesn't actually say they
// are available for registration (which they do not seem to be).
vi
co.vi
com.vi
k12.vi
net.vi
org.vi

// vn : https://www.dot.vn/vnnic/vnnic/domainregistration.jsp
vn
com.vn
net.vn
org.vn
edu.vn
gov.vn
int.vn
ac.vn
biz.vn
info.vn
name.vn
pro.vn
health.vn

// vu : http://en.wikipedia.org/wiki/.vu
// http://www.vunic.vu/
vu
com.vu
edu.vu
net.vu
org.vu

// wf : http://www.afnic.fr/medias/documents/AFNIC-naming-policy2012.pdf
wf

// ws : http://en.wikipedia.org/wiki/.ws
// http://samoanic.ws/index.dhtml
ws
com.ws
net.ws
org.ws
gov.ws
edu.ws

// yt : http://www.afnic.fr/medias/documents/AFNIC-naming-policy2012.pdf
yt

// IDN ccTLDs
// Please sort by ISO 3166 ccTLD, then punicode string
// when submitting patches and follow this format:
// <Punicode> ("<english word>" <language>) : <ISO 3166 ccTLD>
// [optional sponsoring org]
// <URL>

// xn--mgbaam7a8h ("Emerat" Arabic) : AE
// http://nic.ae/english/arabicdomain/rules.jsp
امارات

// xn--54b7fta0cc ("Bangla" Bangla) : BD
বাংলা

// xn--fiqs8s ("China" Chinese-Han-Simplified <.Zhongguo>) : CN
// CNNIC
// http://cnnic.cn/html/Dir/2005/10/11/3218.htm
中国

// xn--fiqz9s ("China" Chinese-Han-Traditional <.Zhongguo>) : CN
// CNNIC
// http://cnnic.cn/html/Dir/2005/10/11/3218.htm
中國

// xn--lgbbat1ad8j ("Algeria / Al Jazair" Arabic) : DZ
الجزائر

// xn--wgbh1c ("Egypt" Arabic .masr) : EG
// http://www.dotmasr.eg/
مصر

// xn--node ("ge" Georgian (Mkhedruli)) : GE
გე

// xn--j6w193g ("Hong Kong" Chinese-Han) : HK
// https://www2.hkirc.hk/register/rules.jsp
香港

// xn--h2brj9c ("Bharat" Devanagari) : IN
// India
भारत

// xn--mgbbh1a71e ("Bharat" Arabic) : IN
// India
بھارت

// xn--fpcrj9c3d ("Bharat" Telugu) : IN
// India
భారత్

// xn--gecrj9c ("Bharat" Gujarati) : IN
// India
ભારત

// xn--s9brj9c ("Bharat" Gurmukhi) : IN
// India
ਭਾਰਤ

// xn--45brj9c ("Bharat" Bengali) : IN
// India
ভারত

// xn--xkc2dl3a5ee0h ("India" Tamil) : IN
// India
இந்தியா

// xn--mgba3a4f16a ("Iran" Persian) : IR
ایران

// xn--mgba3a4fra ("Iran" Arabic) : IR
ايران

// xn--mgbayh7gpa ("al-Ordon" Arabic) : JO
// National Information Technology Center (NITC)
// Royal Scientific Society, Al-Jubeiha
الاردن

// xn--3e0b707e ("Republic of Korea" Hangul) : KR
한국

// xn--80ao21a ("Kaz" Kazakh) : KZ
қаз

// xn--fzc2c9e2c ("Lanka" Sinhalese-Sinhala) : LK
// http://nic.lk
ලංකා

// xn--xkc2al3hye2a ("Ilangai" Tamil) : LK
// http://nic.lk
இலங்கை

// xn--mgbc0a9azcg ("Morocco / al-Maghrib" Arabic) : MA
المغرب

// xn--l1acc ("mon" Mongolian) : MN
мон

// xn--mgbx4cd0ab ("Malaysia" Malay) : MY
مليسيا

// xn--mgb9awbf ("Oman" Arabic) : OM
عمان

// xn--ygbi2ammx ("Falasteen" Arabic) : PS
// The Palestinian National Internet Naming Authority (PNINA)
// http://www.pnina.ps
فلسطين

// xn--90a3ac ("srb" Cyrillic) : RS
// http://www.rnids.rs/en/the-.срб-domain
срб
пр.срб
орг.срб
обр.срб
од.срб
упр.срб
ак.срб

// xn--p1ai ("rf" Russian-Cyrillic) : RU
// http://www.cctld.ru/en/docs/rulesrf.php
рф

// xn--wgbl6a ("Qatar" Arabic) : QA
// http://www.ict.gov.qa/
قطر

// xn--mgberp4a5d4ar ("AlSaudiah" Arabic) : SA
// http://www.nic.net.sa/
السعودية

// xn--mgberp4a5d4a87g ("AlSaudiah" Arabic) variant : SA
السعودیة

// xn--mgbqly7c0a67fbc ("AlSaudiah" Arabic) variant : SA
السعودیۃ

// xn--mgbqly7cvafr ("AlSaudiah" Arabic) variant : SA
السعوديه

// xn--ogbpf8fl ("Syria" Arabic) : SY
سورية

// xn--mgbtf8fl ("Syria" Arabic) variant : SY
سوريا

// xn--yfro4i67o Singapore ("Singapore" Chinese-Han) : SG
新加坡

// xn--clchc0ea0b2g2a9gcd ("Singapore" Tamil) : SG
சிங்கப்பூர்

// xn--o3cw4h ("Thai" Thai) : TH
// http://www.thnic.co.th
ไทย

// xn--pgbs0dh ("Tunis") : TN
// http://nic.tn
تونس

// xn--kpry57d ("Taiwan" Chinese-Han-Traditional) : TW
// http://www.twnic.net/english/dn/dn_07a.htm
台灣

// xn--kprw13d ("Taiwan" Chinese-Han-Simplified) : TW
// http://www.twnic.net/english/dn/dn_07a.htm
台湾

// xn--nnx388a ("Taiwan") variant : TW
臺灣

// xn--j1amh ("ukr" Cyrillic) : UA
укр

// xn--mgb2ddes ("AlYemen" Arabic) : YE
اليمن

// xxx : http://icmregistry.com
xxx

// ye : http://www.y.net.ye/services/domain_name.htm
*.ye

// za : http://www.zadna.org.za/slds.html
*.za

// zm : http://en.wikipedia.org/wiki/.zm
*.zm

// zw : http://en.wikipedia.org/wiki/.zw
*.zw


// List of new gTLDs imported from https://newgtlds.icann.org/newgtlds.csv on 2014-09-02T12:02:06Z

// abbott : 2014-07-24 Abbott Laboratories, Inc.
abbott

// abogado : 2014-04-24 Top Level Domain Holdings Limited
abogado

// academy : 2013-11-07 Half Oaks, LLC
academy

// accenture : 2014-08-15 Accenture plc
accenture

// accountants : 2014-03-20 Knob Town, LLC
accountants

// active : 2014-05-01 The Active Network, Inc
active

// actor : 2013-12-12 United TLD Holdco Ltd.
actor

// africa : 2014-03-24 ZA Central Registry NPC trading as Registry.Africa
africa

// agency : 2013-11-14 Steel Falls, LLC
agency

// airforce : 2014-03-06 United TLD Holdco Ltd.
airforce

// allfinanz : 2014-07-03 Allfinanz Deutsche Vermögensberatung Aktiengesellschaft
allfinanz

// alsace : 2014-07-02 REGION D ALSACE
alsace

// amsterdam : 2014-07-24 Gemeente Amsterdam
amsterdam

// android : 2014-08-07 Charleston Road Registry Inc.
android

// aquarelle : 2014-07-24 Aquarelle.com
aquarelle

// archi : 2014-02-06 STARTING DOT LIMITED
archi

// army : 2014-03-06 United TLD Holdco Ltd.
army

// associates : 2014-03-06 Baxter Hill, LLC
associates

// attorney : 2014-03-20 undefined
attorney

// auction : 2014-03-20 undefined
auction

// audio : 2014-03-20 Uniregistry, Corp.
audio

// autos : 2014-01-09 DERAutos, LLC
autos

// axa : 2013-12-19 AXA SA
axa

// band : 2014-06-12 Auburn Hollow, LLC
band

// bar : 2013-12-12 Punto 2012 Sociedad Anonima Promotora de Inversion de Capital Variable
bar

// barcelona : 2014-07-24 Municipi de Barcelona
barcelona

// bargains : 2013-11-14 Half Hallow, LLC
bargains

// bauhaus : 2014-04-17 Werkhaus GmbH
bauhaus

// bayern : 2014-01-23 Bayern Connect GmbH
bayern

// bcn : 2014-07-24 Municipi de Barcelona
bcn

// beer : 2014-01-09 Top Level Domain Holdings Limited
beer

// berlin : 2013-10-31 dotBERLIN GmbH & Co. KG
berlin

// best : 2013-12-19 BestTLD Pty Ltd
best

// bharti : 2014-01-09 Bharti Enterprises (Holding) Private Limited
bharti

// bible : 2014-06-19 American Bible Society
bible

// bid : 2013-12-19 dot Bid Limited
bid

// bike : 2013-08-27 Grand Hollow, LLC
bike

// bio : 2014-03-06 STARTING DOT LIMITED
bio

// black : 2014-01-16 Afilias Limited
black

// blackfriday : 2014-01-16 Uniregistry, Corp.
blackfriday

// bloomberg : 2014-07-17 Bloomberg IP Holdings LLC
bloomberg

// blue : 2013-11-07 Afilias Limited
blue

// bmw : 2014-01-09 Bayerische Motoren Werke Aktiengesellschaft
bmw

// bnl : 2014-07-24 Banca Nazionale del Lavoro
bnl

// bnpparibas : 2014-05-29 BNP Paribas
bnpparibas

// bond : 2014-06-05 Bond University Limited
bond

// boo : 2014-01-30 Charleston Road Registry Inc.
boo

// boutique : 2013-11-14 Over Galley, LLC
boutique

// brussels : 2014-02-06 DNS.be vzw
brussels

// budapest : 2013-11-21 Top Level Domain Holdings Limited
budapest

// build : 2013-11-07 Plan Bee LLC
build

// builders : 2013-11-07 Atomic Madison, LLC
builders

// business : 2013-11-07 Spring Cross, LLC
business

// buzz : 2013-10-02 DOTSTRATEGY CO.
buzz

// bzh : 2014-02-27 Association www.bzh
bzh

// cab : 2013-10-24 Half Sunset, LLC
cab

// cal : 2014-07-24 Charleston Road Registry Inc.
cal

// camera : 2013-08-27 Atomic Maple, LLC
camera

// camp : 2013-11-07 Delta Dynamite, LLC
camp

// cancerresearch : 2014-05-15 Australian Cancer Research Foundation
cancerresearch

// capetown : 2014-03-24 ZA Central Registry NPC trading as ZA Central Registry
capetown

// capital : 2014-03-06 Delta Mill, LLC
capital

// caravan : 2013-12-12 Caravan International, Inc.
caravan

// cards : 2013-12-05 Foggy Hollow, LLC
cards

// care : 2014-03-06 Goose Cross
care

// career : 2013-10-09 dotCareer LLC
career

// careers : 2013-10-02 Wild Corner, LLC
careers

// cartier : 2014-06-23 Richemont DNS Inc.
cartier

// casa : 2013-11-21 Top Level Domain Holdings Limited
casa

// cash : 2014-03-06 Delta Lake, LLC
cash

// catering : 2013-12-05 New Falls. LLC
catering

// cba : 2014-06-26 COMMONWEALTH BANK OF AUSTRALIA
cba

// cbn : 2014-08-22 The Christian Broadcasting Network, Inc.
cbn

// center : 2013-11-07 Tin Mill, LLC
center

// ceo : 2013-11-07 CEOTLD Pty Ltd
ceo

// cern : 2014-06-05 European Organization for Nuclear Research (\
cern

// cfa : 2014-08-28 CFA Institute
cfa

// channel : 2014-05-08 Charleston Road Registry Inc.
channel

// cheap : 2013-11-14 Sand Cover, LLC
cheap

// christmas : 2013-11-21 Uniregistry, Corp.
christmas

// chrome : 2014-07-24 Charleston Road Registry Inc.
chrome

// church : 2014-02-06 Holly Fileds, LLC
church

// citic : 2014-01-09 CITIC Group Corporation
citic

// city : 2014-05-29 Snow Sky, LLC
city

// claims : 2014-03-20 Black Corner, LLC
claims

// cleaning : 2013-12-05 Fox Shadow, LLC
cleaning

// click : 2014-06-05 Uniregistry, Corp.
click

// clinic : 2014-03-20 Goose Park, LLC
clinic

// clothing : 2013-08-27 Steel Lake, LLC
clothing

// club : 2013-11-08 .CLUB DOMAINS, LLC
club

// codes : 2013-10-31 Puff Willow, LLC
codes

// coffee : 2013-10-17 Trixy Cover, LLC
coffee

// college : 2014-01-16 XYZ.COM LLC
college

// cologne : 2014-02-05 NetCologne Gesellschaft für Telekommunikation mbH
cologne

// commbank : 2014-06-26 COMMONWEALTH BANK OF AUSTRALIA
commbank

// community : 2013-12-05 Fox Orchard, LLC
community

// company : 2013-11-07 Silver Avenue, LLC
company

// computer : 2013-10-24 Pine Mill, LLC
computer

// condos : 2013-12-05 Pine House, LLC
condos

// construction : 2013-09-16 Fox Dynamite, LLC
construction

// consulting : 2013-12-05 undefined
consulting

// contractors : 2013-09-10 Magic Woods, LLC
contractors

// cooking : 2013-11-21 Top Level Domain Holdings Limited
cooking

// cool : 2013-11-14 Koko Lake, LLC
cool

// country : 2013-12-19 Top Level Domain Holdings Limited
country

// credit : 2014-03-20 Snow Shadow, LLC
credit

// creditcard : 2014-03-20 Binky Frostbite, LLC
creditcard

// crs : 2014-04-03 Federated Co-operatives Limited
crs

// cruises : 2013-12-05 Spring Way, LLC
cruises

// cuisinella : 2014-04-03 SALM S.A.S.
cuisinella

// cymru : 2014-05-08 Nominet UK
cymru

// dabur : 2014-02-06 Dabur India Limited
dabur

// dad : 2014-01-23 Charleston Road Registry Inc.
dad

// dance : 2013-10-24 United TLD Holdco Ltd.
dance

// dating : 2013-12-05 Pine Fest, LLC
dating

// datsun : 2014-03-27 NISSAN MOTOR CO., LTD.
datsun

// day : 2014-01-30 Charleston Road Registry Inc.
day

// deals : 2014-05-22 Sand Sunset, LLC
deals

// degree : 2014-03-06 undefined
degree

// democrat : 2013-10-24 United TLD Holdco Ltd.
democrat

// dental : 2014-03-20 Tin Birch, LLC
dental

// dentist : 2014-03-20 undefined
dentist

// desi : 2013-11-14 Desi Networks LLC
desi

// diamonds : 2013-09-22 John Edge, LLC
diamonds

// diet : 2014-06-26 Uniregistry, Corp.
diet

// digital : 2014-03-06 Dash Park, LLC
digital

// direct : 2014-04-10 Half Trail, LLC
direct

// directory : 2013-09-20 Extra Madison, LLC
directory

// discount : 2014-03-06 Holly Hill, LLC
discount

// dnp : 2013-12-13 Dai Nippon Printing Co., Ltd.
dnp

// domains : 2013-10-17 Sugar Cross, LLC
domains

// doosan : 2014-04-03 Doosan Corporation
doosan

// durban : 2014-03-24 ZA Central Registry NPC trading as ZA Central Registry
durban

// dvag : 2014-06-23 Deutsche Vermögensberatung Aktiengesellschaft DVAG
dvag

// eat : 2014-01-23 Charleston Road Registry Inc.
eat

// education : 2013-11-07 Brice Way, LLC
education

// email : 2013-10-31 Spring Madison, LLC
email

// emerck : 2014-04-03 Merck KGaA
emerck

// engineer : 2014-03-06 United TLD Holdco Ltd.
engineer

// engineering : 2014-03-06 Romeo Canyon
engineering

// enterprises : 2013-09-20 Snow Oaks, LLC
enterprises

// equipment : 2013-08-27 Corn Station, LLC
equipment

// erni : 2014-04-03 ERNI Group Holding AG
erni

// esq : 2014-05-08 Charleston Road Registry Inc.
esq

// estate : 2013-08-27 Trixy Park, LLC
estate

// eurovision : 2014-04-24 European Broadcasting Union (EBU)
eurovision

// eus : 2013-12-12 Puntueus Fundazioa
eus

// events : 2013-12-05 Pioneer Maple, LLC
events

// everbank : 2014-05-15 EverBank
everbank

// exchange : 2014-03-06 Spring Falls, LLC
exchange

// expert : 2013-11-21 Magic Pass, LLC
expert

// exposed : 2013-12-05 Victor Beach, LLC
exposed

// fail : 2014-03-06 Atomic Pipe, LLC
fail

// fan : 2014-03-06 undefined
fan

// farm : 2013-11-07 Just Maple, LLC
farm

// fashion : 2014-07-03 Top Level Domain Holdings Limited
fashion

// feedback : 2013-12-19 Top Level Spectrum, Inc.
feedback

// finance : 2014-03-20 Cotton Cypress, LLC
finance

// financial : 2014-03-06 Just Cover, LLC
financial

// firmdale : 2014-03-27 Firmdale Holdings Limited
firmdale

// fish : 2013-12-12 Fox Woods, LLC
fish

// fishing : 2013-11-21 Top Level Domain Holdings Limited
fishing

// fitness : 2014-03-06 Brice Orchard, LLC
fitness

// flights : 2013-12-05 Fox Station, LLC
flights

// florist : 2013-11-07 Half Cypress, LLC
florist

// flsmidth : 2014-07-24 FLSmidth A/S
flsmidth

// fly : 2014-05-08 Charleston Road Registry Inc.
fly

// foo : 2014-01-23 Charleston Road Registry Inc.
foo

// forsale : 2014-05-22 undefined
forsale

// foundation : 2013-12-05 John Dale, LLC
foundation

// frl : 2014-05-15 FRLregistry B.V.
frl

// frogans : 2013-12-19 OP3FT
frogans

// fund : 2014-03-20 John Castle, LLC
fund

// furniture : 2014-03-20 Lone Fields, LLC
furniture

// futbol : 2013-09-20 undefined
futbol

// gal : 2013-11-07 Asociación puntoGAL
gal

// gallery : 2013-09-13 Sugar House, LLC
gallery

// garden : 2014-06-26 Top Level Domain Holdings Limited
garden

// gbiz : 2014-07-17 Charleston Road Registry Inc.
gbiz

// gdn : 2014-07-31 Joint Stock Company \
gdn

// gent : 2014-01-23 COMBELL GROUP NV/SA
gent

// ggee : 2014-01-09 GMO Internet, Inc.
ggee

// gift : 2013-10-17 Uniregistry, Corp.
gift

// gifts : 2014-07-03 Goose Sky, LLC
gifts

// gives : 2014-03-06 United TLD Holdco Ltd.
gives

// glass : 2013-11-07 Black Cover, LLC
glass

// gle : 2014-07-24 Charleston Road Registry Inc.
gle

// global : 2014-04-17 Dot GLOBAL AS
global

// globo : 2013-12-19 Globo Comunicação e Participações S.A
globo

// gmail : 2014-05-01 Charleston Road Registry Inc.
gmail

// gmo : 2014-01-09 GMO Internet, Inc.
gmo

// gmx : 2014-04-24 1&1 Mail & Media GmbH
gmx

// google : 2014-07-24 Charleston Road Registry Inc.
google

// gop : 2014-01-16 Republican State Leadership Committee, Inc.
gop

// graphics : 2013-09-13 Over Madison, LLC
graphics

// gratis : 2014-03-20 Pioneer Tigers, LLC
gratis

// green : 2014-05-08 Afilias Limited
green

// gripe : 2014-03-06 Corn Sunset, LLC
gripe

// group : 2014-08-15 Romeo Town, LLC
group

// guge : 2014-08-28 Charleston Road Registry Inc.
guge

// guide : 2013-09-13 Snow Moon, LLC
guide

// guitars : 2013-11-14 Uniregistry, Corp.
guitars

// guru : 2013-08-27 Pioneer Cypress, LLC
guru

// hamburg : 2014-02-20 Hamburg Top-Level-Domain GmbH
hamburg

// haus : 2013-12-05 undefined
haus

// healthcare : 2014-06-12 Silver Glen, LLC
healthcare

// help : 2014-06-26 Uniregistry, Corp.
help

// here : 2014-02-06 Charleston Road Registry Inc.
here

// hermes : 2014-07-10 HERMES INTERNATIONAL
hermes

// hiphop : 2014-03-06 Uniregistry, Corp.
hiphop

// hiv : 2014-03-13 dotHIV gemeinnuetziger e.V.
hiv

// holdings : 2013-08-27 John Madison, LLC
holdings

// holiday : 2013-11-07 Goose Woods, LLC
holiday

// homes : 2014-01-09 DERHomes, LLC
homes

// horse : 2013-11-21 Top Level Domain Holdings Limited
horse

// host : 2014-04-17 DotHost Inc.
host

// hosting : 2014-05-29 Uniregistry, Corp.
hosting

// house : 2013-11-07 Sugar Park, LLC
house

// how : 2014-01-23 Charleston Road Registry Inc.
how

// ibm : 2014-07-31 International Business Machines Corporation
ibm

// ifm : 2014-01-30 ifm electronic gmbh
ifm

// iinet : 2014-07-03 Connect West Pty. Ltd.
iinet

// immo : 2014-07-10 Auburn Bloom, LLC
immo

// immobilien : 2013-11-07 United TLD Holdco Ltd.
immobilien

// industries : 2013-12-05 Outer House, LLC
industries

// infiniti : 2014-03-27 NISSAN MOTOR CO., LTD.
infiniti

// ing : 2014-01-23 Charleston Road Registry Inc.
ing

// ink : 2013-12-05 Top Level Design, LLC
ink

// institute : 2013-11-07 Outer Maple, LLC
institute

// insure : 2014-03-20 Pioneer Willow, LLC
insure

// international : 2013-11-07 Wild Way, LLC
international

// investments : 2014-03-20 Holly Glen, LLC
investments

// ipiranga : 2014-08-28 Ipiranga Produtos de Petroleo S.A.
ipiranga

// irish : 2014-08-07 Dot-Irish LLC
irish

// ist : 2014-08-28 Istanbul Metropolitan Municipality
ist

// istanbul : 2014-08-28 Istanbul Metropolitan Municipality
istanbul

// iwc : 2014-06-23 Richemont DNS Inc.
iwc

// java : 2014-06-19 Oracle Corporation
java

// jetzt : 2014-01-09 New TLD Company AB
jetzt

// joburg : 2014-03-24 ZA Central Registry NPC trading as ZA Central Registry
joburg

// juegos : 2014-03-20 Uniregistry, Corp.
juegos

// kaufen : 2013-11-07 United TLD Holdco Ltd.
kaufen

// kim : 2013-09-23 Afilias Limited
kim

// kitchen : 2013-09-20 Just Goodbye, LLC
kitchen

// kiwi : 2013-09-20 DOT KIWI LIMITED
kiwi

// koeln : 2014-01-09 NetCologne Gesellschaft für Telekommunikation mbH
koeln

// krd : 2013-12-05 KRG Department of Information Technology
krd

// kred : 2013-12-19 KredTLD Pty Ltd
kred

// lacaixa : 2014-01-09 CAIXA D'ESTALVIS I PENSIONS DE BARCELONA
lacaixa

// land : 2013-09-10 Pine Moon, LLC
land

// latrobe : 2014-06-16 La Trobe University
latrobe

// lawyer : 2014-03-20 undefined
lawyer

// lds : 2014-03-20 IRI Domain Management, LLC (\
lds

// lease : 2014-03-06 Victor Trail, LLC
lease

// leclerc : 2014-08-07 A.C.D. LEC Association des Centres Distributeurs Edouard Leclerc
leclerc

// lgbt : 2014-05-08 Afilias Limited
lgbt

// life : 2014-02-06 Trixy Oaks, LLC
life

// lighting : 2013-08-27 John McCook, LLC
lighting

// limited : 2014-03-06 Big Fest, LLC
limited

// limo : 2013-10-17 Hidden Frostbite, LLC
limo

// link : 2013-11-14 Uniregistry, Corp.
link

// loans : 2014-03-20 June Woods, LLC
loans

// london : 2013-11-14 Dot London Domains Limited
london

// lotto : 2014-04-10 Afilias Limited
lotto

// ltda : 2014-04-17 DOMAIN ROBOT SERVICOS DE HOSPEDAGEM NA INTERNET LTDA
ltda

// luxe : 2014-01-09 Top Level Domain Holdings Limited
luxe

// luxury : 2013-10-17 Luxury Partners, LLC
luxury

// madrid : 2014-05-01 Comunidad de Madrid
madrid

// maison : 2013-12-05 Victor Frostbite, LLC
maison

// management : 2013-11-07 John Goodbye, LLC
management

// mango : 2013-10-24 PUNTO FA S.L.
mango

// market : 2014-03-06 undefined
market

// marketing : 2013-11-07 Fern Pass, LLC
marketing

// media : 2014-03-06 Grand Glen, LLC
media

// meet : 2014-01-16 Afilias Limited
meet

// melbourne : 2014-05-29 The Crown in right of the State of Victoria, represented by its Department of State Development, Business and Innovation
melbourne

// meme : 2014-01-30 Charleston Road Registry Inc.
meme

// menu : 2013-09-11 Wedding TLD2, LLC
menu

// miami : 2013-12-19 Top Level Domain Holdings Limited
miami

// mini : 2014-01-09 Bayerische Motoren Werke Aktiengesellschaft
mini

// moda : 2013-11-07 United TLD Holdco Ltd.
moda

// moe : 2013-11-13 Interlink Co., Ltd.
moe

// monash : 2013-09-30 Monash University
monash

// montblanc : 2014-06-23 Richemont DNS Inc.
montblanc

// mormon : 2013-12-05 IRI Domain Management, LLC (\
mormon

// mortgage : 2014-03-20 undefined
mortgage

// moscow : 2013-12-19 Foundation for Assistance for Internet Technologies and Infrastructure Development (FAITID)
moscow

// motorcycles : 2014-01-09 DERMotorcycles, LLC
motorcycles

// mov : 2014-01-30 Charleston Road Registry Inc.
mov

// nagoya : 2013-10-24 GMO Registry, Inc.
nagoya

// navy : 2014-03-06 United TLD Holdco Ltd.
navy

// netbank : 2014-06-26 COMMONWEALTH BANK OF AUSTRALIA
netbank

// network : 2013-11-14 Trixy Manor, LLC
network

// neustar : 2013-12-05 NeuStar, Inc.
neustar

// new : 2014-01-30 Charleston Road Registry Inc.
new

// nexus : 2014-07-24 Charleston Road Registry Inc.
nexus

// ngo : 2014-03-06 Public Interest Registry
ngo

// nhk : 2014-02-13 Japan Broadcasting Corporation (NHK)
nhk

// ninja : 2013-11-07 United TLD Holdco Ltd.
ninja

// nissan : 2014-03-27 NISSAN MOTOR CO., LTD.
nissan

// nra : 2014-05-22 NRA Holdings Company, INC.
nra

// nrw : 2013-11-21 Minds + Machines GmbH
nrw

// nyc : 2014-01-23 The City of New York by and through the New York City Department of Information Technology & Telecommunications
nyc

// okinawa : 2013-12-05 BusinessRalliart inc.
okinawa

// ong : 2014-03-06 Public Interest Registry
ong

// onl : 2013-09-16 I-Registry Ltd.
onl

// ooo : 2014-01-09 INFIBEAM INCORPORATION LIMITED
ooo

// oracle : 2014-06-19 Oracle Corporation
oracle

// organic : 2014-03-27 Afilias Limited
organic

// otsuka : 2013-10-11 Otsuka Holdings Co., Ltd.
otsuka

// ovh : 2014-01-16 OVH SAS
ovh

// paris : 2014-01-30 City of Paris
paris

// partners : 2013-12-05 Magic Glen, LLC
partners

// parts : 2013-12-05 Sea Goodbye, LLC
parts

// pharmacy : 2014-06-19 National Association of Boards of Pharmacy
pharmacy

// photo : 2013-11-14 Uniregistry, Corp.
photo

// photography : 2013-09-20 Sugar Glen, LLC
photography

// photos : 2013-10-17 Sea Corner, LLC
photos

// physio : 2014-05-01 PhysBiz Pty Ltd
physio

// pics : 2013-11-14 Uniregistry, Corp.
pics

// pictet : 2014-06-26 Pictet Europe S.A.
pictet

// pictures : 2014-03-06 Foggy Sky, LLC
pictures

// pink : 2013-10-01 Afilias Limited
pink

// pizza : 2014-06-26 Foggy Moon, LLC
pizza

// place : 2014-04-24 Snow Galley, LLC
place

// plumbing : 2013-09-10 Spring Tigers, LLC
plumbing

// pohl : 2014-06-23 Deutsche Vermögensberatung Aktiengesellschaft DVAG
pohl

// poker : 2014-07-03 Afilias Domains No. 5 Limited
poker

// praxi : 2013-12-05 Praxi S.p.A.
praxi

// press : 2014-04-03 DotPress Inc.
press

// prod : 2014-01-23 Charleston Road Registry Inc.
prod

// productions : 2013-12-05 Magic Birch, LLC
productions

// prof : 2014-07-24 Charleston Road Registry Inc.
prof

// properties : 2013-12-05 Big Pass, LLC
properties

// property : 2014-05-22 Uniregistry, Corp.
property

// pub : 2013-12-12 United TLD Holdco Ltd.
pub

// qpon : 2013-11-14 dotCOOL, Inc.
qpon

// quebec : 2013-12-19 PointQuébec Inc
quebec

// realtor : 2014-05-29 Real Estate Domains LLC
realtor

// recipes : 2013-10-17 Grand Island, LLC
recipes

// red : 2013-11-07 Afilias Limited
red

// rehab : 2014-03-06 United TLD Holdco Ltd.
rehab

// reise : 2014-03-13 dotreise GmbH
reise

// reisen : 2014-03-06 New Cypress, LLC
reisen

// ren : 2013-12-12 Beijing Qianxiang Wangjing Technology Development Co., Ltd.
ren

// rentals : 2013-12-05 Big Hollow,LLC
rentals

// repair : 2013-11-07 Lone Sunset, LLC
repair

// report : 2013-12-05 Binky Glen, LLC
report

// republican : 2014-03-20 United TLD Holdco Ltd.
republican

// rest : 2013-12-19 Punto 2012 Sociedad Anonima Promotora de Inversion de Capital Variable
rest

// restaurant : 2014-07-03 Snow Avenue, LLC
restaurant

// reviews : 2013-09-13 undefined
reviews

// rich : 2013-11-21 I-Registry Ltd.
rich

// rio : 2014-02-27 Empresa Municipal de Informática SA - IPLANRIO
rio

// rip : 2014-07-10 United TLD Holdco Ltd.
rip

// rocks : 2013-11-14 undefined
rocks

// rodeo : 2013-12-19 Top Level Domain Holdings Limited
rodeo

// rsvp : 2014-05-08 Charleston Road Registry Inc.
rsvp

// ruhr : 2013-10-02 regiodot GmbH & Co. KG
ruhr

// ryukyu : 2014-01-09 BusinessRalliart inc.
ryukyu

// saarland : 2013-12-12 dotSaarland GmbH
saarland

// samsung : 2014-04-03 SAMSUNG SDS CO., LTD
samsung

// sap : 2014-03-27 SAP AG
sap

// sarl : 2014-07-03 Delta Orchard, LLC
sarl

// sca : 2014-03-13 SVENSKA CELLULOSA AKTIEBOLAGET SCA (publ)
sca

// scb : 2014-02-20 The Siam Commercial Bank Public Company Limited (\
scb

// schmidt : 2014-04-03 SALM S.A.S.
schmidt

// scholarships : 2014-04-24 Scholarships.com, LLC
scholarships

// schule : 2014-03-06 Outer Moon, LLC
schule

// scot : 2014-01-23 Dot Scot Registry Limited
scot

// seat : 2014-05-22 SEAT, S.A. (Sociedad Unipersonal)
seat

// services : 2014-02-27 Fox Castle, LLC
services

// sew : 2014-07-17 SEW-EURODRIVE GmbH & Co KG
sew

// sexy : 2013-09-11 Uniregistry, Corp.
sexy

// sharp : 2014-05-01 Sharp Corporation
sharp

// shiksha : 2013-11-14 Afilias Limited
shiksha

// shoes : 2013-10-02 Binky Galley, LLC
shoes

// shriram : 2014-01-23 Shriram Capital Ltd.
shriram

// singles : 2013-08-27 Fern Madison, LLC
singles

// sky : 2014-06-19 Sky IP International Ltd, a company incorporated in England and Wales, operating via its registered Swiss branch
sky

// social : 2013-11-07 United TLD Holdco Ltd.
social

// software : 2014-03-20 undefined
software

// sohu : 2013-12-19 Sohu.com Limited
sohu

// solar : 2013-11-07 Ruby Town, LLC
solar

// solutions : 2013-11-07 Silver Cover, LLC
solutions

// soy : 2014-01-23 Charleston Road Registry Inc.
soy

// space : 2014-04-03 DotSpace Inc.
space

// spiegel : 2014-02-05 SPIEGEL-Verlag Rudolf Augstein GmbH & Co. KG
spiegel

// supplies : 2013-12-19 Atomic Fields, LLC
supplies

// supply : 2013-12-19 Half Falls, LLC
supply

// support : 2013-10-24 Grand Orchard, LLC
support

// surf : 2014-01-09 Top Level Domain Holdings Limited
surf

// surgery : 2014-03-20 Tin Avenue, LLC
surgery

// suzuki : 2014-02-20 SUZUKI MOTOR CORPORATION
suzuki

// systems : 2013-11-07 Dash Cypress, LLC
systems

// taipei : 2014-07-10 Taipei City Government
taipei

// tatar : 2014-04-24 Limited Liability Company \
tatar

// tattoo : 2013-08-30 Uniregistry, Corp.
tattoo

// tax : 2014-03-20 Storm Orchard, LLC
tax

// technology : 2013-09-13 Auburn Falls
technology

// temasek : 2014-08-07 Temasek Holdings (Private) Limited
temasek

// tienda : 2013-11-14 Victor Manor, LLC
tienda

// tips : 2013-09-20 Corn Willow, LLC
tips

// tirol : 2014-04-24 punkt Tirol GmbH
tirol

// today : 2013-09-20 Pearl Woods, LLC
today

// tokyo : 2013-11-13 GMO Registry, Inc.
tokyo

// tools : 2013-11-21 Pioneer North, LLC
tools

// top : 2014-03-20 Jiangsu Bangning Science & Technology Co.,Ltd.
top

// toshiba : 2014-04-10 TOSHIBA Corporation
toshiba

// town : 2014-03-06 Koko Moon, LLC
town

// toys : 2014-03-06 Pioneer Orchard, LLC
toys

// trade : 2014-01-23 Elite Registry Limited
trade

// training : 2013-11-07 Wild Willow, LLC
training

// tui : 2014-07-03 TUI AG
tui

// university : 2014-03-06 Little Station, LLC
university

// uno : 2013-09-11 Dot Latin LLC
uno

// uol : 2014-05-01 UBN INTERNET LTDA.
uol

// vacations : 2013-12-05 Atomic Tigers, LLC
vacations

// vegas : 2014-01-16 Dot Vegas, Inc.
vegas

// ventures : 2013-08-27 Binky Lake, LLC
ventures

// versicherung : 2014-03-20 dotversicherung-registry GmbH
versicherung

// vet : 2014-03-06 undefined
vet

// viajes : 2013-10-17 Black Madison, LLC
viajes

// villas : 2013-12-05 New Sky, LLC
villas

// vision : 2013-12-05 Koko Station, LLC
vision

// vlaanderen : 2014-02-06 DNS.be vzw
vlaanderen

// vodka : 2013-12-19 Top Level Domain Holdings Limited
vodka

// vote : 2013-11-21 Monolith Registry LLC
vote

// voting : 2013-11-13 Valuetainment Corp.
voting

// voto : 2013-11-21 Monolith Registry LLC
voto

// voyage : 2013-08-27 Ruby House, LLC
voyage

// wales : 2014-05-08 Nominet UK
wales

// wang : 2013-10-24 Zodiac Leo Limited
wang

// watch : 2013-11-14 Sand Shadow, LLC
watch

// webcam : 2014-01-23 dot Webcam Limited
webcam

// website : 2014-04-03 DotWebsite Inc.
website

// wed : 2013-10-01 Atgron, Inc.
wed

// wedding : 2014-04-24 Top Level Domain Holdings Limited
wedding

// whoswho : 2014-02-20 Who's Who Registry
whoswho

// wien : 2013-10-28 punkt.wien GmbH
wien

// wiki : 2013-11-07 Top Level Design, LLC
wiki

// williamhill : 2014-03-13 William Hill Organization Limited
williamhill

// wme : 2014-02-13 William Morris Endeavor Entertainment, LLC
wme

// work : 2013-12-19 Top Level Domain Holdings Limited
work

// works : 2013-11-14 Little Dynamite, LLC
works

// world : 2014-06-12 Bitter Fields, LLC
world

// wtc : 2013-12-19 World Trade Centers Association, Inc.
wtc

// wtf : 2014-03-06 Hidden Way, LLC
wtf

// xn--1qqw23a : 2014-01-09 Guangzhou YU Wei Information Technology Co., Ltd.
佛山

// xn--30rr7y : 2014-06-12 Excellent First Limited
慈善

// xn--3bst00m : 2013-09-13 Eagle Horizon Limited
集团

// xn--3ds443g : 2013-09-08 TLD REGISTRY LIMITED
在线

// xn--45q11c : 2013-11-21 Zodiac Scorpio Limited
八卦

// xn--4gbrim : 2013-10-04 Suhub Electronic Establishment
موقع

// xn--55qw42g : 2013-11-08 China Organizational Name Administration Center
公益

// xn--55qx5d : 2013-11-14 Computer Network Information Center of Chinese Academy of Sciences （China Internet Network Information Center）
公司

// xn--6frz82g : 2013-09-23 Afilias Limited
移动

// xn--6qq986b3xl : 2013-09-13 Tycoon Treasure Limited
我爱你

// xn--80adxhks : 2013-12-19 Foundation for Assistance for Internet Technologies and Infrastructure Development (FAITID)
москва

// xn--80asehdb : 2013-07-14 CORE Association
онлайн

// xn--80aswg : 2013-07-14 CORE Association
сайт

// xn--9et52u : 2014-06-12 RISE VICTORY LIMITED
时尚

// xn--b4w605ferd : 2014-08-07 Temasek Holdings (Private) Limited
淡马锡

// xn--c1avg : 2013-11-14 Public Interest Registry
орг

// xn--cg4bki : 2013-09-27 SAMSUNG SDS CO., LTD
삼성

// xn--czr694b : 2014-01-16 HU YI GLOBAL INFORMATION RESOURCES(HOLDING) COMPANY.HONGKONG LIMITED
商标

// xn--czrs0t : 2013-12-19 Wild Island, LLC
商店

// xn--czru2d : 2013-11-21 Zodiac Capricorn Limited
商城

// xn--d1acj3b : 2013-11-20 The Foundation for Network Initiatives “The Smart Internet”
дети

// xn--efvy88h : 2014-08-22 Xinhua News Agency Guangdong Branch 新华通讯社广东分社
新闻

// xn--fiq228c5hs : 2013-09-08 TLD REGISTRY LIMITED
中文网

// xn--fiq64b : 2013-10-14 CITIC Group Corporation
中信

// xn--fjq720a : 2014-05-22 Will Bloom, LLC
娱乐

// xn--flw351e : 2014-07-31 Charleston Road Registry Inc.
谷歌

// xn--hxt814e : 2014-05-15 Zodiac Libra Limited
网店

// xn--i1b6b1a6a2e : 2013-11-14 Public Interest Registry
संगठन

// xn--io0a7i : 2013-11-14 Computer Network Information Center of Chinese Academy of Sciences （China Internet Network Information Center）
网络

// xn--kput3i : 2014-02-13 Beijing RITT-Net Technology Development Co., Ltd
手机

// xn--mgbab2bd : 2013-10-31 CORE Association
بازار

// xn--mxtq1m : 2014-03-06 Net-Chinese Co., Ltd.
政府

// xn--ngbc5azd : 2013-07-13 International Domain Registry Pty. Ltd.
شبكة

// xn--nqv7f : 2013-11-14 Public Interest Registry
机构

// xn--nqv7fs00ema : 2013-11-14 Public Interest Registry
组织机构

// xn--p1acf : 2013-12-12 Rusnames Limited
рус

// xn--q9jyb4c : 2013-09-17 Charleston Road Registry Inc.
みんな

// xn--qcka1pmc : 2014-07-31 Charleston Road Registry Inc.
グーグル

// xn--rhqv96g : 2013-09-11 Stable Tone Limited
世界

// xn--ses554g : 2014-01-16 HU YI GLOBAL INFORMATION RESOURCES (HOLDING) COMPANY. HONGKONG LIMITED
网址

// xn--unup4y : 2013-07-14 Spring Fields, LLC
游戏

// xn--vermgensberater-ctb : 2014-06-23 Deutsche Vermögensberatung Aktiengesellschaft DVAG
vermögensberater

// xn--vermgensberatung-pwb : 2014-06-23 Deutsche Vermögensberatung Aktiengesellschaft DVAG
vermögensberatung

// xn--vhquv : 2013-08-27 Dash McCook, LLC
企业

// xn--xhq521b : 2013-11-14 Guangzhou YU Wei Information Technology Co., Ltd.
广东

// xn--zfr164b : 2013-11-08 China Organizational Name Administration Center
政务

// xyz : 2013-12-05 XYZ.COM LLC
xyz

// yachts : 2014-01-09 DERYachts, LLC
yachts

// yandex : 2014-04-10 YANDEX, LLC
yandex

// yoga : 2014-05-29 Top Level Domain Holdings Limited
yoga

// yokohama : 2013-12-12 GMO Registry, Inc.
yokohama

// youtube : 2014-05-01 Charleston Road Registry Inc.
youtube

// zip : 2014-05-08 Charleston Road Registry Inc.
zip

// zone : 2013-11-14 Outer Falls, LLC
zone 

// ===END ICANN DOMAINS===
// ===BEGIN PRIVATE DOMAINS===

// Amazon CloudFront : https://aws.amazon.com/cloudfront/
// Submitted by Donavan Miller <donavanm@amazon.com> 2013-03-22
cloudfront.net

// Amazon Elastic Compute Cloud: https://aws.amazon.com/ec2/
// Submitted by Osman Surkatty <osmans@amazon.com> 2014-05-20
ap-northeast-1.compute.amazonaws.com
ap-southeast-1.compute.amazonaws.com
ap-southeast-2.compute.amazonaws.com
cn-north-1.compute.amazonaws.cn
compute.amazonaws.cn
compute.amazonaws.com
compute-1.amazonaws.com
eu-west-1.compute.amazonaws.com
sa-east-1.compute.amazonaws.com
us-east-1.amazonaws.com
us-gov-west-1.compute.amazonaws.com
us-west-1.compute.amazonaws.com
us-west-2.compute.amazonaws.com
z-1.compute-1.amazonaws.com
z-2.compute-1.amazonaws.com

// Amazon Elastic Beanstalk : https://aws.amazon.com/elasticbeanstalk/
// Submitted by Adam Stein <astein@amazon.com> 2013-04-02
elasticbeanstalk.com

// Amazon Elastic Load Balancing : https://aws.amazon.com/elasticloadbalancing/
// Submitted by Scott Vidmar <svidmar@amazon.com> 2013-03-27
elb.amazonaws.com

// Amazon S3 : https://aws.amazon.com/s3/
// Submitted by Courtney Eckhardt <coec@amazon.com> 2013-03-22
s3.amazonaws.com
s3-us-west-2.amazonaws.com
s3-us-west-1.amazonaws.com
s3-eu-west-1.amazonaws.com
s3-ap-southeast-1.amazonaws.com
s3-ap-southeast-2.amazonaws.com
s3-ap-northeast-1.amazonaws.com
s3-sa-east-1.amazonaws.com
s3-us-gov-west-1.amazonaws.com
s3-fips-us-gov-west-1.amazonaws.com
s3-website-us-east-1.amazonaws.com
s3-website-us-west-2.amazonaws.com
s3-website-us-west-1.amazonaws.com
s3-website-eu-west-1.amazonaws.com
s3-website-ap-southeast-1.amazonaws.com
s3-website-ap-southeast-2.amazonaws.com
s3-website-ap-northeast-1.amazonaws.com
s3-website-sa-east-1.amazonaws.com
s3-website-us-gov-west-1.amazonaws.com

// BetaInABox
// Submitted by adrian@betainabox.com 2012-09-13
betainabox.com

// CentralNic : http://www.centralnic.com/names/domains
// Submitted by registry <gavin.brown@centralnic.com> 2012-09-27
ae.org
ar.com
br.com
cn.com
com.de
com.se
de.com
eu.com
gb.com
gb.net
hu.com
hu.net
jp.net
jpn.com
kr.com
mex.com
no.com
qc.com
ru.com
sa.com
se.com
se.net
uk.com
uk.net
us.com
uy.com
za.bz
za.com

// Africa.com Web Solutions Ltd : https://registry.africa.com
// Submitted by Gavin Brown <gavin.brown@centralnic.com> 2014-02-04
africa.com

// iDOT Services Limited : http://www.domain.gr.com
// Submitted by Gavin Brown <gavin.brown@centralnic.com> 2014-02-04
gr.com

// Radix FZC : http://domains.in.net
// Submitted by Gavin Brown <gavin.brown@centralnic.com> 2014-02-04
in.net

// US REGISTRY LLC : http://us.org
// Submitted by Gavin Brown <gavin.brown@centralnic.com> 2014-02-04
us.org

// co.com Registry, LLC : https://registry.co.com
// Submitted by Gavin Brown <gavin.brown@centralnic.com> 2014-02-04
co.com

// c.la : http://www.c.la/
c.la

// cloudControl : https://www.cloudcontrol.com/
// Submitted by Tobias Wilken <tw@cloudcontrol.com> 2013-07-23
cloudcontrolled.com
cloudcontrolapp.com

// co.ca : http://registry.co.ca/
co.ca

// CoDNS B.V.
co.nl
co.no

// Cupcake : https://cupcake.io/
// Submitted by Jonathan Rudenberg <jonathan@cupcake.io> 2013-10-08
cupcake.is

// DreamHost : http://www.dreamhost.com/
// Submitted by Andrew Farmer <andrew.farmer@dreamhost.com> 2012-10-02
dreamhosters.com

// DynDNS.com : http://www.dyndns.com/services/dns/dyndns/
dyndns-at-home.com
dyndns-at-work.com
dyndns-blog.com
dyndns-free.com
dyndns-home.com
dyndns-ip.com
dyndns-mail.com
dyndns-office.com
dyndns-pics.com
dyndns-remote.com
dyndns-server.com
dyndns-web.com
dyndns-wiki.com
dyndns-work.com
dyndns.biz
dyndns.info
dyndns.org
dyndns.tv
at-band-camp.net
ath.cx
barrel-of-knowledge.info
barrell-of-knowledge.info
better-than.tv
blogdns.com
blogdns.net
blogdns.org
blogsite.org
boldlygoingnowhere.org
broke-it.net
buyshouses.net
cechire.com
dnsalias.com
dnsalias.net
dnsalias.org
dnsdojo.com
dnsdojo.net
dnsdojo.org
does-it.net
doesntexist.com
doesntexist.org
dontexist.com
dontexist.net
dontexist.org
doomdns.com
doomdns.org
dvrdns.org
dyn-o-saur.com
dynalias.com
dynalias.net
dynalias.org
dynathome.net
dyndns.ws
endofinternet.net
endofinternet.org
endoftheinternet.org
est-a-la-maison.com
est-a-la-masion.com
est-le-patron.com
est-mon-blogueur.com
for-better.biz
for-more.biz
for-our.info
for-some.biz
for-the.biz
forgot.her.name
forgot.his.name
from-ak.com
from-al.com
from-ar.com
from-az.net
from-ca.com
from-co.net
from-ct.com
from-dc.com
from-de.com
from-fl.com
from-ga.com
from-hi.com
from-ia.com
from-id.com
from-il.com
from-in.com
from-ks.com
from-ky.com
from-la.net
from-ma.com
from-md.com
from-me.org
from-mi.com
from-mn.com
from-mo.com
from-ms.com
from-mt.com
from-nc.com
from-nd.com
from-ne.com
from-nh.com
from-nj.com
from-nm.com
from-nv.com
from-ny.net
from-oh.com
from-ok.com
from-or.com
from-pa.com
from-pr.com
from-ri.com
from-sc.com
from-sd.com
from-tn.com
from-tx.com
from-ut.com
from-va.com
from-vt.com
from-wa.com
from-wi.com
from-wv.com
from-wy.com
ftpaccess.cc
fuettertdasnetz.de
game-host.org
game-server.cc
getmyip.com
gets-it.net
go.dyndns.org
gotdns.com
gotdns.org
groks-the.info
groks-this.info
ham-radio-op.net
here-for-more.info
hobby-site.com
hobby-site.org
home.dyndns.org
homedns.org
homeftp.net
homeftp.org
homeip.net
homelinux.com
homelinux.net
homelinux.org
homeunix.com
homeunix.net
homeunix.org
iamallama.com
in-the-band.net
is-a-anarchist.com
is-a-blogger.com
is-a-bookkeeper.com
is-a-bruinsfan.org
is-a-bulls-fan.com
is-a-candidate.org
is-a-caterer.com
is-a-celticsfan.org
is-a-chef.com
is-a-chef.net
is-a-chef.org
is-a-conservative.com
is-a-cpa.com
is-a-cubicle-slave.com
is-a-democrat.com
is-a-designer.com
is-a-doctor.com
is-a-financialadvisor.com
is-a-geek.com
is-a-geek.net
is-a-geek.org
is-a-green.com
is-a-guru.com
is-a-hard-worker.com
is-a-hunter.com
is-a-knight.org
is-a-landscaper.com
is-a-lawyer.com
is-a-liberal.com
is-a-libertarian.com
is-a-linux-user.org
is-a-llama.com
is-a-musician.com
is-a-nascarfan.com
is-a-nurse.com
is-a-painter.com
is-a-patsfan.org
is-a-personaltrainer.com
is-a-photographer.com
is-a-player.com
is-a-republican.com
is-a-rockstar.com
is-a-socialist.com
is-a-soxfan.org
is-a-student.com
is-a-teacher.com
is-a-techie.com
is-a-therapist.com
is-an-accountant.com
is-an-actor.com
is-an-actress.com
is-an-anarchist.com
is-an-artist.com
is-an-engineer.com
is-an-entertainer.com
is-by.us
is-certified.com
is-found.org
is-gone.com
is-into-anime.com
is-into-cars.com
is-into-cartoons.com
is-into-games.com
is-leet.com
is-lost.org
is-not-certified.com
is-saved.org
is-slick.com
is-uberleet.com
is-very-bad.org
is-very-evil.org
is-very-good.org
is-very-nice.org
is-very-sweet.org
is-with-theband.com
isa-geek.com
isa-geek.net
isa-geek.org
isa-hockeynut.com
issmarterthanyou.com
isteingeek.de
istmein.de
kicks-ass.net
kicks-ass.org
knowsitall.info
land-4-sale.us
lebtimnetz.de
leitungsen.de
likes-pie.com
likescandy.com
merseine.nu
mine.nu
misconfused.org
mypets.ws
myphotos.cc
neat-url.com
office-on-the.net
on-the-web.tv
podzone.net
podzone.org
readmyblog.org
saves-the-whales.com
scrapper-site.net
scrapping.cc
selfip.biz
selfip.com
selfip.info
selfip.net
selfip.org
sells-for-less.com
sells-for-u.com
sells-it.net
sellsyourhome.org
servebbs.com
servebbs.net
servebbs.org
serveftp.net
serveftp.org
servegame.org
shacknet.nu
simple-url.com
space-to-rent.com
stuff-4-sale.org
stuff-4-sale.us
teaches-yoga.com
thruhere.net
traeumtgerade.de
webhop.biz
webhop.info
webhop.net
webhop.org
worse-than.tv
writesthisblog.com

// Fastly Inc. http://www.fastly.com/
// Submitted by Vladimir Vuksan <vladimir@fastly.com> 2013-05-31
a.ssl.fastly.net
b.ssl.fastly.net
global.ssl.fastly.net
a.prod.fastly.net
global.prod.fastly.net

// Firebase, Inc.
// Submitted by Chris Raynor <chris@firebase.com> 2014-01-21
firebaseapp.com

// Flynn : https://flynn.io
// Submitted by Jonathan Rudenberg <jonathan@flynn.io> 2014-07-12
flynnhub.com

// GitHub, Inc.
// Submitted by Ben Toews <btoews@github.com> 2014-02-06
github.io
githubusercontent.com

// GlobeHosting, Inc.
// Submitted by Zoltan Egresi <egresi@globehosting.com> 2013-07-12
ro.com

// Google, Inc.
// Submitted by Eduardo Vela <evn@google.com> 2012-10-24
appspot.com
blogspot.be
blogspot.bj
blogspot.ca
blogspot.cf
blogspot.ch
blogspot.co.at
blogspot.co.il
blogspot.co.nz
blogspot.co.uk
blogspot.com
blogspot.com.ar
blogspot.com.au
blogspot.com.br
blogspot.com.es
blogspot.cv
blogspot.cz
blogspot.de
blogspot.dk
blogspot.fi
blogspot.fr
blogspot.gr
blogspot.hk
blogspot.hu
blogspot.ie
blogspot.in
blogspot.it
blogspot.jp
blogspot.kr
blogspot.mr
blogspot.mx
blogspot.nl
blogspot.no
blogspot.pt
blogspot.re
blogspot.ro
blogspot.se
blogspot.sg
blogspot.sk
blogspot.td
blogspot.tw
codespot.com
googleapis.com
googlecode.com
withgoogle.com

// Heroku : https://www.heroku.com/
// Submitted by Tom Maher <tmaher@heroku.com> 2013-05-02
herokuapp.com
herokussl.com

// iki.fi
// Submitted by Hannu Aronsson <haa@iki.fi> 2009-11-05
iki.fi

// info.at : http://www.info.at/
biz.at
info.at

// Michau Enterprises Limited : http://www.co.pl/
co.pl

// Microsoft : http://microsoft.com
// Submitted by Barry Dorrans <bdorrans@microsoft.com> 2014-01-24
azurewebsites.net
azure-mobile.net
cloudapp.net

// NFSN, Inc. : https://www.NearlyFreeSpeech.NET/
// Submitted by Jeff Wheelhouse <support@nearlyfreespeech.net> 2014-02-02
nfshost.com

// NYC.mn : http://www.information.nyc.mn
// Submitted by Matthew Brown <mattbrown@nyc.mn> 2013-03-11
nyc.mn

// One Fold Media : http://www.onefoldmedia.com/
// Submitted by Eddie Jones <eddie@onefoldmedia.com> 2014-06-10
nid.io

// Opera Software, A.S.A.
// Submitted by Yngve Pettersen <yngve@opera.com> 2009-11-26
operaunite.com

// OutSystems
// Submitted by Duarte Santos <domain-admin@outsystemscloud.com> 2014-03-11
outsystemscloud.com

// Red Hat, Inc. OpenShift : https://openshift.redhat.com/
// Submitted by Tim Kramer <tkramer@rhcloud.com> 2012-10-24
rhcloud.com

// GDS : https://www.gov.uk/service-manual/operations/operating-servicegovuk-subdomains
// Submitted by David Illsley <david.illsley@digital.cabinet-office.gov.uk> 2014-08-28
service.gov.uk

// priv.at : http://www.nic.priv.at/
// Submitted by registry <lendl@nic.at> 2008-06-09
priv.at

// Yola : https://www.yola.com/
// Submitted by Stefano Rivera <stefano@yola.com> 2014-07-09
yolasite.com

// ZaNiC : http://www.za.net/
// Submitted by registry <hostmaster@nic.za.net> 2009-10-03
za.net
za.org

// ===END PRIVATE DOMAINS===});
    return \@lines;
}

=head1 COPYRIGHT & LICENSE

The contents of this file are subject to the license block in the retrieve()
method.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1;
