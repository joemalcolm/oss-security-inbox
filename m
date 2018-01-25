X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9412" "Thursday" "25" "January" "2018" "11:56:19" "-0800" "Andy LoPresto" "alopresto@apache.org" "<272754A9-6299-4B6E-B0FB-BCC3FD8668B6@apache.org>" "168" "[oss-security] [ANNOUNCE] CVE advisory for Apache NiFi 1.0.0 - 1.3.0" nil nil nil "1" "2018012519:56:19" "[oss-security] [ANNOUNCE] CVE advisory for Apache NiFi 1.0.0 - 1.3.0" (number mark "U       alopresto@ap Jan 25  168/9412  " thread-indent "\"[oss-security] [ANNOUNCE] CVE advisory for Apache NiFi 1.0.0 - 1.3.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12242 invoked by uid 550); 25 Jan 2018 20:02:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6042 invoked from network); 25 Jan 2018 19:56:41 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:reply-to:subject:date:message-id:cc:to
         :mime-version;
        bh=l9T8j/OV9amnjAYrTWWyoFIW1Lgu8yKtlQIBWVVH7X8=;
        b=EPgmyd5BBp4xacC7xE9JbQ9+Exh81VYzpnqnIOeg7X4wtf24S+x7xG2qVx+OAScBKL
         0SNPGJCHpiQSlkmlZyPwDHnq1edaWRtVMR5cC9lu8mvYtm6thfMpVpABmw086wQUzpcj
         IEAJpEEWaVZa9qvKUknEfQ/A4hHEXY3dNJ9wcdjzkHVP9IPQ2Y4o7Uc+MFfsjk8K+VUO
         EHskOFq6PR3tGLcd58gyshKqcYDIp0JtIUbdSBuovuV/2PrG5PkLhtfJFnwSxh0bocKo
         p0uXuyP1iJSqo8TnHy+7q6fRGvljSRZyOsS4te+giYZzcPBUKvDtasDAFj9GoLiePQsq
         kBcA==
X-Gm-Message-State: AKwxytfVI1S8g6KBKssQ1ICKqgRphsm4oSZh0bv59iqQ+ebBXRCHy5oO
	B8G6dWeIhZiOVknDvXOJftA=
X-Google-Smtp-Source: AH8x225MRVEJkbdDT2I/UOkFYb2ngXUvk8n/Tjd5uICC96t8ZpC5LMo2QxqLHiue+J/0FWSLZBbhLQ==
X-Received: by 2002:a17:902:2943:: with SMTP id g61-v6mr10336224plb.435.1516910184538;
        Thu, 25 Jan 2018 11:56:24 -0800 (PST)
From: Andy LoPresto <alopresto@apache.org>
Content-Type: multipart/signed; boundary="Apple-Mail=_F5DAD7F8-2A4F-4A85-8549-879B76512911"; protocol="application/pgp-signature"; micalg=pgp-sha512
Date: Thu, 25 Jan 2018 11:56:19 -0800
Message-Id: <272754A9-6299-4B6E-B0FB-BCC3FD8668B6@apache.org>
Cc: users@nifi.apache.org,
 dev@nifi.apache.org,
 oss-security@lists.openwall.com
To: security@nifi.apache.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] [ANNOUNCE] CVE advisory for Apache NiFi 1.0.0 - 1.3.0

--Apple-Mail=_F5DAD7F8-2A4F-4A85-8549-879B76512911
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_55A2048B-FFD0-4B46-B6A7-616D21820343"


--Apple-Mail=_55A2048B-FFD0-4B46-B6A7-616D21820343
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

The Apache NiFi PMC would like to announce the following CVE discovery in A=
pache NiFi 1.1.0 - 1.3.0. This issue was resolved with the release of NiFi =
1.4.0 on October 2, 2017. NiFi is an easy to use, powerful, and reliable sy=
stem to process and distribute data. It supports powerful and scalable dire=
cted graphs of data routing, transformation, and system mediation logic. Fo=
r more information, see https://nifi.apache.org/security.html.

CVE-2017-15703 <https://nifi.apache.org/security.html#CVE-2017-15703>: Apac=
he NiFi Java deserialization issue in template XML upload

Severity: Moderate

Versions Affected:

Apache NiFi 1.0.0 - 1.3.0

Description: Any authenticated user (valid client certificate but without A=
CL permissions) could upload a template which contained malicious code and =
caused a denial of service via Java deserialization attack.

Mitigation: The fix to properly handle Java deserialization was applied on =
the Apache NiFi 1.4.0 release. Users running a prior 1.x release should upg=
rade to the appropriate release.

Credit: This issue was discovered by Mike Cole.

Released: October 2, 2017 (Updated January 25, 2018)


Andy LoPresto
alopresto@apache.org
alopresto.apache@gmail.com
PGP Fingerprint: 70EC B3E5 98A6 5A3F D3C4  BACE 3C6E F65B 2F7D EF69


--Apple-Mail=_55A2048B-FFD0-4B46-B6A7-616D21820343
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dus-ascii"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode=
: space; -webkit-line-break: after-white-space;" class=3D"">The Apache NiFi=
 PMC would like to announce the following CVE discovery in Apache NiFi 1.1.=
0 - 1.3.0. This issue was resolved with the release of NiFi 1.4.0 on Octobe=
r 2, 2017. NiFi is an easy to use, powerful, and reliable system to process=
 and distribute data. It supports powerful and scalable directed graphs of =
data routing, transformation, and system mediation logic. For more informat=
ion, see <a href=3D"https://nifi.apache.org/security.html" class=3D"">https=
://nifi.apache.org/security.html</a>.&nbsp;<div class=3D""><br class=3D""><=
/div><div class=3D""><p style=3D"box-sizing: border-box; margin: 0px 0px 1.=
25rem; padding: 0px; font-family: 'Helvetica Neue', Helvetica, Roboto, Aria=
l, sans-serif; font-size: 16px; line-height: 1.6; text-rendering: optimizel=
egibility; color: rgb(34, 34, 34); font-variant-ligatures: normal; orphans:=
 2; widows: 2; background-color: rgb(255, 255, 255);" class=3D""><a id=3D"C=
VE-2017-15703" href=3D"https://nifi.apache.org/security.html#CVE-2017-15703=
" style=3D"box-sizing: border-box; color: rgb(57, 104, 119); line-height: i=
nherit; text-decoration: none; -webkit-font-smoothing: antialiased; text-sh=
adow: rgba(0, 0, 0, 0.004) 1px 1px 1px;" class=3D""><b style=3D"box-sizing:=
 border-box; line-height: inherit;" class=3D"">CVE-2017-15703</b></a>: Apac=
he NiFi Java deserialization issue in template XML upload</p><p style=3D"bo=
x-sizing: border-box; margin: 0px 0px 1.25rem; padding: 0px; font-family: '=
Helvetica Neue', Helvetica, Roboto, Arial, sans-serif; font-size: 16px; lin=
e-height: 1.6; text-rendering: optimizelegibility; color: rgb(34, 34, 34); =
font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rg=
b(255, 255, 255);" class=3D"">Severity:&nbsp;<strong style=3D"box-sizing: b=
order-box; line-height: inherit;" class=3D"">Moderate</strong></p><p style=
=3D"box-sizing: border-box; margin: 0px 0px 1.25rem; padding: 0px; font-fam=
ily: 'Helvetica Neue', Helvetica, Roboto, Arial, sans-serif; font-size: 16p=
x; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(34, 34,=
 34); font-variant-ligatures: normal; orphans: 2; widows: 2; background-col=
or: rgb(255, 255, 255);" class=3D"">Versions Affected:</p><ul style=3D"box-=
sizing: border-box; margin: 0px 0px 1.25rem 2rem; padding: 0px; font-family=
: 'Helvetica Neue', Helvetica, Roboto, Arial, sans-serif; font-size: 16px; =
line-height: 1.6; list-style-position: outside; color: rgb(34, 34, 34); fon=
t-variant-ligatures: normal; orphans: 2; widows: 2; background-color: rgb(2=
55, 255, 255);" class=3D""><li style=3D"box-sizing: border-box; margin: 0px=
; padding: 0px;" class=3D"">Apache NiFi 1.0.0 - 1.3.0</li></ul><div style=
=3D"box-sizing: border-box; margin: 0px 0px 1.25rem; padding: 0px; font-fam=
ily: 'Helvetica Neue', Helvetica, Roboto, Arial, sans-serif; font-size: 16p=
x; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(34, 34,=
 34); font-variant-ligatures: normal; orphans: 2; widows: 2; background-col=
or: rgb(255, 255, 255);" class=3D""><br class=3D"webkit-block-placeholder">=
</div><p style=3D"box-sizing: border-box; margin: 0px 0px 1.25rem; padding:=
 0px; font-family: 'Helvetica Neue', Helvetica, Roboto, Arial, sans-serif; =
font-size: 16px; line-height: 1.6; text-rendering: optimizelegibility; colo=
r: rgb(34, 34, 34); font-variant-ligatures: normal; orphans: 2; widows: 2; =
background-color: rgb(255, 255, 255);" class=3D"">Description: Any authenti=
cated user (valid client certificate but without ACL permissions) could upl=
oad a template which contained malicious code and caused a denial of servic=
e via Java deserialization attack.</p><p style=3D"box-sizing: border-box; m=
argin: 0px 0px 1.25rem; padding: 0px; font-family: 'Helvetica Neue', Helvet=
ica, Roboto, Arial, sans-serif; font-size: 16px; line-height: 1.6; text-ren=
dering: optimizelegibility; color: rgb(34, 34, 34); font-variant-ligatures:=
 normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);" clas=
s=3D"">Mitigation: The fix to properly handle Java deserialization was appl=
ied on the Apache NiFi 1.4.0 release. Users running a prior 1.x release sho=
uld upgrade to the appropriate release.</p><p style=3D"box-sizing: border-b=
ox; margin: 0px 0px 1.25rem; padding: 0px; font-family: 'Helvetica Neue', H=
elvetica, Roboto, Arial, sans-serif; font-size: 16px; line-height: 1.6; tex=
t-rendering: optimizelegibility; color: rgb(34, 34, 34); font-variant-ligat=
ures: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);"=
 class=3D"">Credit: This issue was discovered by Mike Cole.</p><p style=3D"=
box-sizing: border-box; margin: 0px 0px 1.25rem; padding: 0px; font-family:=
 'Helvetica Neue', Helvetica, Roboto, Arial, sans-serif; font-size: 16px; l=
ine-height: 1.6; text-rendering: optimizelegibility; color: rgb(34, 34, 34)=
; font-variant-ligatures: normal; orphans: 2; widows: 2; background-color: =
rgb(255, 255, 255);" class=3D"">Released: October 2, 2017 (Updated January =
25, 2018)</p><div class=3D""><br class=3D""><div class=3D"">
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


<br class=3D""></div></div></body></html>=

--Apple-Mail=_55A2048B-FFD0-4B46-B6A7-616D21820343--

--Apple-Mail=_F5DAD7F8-2A4F-4A85-8549-879B76512911
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJaajZkAAoJEDxu9lsvfe9pIFIQAJAba3nK1qezpybBAC4E+m3Q
udQz46aj0Gh2E5Sn+ainJeJyRoc/Ij/RoIA1PEx5e6iOc3DNQE7OYKlDAs7ob8N9
FMxWHfzoeHzXAaqCA0meDq0TR5QbsoU2wjDTeOAKnVqZGR7Et/gHY3hSuE4kFGQr
qpoj3BW66aPa21kwp5vePzAXXdtYzGoIF2sF2XtuM43vuL94doVnpEfu2fw6+R/l
zjgAtx9W1NcXbEc0CwEuoUeVv+AqLy3JZMSWrF3KY6AhnoW5wbIGE43/SWBizn70
d/eymNj2wHnzCuLN10y5PAD14AsmgcoJT4plczNl+7QvFO3B2nQFCa7BjFA6DKRt
ivFfuOCtEwI2dWzsibFQDeMcpoKJXawd/uKO5Bl4YF+FWXPh7WEjPv2OmJg9vx60
7DdPIswmeXsIu6m2SlTVVGBslSKBxGhDNg/KYQW2woUvPeS9rWEm6ntOLt7VSDQ3
dPVdOiEyx0bqkt/brQmpeTW7yjp3r6HeFyYbLKESzPXDD0ngR6slxQohnrOO5FvA
0qDGvJYf8MpmhPiNbLMbg3VTMq4PiUfXADPbKl+pirf3FSMqMN48cR5P53DoIsEV
kljIzL8j7fB1DzRC/ZWwV2u4/C+D2lHmRNJBgj8hVeXG5OtmuvXrgGySMwNvnfP0
8cBz52Sl/LCuzdu2D0K0
=UN27
-----END PGP SIGNATURE-----

--Apple-Mail=_F5DAD7F8-2A4F-4A85-8549-879B76512911--
