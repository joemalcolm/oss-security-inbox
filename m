X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["12651" "Tuesday" "23" "January" "2018" "11:39:32" "-0800" "Andy LoPresto" "alopresto@apache.org" "<5E61C789-3F39-47CC-9E4C-A28978BDD3F4@apache.org>" "224" "[oss-security] [ANNOUNCE] CVE fixes in Apache NiFi 1.5.0" nil nil nil "1" "2018012319:39:32" "[oss-security] [ANNOUNCE] CVE fixes in Apache NiFi 1.5.0" (number mark "U       alopresto@ap Jan 23  224/12651 " thread-indent "\"[oss-security] [ANNOUNCE] CVE fixes in Apache NiFi 1.5.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31863 invoked by uid 550); 23 Jan 2018 20:05:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9402 invoked from network); 23 Jan 2018 19:39:49 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:reply-to:subject:date:message-id:cc:to
         :mime-version;
        bh=jrYKQVZncJbNw0qc0JkqjjzNsqha02dL8XRKYHHW3Jg=;
        b=YNsadYkn2aJArTeIFl3gpod89gR4JRyy6riVUAdKWTWmVLSbbCaG9yRR4/u8/j/+9x
         GhqefHum6QTPuew1gDj0Ya06Aougu/vtsNofGb6KIQBzFGA/ol2mBTHqyMCNmsvBxtSZ
         id1Mzgd/PzCsN5p84osluhlSfguUaSspG23O5K2m4ItcshF2zQxUBoltsejZYBMWRpz8
         GSGo0zA1hxIBkDlXaSG2TB1mujErLyM0/gMBG184i+jUv8uynNQJIoT1ojWYoP6gxn8z
         Af1U+5E3ilet6duQoHt2XOMoTk8f5zI6KmsXThoSsAHnYIeHuNa7A7C4yOZrNNc27Rcr
         aHVw==
X-Gm-Message-State: AKwxytdimeQslC57HXeRvYCnIEpJrhpQawtHSD6s/6BMbb/Khjb0Gxlm
	0XgNbztzl1yo+50A8N7cHC8egk+l
X-Google-Smtp-Source: AH8x227kj4dUN6hyB8eoMJLJF6urtsUaWogMzuljiKfbKSfyvj8/cwh4eae6ZtCLp8PFfz3qu889IA==
X-Received: by 2002:a17:902:b596:: with SMTP id a22-v6mr6090322pls.60.1516736377436;
        Tue, 23 Jan 2018 11:39:37 -0800 (PST)
From: Andy LoPresto <alopresto@apache.org>
Content-Type: multipart/signed; boundary="Apple-Mail=_90F0B068-A458-4FAF-83A4-0A6E3E2C8A42"; protocol="application/pgp-signature"; micalg=pgp-sha512
Date: Tue, 23 Jan 2018 11:39:32 -0800
Message-Id: <5E61C789-3F39-47CC-9E4C-A28978BDD3F4@apache.org>
Cc: dev@nifi.apache.org,
 users@nifi.apache.org,
 oss-security@lists.openwall.com
To: security@nifi.apache.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] [ANNOUNCE] CVE fixes in Apache NiFi 1.5.0

--Apple-Mail=_90F0B068-A458-4FAF-83A4-0A6E3E2C8A42
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_F74BB442-71A8-4945-A428-33DA78B76474"


--Apple-Mail=_F74BB442-71A8-4945-A428-33DA78B76474
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

The Apache NiFi PMC would like to announce the following CVE discoveries an=
d resolutions in Apache NiFi 1.5.0, released January 12, 2018. NiFi is an e=
asy to use, powerful, and reliable system to process and distribute data. I=
t supports powerful and scalable directed graphs of data routing, transform=
ation, and system mediation logic. For more information, see https://nifi.a=
pache.org/security.html <https://nifi.apache.org/security.html>.

CVE-2017-12632 <https://nifi.apache.org/security.html#CVE-2017-12632>: Apac=
he NiFi host header poisoning issue

Severity: Medium

Versions Affected:

Apache NiFi 0.1.0 - 1.4.0

Description: A malicious host header in an incoming HTTP request could caus=
e NiFi to load resources from an external server.

Mitigation: The fix to sanitize host headers and compare to a controlled wh=
itelist was applied on the Apache NiFi 1.5.0 release. Users running a prior=
 1.x release should upgrade to the appropriate release.

Credit: This issue was discovered by Mike Cole.

Released: January 12, 2018

CVE-2017-15697 <https://nifi.apache.org/security.html#CVE-2017-15697>: Apac=
he NiFi XSS issue in context path handling

Severity: Medium

Versions Affected:

Apache NiFi 1.0.0 - 1.4.0

Description: A malicious X-ProxyContextPath or X-Forwarded-Context header c=
ontaining external resources or embedded code could cause remote code execu=
tion.

Mitigation: The fix to properly handle these headers was applied on the Apa=
che NiFi 1.5.0 release. Users running a prior 1.x release should upgrade to=
 the appropriate release.

Credit: This issue was discovered by Andy LoPresto.

Released: January 12, 2018




Andy LoPresto
alopresto@apache.org
alopresto.apache@gmail.com
PGP Fingerprint: 70EC B3E5 98A6 5A3F D3C4  BACE 3C6E F65B 2F7D EF69


--Apple-Mail=_F74BB442-71A8-4945-A428-33DA78B76474
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dus-ascii"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode=
: space; -webkit-line-break: after-white-space;" class=3D"">The Apache NiFi=
 PMC would like to announce the following CVE discoveries and resolutions i=
n Apache NiFi 1.5.0, released January 12, 2018. NiFi is an easy to use, pow=
erful, and reliable system to process and distribute data. It supports powe=
rful and scalable directed graphs of data routing, transformation, and syst=
em mediation logic. For more information, see&nbsp;<a href=3D"https://nifi.=
apache.org/security.html" class=3D"">https://nifi.apache.org/security.html<=
/a>.&nbsp;<div class=3D""><br class=3D""></div><div class=3D""><div class=
=3D"row" style=3D"box-sizing: border-box; margin: 0px auto; padding: 0px; m=
ax-width: 62.5rem; width: 1000px; color: rgb(34, 34, 34); font-family: 'Hel=
vetica Neue', Helvetica, Roboto, Arial, sans-serif; font-size: 16px; font-v=
ariant-ligatures: normal; orphans: 2; widows: 2;"><div class=3D"columns lar=
ge-12" style=3D"box-sizing: border-box; margin: 0px; padding: 0px 0.9375rem=
; width: 1000px; float: left; position: relative;"><p style=3D"box-sizing: =
border-box; margin: 0px 0px 1.25rem; padding: 0px; font-family: inherit; fo=
nt-size: 1rem; line-height: 1.6; text-rendering: optimizelegibility;" class=
=3D""><a id=3D"CVE-2017-12632" href=3D"https://nifi.apache.org/security.htm=
l#CVE-2017-12632" style=3D"box-sizing: border-box; color: rgb(57, 104, 119)=
; line-height: inherit; text-decoration: none; -webkit-font-smoothing: anti=
aliased; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px;" class=3D""><strong=
 style=3D"box-sizing: border-box; line-height: inherit;" class=3D"">CVE-201=
7-12632</strong></a>: Apache NiFi host header poisoning issue</p><p style=
=3D"box-sizing: border-box; margin: 0px 0px 1.25rem; padding: 0px; font-fam=
ily: inherit; font-size: 1rem; line-height: 1.6; text-rendering: optimizele=
gibility;" class=3D"">Severity:&nbsp;<strong style=3D"box-sizing: border-bo=
x; line-height: inherit;" class=3D"">Medium</strong></p><p style=3D"box-siz=
ing: border-box; margin: 0px 0px 1.25rem; padding: 0px; font-family: inheri=
t; font-size: 1rem; line-height: 1.6; text-rendering: optimizelegibility;" =
class=3D"">Versions Affected:</p><ul style=3D"box-sizing: border-box; margi=
n: 0px 0px 1.25rem 2rem; padding: 0px; font-family: inherit; font-size: 1re=
m; line-height: 1.6; list-style-position: outside;" class=3D""><li style=3D=
"box-sizing: border-box; margin: 0px; padding: 0px;" class=3D"">Apache NiFi=
 0.1.0 - 1.4.0</li></ul><div style=3D"box-sizing: border-box; margin: 0px 0=
px 1.25rem; padding: 0px; font-family: inherit; font-size: 1rem; line-heigh=
t: 1.6; text-rendering: optimizelegibility;" class=3D""><br class=3D"webkit=
-block-placeholder"></div><p style=3D"box-sizing: border-box; margin: 0px 0=
px 1.25rem; padding: 0px; font-family: inherit; font-size: 1rem; line-heigh=
t: 1.6; text-rendering: optimizelegibility;" class=3D"">Description: A mali=
cious host header in an incoming HTTP request could cause NiFi to load reso=
urces from an external server.</p><p style=3D"box-sizing: border-box; margi=
n: 0px 0px 1.25rem; padding: 0px; font-family: inherit; font-size: 1rem; li=
ne-height: 1.6; text-rendering: optimizelegibility;" class=3D"">Mitigation:=
 The fix to sanitize host headers and compare to a controlled whitelist was=
 applied on the Apache NiFi 1.5.0 release. Users running a prior 1.x releas=
e should upgrade to the appropriate release.</p><p style=3D"box-sizing: bor=
der-box; margin: 0px 0px 1.25rem; padding: 0px; font-family: inherit; font-=
size: 1rem; line-height: 1.6; text-rendering: optimizelegibility;" class=3D=
"">Credit: This issue was discovered by Mike Cole.</p><p style=3D"box-sizin=
g: border-box; margin: 0px 0px 1.25rem; padding: 0px; font-family: inherit;=
 font-size: 1rem; line-height: 1.6; text-rendering: optimizelegibility;" cl=
ass=3D"">Released: January 12, 2018</p></div></div><div class=3D"row" style=
=3D"box-sizing: border-box; margin: 0px auto; padding: 0px; max-width: 62.5=
rem; width: 1000px; color: rgb(34, 34, 34); font-family: 'Helvetica Neue', =
Helvetica, Roboto, Arial, sans-serif; font-size: 16px; font-variant-ligatur=
es: normal; orphans: 2; widows: 2;"><div class=3D"columns large-12" style=
=3D"box-sizing: border-box; margin: 0px; padding: 0px 0.9375rem; width: 100=
0px; float: left; position: relative;"><p style=3D"box-sizing: border-box; =
margin: 0px 0px 1.25rem; padding: 0px; font-family: inherit; font-size: 1re=
m; line-height: 1.6; text-rendering: optimizelegibility;" class=3D""><a id=
=3D"CVE-2017-15697" href=3D"https://nifi.apache.org/security.html#CVE-2017-=
15697" style=3D"box-sizing: border-box; color: rgb(57, 104, 119); line-heig=
ht: inherit; text-decoration: none; -webkit-font-smoothing: antialiased; te=
xt-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px;" class=3D""><strong style=3D"b=
ox-sizing: border-box; line-height: inherit;" class=3D"">CVE-2017-15697</st=
rong></a>: Apache NiFi XSS issue in context path handling</p><p style=3D"bo=
x-sizing: border-box; margin: 0px 0px 1.25rem; padding: 0px; font-family: i=
nherit; font-size: 1rem; line-height: 1.6; text-rendering: optimizelegibili=
ty;" class=3D"">Severity:&nbsp;<strong style=3D"box-sizing: border-box; lin=
e-height: inherit;" class=3D"">Medium</strong></p><p style=3D"box-sizing: b=
order-box; margin: 0px 0px 1.25rem; padding: 0px; font-family: inherit; fon=
t-size: 1rem; line-height: 1.6; text-rendering: optimizelegibility;" class=
=3D"">Versions Affected:</p><ul style=3D"box-sizing: border-box; margin: 0p=
x 0px 1.25rem 2rem; padding: 0px; font-family: inherit; font-size: 1rem; li=
ne-height: 1.6; list-style-position: outside;" class=3D""><li style=3D"box-=
sizing: border-box; margin: 0px; padding: 0px;" class=3D"">Apache NiFi 1.0.=
0 - 1.4.0</li></ul><div style=3D"box-sizing: border-box; margin: 0px 0px 1.=
25rem; padding: 0px; font-family: inherit; font-size: 1rem; line-height: 1.=
6; text-rendering: optimizelegibility;" class=3D""><br class=3D"webkit-bloc=
k-placeholder"></div><p style=3D"box-sizing: border-box; margin: 0px 0px 1.=
25rem; padding: 0px; font-family: inherit; font-size: 1rem; line-height: 1.=
6; text-rendering: optimizelegibility;" class=3D"">Description: A malicious=
&nbsp;<code style=3D"box-sizing: border-box; background-color: rgb(248, 248=
, 248); border: 0px solid rgb(223, 223, 223); color: rgb(51, 51, 51); font-=
family: Consolas, 'Liberation Mono', Courier, monospace; padding: 0.125rem =
0.3125rem 0.0625rem;" class=3D"">X-ProxyContextPath</code>&nbsp;or&nbsp;<co=
de style=3D"box-sizing: border-box; background-color: rgb(248, 248, 248); b=
order: 0px solid rgb(223, 223, 223); color: rgb(51, 51, 51); font-family: C=
onsolas, 'Liberation Mono', Courier, monospace; padding: 0.125rem 0.3125rem=
 0.0625rem;" class=3D"">X-Forwarded-Context</code>&nbsp;header containing e=
xternal resources or embedded code could cause remote code execution.</p><p=
 style=3D"box-sizing: border-box; margin: 0px 0px 1.25rem; padding: 0px; fo=
nt-family: inherit; font-size: 1rem; line-height: 1.6; text-rendering: opti=
mizelegibility;" class=3D"">Mitigation: The fix to properly handle these he=
aders was applied on the Apache NiFi 1.5.0 release. Users running a prior 1=
.x release should upgrade to the appropriate release.</p><p style=3D"box-si=
zing: border-box; margin: 0px 0px 1.25rem; padding: 0px; font-family: inher=
it; font-size: 1rem; line-height: 1.6; text-rendering: optimizelegibility;"=
 class=3D"">Credit: This issue was discovered by Andy LoPresto.</p><p style=
=3D"box-sizing: border-box; margin: 0px 0px 1.25rem; padding: 0px; font-fam=
ily: inherit; font-size: 1rem; line-height: 1.6; text-rendering: optimizele=
gibility;" class=3D"">Released: January 12, 2018</p></div></div></div><div =
class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div c=
lass=3D""><br class=3D""><div class=3D"">
<div style=3D"letter-spacing: normal; orphans: auto; text-align: start; tex=
t-indent: 0px; text-transform: none; white-space: normal; widows: auto; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: break-word; -web=
kit-nbsp-mode: space; -webkit-line-break: after-white-space;" class=3D""><d=
iv style=3D"letter-spacing: normal; orphans: auto; text-align: start; text-=
indent: 0px; text-transform: none; white-space: normal; widows: auto; word-=
spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: break-word; -webki=
t-nbsp-mode: space; -webkit-line-break: after-white-space;" class=3D""><div=
 style=3D"color: rgb(0, 0, 0);" class=3D"">Andy LoPresto</div><div style=3D=
"color: rgb(0, 0, 0);" class=3D""><a href=3D"mailto:alopresto@apache.org" c=
lass=3D"">alopresto@apache.org</a></div><div class=3D""><i class=3D""><font=
 color=3D"#c0c0c0" class=3D""><a href=3D"mailto:alopresto.apache@gmail.com"=
 class=3D"">alopresto.apache@gmail.com</a></font></i></div><div style=3D"co=
lor: rgb(0, 0, 0);" class=3D"">PGP Fingerprint:&nbsp;70EC B3E5 98A6 5A3F D3=
C4 &nbsp;BACE 3C6E F65B 2F7D EF69</div></div></div>
</div>
<br class=3D""></div></body></html>=

--Apple-Mail=_F74BB442-71A8-4945-A428-33DA78B76474--

--Apple-Mail=_90F0B068-A458-4FAF-83A4-0A6E3E2C8A42
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJaZ492AAoJEDxu9lsvfe9pANsP/0giQfgzE6o62VtEsGIsEj1s
orkd/cIwik0q8S5FSURqC/R8bCpBVXrsBRba03Bv3q/eoWYAee1yTOj9+cOyhcAe
naDIOK5lC7Dcak13MX79pAzwMOHYoDiB2dosKPYKMh/6QvTV6NWy9VxixF/eCY9m
NDwhb5zQHh/1NDgNN9Qt/KSvsp1+MqwoYe09x5Z1EFEFPPtIehRQmDfQbmeJIsnz
ZtwNcoX2jTlcwzDhWzLeNCHAunv3qyHvVvFZQhJjcEyjH6+z6P8uNdm2noaGmt4J
hkiPCo+zx5zk+oZpxwo7Z/jq6iAKi0mk8xFpcEY+34RS6blI9qtmhF+JlPpDLlHS
EtVxQGpiOM/AllUtqlm0XRtlrOQPAbgvWHQCNdl4m5aGF5QUh/9sA/SvcJzcq9UH
eul1DoficYbz5EvXtlBgT0pYVLfdYtgQG0CdFXA7N9EawjvB7d+yHTm9kUdDUnsZ
dOMNjX31s86sjNzs+1NFMQDYjagMxEYSqBSHM4NkFKT6+akD6WdLKZ93yv6e8PAV
zwh/hWrCPaFbaVqflM6tDIIRL/0jjKd9HTf/auaeZvenmLGmueig+nltFSs14FTD
YpwVyqPnLoFH4o4oDw78uV7RAto+VO3bBQCEQCuYQpe3v1lfFqOsPVrw5tcc4bIV
N8TSIpPFy5N8TdBrMM8N
=jgEP
-----END PGP SIGNATURE-----

--Apple-Mail=_90F0B068-A458-4FAF-83A4-0A6E3E2C8A42--
