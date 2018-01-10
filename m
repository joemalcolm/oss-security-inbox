X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4703" "Wednesday" "10" "January" "2018" "17:36:24" "+0100" "Carlos Alberto Lopez Perez" "clopez@igalia.com" "<0c0db4bd-37e4-7e3d-1ce8-bcee37fb40fb@igalia.com>" "101" "[oss-security] WebKitGTK+ Security Advisory WSA-2018-0001" nil nil nil "1" "2018011016:36:24" "[oss-security] WebKitGTK+ Security Advisory WSA-2018-0001" (number mark "U       clopez@igali Jan 10  101/4703  " thread-indent "\"[oss-security] WebKitGTK+ Security Advisory WSA-2018-0001\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30676 invoked by uid 550); 10 Jan 2018 16:36:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30603 invoked from network); 10 Jan 2018 16:36:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Type:MIME-Version:Date:Message-ID:Subject:From:Cc:To; bh=7CE1Jk9PaGIVWNlF5A2i6K7Fw42KwBHGkxIfReExRvY=;
	b=D3qN6j/4WW0OnsXMcZcu3zQDPF8JIdtWaJ04qGDfviyKE+7mUdWdEPGvcxcHHH4GR+IbQjBnGVoyN4COp4JVDLnVNItFKaN23Q13L4dAHAtQGKEZqy9Y5zj9GGIcs7CLvNeW5o5Hp92PAfyC4kDY/gx1YahI93Zk3QP7c7sm7FCJ4Q+SeEJMFHrbDxOpVau81dQ4YF1ZTlH6gcDg6d4oBboWIgJbxZEBfusL4auXRFbzxGV7vPTVfMQopZsszM+/RMHTS2jFGLZS+jDQrpB2aiyepC8oCKVKlUYSv8rU6Yq4O3S/CMNhqmd0ndLUE1BZzO5l1TIKS9z+5rzu8WgrlQ==;
To: "webkit-gtk@lists.webkit.org" <webkit-gtk@lists.webkit.org>
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Openpgp: id=B5D2B50BC48EC7F1EE90D9AB965089CE6B95F882;
 url=http://key.neutrino.es
Organization: Igalia S.L.
Mail-Followup-To: "webkit-gtk@lists.webkit.org"
 <webkit-gtk@lists.webkit.org>, security@webkit.org,
 distributor-list@gnome.org, oss-security@lists.openwall.com,
 bugtraq@securityfocus.com
Message-ID: <0c0db4bd-37e4-7e3d-1ce8-bcee37fb40fb@igalia.com>
Date: Wed, 10 Jan 2018 17:36:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="VlKWftaJq4IeB8m0QjakHJ9RKJt0aSWs4"
Subject: [oss-security] WebKitGTK+ Security Advisory WSA-2018-0001

--VlKWftaJq4IeB8m0QjakHJ9RKJt0aSWs4
Content-Type: multipart/mixed; boundary="GCfLoIaqs61kOnm2GHiRaWTlRft0opjOr";
 protected-headers="v1"
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
To: "webkit-gtk@lists.webkit.org" <webkit-gtk@lists.webkit.org>
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-ID: <0c0db4bd-37e4-7e3d-1ce8-bcee37fb40fb@igalia.com>
Subject: WebKitGTK+ Security Advisory WSA-2018-0001

--GCfLoIaqs61kOnm2GHiRaWTlRft0opjOr
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

------------------------------------------------------------------------
WebKitGTK+ Security Advisory                               WSA-2018-0001
------------------------------------------------------------------------

Date reported      : January 10, 2018
Advisory ID        : WSA-2018-0001
Advisory URL       : https://webkitgtk.org/security/WSA-2018-0001.html
CVE identifiers    : CVE-2017-5753, CVE-2017-5715.

Several vulnerabilities were discovered in WebKitGTK+.

CVE-2017-5753
    Versions affected: WebKitGTK+ before 2.18.5.
    Credit to Jann Horn of Google Project Zero; and Paul Kocher in
    collaboration with Daniel Genkin of University of Pennsylvania and
    University of Maryland, Daniel Gruss of Graz University of
    Technology, Werner Haas of Cyberus Technology, Mike Hamburg of
    Rambus (Cryptography Research Division), Moritz Lipp of Graz
    University of Technology, Stefan Mangard of Graz University of
    Technology, Thomas Prescher of Cyberus Technology, Michael Schwarz
    of Graz University of Technology, and Yuval Yarom of University of
    Adelaide and Data61.
    Impact: Systems with microprocessors utilizing speculative execution
    and branch prediction may allow unauthorized disclosure of
    information to an attacker via a side-channel analysis. This variant
    of the Spectre vulnerability triggers the speculative execution by
    performing a bounds-check bypass. Description: Security improvements
    are included to mitigate the effects.

CVE-2017-5715
    Versions affected: WebKitGTK+ before 2.18.5.
    Credit to Jann Horn of Google Project Zero; and Paul Kocher in
    collaboration with Daniel Genkin of University of Pennsylvania and
    University of Maryland, Daniel Gruss of Graz University of
    Technology, Werner Haas of Cyberus Technology, Mike Hamburg of
    Rambus (Cryptography Research Division), Moritz Lipp of Graz
    University of Technology, Stefan Mangard of Graz University of
    Technology, Thomas Prescher of Cyberus Technology, Michael Schwarz
    of Graz University of Technology, and Yuval Yarom of University of
    Adelaide and Data61.
    Impact: Systems with microprocessors utilizing speculative execution
    and branch prediction may allow unauthorized disclosure of
    information to an attacker via a side-channel analysis. This variant
    of the Spectre vulnerability triggers the speculative execution by
    utilizing branch target injection. Description: Security
    improvements are included to mitigate the effects.


We recommend updating to the last stable version of WebKitGTK+. It is
the best way of ensuring that you are running a safe version of
WebKitGTK+. Please check our website for information about the last
stable releases.

Further information about WebKitGTK+ Security Advisories can be found
at: https://webkitgtk.org/security.html

The WebKitGTK+ team,
January 10, 2018


--GCfLoIaqs61kOnm2GHiRaWTlRft0opjOr--

--VlKWftaJq4IeB8m0QjakHJ9RKJt0aSWs4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: You can fetch my GnuPG key from http://key.neutrino.es

iQIzBAEBCgAdFiEEtdK1C8SOx/HukNmrllCJzmuV+IIFAlpWQQgACgkQllCJzmuV
+IJz4BAAgp3AXVRI4HWyMTvXxqycwBoVpzp60D6RNfTQ/ufbwjVKvO7yKrbvMzix
Vyo9kK+rwzyWsG2YHijlaZA27nX6sGYLqcJbro+gQ1EI308Z4ZSIivwdFqkipbX2
99NeGrGJOtdlsURi2N88TFja7DN6jbIv9FET2xHyfGhfGlowJRH1PHMfzmSf8rUz
NPnkYqi6kX1JMgZ+2vlHcOcHpyZsLYeqIA0J3At5qYbFULMuy2kLwv19FljUCHbj
VSVomlCz7mfjT32kb+ldmyeiUXyRGFdbDPDqBE515lAZPqaF/s3cZwC48hnhQCkh
BlzEg8qAnVaiBEqt6+N4bai+3XBrKpyHbH8RDzFgK1hC3gUHrtsIdgJO8QQgn0eD
i4PhEMoZK3cGzJM8Tbtwokl0Q/yxeu1dZzGz5nA00qE+EEVgcncRKXBr8slAN/MG
JOtkp9DUSFhTmDqltXSsyr+MIideuZB6EccNfVjaUFkuow2TfYx0uEq5gz4koIPx
s4J+FG6lS8yKIlPXJhdu8NjxApSACVarVTlbKkppNQdtQ4p0Vff0vxbuOvq0tNlu
NGfShF0a/o/95rZ+1kXPwoT/l7JPMhcfwKjDmF/ZRHRPm7tHdBudvLtox3PisEON
IemBnPw/4i0WUEG/34/C79CBa4swlGsEwTeF8MEL6b/QM3JchII=
=AMLa
-----END PGP SIGNATURE-----

--VlKWftaJq4IeB8m0QjakHJ9RKJt0aSWs4--
