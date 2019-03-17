X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2231" "Sunday" "17" "March" "2019" "17:14:42" "+0200" "Henri Salo" "henri@nerv.fi" "<20190317151442.g5po7ljl64gnzuoq@tunkki.bugs.fi>" "55" "[oss-security] CVE-2019-9573 / CVE-2019-9574: WordPress plugin hrm missing server side authorization checks" "^Date:" nil nil "3" "2019031715:14:42" "[oss-security] CVE-2019-9573 / CVE-2019-9574: WordPress plugin hrm missing server side authorization checks" (number mark "U       henri@nerv.f Mar 17   55/2231  " thread-indent "\"[oss-security] CVE-2019-9573 / CVE-2019-9574: WordPress plugin hrm missing server side authorization checks\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-9573 / CVE-2019-9574: WordPress plugin hrm missing server side authorization checks" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28118 invoked by uid 550); 17 Mar 2019 15:14:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28100 invoked from network); 17 Mar 2019 15:14:57 -0000
X-Virus-Scanned: Debian amavisd-new at coconut.nerv.fi
Message-ID: <20190317151442.g5po7ljl64gnzuoq@tunkki.bugs.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; x-action=pgp-signed
User-Agent: NeoMutt/20170113 (1.7.2)
Date: Sun, 17 Mar 2019 17:14:42 +0200
From: Henri Salo <henri@nerv.fi>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-9573 / CVE-2019-9574: WordPress plugin hrm missing server
 side authorization checks
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

I found several vulnerabilities from WordPress plugin hrm (WP Human Resource
Management) where server side authorization checks are missing. Plugin URL
https://wordpress.org/plugins/hrm/. Affected 2.2.5 and possibly below. Fixed in
2.2.6 according to developer who didn't respond to me, but communicated with
WordPress.

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-9574

When creating new leave as admin user there is user picker visible in the UI.
Using same queries as picker functionality any logged in user (e.g.
Subscriber) can use search_emp_leave_records action to print all WordPress
users credentials from database.

{"success":true,"data":[{"ID":"1","user_login":"henri","user_pass":"$P$Bho3..

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-9573

Any user can create new leave and can change status of leave (approving,
canceling etc).

Recommendation for developers:

Authorize users using a whitelist of roles allowed to call specific actions.
Define roles for all actions with secure default e.g. admin only. Ensure that
password hashes are not printed to any user. Function
https://codex.wordpress.org/Function_Reference/get_users could be used to list
the users.

Timeline:

2019-01-22: Report to developer and WordPress plugins team
2019-02-23: Fix released
2019-03-05: CVEs assigned by MITRE

- -- 
Henri Salo
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE/aVSDznAZReWTkxKJ633pE6qdXQFAlyOZGIACgkQJ633pE6q
dXTogxAAoUAq4SSPBl3ayd4f2FZfQQjxALKIx7m8wa+4ygC1G3YBLB4PvArH+JyD
52AmyRNt1Px14XBsE7tJutWPV8RazUuo88oyJxMeoU6LRXLjGmYQYoawtEayLcp1
YKu9DWFViIUQZJn936LOOUeEtm2Sb0QiewBJGBbaI0MwCpZmRgt8KmZReAtWyjDp
Jll3A290g6QpDay/14AJ5kMHdm5MwihkXbhTKJ20pOR0ds5VN/gVDFleXUhRBPeT
sPaZznCpi4ZF/d3IlVK8j5VkSEEfHqq3XMjbbO6RKJV++WjPaF/DBcRea4yDGUDu
K4OiL/m6/8Cs3wGB/Nedgx/D//xAWqV4/qVjVoTV1gy6zLlVbv9S8L11I2O5QzpL
TfnxWEDl9zrDN7C/Ha//SinrbDsvcdklh2Uw8cFJDi0NdwSfmo4VF3kimgw+mj5+
S6PWX/5/JZ+tgRrR8X2vUwVun9uvEbI217iRrStsuz5w6OsXrHkBT4tUAkQV6sLA
Iegx8GlhReATbVIYuL3Xy7u9nrlokcHo5U1l6nxmpgomZ0UeD3HCFgmiXzwWj7fS
y/pYpWzZLUzDf4TqD/MeRepLYQfqCcs2t2ApkS3XaTs8aFbviLgoEpQ+vJznNt4i
4traM4dIqD/o5IyN/8uWj/d2Jp/vLjaMZNPNftxzC2BaHSQsmFs=
=Rnac
-----END PGP SIGNATURE-----
