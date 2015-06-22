X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["16429" "Monday" "22" "June" "2015" "15:46:54" "+0530" "Abhishek Ghosh" "dr.abhishek_ghosh@hotmail.com" "<BLU436-SMTP2332801710A346418F7192FC4A10@phx.gbl>" "298" "[oss-security] Re: Wordpress Plugin: FTP To Zip 1.8" nil nil nil "6" "2015062210:16:54" "[oss-security] Re: Wordpress Plugin: FTP To Zip 1.8" (number mark "U       dr.abhishek_ Jun 22  298/16429 " thread-indent "\"[oss-security] Re: Wordpress Plugin: FTP To Zip 1.8\"\n") "<CAN6thH4XYHF8EMR6RLtqVEU39WcCxK32Tv9AGXSdKKraO=+z8g@mail.gmail.com>" ("<CAN6thH4XYHF8EMR6RLtqVEU39WcCxK32Tv9AGXSdKKraO=+z8g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3254 invoked by uid 550); 22 Jun 2015 17:25:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25674 invoked from network); 22 Jun 2015 10:17:44 -0000
X-TMN: [mwuA9YUf5xllTgRvVC9BijIE+ml7NSG+]
X-Originating-Email: [dr.abhishek_ghosh@hotmail.com]
Message-ID: <BLU436-SMTP2332801710A346418F7192FC4A10@phx.gbl>
MIME-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
Content-Type: multipart/signed;
	boundary="Apple-Mail=_F85467BD-01B8-447B-8FA2-D717CC353CAF";
	protocol="application/pgp-signature"; micalg=pgp-sha512
X-Pgp-Agent: GPGMail 2.5
From: Abhishek Ghosh <dr.abhishek_ghosh@hotmail.com>
In-Reply-To: <CAN6thH4XYHF8EMR6RLtqVEU39WcCxK32Tv9AGXSdKKraO=+z8g@mail.gmail.com>
Date: Mon, 22 Jun 2015 15:46:54 +0530
CC: OSS Securty <oss-security@lists.openwall.com>,
 cve-assign@mitre.org
References: <CAN6thH4XYHF8EMR6RLtqVEU39WcCxK32Tv9AGXSdKKraO=+z8g@mail.gmail.com>
To: 0pc0deFR <0pc0defr@gmail.com>
X-Mailer: Apple Mail (2.2098)
X-OriginalArrivalTime: 22 Jun 2015 10:17:30.0996 (UTC) FILETIME=[A5E3D340:01D0ACD4]
Subject: [oss-security] Re: Wordpress Plugin: FTP To Zip 1.8

--Apple-Mail=_F85467BD-01B8-447B-8FA2-D717CC353CAF
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_2C98B338-DEC0-4623-B708-FFE56D3280A5"


--Apple-Mail=_2C98B338-DEC0-4623-B708-FFE56D3280A5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello,

I am the developer of the Plugin. The plugin's intended function is to crea=
te zip without any password prompt which OP in this public mail thinking as=
 flaw!

The person's report is baseless and proves the fact that he/she has not rea=
d the README file - http://plugins.svn.wordpress.org/ftp-to-zip/tags/1.8/re=
adme.txt <http://plugins.svn.wordpress.org/ftp-to-zip/tags/1.8/readme.txt> =
 Even if a new user installs the plugin WITHOUT reading the long descriptio=
n, the script of the plugin even if ran by a just an ordinary person, it wi=
ll only zip the wp-content directory. wp-content directory holds only theme=
s, plugins and uploads. wp-content directory is NOT intended for keeping pe=
rsonal data or sensitive data related to WordPress installation (with defau=
lt settings). WordPress configuration file holding the database details res=
ides one level up from wp-content directory. Usage direction is written in =
"Installation" part, which the person who created this public mail has not =
read. It is clearly written in the readme file :


This Plugin is intended for the advanced users - either block the downloada=
ble zip file via .htaccess or take an alternative measure.


In shared hosting environments, aPaaS and PaaS, in case of hack on an insta=
llation get hacked and ways are not great even to login and there is no com=
pression option is offered by the host; the user will have the capability t=
o take a faster file level backup of the whole FTP content and wget it from=
 different provider. The description clearly says the intention :


FTP to Zip takes browser based FTP backup of WordPress plus other folders.


It is not for keeping unsecured, it is clearly written :


This Plugin is intended for the advanced users - either block the downloada=
ble zip file via .htaccess or take an alternative measure.


The person has not manually checked the code :

http://plugins.svn.wordpress.org/ftp-to-zip/tags/1.8/backup.php <http://plu=
gins.svn.wordpress.org/ftp-to-zip/tags/1.8/backup.php>

http://plugins.svn.wordpress.org/ftp-to-zip/tags/1.8/run.php <http://plugin=
s.svn.wordpress.org/ftp-to-zip/tags/1.8/run.php>


These are normal PHP functions. There absolutely no security issue in the c=
ode themselves.
It holds true for all the WordPress Plugins - if there is any major flaw, r=
eporting to WordPress dot ORG or personally contacting the plugin developer=
 is always better.

Most importantly, if I discover a real security flaw, the first work is to =
preserve the secrecy still the bug is fixed. None of us open a public mail =
and describe the flaw. If it was a genuine security risk - the users would =
be targeted by some script kiddies.

In the same way, HyperDB needs manual installation, this is not for the ord=
inary users : https://wordpress.org/plugins/hyperdb/ <https://wordpress.org=
/plugins/hyperdb/>

wget =E2=80=94ing WordPress tar ball, uncompressing it also dangerous in on=
e sense. Quite practical fact - if the server admin wget WordPress here htt=
p://www.openwall.com/Owl/ <http://www.openwall.com/Owl/> and left it for pu=
blic, I can run the installer file with a database on HP Cloud!  Without pr=
ior contacting anyone shouting "Open CVE" can prove to be fatal for your fr=
eelancing. WordPress offers an official support forum for each plugin - htt=
ps://wordpress.org/support/plugin/ftp-to-zip <https://wordpress.org/support=
/plugin/ftp-to-zip>


Without stepwise prior works, OP's opening a public mail is appearing like =
as if WordPress Plugin curators are careless. Which is quite pathetic and n=
ot true.

If "automatic control" was required, I could put the PHP snippet inside any=
 one these example wordpress plugin https://github.com/Abhishek-Ghosh/Basic=
-WordPress-Plugin-Frameworks <https://github.com/Abhishek-Ghosh/Basic-WordP=
ress-Plugin-Frameworks> - what would demand login to WordPress to execute t=
he script. For that work, there are many plugins.

Even if someone keeps the plugin like OP without understanding, actually th=
e outsider will never know the credentials related to WordPress. From WordP=
ress, if serious security flaw is present, official email is sent. In extre=
me, they are removed. You are welcome to WordPress development, but kindly =
do not insult the core WordPress developers who are maintaining the plugin =
repository via another Free Software project. For Free Software projects we=
 do not need to use a Third Party Free Software project for reporting bug. =
At least read the lines :


The Plugin is fail proof and is powerful, but usage must be judicial.



Regards,

Dr. Abhishek Ghosh; M.S., PhD (PDT)

Contact website - https://thecustomizewindows.com/ <https://thecustomizewin=
dows.com/>

[ further public mails will not be answered ]


> On 21-Jun-2015, at 5:20 pm, 0pc0deFR <0pc0defr@gmail.com> wrote:
>=20
> Hello,
>=20
> The FTP To Zip 1.8 wordpress plugin is vulnerable to unauthenticated exec=
ution. With vulnerability, you can create a zip archive for Wordpress insta=
ll and you can download this archive (http://domain.tld/wp-content/plugins/=
ftp-to-zip/backup.php <http://domain.tld/wp-content/plugins/ftp-to-zip/back=
up.php>).
> A need CVE please.
>=20
> Download plugin: https://downloads.wordpress.org/plugin/ftp-to-zip.1.8.zip
>  <https://downloads.wordpress.org/plugin/ftp-to-zip.1.8.zip>
> --
> Cordialement,
>=20
> K=C3=A9vin FALCOZ alias 0pc0deFR - Consultant Expert WordPress - http://w=
ordpress-expertise.fr <http://wordpress-expertise.fr/>
>=20
> --
> Regards,
>=20
> K=C3=A9vin FALCOZ aka 0pc0deFR - WordPress Expert Consultant - http://wor=
dpress-expertise.fr <http://wordpress-expertise.fr/>


--Apple-Mail=_2C98B338-DEC0-4623-B708-FFE56D3280A5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; -webkit-line-break: after-white-space;" class=3D"">Hello,<div class=
=3D""><br class=3D""></div><div class=3D"">I am the developer of the Plugin=
.&nbsp;<b class=3D"">The plugin's intended function is to create zip withou=
t any password prompt which OP in this public mail thinking as flaw!&nbsp;<=
/b></div><div class=3D""><br class=3D""></div><div class=3D"">The person's =
report is baseless and proves the fact that he/she has not read the README =
file -&nbsp;<a href=3D"http://plugins.svn.wordpress.org/ftp-to-zip/tags/1.8=
/readme.txt" class=3D"">http://plugins.svn.wordpress.org/ftp-to-zip/tags/1.=
8/readme.txt</a>&nbsp; Even if a new user installs the plugin WITHOUT readi=
ng the long description, the script of the plugin even if ran by a just an =
ordinary person, it will only zip the wp-content directory. wp-content dire=
ctory holds only themes, plugins and uploads. wp-content directory is NOT i=
ntended for keeping personal data or sensitive data related to WordPress in=
stallation (with default settings). WordPress configuration file holding th=
e database details resides one level up from wp-content directory. Usage di=
rection is written in "Installation" part, which the person who created thi=
s public mail has not read. It is clearly written in the readme file :<div =
class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div c=
lass=3D""><b class=3D"">This Plugin is intended for the advanced users - ei=
ther block the downloadable zip file via .htaccess or take an alternative m=
easure.</b></div><div class=3D""><br class=3D""></div><div class=3D""><br c=
lass=3D""></div><div class=3D"">In shared hosting environments, aPaaS and P=
aaS, in case of hack on an installation get hacked and ways are not great e=
ven to login and there is no compression option is offered by the host; the=
 user will have the capability to take a faster file level backup of the wh=
ole FTP content and wget it from different provider. The description clearl=
y says the intention :</div><div class=3D""><br class=3D""></div><div class=
=3D""><b class=3D""><br class=3D""></b></div><div class=3D""><b class=3D"">=
FTP to Zip takes browser based FTP backup of WordPress plus other folders.<=
/b></div><div class=3D""><br class=3D""></div><div class=3D""><br class=3D"=
"></div><div class=3D"">It is not for keeping unsecured, it is clearly writ=
ten :</div><div class=3D""><br class=3D""></div><div class=3D""><br class=
=3D""></div><div class=3D""><b class=3D"">This Plugin is intended for the a=
dvanced users - either block the downloadable zip file via .htaccess or tak=
e an alternative measure.&nbsp;</b></div><div class=3D""><br class=3D""></d=
iv><div class=3D""><br class=3D""></div><div class=3D"">The person has not =
manually checked the code :</div><div class=3D""><br class=3D""></div><div =
class=3D""><a href=3D"http://plugins.svn.wordpress.org/ftp-to-zip/tags/1.8/=
backup.php" class=3D"">http://plugins.svn.wordpress.org/ftp-to-zip/tags/1.8=
/backup.php</a>&nbsp;</div><div class=3D""><br class=3D""></div><div class=
=3D""><a href=3D"http://plugins.svn.wordpress.org/ftp-to-zip/tags/1.8/run.p=
hp" class=3D"">http://plugins.svn.wordpress.org/ftp-to-zip/tags/1.8/run.php=
</a>&nbsp;</div><div class=3D""><br class=3D""></div><div class=3D""><br cl=
ass=3D""></div><div class=3D"">These are normal PHP functions. There absolu=
tely no security issue in the code themselves.&nbsp;</div><div class=3D"">I=
t holds true for all the WordPress Plugins - if there is any major flaw, re=
porting to WordPress dot ORG or personally contacting the plugin developer =
is always better.&nbsp;</div><div class=3D""><br class=3D""></div><div clas=
s=3D"">Most importantly, if I discover a real security flaw, the first work=
 is to preserve the secrecy still the bug is fixed. None of us open a publi=
c mail and describe the flaw. If it was a genuine security risk - the users=
 would be targeted by some script kiddies.&nbsp;</div><div class=3D""><br c=
lass=3D""></div><div class=3D"">In the same way, HyperDB needs manual insta=
llation, this is not for the ordinary users :&nbsp;<a href=3D"https://wordp=
ress.org/plugins/hyperdb/" class=3D"">https://wordpress.org/plugins/hyperdb=
/</a>&nbsp;</div><div class=3D""><br class=3D""></div><div class=3D"">wget =
=E2=80=94ing WordPress tar ball, uncompressing it also dangerous in one sen=
se. Quite practical fact - if the server admin wget WordPress here&nbsp;<a =
href=3D"http://www.openwall.com/Owl/" class=3D"">http://www.openwall.com/Ow=
l/</a>&nbsp;and left it for public, I can run the installer file with a dat=
abase on HP Cloud! &nbsp;Without prior contacting anyone shouting "Open CVE=
" can prove to be fatal for your freelancing. WordPress offers an official =
support forum for each plugin -&nbsp;<a href=3D"https://wordpress.org/suppo=
rt/plugin/ftp-to-zip" class=3D"">https://wordpress.org/support/plugin/ftp-t=
o-zip</a>&nbsp;</div><div class=3D""><br class=3D""></div><div class=3D""><=
br class=3D""></div><div class=3D"">Without stepwise prior works, OP's open=
ing a public mail is appearing like as if WordPress Plugin curators are car=
eless. Which is quite pathetic and not true.</div><div class=3D""><br class=
=3D""></div><div class=3D"">If "automatic control" was required, I could pu=
t the PHP snippet inside any one these example wordpress plugin&nbsp;<a hre=
f=3D"https://github.com/Abhishek-Ghosh/Basic-WordPress-Plugin-Frameworks" c=
lass=3D"">https://github.com/Abhishek-Ghosh/Basic-WordPress-Plugin-Framewor=
ks</a>&nbsp;- what would demand login to WordPress to execute the script. F=
or that work, there are many plugins.&nbsp;</div><div class=3D""><br class=
=3D""></div><div class=3D"">Even if someone keeps the plugin like OP withou=
t understanding, actually the outsider will never know the&nbsp;credentials=
 related to WordPress. From WordPress, if serious security flaw is present,=
 official email is sent. In extreme, they are removed. You are welcome to W=
ordPress development, but kindly do not insult the core WordPress developer=
s who are maintaining the plugin repository via another Free Software proje=
ct. For Free Software projects we do not need to use a Third Party Free Sof=
tware project for reporting bug. At least read the lines :</div><div class=
=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div class=
=3D""><b class=3D"">The Plugin is fail proof and is powerful, but usage mus=
t be judicial.</b></div><div class=3D""><br class=3D""></div><div class=3D"=
"><br class=3D""></div><div class=3D""><br class=3D""></div><div class=3D""=
>Regards,</div><div class=3D""><br class=3D""></div><div class=3D"">Dr. Abh=
ishek Ghosh; M.S., PhD (PDT)</div><div class=3D""><br class=3D""></div><div=
 class=3D"">Contact website -&nbsp;<a href=3D"https://thecustomizewindows.c=
om/" class=3D"">https://thecustomizewindows.com/</a>&nbsp;</div><div class=
=3D""><br class=3D""></div><div class=3D"">[ further public mails will not =
be answered ]</div><div class=3D""><br class=3D""></div><div class=3D""><br=
 class=3D""><div><blockquote type=3D"cite" class=3D""><div class=3D"">On 21=
-Jun-2015, at 5:20 pm, 0pc0deFR &lt;<a href=3D"mailto:0pc0defr@gmail.com" c=
lass=3D"">0pc0defr@gmail.com</a>&gt; wrote:</div><br class=3D"Apple-interch=
ange-newline"><div class=3D""><div dir=3D"ltr" class=3D""><div class=3D""><=
div class=3D""><div class=3D"">Hello,<br class=3D""><br class=3D""></div>Th=
e FTP To Zip 1.8 wordpress plugin is vulnerable to unauthenticated executio=
n. With vulnerability, you can create a zip archive for Wordpress install a=
nd you can download this archive (<a href=3D"http://domain.tld/wp-content/p=
lugins/ftp-to-zip/backup.php" class=3D"">http://domain.tld/wp-content/plugi=
ns/ftp-to-zip/backup.php</a>).<br class=3D""></div>A need CVE please.<br cl=
ass=3D""><br class=3D""></div>Download plugin: <a href=3D"https://downloads=
.wordpress.org/plugin/ftp-to-zip.1.8.zip" class=3D"">https://downloads.word=
press.org/plugin/ftp-to-zip.1.8.zip<br class=3D""></a><br class=3D""><div c=
lass=3D""><div class=3D""><div class=3D""><div class=3D""><div class=3D""><=
div class=3D"gmail_signature"><div dir=3D"ltr" class=3D""><div class=3D""><=
div dir=3D"ltr" class=3D""><div class=3D""><div class=3D""><div class=3D"">=
--<br class=3D"">Cordialement,<br class=3D""><br class=3D"">K=C3=A9vin FALC=
OZ alias 0pc0deFR - Consultant Expert WordPress - <a href=3D"http://wordpre=
ss-expertise.fr" target=3D"_blank" class=3D"">http://wordpress-expertise.fr=
</a><br class=3D""><br class=3D"">--<br class=3D""></div>Regards,<br class=
=3D""></div><br class=3D""></div>K=C3=A9vin FALCOZ aka 0pc0deFR - WordPress=
 Expert Consultant - <a href=3D"http://wordpress-expertise.fr/" target=3D"_=
blank" class=3D"">http://wordpress-expertise.fr</a><br class=3D""></div></d=
iv></div></div></div>
</div></div></div></div></div>
</div></blockquote></div><br class=3D""></div></div></body></html>=

--Apple-Mail=_2C98B338-DEC0-4623-B708-FFE56D3280A5--

--Apple-Mail=_F85467BD-01B8-447B-8FA2-D717CC353CAF
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="signature.asc"
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJVh+CzAAoJEB+cuQv6MGAL77QP/RSRwxJmsQq3WRJE61KV7RPL
1zfv857sX6YtGYltyWmLpkpA5aTfmUYbpE3WGgAMnCED1wltm4LP/x5nwcorg/TJ
TomXCVopWy1v2avfJqGkKaYhqi3gdM8bXqts0JoEQ3569gDA0DaEjM1LScNWRRDg
UuzSBvd7AphZlSL+ViihSW6brm+kC6YzI6631r3cAof8Uh768qffVmHaP0gf+TuI
SL0paNfChhjlgbXyy8/oEw8dAg87Nv5uGB38LmfOp/go7ucaSFnsd6/gx5WpAtRa
NSglpJzft+GmXqPLQWRTJYamrwpO6g1+uFm2Oo27X1Qat+HVW1BaMaTmcppdKk2T
1BbkUd+YMB/kbX8yrWWZx8vc//RzWAkSitXXf/oQH70hLYxWvMgMr8Il+1GEko0y
mODZuwDZExz8DbwT4LeGuym0SuagL8er1lGXAS6PoqCG41+MfNqaO+nehXvRse3a
uJTLgbteFmMUN7kIN3ef8s9DFU56a+r4/+BUYUD73CnHDmDyc0+G0pZPw4mAucVH
NsblPgcHBoo/40riDpyp/tnmJAoEauU3EqdjY20FA5UxWCoV3o1bg4uq51WNoMZX
qUAkhsTsCMricTW212bwENvXjSvvUioUc7lgtucUGPZ9+Xdzg3bzuB80/K64tHiu
Z7OClOJUTkUr+hLIV3in
=fFWp
-----END PGP SIGNATURE-----

--Apple-Mail=_F85467BD-01B8-447B-8FA2-D717CC353CAF--
