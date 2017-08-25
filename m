X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3407" "Friday" "25" "August" "2017" "18:27:59" "+0200" "Carlos Alberto Lopez Perez" "clopez@igalia.com" "<6128ec04-31d7-6978-e1bd-41e70ef4cf7d@igalia.com>" "82" "[oss-security] WebKitGTK+ Security Advisory WSA-2017-0007" nil nil nil "8" "2017082516:27:59" "[oss-security] WebKitGTK+ Security Advisory WSA-2017-0007" (number mark "U       clopez@igali Aug 25   82/3407  " thread-indent "\"[oss-security] WebKitGTK+ Security Advisory WSA-2017-0007\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32119 invoked by uid 550); 25 Aug 2017 16:28:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31966 invoked from network); 25 Aug 2017 16:28:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Type:MIME-Version:Date:Message-ID:Subject:From:Cc:To; bh=HCJNZqbOQRJvaqhqQ26dSpquRKqxaVV26Ej0mLXv51c=;
	b=eqlqkEH8IikuJPeTDp8yXSAfGSVF/MI1VyBDI3P5C3c9SicKVBKKPSIsO+flQWV37/DvCZ1SdWup1fg3oQEwrPVXwO3pVjIqkHkMgLx1PgEiuPLor93jpL9BjLCZY13oSH6p7xBu5vq13TPbB+e5TCVi09XzQzhd0y2JQvgmRDphV+KD3nq9I485HCPhrk7A46kwJ+DI7cpGA6orlLMc+gwOMaAPst5zlIVGL2yZqbHSL2wPO8oQaXpQlGNKb/NwLt0SI04Lj3A9Xfrxm5j6Y42qi1iCyhLvL5PfI14iGoVP2ThjjvhPRe8JPJis7sS05/53GfM60bVwWHQjr6vk1w==;
To: webkit-gtk@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Openpgp: id=B5D2B50BC48EC7F1EE90D9AB965089CE6B95F882;
 url=http://key.neutrino.es
Organization: Igalia S.L.
Mail-Followup-To: webkit-gtk@lists.webkit.org, security@webkit.org,
 distributor-list@gnome.org, oss-security@lists.openwall.com,
 bugtraq@securityfocus.com
Message-ID: <6128ec04-31d7-6978-e1bd-41e70ef4cf7d@igalia.com>
Date: Fri, 25 Aug 2017 18:27:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="ngVoNwhgk7qutUEHpAWm7NSso3k557wEE"
Subject: [oss-security] WebKitGTK+ Security Advisory WSA-2017-0007

--ngVoNwhgk7qutUEHpAWm7NSso3k557wEE
Content-Type: multipart/mixed; boundary="OLivMimJ7TCOetI26fjgwTql665t1ClXN";
 protected-headers="v1"
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
To: webkit-gtk@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-ID: <6128ec04-31d7-6978-e1bd-41e70ef4cf7d@igalia.com>
Subject: WebKitGTK+ Security Advisory WSA-2017-0007

--OLivMimJ7TCOetI26fjgwTql665t1ClXN
Content-Type: text/plain; charset=utf-8
Content-Language: es
Content-Transfer-Encoding: quoted-printable

------------------------------------------------------------------------
WebKitGTK+ Security Advisory                               WSA-2017-0007
------------------------------------------------------------------------

Date reported      : August 25, 2017
Advisory ID        : WSA-2017-0007
Advisory URL       : https://webkitgtk.org/security/WSA-2017-0007.html
CVE identifiers    : CVE-2017-1000121, CVE-2017-1000122.

Several vulnerabilities were discovered in WebKitGTK+.

CVE-2017-1000121
    Versions affected: WebKitGTK+ before 2.16.3.
    Credit to Nathan Crandall.
    Impact: Processing maliciously crafted input may lead to arbitrary
    code execution or application crash. Description: An input
    validation issue on the handling of UNIX IPC messages may allow an
    attacker to trigger an integer overflow. The issue was addressed
    through improved state management.

CVE-2017-1000122
    Versions affected: WebKitGTK+ before 2.16.3.
    Credit to Nathan Crandall.
    Impact: Processing maliciously crafted input may lead to application
    crash. Description: An input validation issue on the handling of
    UNIX IPC messages allows an attacker to trigger an application
    crash. The issue was addressed through improved state management.


We recommend updating to the last stable version of WebKitGTK+. It is
the best way of ensuring that you are running a safe version of
WebKitGTK+. Please check our website for information about the last
stable releases.

Further information about WebKitGTK+ Security Advisories can be found
at: https://webkitgtk.org/security.html

The WebKitGTK+ team,
August 25, 2017


--OLivMimJ7TCOetI26fjgwTql665t1ClXN--

--ngVoNwhgk7qutUEHpAWm7NSso3k557wEE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: You can fetch my GnuPG key from http://key.neutrino.es

iQIzBAEBCgAdFiEEtdK1C8SOx/HukNmrllCJzmuV+IIFAlmgUA8ACgkQllCJzmuV
+IJ2IRAAvzlCMGjLSJnjrLpGIu3l8KXhUYeofxuH4wyreHRL7go6IezJJ8FvvYRd
k+nU0MBwL29e8WGmYfSlvolDYqnC9Z0LzjnNPt5QX0MEncfld6WR0RLTFePzVqaL
N/Oy1ZltirvGjrBzZHi9SWmn4QgP64UX+TmFl3dbxlVrxazTBb2Uqgv7hb1DF623
7LOHi+XppFp9RyA6E6U6skuc92kLqxqk/j8LzEvmlrev2Ggtu19gmTpwYXf9qw67
PkdR5ecRF/tINaHwRDFIk4xK7QSMg97s0mZvGYIryLGVmNhP9dG43dwDtxmCHeeJ
mkCUVwwOxUMWnAm70kX56ISoYeZyLHV9Bm03aF5E6AGE98Z6kJfpwapRhGWZ4HmK
NP6+YKoRvRE945AtrJJ/5eZGSKJF0+ENBqd5e/+peux+HOZkK1ZOh10B6/DUfir1
b3yXHJ2UtJdZGouDsDDed3oIqPXXdodiwYs0XIbdYSy34EThT8ANvJuWQ4NXbH14
t6DJqLOvG1WRf9Z2NXqNPgX+CauBoNkVnLFDmLFjNigcyjuCBdlFFH4TMTgySPuh
t6zGrNFc9ChjCtHXwxPKb9db206ph8IptX9GcqrLE7HnykPMN+zk5U4a2Mrk8vKw
aPVYhgSmLaJlAez3hsaXtoQ8oZW1AH2ndG8eWSfGek7guNb4wcQ=
=ytgZ
-----END PGP SIGNATURE-----

--ngVoNwhgk7qutUEHpAWm7NSso3k557wEE--
