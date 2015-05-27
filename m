X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3997" "Wednesday" "27" "May" "2015" "18:53:16" "+0000" "Seaman, Chad" "cseaman@akamai.com" "<1432752795980.1810@akamai.com>" "154" "[oss-security] CVE Request, multiple WordPress plugins and themes" nil nil nil "5" "2015052718:53:16" "[oss-security] CVE Request, multiple WordPress plugins and themes" (number mark "        cseaman@akam May 27  154/3997  " thread-indent "\"[oss-security] CVE Request, multiple WordPress plugins and themes\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30685 invoked by uid 550); 27 May 2015 20:09:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22192 invoked from network); 27 May 2015 18:53:29 -0000
Thread-Topic: CVE Request, multiple WordPress plugins and themes
Thread-Index: AQHQmJhCdM72yoEmUUC+CGJWxthR5A==
Message-ID: <1432752795980.1810@akamai.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.28.90.109]
Content-Type: multipart/alternative;
	boundary="_000_14327527959801810akamaicom_"
MIME-Version: 1.0
CC: "cve-assign@mitre.org" <cve-assign@mitre.org>
Date: Wed, 27 May 2015 18:53:16 +0000
From: "Seaman, Chad" <cseaman@akamai.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request, multiple WordPress plugins and themes
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--_000_14327527959801810akamaicom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

?

?I'm not sure if these should be broken down by individual vulnerability or=
 lumped per plugin/theme, there are 21 plugins/themes affected in total.


  * grand-media [PLUGIN]
    + url: https://wordpress.org/plugins/grand-media/
    + vuln found:
    :--|- XSS
    :
    :--|- LFI
    :    |- note: only truly exploitable if user sets ALLOW_NO_EXT =3D=3D t=
rue
    :
    :--|- DoS
    :    |- note: force to recursively call itself via remote 301 redirects=
, cripples php-fpm w/ nginx
    :
    :--|- Open proxy



  * wp-mobile-edition [PLUGIN]
    + url: https://wordpress.org/plugins/wp-mobile-edition/
    + vuln found:
    :--|- LFI
    :    |- note: pre PHP 5.3 is likely (unconfirmed) suspectible to nullby=
te injection, meaning any file can be read
    :
    :--|- OpenProxy
    :
    :--|- DoS
    :    |- note: will process list of files in for loop, aiding DoS capabi=
lities
    :    |- note: follows 301 redirects, can be used to recursively call it=
self to exhaustion, ?cripples php-fpm w/ nginx
    :
    :--|- e-mail header injection (spam sandwich)
    :    |- note: will throw fatal error, but will send e-mail before doing=
 so.
    :
    :--|- Multiple XSS vulns


* wp-fastest-cache [PLUGIN] + url: https://wordpress.org/plugins/wp-fastest=
-cache/ + vuln found: :--|- XSS * leaflet-maps-marker [PLUGIN] + url: https=
://wordpress.org/plugins/leaflet-maps-marker/ + vuln found: :--|- XSS x 2 *=
 landing-pages [PLUGIN] + url: https://wordpress.org/plugins/landing-pages/=
 + vuln found: :--|- XSS into admin session * extended-catagories-widget [P=
LUGINS] + url: https://wordpress.org/plugins/extended-categories-widget/ + =
vuln found: :--|- post auth admin SQLi

  * gallery-images [PLUGINS] && gallery-video [PLUGINS]
    + url: https://wordpress.org/plugins/gallery-images/
    + url: https://wordpress.org/plugins/gallery-video/
    + vuln found:
    :--|- XSS into admin session (image and video gallery are both affected)


  * easy-google-fonts [PLUGIN]
    + url: https://wordpress.org/plugins/easy-google-fonts/
    + vuln found:
    :--|- XSS into admin session


  * cta [PLUGIN]
    + url: https://wordpress.org/plugins/cta/
    + vuln found:
    :--|- CSRF & persistent XSS attack into admin session, and site-wide fo=
r visitors


  * constant-contact-api [PLUGIN]
    + url: https://wordpress.org/plugins/constant-contact-api/
    + vuln found:
    :--|- XSS x 2


  * zerif-lite [THEME]
    + url: https://wordpress.org/themes/zerif-lite/
    + vuln found:
    :--|- XSS


  * colorway [THEME]
    + url: https://wordpress.org/themes/colorway/
    + vuln found:
    :--|- e-mail header injection (spam sandwich)
    :
    :--|- XSS x 3


  * charitas-lite [THEME]
    + url: https://wordpress.org/themes/charitas-lite/
    + vuln found:
    :--|- e-mail header injection (spam sandwich)


  * ariwoo [THEME]
    + url: https://wordpress.org/themes/ariwoo/
    + vuln found:
    :--|- e-mail header injection (spam sandwich)
    :
    :--|- XSS x 3


  * kage-green [THEME]
    + url: https://wordpress.org/themes/kage-green/
    + vuln found:
    :--|- XSS


  * intuition [THEME]
    + url: https://wordpress.org/themes/intuition/
    + vuln found:
    :--|- XSS


  * imag-mag [THEME]
    + url: https://wordpress.org/themes/imag-mag/
    + vuln found:
    :--|- XSS


  * fastnews-light [THEME]
    + url: https://wordpress.org/themes/fastnews-light/
    + vuln found:
    :--|- XSS


  * business-directory [THEME]
    + url: https://wordpress.org/themes/business-directory/
    + vuln found:
    :--|- XSS


  * boot-store [THEME]
    + url: https://wordpress.org/themes/boot-store/
    + deps: TheCartPress (https://wordpress.org/plugins/thecartpress/)
    + note: theme must be present, plugin must be present, user must not be=
 logged in.
    + vuln found:
    :--|- XSS





--_000_14327527959801810akamaicom_--
