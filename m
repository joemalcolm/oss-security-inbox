X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2755" "Thursday" "24" "November" "2016" "22:54:20" "-0800" "Steven R. Loomis" "srl@icu-project.org" "<42EB0848-2832-4DF0-B39F-7555B0A78B2A@icu-project.org>" "73" "Re: [oss-security] Re: CVE request: icu: stack-based buffer overflow in uloc_getDisplayName" nil nil nil "11" "2016112506:54:20" "[oss-security] Re: CVE request: icu: stack-based buffer overflow in uloc_getDisplayName" (number mark "U       srl@icu-proj Nov 24   73/2755  " thread-indent "\"Re: [oss-security] Re: CVE request: icu: stack-based buffer overflow in uloc_getDisplayName\"\n") "<0e925c8eb72143eaa942d7abbd5ddd70@imshyb02.MITRE.ORG>" ("<20161124233908.GA20286@sin.redhat.com>" "<0e925c8eb72143eaa942d7abbd5ddd70@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12198 invoked by uid 550); 25 Nov 2016 16:27:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 2011 invoked from network); 25 Nov 2016 06:55:37 -0000
x-originating-ip: 208.109.101.195
User-Agent: Microsoft-MacOutlook/f.15.1.160411
Date: Thu, 24 Nov 2016 22:54:20 -0800
From: "Steven R. Loomis" <srl@icu-project.org>
To: <oss-security@lists.openwall.com>, <dmoppert@redhat.com>
CC: <cve-assign@mitre.org>
Message-ID: <42EB0848-2832-4DF0-B39F-7555B0A78B2A@icu-project.org>
Thread-Topic: [oss-security] Re: CVE request: icu: stack-based buffer overflow
 in uloc_getDisplayName
References: <20161124233908.GA20286@sin.redhat.com>
 <0e925c8eb72143eaa942d7abbd5ddd70@imshyb02.MITRE.ORG>
In-Reply-To: <0e925c8eb72143eaa942d7abbd5ddd70@imshyb02.MITRE.ORG>
Mime-version: 1.0
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: quoted-printable
X-CMAE-Envelope: MS4wfKSkha+AfDT2UX482CX4II1DJFN2UExuhiE5rbxo5PJaIgNISWRFK4QL7c8DVA1cDzGhM62Nlko0udfd76uz6PYqrabEplWvDsibbXWHjbO/zc8HXmRM
 9kukrtxrmc8bwu6729opVu8AY7WhevXfSmc9tDgjycU+7UrNFrG3d+CdOsbxd3o30JFFYdw+eb6L4/t0h10TS3TQAMJls87Mhl4x7GqEmIbwZeHHhbaP7Bbd
 03mPaCb7Tq/HxJZRhPqbceZucvD2dRAr0m/j35TyIIA=
Subject: Re: [oss-security] Re: CVE request: icu: stack-based buffer overflow
 in uloc_getDisplayName

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Thanks. I=E2=80=99ve also updated https://sites.google.com/site/icusite/sec=
urity
Hopefully we will work more closely and quickly in the future.

Steven
-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJYN+ASAAoJEKyl2+H9j6vxBdEIANRofsWFNel4N4ww/fN2VcMn
lLjAEbb1KZkvLrsCCpJWZZYDfsFDdxkp8KeRVi/NehyZiNEczElRSwY/V/mtagaZ
LmYe4AilNB64+uJnIUzkAIV3qFh1YFIRKAtqsQT/Wn+y1gLl2EwMEmuiVT97ynoC
pTJqla4EMi7HKznbo8B6pYy3DIh7wBRY01SrjK+npZ32yWyPGMbENJ8Gx0mDOVGV
sYQMlHl7BdIMhXufw6vZFZPJUv7gKbkJo//8Hjvj0cjheToaVaHTDMvZn8tLUmB4
jzCusjYjsmm1NY3JlKJgZEYj/3Z8uXZu3AI3nG/hXdoRqvqOKeB/VWWywXME+Do=3D
=3DeyIZ
-----END PGP SIGNATURE-----






El 11/24/16 4:51 PM, "cve-assign@mitre.org" <cve-assign@mitre.org> escribi=
=C3=B3:

>-----BEGIN PGP SIGNED MESSAGE-----
>Hash: SHA256
>
>> https://bugzilla.redhat.com/show_bug.cgi?id=3D1383569
>
>> http://bugs.icu-project.org/trac/ticket/10891
>> http://bugs.icu-project.org/trac/changeset/35699
>
>> https://bugs.php.net/bug.php?id=3D67397
>
>> Note that the PHP bug is exactly the same flaw, but they worked around
>> it by limiting the length of strings passed to icu.  I don't believe
>> this needs a separate CVE even though it was "fixed" independently.
>
>Use CVE-2014-9911 for the ICU vulnerability, and use CVE-2014-9912 for
>the PHP vulnerability. Admittedly, the code changes in ICU and PHP had
>the same motivation. However, the code is not shared between
>ures_getByKeyWithFallback in ICU and get_icu_disp_value_src_php in
>PHP. Thus, two CVE IDs exist. This is also consistent with similar
>ICU/PHP situations in the
>http://www.openwall.com/lists/oss-security/2016/07/24/2 and
>http://www.openwall.com/lists/oss-security/2016/09/15/10 posts.
>
>- --=20
>CVE Assignment Team
>M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
>[ A PGP key is available for encrypted communications at
>  http://cve.mitre.org/cve/request_id.html ]
>-----BEGIN PGP SIGNATURE-----
>Version: GnuPG v1
>
>iQIcBAEBCAAGBQJYN4pmAAoJEHb/MwWLVhi2iXQP/0p5ye6sA3p3BNLXi1HvLKN3
>kTljswgWfZxD5/GINLjMGzf0Gr94weE6GfbxmrYbenjmghKTPU+tRgfpOd6TwteU
>kai0Vuluk020bYb9d769qyYc47rzKZ0h5FJCc/Ef+kQNWPMOHS+ogF8D11p575W0
>gFZyiw9h5HNHT7A5VV1NisFN607Q3IwJncNZfI1PLwZJ/t1dtNI8HGsKZCo5tlKq
>ZdWIibAuVThj9k4OKmZfdxe3SHInFv2dfDoLXwQH+hwnLLs7xkN3X5Tu/PXpkqtV
>cc/eqZTRW1TSxou4p0S8T7d410z3WArVecVNfFZxv58xua+Goj/bXwPRuAUQTY8q
>SpuR3NDwFoM23IURqTStQ/+NXbhGtjJpUltQjZ776hBEm/S/rljYMA5sJs4sBtjI
>VsiA8jqjeewOheQQnEOA/VVH8JvQQ8AATOKD6gRkDCuxTYwhemabzR9jUOpVP/Cv
>9f/4e/KIYug2wHcfTtEoqZEGtgIEQRdcGpEjOq7y7X9ETMWnTRNh1iIzKVOilFyv
>uCcNE1m0JJPALb0p72AqDb5rEL8cWynrvNQrcLifONF5/65uEa+5Hi4rXhayaQN1
>MDo0OTwKJUw90vhEeLP+hTx3bQJtp6bRTfz1avIhEmG0DmoErm9opAj/pK7o8uWV
>1EQnxE97WQjHimhYejXd
>=3DjGfq
>-----END PGP SIGNATURE-----

