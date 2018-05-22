X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["22981" "Tuesday" "22" "May" "2018" "11:09:36" "-0700" "Andy LoPresto" "alopresto@apache.org" "<8DD0F0D5-D38D-4EF2-8B1A-3068B9E73DC6@apache.org>" "374" "[oss-security] [ANNOUNCE] CVE Announcement for Apache NiFi 1.0.0 - 1.5.0" nil nil nil "5" "2018052218:09:36" "[oss-security] [ANNOUNCE] CVE Announcement for Apache NiFi 1.0.0 - 1.5.0" (number mark "U       alopresto@ap May 22  374/22981 " thread-indent "\"[oss-security] [ANNOUNCE] CVE Announcement for Apache NiFi 1.0.0 - 1.5.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26027 invoked by uid 550); 22 May 2018 18:51:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13859 invoked from network); 22 May 2018 18:09:52 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:reply-to:subject:date:message-id:cc:to
         :mime-version;
        bh=/rJkVDKdPUNRCQx45yIlYnTjPjGjRA1aApT8fYCViI0=;
        b=WiovB4C3mPbzeEproe/BQZ5ZJM73egZyrUZbW4h63Dral+bNKM8/Z3UERVj5XIWejg
         ckfliN/4dWq2teXuMCVfhdeaA8uktdPenvY4tNRL0xSHbcPvEH48S6LPQDaSkPSYAVfF
         VbBANv9LmowWq/X0DnvyGmiONAPgfAP2zMgqLhiyVooF3ZYqJ3/69xxCCjHbt7JC6Il7
         +8retLYHpA95EIExK9HHlDVSnQ/iJsBuCEEe7SZUviJ9LN/eRiqYxzuIN8+skNOCgaPo
         7CnCBlWZi0RfRAll2ELpf08eDZiET/K/uNjrNYI8JeOWbXUbRIoeDUFWAE/X+dcMVtWw
         84Pw==
X-Gm-Message-State: ALKqPwcjRS7yfEoKfJf3Zv5MMl4A28ZlL0JZqO7wCZ/uIRNMQcttZE93
	l85P7HNZIBDs/Z5gHwIMB9c=
X-Google-Smtp-Source: AB8JxZqCgTjP5p6nX6TPl8hlbzJPt2ChppqFts3KBQMs33Tns0G1b4DZBRi/Hk+0D/p4vGGVgnXVww==
X-Received: by 2002:a63:b406:: with SMTP id s6-v6mr20483180pgf.334.1527012580659;
        Tue, 22 May 2018 11:09:40 -0700 (PDT)
From: Andy LoPresto <alopresto@apache.org>
Content-Type: multipart/signed; boundary="Apple-Mail=_7354CAA3-A299-4048-B996-A15512688059"; protocol="application/pgp-signature"; micalg=pgp-sha512
Date: Tue, 22 May 2018 11:09:36 -0700
Message-Id: <8DD0F0D5-D38D-4EF2-8B1A-3068B9E73DC6@apache.org>
Cc: security <security@apache.org>,
 security@nifi.apache.org,
 oss-security@lists.openwall.com
To: announce@apache.org,
 users@nifi.apache.org,
 dev@nifi.apache.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] [ANNOUNCE] CVE Announcement for Apache NiFi 1.0.0 - 1.5.0

--Apple-Mail=_7354CAA3-A299-4048-B996-A15512688059
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_7ABC43E0-2863-41D5-BBD3-F1CC76B9FEC7"


--Apple-Mail=_7ABC43E0-2863-41D5-BBD3-F1CC76B9FEC7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

The Apache NiFi PMC would like to announce the following CVE discoveries in=
 Apache NiFi 1.0.0 - 1.5.0. These issues were resolved with the release of =
NiFi 1.6.0 on April 8, 2018. NiFi is an easy to use, powerful, and reliable=
 system to process and distribute data. It supports powerful and scalable d=
irected graphs of data routing, transformation, and system mediation logic.=
 For more information, see https://nifi.apache.org/security.html <https://n=
ifi.apache.org/security.html>.

CVE-2018-1309 <https://nifi.apache.org/security.html#CVE-2018-1309>: Apache=
 NiFi External XML Entity issue in SplitXML processor

Severity: Moderate

Versions Affected:

Apache NiFi 0.1.0 - 1.5.0
Description: Malicious XML content could cause information disclosure or re=
mote code execution.

Mitigation: The fix to disable external general entity parsing and disallow=
 doctype declarations was applied on the Apache NiFi 1.6.0 release. Users r=
unning a prior 1.x release should upgrade to the appropriate release.

Credit: This issue was discovered by =E5=9C=86=E7=8F=A0=E7=AC=94.

CVE Link: Mitre Database: CVE-2018-1309 <https://cve.mitre.org/cgi-bin/cven=
ame.cgi?name=3DCVE-2018-1309>

CVE-2018-1310 <https://nifi.apache.org/security.html#CVE-2018-1310>: Apache=
 NiFi JMS Deserialization issue because of ActiveMQ client vulnerability

Severity: Moderate

Versions Affected:

Apache NiFi 0.1.0 - 1.5.0
Description: Malicious JMS content could cause denial of service. See Activ=
eMQ CVE-2015-5254 announcement <http://activemq.apache.org/security-advisor=
ies.data/CVE-2015-5254-announcement.txt> for more information.

Mitigation: The fix to upgrade the activemq-client library to 5.15.3 was ap=
plied on the Apache NiFi 1.6.0 release. Users running a prior 1.x release s=
hould upgrade to the appropriate release.

Credit: This issue was discovered by =E5=9C=86=E7=8F=A0=E7=AC=94.

CVE Link: Mitre Database: CVE-2018-1310 <https://cve.mitre.org/cgi-bin/cven=
ame.cgi?name=3DCVE-2018-1310>

CVE-2017-8028 <https://nifi.apache.org/security.html#CVE-2017-8028>: Apache=
 NiFi LDAP TLS issue because of Spring Security LDAP vulnerability

Severity: Severe

Versions Affected:

Apache NiFi 0.1.0 - 1.5.0
Description: Spring Security LDAP library was not enforcing credential auth=
entication after TLS handshake negotiation. See NVD CVE-2017-8028 disclosur=
e <https://nvd.nist.gov/vuln/detail/CVE-2017-8028> for more information.

Mitigation: The fix to upgrade the spring-ldap library to 2.3.2.RELEASE+ wa=
s applied on the Apache NiFi 1.6.0 release. Users running a prior 1.x relea=
se should upgrade to the appropriate release.

Credit: This issue was discovered by Matthew Elder.

CVE Link: Mitre Database: CVE-2017-8028 <https://cve.mitre.org/cgi-bin/cven=
ame.cgi?name=3DCVE-2017-8028>

CVE-2018-1324 <https://nifi.apache.org/security.html#CVE-2018-1324>: Apache=
 NiFi Denial of service issue because of commons-compress vulnerability

Severity: Low

Versions Affected:

Apache NiFi 0.1.0 - 1.5.0
Description: A vulnerability in the commons-compress library could cause de=
nial of service. See commons-compress CVE-2018-1324 announcement <https://c=
ommons.apache.org/proper/commons-compress/security-reports.html> for more i=
nformation.

Mitigation: The fix to upgrade the commons-compress library to 1.16.1 was a=
pplied on the Apache NiFi 1.6.0 release. Users running a prior 1.x release =
should upgrade to the appropriate release.

Credit: This issue was discovered by Joe Witt.

CVE Link: Mitre Database: CVE-2018-1324 <https://cve.mitre.org/cgi-bin/cven=
ame.cgi?name=3DCVE-2018-1324>


Andy LoPresto
alopresto@apache.org
alopresto.apache@gmail.com
PGP Fingerprint: 70EC B3E5 98A6 5A3F D3C4  BACE 3C6E F65B 2F7D EF69


--Apple-Mail=_7ABC43E0-2863-41D5-BBD3-F1CC76B9FEC7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; -webkit-line-break: after-white-space;" class=3D"">The Apache NiFi PM=
C would like to announce the following CVE discoveries in Apache NiFi 1.0.0=
 - 1.5.0. These issues were resolved with the release of NiFi 1.6.0 on Apri=
l 8, 2018. NiFi is an easy to use, powerful, and reliable system to process=
 and distribute data. It supports powerful and scalable directed graphs of =
data routing, transformation, and system mediation logic. For more informat=
ion, see&nbsp;<a href=3D"https://nifi.apache.org/security.html" class=3D"">=
https://nifi.apache.org/security.html</a>.&nbsp;<div class=3D""><br class=
=3D""></div><div class=3D""><div class=3D"row" style=3D"box-sizing: border-=
box; margin: 0px auto; padding: 0px; max-width: 62.5rem; width: 960px; colo=
r: rgb(34, 34, 34); font-family: 'Helvetica Neue', Helvetica, Roboto, Arial=
, sans-serif; font-size: 16px; font-variant-ligatures: normal; orphans: 2; =
widows: 2;"><div class=3D"columns large-12" style=3D"box-sizing: border-box=
; margin: 0px; padding: 0px 0.9375rem; width: 960px; float: left; position:=
 relative;"><p style=3D"box-sizing: border-box; margin: 0px 0px 1.25rem; pa=
dding: 0px; font-family: inherit; font-size: 1rem; line-height: 1.6; text-r=
endering: optimizelegibility;" class=3D""><a id=3D"CVE-2018-1309" href=3D"h=
ttps://nifi.apache.org/security.html#CVE-2018-1309" style=3D"box-sizing: bo=
rder-box; color: rgb(57, 104, 119); line-height: inherit; text-decoration: =
none; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.004=
) 1px 1px 1px;" class=3D""><strong style=3D"box-sizing: border-box; line-he=
ight: inherit;" class=3D"">CVE-2018-1309</strong></a>: Apache NiFi External=
 XML Entity issue in SplitXML processor</p><p style=3D"box-sizing: border-b=
ox; margin: 0px 0px 1.25rem; padding: 0px; font-family: inherit; font-size:=
 1rem; line-height: 1.6; text-rendering: optimizelegibility;" class=3D"">Se=
verity:&nbsp;<strong style=3D"box-sizing: border-box; line-height: inherit;=
" class=3D"">Moderate</strong></p><p style=3D"box-sizing: border-box; margi=
n: 0px 0px 1.25rem; padding: 0px; font-family: inherit; font-size: 1rem; li=
ne-height: 1.6; text-rendering: optimizelegibility;" class=3D"">Versions Af=
fected:</p><ul style=3D"box-sizing: border-box; margin: 0px 0px 1.25rem 2re=
m; padding: 0px; font-family: inherit; font-size: 1rem; line-height: 1.6; l=
ist-style-position: outside;" class=3D""><li style=3D"box-sizing: border-bo=
x; margin: 0px; padding: 0px;" class=3D"">Apache NiFi 0.1.0 - 1.5.0</li></u=
l><p style=3D"box-sizing: border-box; margin: 0px 0px 1.25rem; padding: 0px=
; font-family: inherit; font-size: 1rem; line-height: 1.6; text-rendering: =
optimizelegibility;" class=3D"">Description: Malicious XML content could ca=
use information disclosure or remote code execution.</p><p style=3D"box-siz=
ing: border-box; margin: 0px 0px 1.25rem; padding: 0px; font-family: inheri=
t; font-size: 1rem; line-height: 1.6; text-rendering: optimizelegibility;" =
class=3D"">Mitigation: The fix to disable external general entity parsing a=
nd disallow doctype declarations was applied on the Apache NiFi 1.6.0 relea=
se. Users running a prior 1.x release should upgrade to the appropriate rel=
ease.</p><p style=3D"box-sizing: border-box; margin: 0px 0px 1.25rem; paddi=
ng: 0px; font-family: inherit; font-size: 1rem; line-height: 1.6; text-rend=
ering: optimizelegibility;" class=3D"">Credit: This issue was discovered by=
 =E5=9C=86=E7=8F=A0=E7=AC=94.</p><p style=3D"box-sizing: border-box; margin=
: 0px 0px 1.25rem; padding: 0px; font-family: inherit; font-size: 1rem; lin=
e-height: 1.6; text-rendering: optimizelegibility;" class=3D"">CVE Link:&nb=
sp;<a href=3D"https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2018-130=
9" target=3D"_blank" style=3D"box-sizing: border-box; color: rgb(57, 104, 1=
19); line-height: inherit; text-decoration: none; -webkit-font-smoothing: a=
ntialiased; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px;" class=3D"">Mitr=
e Database: CVE-2018-1309</a></p><p style=3D"box-sizing: border-box; margin=
: 0px 0px 1.25rem; padding: 0px; font-family: inherit; font-size: 1rem; lin=
e-height: 1.6; text-rendering: optimizelegibility;" class=3D""><br class=3D=
""></p></div></div><div class=3D"row" style=3D"box-sizing: border-box; marg=
in: 0px auto; padding: 0px; max-width: 62.5rem; width: 960px; color: rgb(34=
, 34, 34); font-family: 'Helvetica Neue', Helvetica, Roboto, Arial, sans-se=
rif; font-size: 16px; font-variant-ligatures: normal; orphans: 2; widows: 2=
; background-color: rgb(240, 248, 255);"><div class=3D"columns large-12" st=
yle=3D"box-sizing: border-box; margin: 0px; padding: 0px 0.9375rem; width: =
960px; float: left; position: relative;"><p style=3D"box-sizing: border-box=
; margin: 0px 0px 1.25rem; padding: 0px; font-family: inherit; font-size: 1=
rem; line-height: 1.6; text-rendering: optimizelegibility;" class=3D""><a i=
d=3D"CVE-2018-1310" href=3D"https://nifi.apache.org/security.html#CVE-2018-=
1310" style=3D"box-sizing: border-box; color: rgb(57, 104, 119); line-heigh=
t: inherit; text-decoration: none; -webkit-font-smoothing: antialiased; tex=
t-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px;" class=3D""><strong style=3D"bo=
x-sizing: border-box; line-height: inherit;" class=3D"">CVE-2018-1310</stro=
ng></a>: Apache NiFi JMS Deserialization issue because of ActiveMQ client v=
ulnerability</p><p style=3D"box-sizing: border-box; margin: 0px 0px 1.25rem=
; padding: 0px; font-family: inherit; font-size: 1rem; line-height: 1.6; te=
xt-rendering: optimizelegibility;" class=3D"">Severity:&nbsp;<strong style=
=3D"box-sizing: border-box; line-height: inherit;" class=3D"">Moderate</str=
ong></p><p style=3D"box-sizing: border-box; margin: 0px 0px 1.25rem; paddin=
g: 0px; font-family: inherit; font-size: 1rem; line-height: 1.6; text-rende=
ring: optimizelegibility;" class=3D"">Versions Affected:</p><ul style=3D"bo=
x-sizing: border-box; margin: 0px 0px 1.25rem 2rem; padding: 0px; font-fami=
ly: inherit; font-size: 1rem; line-height: 1.6; list-style-position: outsid=
e;" class=3D""><li style=3D"box-sizing: border-box; margin: 0px; padding: 0=
px;" class=3D"">Apache NiFi 0.1.0 - 1.5.0</li></ul><p style=3D"box-sizing: =
border-box; margin: 0px 0px 1.25rem; padding: 0px; font-family: inherit; fo=
nt-size: 1rem; line-height: 1.6; text-rendering: optimizelegibility;" class=
=3D"">Description: Malicious JMS content could cause denial of service. See=
&nbsp;<a href=3D"http://activemq.apache.org/security-advisories.data/CVE-20=
15-5254-announcement.txt" target=3D"_blank" style=3D"box-sizing: border-box=
; color: rgb(57, 104, 119); line-height: inherit; text-decoration: none; -w=
ebkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.004) 1px 1p=
x 1px;" class=3D"">ActiveMQ CVE-2015-5254 announcement</a>&nbsp;for more in=
formation.</p><p style=3D"box-sizing: border-box; margin: 0px 0px 1.25rem; =
padding: 0px; font-family: inherit; font-size: 1rem; line-height: 1.6; text=
-rendering: optimizelegibility;" class=3D"">Mitigation: The fix to upgrade =
the activemq-client library to 5.15.3 was applied on the Apache NiFi 1.6.0 =
release. Users running a prior 1.x release should upgrade to the appropriat=
e release.</p><p style=3D"box-sizing: border-box; margin: 0px 0px 1.25rem; =
padding: 0px; font-family: inherit; font-size: 1rem; line-height: 1.6; text=
-rendering: optimizelegibility;" class=3D"">Credit: This issue was discover=
ed by =E5=9C=86=E7=8F=A0=E7=AC=94.</p><p style=3D"box-sizing: border-box; m=
argin: 0px 0px 1.25rem; padding: 0px; font-family: inherit; font-size: 1rem=
; line-height: 1.6; text-rendering: optimizelegibility;" class=3D"">CVE Lin=
k:&nbsp;<a href=3D"https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-201=
8-1310" target=3D"_blank" style=3D"box-sizing: border-box; color: rgb(57, 1=
04, 119); line-height: inherit; text-decoration: none; -webkit-font-smoothi=
ng: antialiased; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px;" class=3D""=
>Mitre Database: CVE-2018-1310</a></p><p style=3D"box-sizing: border-box; m=
argin: 0px 0px 1.25rem; padding: 0px; font-family: inherit; font-size: 1rem=
; line-height: 1.6; text-rendering: optimizelegibility;" class=3D""><br cla=
ss=3D""></p></div></div><div class=3D"row" style=3D"box-sizing: border-box;=
 margin: 0px auto; padding: 0px; max-width: 62.5rem; width: 960px; color: r=
gb(34, 34, 34); font-family: 'Helvetica Neue', Helvetica, Roboto, Arial, sa=
ns-serif; font-size: 16px; font-variant-ligatures: normal; orphans: 2; wido=
ws: 2;"><div class=3D"columns large-12" style=3D"box-sizing: border-box; ma=
rgin: 0px; padding: 0px 0.9375rem; width: 960px; float: left; position: rel=
ative;"><p style=3D"box-sizing: border-box; margin: 0px 0px 1.25rem; paddin=
g: 0px; font-family: inherit; font-size: 1rem; line-height: 1.6; text-rende=
ring: optimizelegibility;" class=3D""><a id=3D"CVE-2017-8028" href=3D"https=
://nifi.apache.org/security.html#CVE-2017-8028" style=3D"box-sizing: border=
-box; color: rgb(57, 104, 119); line-height: inherit; text-decoration: none=
; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.004) 1p=
x 1px 1px;" class=3D""><strong style=3D"box-sizing: border-box; line-height=
: inherit;" class=3D"">CVE-2017-8028</strong></a>: Apache NiFi LDAP TLS iss=
ue because of Spring Security LDAP vulnerability</p><p style=3D"box-sizing:=
 border-box; margin: 0px 0px 1.25rem; padding: 0px; font-family: inherit; f=
ont-size: 1rem; line-height: 1.6; text-rendering: optimizelegibility;" clas=
s=3D"">Severity:&nbsp;<strong style=3D"box-sizing: border-box; line-height:=
 inherit;" class=3D"">Severe</strong></p><p style=3D"box-sizing: border-box=
; margin: 0px 0px 1.25rem; padding: 0px; font-family: inherit; font-size: 1=
rem; line-height: 1.6; text-rendering: optimizelegibility;" class=3D"">Vers=
ions Affected:</p><ul style=3D"box-sizing: border-box; margin: 0px 0px 1.25=
rem 2rem; padding: 0px; font-family: inherit; font-size: 1rem; line-height:=
 1.6; list-style-position: outside;" class=3D""><li style=3D"box-sizing: bo=
rder-box; margin: 0px; padding: 0px;" class=3D"">Apache NiFi 0.1.0 - 1.5.0<=
/li></ul><p style=3D"box-sizing: border-box; margin: 0px 0px 1.25rem; paddi=
ng: 0px; font-family: inherit; font-size: 1rem; line-height: 1.6; text-rend=
ering: optimizelegibility;" class=3D"">Description: Spring Security LDAP li=
brary was not enforcing credential authentication after TLS handshake negot=
iation. See&nbsp;<a href=3D"https://nvd.nist.gov/vuln/detail/CVE-2017-8028"=
 target=3D"_blank" style=3D"box-sizing: border-box; color: rgb(57, 104, 119=
); line-height: inherit; text-decoration: none; -webkit-font-smoothing: ant=
ialiased; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px;" class=3D"">NVD CV=
E-2017-8028 disclosure</a>&nbsp;for more information.</p><p style=3D"box-si=
zing: border-box; margin: 0px 0px 1.25rem; padding: 0px; font-family: inher=
it; font-size: 1rem; line-height: 1.6; text-rendering: optimizelegibility;"=
 class=3D"">Mitigation: The fix to upgrade the spring-ldap library to 2.3.2=
.RELEASE+ was applied on the Apache NiFi 1.6.0 release. Users running a pri=
or 1.x release should upgrade to the appropriate release.</p><p style=3D"bo=
x-sizing: border-box; margin: 0px 0px 1.25rem; padding: 0px; font-family: i=
nherit; font-size: 1rem; line-height: 1.6; text-rendering: optimizelegibili=
ty;" class=3D"">Credit: This issue was discovered by Matthew Elder.</p><p s=
tyle=3D"box-sizing: border-box; margin: 0px 0px 1.25rem; padding: 0px; font=
-family: inherit; font-size: 1rem; line-height: 1.6; text-rendering: optimi=
zelegibility;" class=3D"">CVE Link:&nbsp;<a href=3D"https://cve.mitre.org/c=
gi-bin/cvename.cgi?name=3DCVE-2017-8028" target=3D"_blank" style=3D"box-siz=
ing: border-box; color: rgb(57, 104, 119); line-height: inherit; text-decor=
ation: none; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0=
, 0.004) 1px 1px 1px;" class=3D"">Mitre Database: CVE-2017-8028</a></p><p s=
tyle=3D"box-sizing: border-box; margin: 0px 0px 1.25rem; padding: 0px; font=
-family: inherit; font-size: 1rem; line-height: 1.6; text-rendering: optimi=
zelegibility;" class=3D""><br class=3D""></p></div></div><div class=3D"row"=
 style=3D"box-sizing: border-box; margin: 0px auto; padding: 0px; max-width=
: 62.5rem; width: 960px; color: rgb(34, 34, 34); font-family: 'Helvetica Ne=
ue', Helvetica, Roboto, Arial, sans-serif; font-size: 16px; font-variant-li=
gatures: normal; orphans: 2; widows: 2; background-color: rgb(240, 248, 255=
);"><div class=3D"columns large-12" style=3D"box-sizing: border-box; margin=
: 0px; padding: 0px 0.9375rem; width: 960px; float: left; position: relativ=
e;"><p style=3D"box-sizing: border-box; margin: 0px 0px 1.25rem; padding: 0=
px; font-family: inherit; font-size: 1rem; line-height: 1.6; text-rendering=
: optimizelegibility;" class=3D""><a id=3D"CVE-2018-1324" href=3D"https://n=
ifi.apache.org/security.html#CVE-2018-1324" style=3D"box-sizing: border-box=
; color: rgb(57, 104, 119); line-height: inherit; text-decoration: none; -w=
ebkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.004) 1px 1p=
x 1px;" class=3D""><strong style=3D"box-sizing: border-box; line-height: in=
herit;" class=3D"">CVE-2018-1324</strong></a>: Apache NiFi Denial of servic=
e issue because of commons-compress vulnerability</p><p style=3D"box-sizing=
: border-box; margin: 0px 0px 1.25rem; padding: 0px; font-family: inherit; =
font-size: 1rem; line-height: 1.6; text-rendering: optimizelegibility;" cla=
ss=3D"">Severity:&nbsp;<strong style=3D"box-sizing: border-box; line-height=
: inherit;" class=3D"">Low</strong></p><p style=3D"box-sizing: border-box; =
margin: 0px 0px 1.25rem; padding: 0px; font-family: inherit; font-size: 1re=
m; line-height: 1.6; text-rendering: optimizelegibility;" class=3D"">Versio=
ns Affected:</p><ul style=3D"box-sizing: border-box; margin: 0px 0px 1.25re=
m 2rem; padding: 0px; font-family: inherit; font-size: 1rem; line-height: 1=
.6; list-style-position: outside;" class=3D""><li style=3D"box-sizing: bord=
er-box; margin: 0px; padding: 0px;" class=3D"">Apache NiFi 0.1.0 - 1.5.0</l=
i></ul><p style=3D"box-sizing: border-box; margin: 0px 0px 1.25rem; padding=
: 0px; font-family: inherit; font-size: 1rem; line-height: 1.6; text-render=
ing: optimizelegibility;" class=3D"">Description: A vulnerability in the co=
mmons-compress library could cause denial of service. See&nbsp;<a href=3D"h=
ttps://commons.apache.org/proper/commons-compress/security-reports.html" ta=
rget=3D"_blank" style=3D"box-sizing: border-box; color: rgb(57, 104, 119); =
line-height: inherit; text-decoration: none; -webkit-font-smoothing: antial=
iased; text-shadow: rgba(0, 0, 0, 0.004) 1px 1px 1px;" class=3D"">commons-c=
ompress CVE-2018-1324 announcement</a>&nbsp;for more information.</p><p sty=
le=3D"box-sizing: border-box; margin: 0px 0px 1.25rem; padding: 0px; font-f=
amily: inherit; font-size: 1rem; line-height: 1.6; text-rendering: optimize=
legibility;" class=3D"">Mitigation: The fix to upgrade the commons-compress=
 library to 1.16.1 was applied on the Apache NiFi 1.6.0 release. Users runn=
ing a prior 1.x release should upgrade to the appropriate release.</p><p st=
yle=3D"box-sizing: border-box; margin: 0px 0px 1.25rem; padding: 0px; font-=
family: inherit; font-size: 1rem; line-height: 1.6; text-rendering: optimiz=
elegibility;" class=3D"">Credit: This issue was discovered by Joe Witt.</p>=
<p style=3D"box-sizing: border-box; margin: 0px 0px 1.25rem; padding: 0px; =
font-family: inherit; font-size: 1rem; line-height: 1.6; text-rendering: op=
timizelegibility;" class=3D"">CVE Link:&nbsp;<a href=3D"https://cve.mitre.o=
rg/cgi-bin/cvename.cgi?name=3DCVE-2018-1324" target=3D"_blank" style=3D"box=
-sizing: border-box; color: rgb(57, 104, 119); line-height: inherit; text-d=
ecoration: none; -webkit-font-smoothing: antialiased; text-shadow: rgba(0, =
0, 0, 0.004) 1px 1px 1px;" class=3D"">Mitre Database: CVE-2018-1324</a></p>=
<p style=3D"box-sizing: border-box; margin: 0px 0px 1.25rem; padding: 0px; =
font-family: inherit; font-size: 1rem; line-height: 1.6; text-rendering: op=
timizelegibility;" class=3D""><br class=3D""></p></div></div></div><div cla=
ss=3D""><br class=3D""><div class=3D"">
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

--Apple-Mail=_7ABC43E0-2863-41D5-BBD3-F1CC76B9FEC7--

--Apple-Mail=_7354CAA3-A299-4048-B996-A15512688059
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEcOyz5ZimWj/TxLrOPG72Wy9972kFAlsEXOAACgkQPG72Wy99
72lf9A//XktJgD0d6kEJcMUofi/6svqgg9I72uBaKqYwKD3Fb37Kz/n8iCYHQtrM
ZacLZ0TM227VuYqgR0Lj/C7EGsVyo+7Uck9PL55mpYknJBa4VbgfiJCY1CFP0Sbs
8zlsISck7CIQ9bQnvgs/6t188Kg/FUfi5HujZFuNv5/+3uT9DQLGUcJz0InMHhS+
PAtneczKxH01OJ1mz+E6cXFtKcouD3W/JeqTzRf4G6WUcnJYeUx58KYYOUXD0aBO
gbcepH9yHpzyMm+dDQ80vWwwGG7kbSvNHtYWcvvRslSRyyz1YVPSWiQnwWogiL77
H7BFlL36l2+mtC3bb7gfIAvU6Y7SuNq1TlAkq3pk/eltOMcnmrhyRqXIfcbYemVe
i2589PYmX13YdFlKQVwPdi9eQkVBZEPrmocky5IHklkPGBm7XAnIVMKc9g95CYzf
rcGKyeTg8MXiDY53VCqomQSjE8H48e7ijf/LC9YguFE0InuljF0o4BrnH9AZuWKi
LTxUtdlWg1y3GaeGKU10ln3DSWAR6SOxQHKgPCKfpCMFhnWkwRAeshMv+Jqxc/lP
Cn82eUqRJzXA7RmVtpbqxPY7tH6TGhi8b3SNeS7zOug4CyuDuaVHwmpCirDeAzGp
ycQ2GLmX0FSzkHOJx68vKbVcmf6/Y2o6mMpmlbFHGyLNUoEZPDQ=
=JTBL
-----END PGP SIGNATURE-----

--Apple-Mail=_7354CAA3-A299-4048-B996-A15512688059--
