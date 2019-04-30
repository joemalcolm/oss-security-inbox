X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8976" "Tuesday" "30" "April" "2019" "16:35:05" "+0300" "Aki Tuomi" "aki.tuomi@dovecot.fi" nil "203" nil "^Date:" nil nil "4" nil nil (number mark "        aki.tuomi@do Apr 30  203/8976  " thread-indent "\"[oss-security] Multiple vulnerabilities in Dovecot 2.3\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Dovecot 2.3" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17920 invoked by uid 550); 30 Apr 2019 16:17:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19515 invoked from network); 30 Apr 2019 13:35:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=open-xchange.com;
	s=201705; t=1556631305;
	bh=AnZkzaCH5XXQ13AvHn9wgSnvl+WmUkiOzmBRl9Ubezo=;
	h=Date:From:Reply-To:To:Subject:From;
	b=pKbgR/VxV+ZnG1/qiI3DODSARFXk7MoSQYv8NHZuGd68RiqZfaDNgmTiupPROVaob
	 1OtIy51gvzkSgIGmc4rPzbR0UGRwHlHkVG+otYLk6Dc64J8LnBNSZb/NA5ffrkA2CW
	 VF3KrhEdjKHMc8sLNLWaivPx3sqosjuYbzqmu1Ta3cf/63XIlV0PLj7U7TrZMIy34w
	 1I4k38HTCeXRjNL22SOk3+5PFpbKff8yQ1rMu+AlRtiTAaOhx+DDvpiRugl/qTJhD9
	 qrzeWN2EYdbivUn0E7Kho9SjLrTzHd1RmfXrwEMOiIDhgstaLDhgGcsfEIxFgzvI9Q
	 wLoyMbcKqCKjg==
Message-ID: <1076442947.215.1556631305811@appsuite-dev-guard.open-xchange.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; 
	boundary="----=_Part_214_1640106607.1556631305809"
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.10.2-Rev1
X-Originating-Client: open-xchange-appsuite
Date: Tue, 30 Apr 2019 16:35:05 +0300 (EEST)
From: Aki Tuomi <aki.tuomi@dovecot.fi>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Multiple vulnerabilities in Dovecot 2.3
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"fulldisclosure@seclists.org" <fulldisclosure@seclists.org>

------=_Part_214_1640106607.1556631305809
Date: Tue, 30 Apr 2019 15:35:05 +0200 (CEST)
Content-Type: multipart/mixed;
	boundary="----=_Part_4848_1919261444.1556631305684"

------=_Part_4848_1919261444.1556631305684
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Dear subscribers, we have been made aware of two critical vulnerabilities in Dovecot 2.3. Please find patches attached for 2.3.5.2.

---
Aki Tuomi
Open-Xchange oy

------

Open-Xchange Security Advisory 2019-04-30

Product: Dovecot
Vendor: OX Software GmbH

Internal reference: DOV-3212 (Bug ID)
Vulnerability type: CWE-476
Vulnerable version: 2.3.0 - 2.3.5.2
Vulnerable component: submission-login
Report confidence: Confirmed
Researcher credits: Marcelo Coelho
Solution status: Fixed by Vendor
Fixed version: 2.3.6
Vendor notificatio: 2019-03-11
Solution date: 2019-04-23
Public disclosure: 2019-04-30Q
CVE reference: CVE-2019-11494
CVSS: 7.5 (CVSS3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H)

Vulnerability Details:
Submission-login crashes with signal 11 due to null pointer access when authentication is aborted by disconnecting. This can lead to denial-of-service attack by persistent attacker(s).

Workaround:
There is no available workaround for this issue.

Solution:
Operators should upgrade to a fixed version.

----

Open-Xchange Security Advisory 2019-04-30
Product: Dovecot
Vendor: OX Software GmbH

Internal reference: DOV-3223 (Bug ID)
Vulnerability type: CWE-617
Vulnerable version: 2.3.0 - 2.3.5.2
Vulnerable component: submission-login
Report confidence: Confirmed
Solution status: Fixed by Vendor
Fixed version: 2.3.6
Vendor notification: 2019-03-11
Solution date: 2019-04-23
Public disclosure: 2019-04-30
CVE reference: CVE-2019-11499
CVSS: 7.5 (CVSS3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H)

Vulnerability Details:
Submission-login crashes when authentication is started over TLS secured channel and invalid authentication message is sent. This can lead to denial-of-service attack by persistent attacker(s).

Workaround:
Authentication crash can be avoided if authentication is done without TLS.

Solution:
Operators should upgrade to a fixed version.
------=_Part_4848_1919261444.1556631305684
Content-Type: text/x-patch; charset=ISO-8859-1;
 name=0001-submission-login-Remove-unused-client-pending_startt.patch
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename=0001-submission-login-Remove-unused-client-pending_startt.patch
X-Part-Id: 3dfd2692a126411781146912db6071a9

RnJvbSA3NTRmNzkxZGQyNjMxM2RlOGQ3NWI3NDBiZGRkMWExOTJmMTFiZjNm
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBTdGVwaGFuIEJvc2No
IDxzdGVwaGFuLmJvc2NoQGRvdmVjb3QuZmk+CkRhdGU6IFR1ZSwgMjMgQXBy
IDIwMTkgMDA6MTM6NDYgKzAyMDAKU3ViamVjdDogW1BBVENIIDEvM10gc3Vi
bWlzc2lvbi1sb2dpbjogUmVtb3ZlIHVudXNlZCBjbGllbnQtPnBlbmRpbmdf
c3RhcnR0bHMuCgotLS0KIHNyYy9zdWJtaXNzaW9uLWxvZ2luL2NsaWVudC5o
IHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3N1Ym1pc3Npb24tbG9naW4v
Y2xpZW50LmggYi9zcmMvc3VibWlzc2lvbi1sb2dpbi9jbGllbnQuaAppbmRl
eCAxNjY3ZTE1OGUuLmU4OTIyODQzMiAxMDA2NDQKLS0tIGEvc3JjL3N1Ym1p
c3Npb24tbG9naW4vY2xpZW50LmgKKysrIGIvc3JjL3N1Ym1pc3Npb24tbG9n
aW4vY2xpZW50LmgKQEAgLTIzLDcgKzIzLDcgQEAgc3RydWN0IHN1Ym1pc3Np
b25fY2xpZW50IHsKIAllbnVtIHNtdHBfY2FwYWJpbGl0eSBiYWNrZW5kX2Nh
cGFiaWxpdGllczsKIAogCXN0cnVjdCBzbXRwX3NlcnZlcl9jb25uZWN0aW9u
ICpjb25uOwotCXN0cnVjdCBzbXRwX3NlcnZlcl9jbWRfY3R4ICpwZW5kaW5n
X2F1dGgsICpwZW5kaW5nX3N0YXJ0dGxzOworCXN0cnVjdCBzbXRwX3NlcnZl
cl9jbWRfY3R4ICpwZW5kaW5nX2F1dGg7CiAKIAllbnVtIHN1Ym1pc3Npb25f
cHJveHlfc3RhdGUgcHJveHlfc3RhdGU7CiAJZW51bSBzbXRwX2NhcGFiaWxp
dHkgcHJveHlfY2FwYWJpbGl0eTsKLS0gCjIuMTEuMAoK

------=_Part_4848_1919261444.1556631305684
Content-Type: text/x-patch; charset=ISO-8859-1;
 name=0002-submission-login-client-authenticate-Fix-crash-occur.patch
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename=0002-submission-login-client-authenticate-Fix-crash-occur.patch
X-Part-Id: c47da26db25e4c2fbec2101a43c2d917

RnJvbSBmNzk3NDVkYWU0YTlhNWZjYTMzMzIwZTAzYTRmYzkwNjRiODhkMDFl
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBTdGVwaGFuIEJvc2No
IDxzdGVwaGFuLmJvc2NoQGRvdmVjb3QuZmk+CkRhdGU6IFR1ZSwgMTIgTWFy
IDIwMTkgMDM6MTg6MzMgKzAxMDAKU3ViamVjdDogW1BBVENIIDIvM10gc3Vi
bWlzc2lvbi1sb2dpbjogY2xpZW50LWF1dGhlbnRpY2F0ZSAtIEZpeCBjcmFz
aAogb2NjdXJyaW5nIHdoZW4gY2xpZW50IGRpc2Nvbm5lY3RzIGR1cmluZyBh
dXRoZW50aWNhdGlvbi4KCi0tLQogc3JjL3N1Ym1pc3Npb24tbG9naW4vY2xp
ZW50LWF1dGhlbnRpY2F0ZS5jIHwgMyArKysKIHNyYy9zdWJtaXNzaW9uLWxv
Z2luL2NsaWVudC5jICAgICAgICAgICAgICB8IDEgKwogMiBmaWxlcyBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9zcmMvc3VibWlz
c2lvbi1sb2dpbi9jbGllbnQtYXV0aGVudGljYXRlLmMgYi9zcmMvc3VibWlz
c2lvbi1sb2dpbi9jbGllbnQtYXV0aGVudGljYXRlLmMKaW5kZXggOGI1NDIy
ZjgzLi42YjcwNzAxYTEgMTAwNjQ0Ci0tLSBhL3NyYy9zdWJtaXNzaW9uLWxv
Z2luL2NsaWVudC1hdXRoZW50aWNhdGUuYworKysgYi9zcmMvc3VibWlzc2lv
bi1sb2dpbi9jbGllbnQtYXV0aGVudGljYXRlLmMKQEAgLTk4LDYgKzk4LDkg
QEAgdm9pZCBzdWJtaXNzaW9uX2NsaWVudF9hdXRoX3Jlc3VsdChzdHJ1Y3Qg
Y2xpZW50ICpjbGllbnQsCiAJCWNvbnRhaW5lcl9vZihjbGllbnQsIHN0cnVj
dCBzdWJtaXNzaW9uX2NsaWVudCwgY29tbW9uKTsKIAlzdHJ1Y3Qgc210cF9z
ZXJ2ZXJfY21kX2N0eCAqY21kID0gc3VibV9jbGllbnQtPnBlbmRpbmdfYXV0
aDsKIAorCWlmIChzdWJtX2NsaWVudC0+Y29ubiA9PSBOVUxMKQorCQlyZXR1
cm47CisKIAlzdWJtX2NsaWVudC0+cGVuZGluZ19hdXRoID0gTlVMTDsKIAlp
X2Fzc2VydChjbWQgIT0gTlVMTCk7CiAKZGlmZiAtLWdpdCBhL3NyYy9zdWJt
aXNzaW9uLWxvZ2luL2NsaWVudC5jIGIvc3JjL3N1Ym1pc3Npb24tbG9naW4v
Y2xpZW50LmMKaW5kZXggM2U0NWU1NTZjLi4yMGI3NzNiOWUgMTAwNjQ0Ci0t
LSBhL3NyYy9zdWJtaXNzaW9uLWxvZ2luL2NsaWVudC5jCisrKyBiL3NyYy9z
dWJtaXNzaW9uLWxvZ2luL2NsaWVudC5jCkBAIC0yMTIsNiArMjEyLDcgQEAg
c3RhdGljIHZvaWQgY2xpZW50X2Nvbm5lY3Rpb25fZGlzY29ubmVjdCh2b2lk
ICpjb250ZXh0LCBjb25zdCBjaGFyICpyZWFzb24pCiB7CiAJc3RydWN0IHN1
Ym1pc3Npb25fY2xpZW50ICpjbGllbnQgPSBjb250ZXh0OwogCisJY2xpZW50
LT5wZW5kaW5nX2F1dGggPSBOVUxMOwogCWNsaWVudF9kaXNjb25uZWN0KCZj
bGllbnQtPmNvbW1vbiwgcmVhc29uKTsKIH0KIAotLSAKMi4xMS4wCgo=

------=_Part_4848_1919261444.1556631305684
Content-Type: text/x-patch; charset=ISO-8859-1;
 name=0003-lib-smtp-smtp-server-cmd-auth-Fix-AUTH-response-erro.patch
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename=0003-lib-smtp-smtp-server-cmd-auth-Fix-AUTH-response-erro.patch
X-Part-Id: 48aae1733c314ce790fbcf356bbbffcc

RnJvbSBlOWQ2MDY0OGFiYjliYmNlZmY4OTg4MmE1MzA5Y2I5NTMyZTcwMmU5
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBTdGVwaGFuIEJvc2No
IDxzdGVwaGFuLmJvc2NoQGRvdmVjb3QuZmk+CkRhdGU6IFRodSwgMjUgQXBy
IDIwMTkgMDk6NTE6MzIgKzAyMDAKU3ViamVjdDogW1BBVENIIDMvM10gbGli
LXNtdHA6IHNtdHAtc2VydmVyLWNtZC1hdXRoIC0gRml4IEFVVEggcmVzcG9u
c2UgZXJyb3IKIGhhbmRsaW5nIHNvIHRoYXQgaXQgc3RvcHMgcmVhZGluZyBt
b3JlIGlucHV0LgoKT3RoZXJ3aXNlLCBpdCBtYXkgdHJ5IHRvIHJlYWQgbW9y
ZSBkYXRhIGZyb20gdGhlIHN0cmVhbSBhcyB0aGUgbmV4dCBBVVRICnJlc3Bv
bnNlLCB3aGljaCBjYXVzZXMgYW4gYXNzZXJ0IGNyYXNoIGluIHRoZSBjb21t
YW5kIHBhcnNlciBsYXRlciBvbi4gRXZlbiB3aGVuCnRoZSBwYXJzZXIgZmlu
ZHMgbm8gaW5wdXQgZnJvbSB0aGUgc3RyZWFtLCBpdCB3aWxsIGFkdmFuY2Ug
aXRzIHN0YXRlCnRvd2FyZHMgQVVUSCByZXNwb25zZSBwYXJzaW5nLCB3aGlj
aCBpcyBhIHByb2JsZW0gd2hlbiB0aGUgbmV4dCBjb21tYW5kIGlzCnN1YnNl
cXVlbnRseSBiZWluZyBwYXJzZWQuCgpQYW5pYyB3YXM6CgpQYW5pYzogZmls
ZSBzbXRwLWNvbW1hbmQtcGFyc2VyLmM6IGxpbmUgNDM4IChzbXRwX2NvbW1h
bmRfcGFyc2VfbmV4dCk6IGFzc2VydGlvbiBmYWlsZWQ6ICghcGFyc2VyLT5h
dXRoX3Jlc3BvbnNlIHx8IHBhcnNlci0+c3RhdGUuc3RhdGUgPT0gU01UUF9D
T01NQU5EX1BBUlNFX1NUQVRFX0lOSVQgfHwgcGFyc2VyLT5zdGF0ZS5zdGF0
ZSA9PSBTTVRQX0NPTU1BTkRfUEFSU0VfU1RBVEVfRVJST1IpCi0tLQogc3Jj
L2xpYi1zbXRwL3NtdHAtc2VydmVyLWNtZC1hdXRoLmMgfCAxICsKIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL3NyYy9s
aWItc210cC9zbXRwLXNlcnZlci1jbWQtYXV0aC5jIGIvc3JjL2xpYi1zbXRw
L3NtdHAtc2VydmVyLWNtZC1hdXRoLmMKaW5kZXggMjRjYjU1YWRlLi4wZDgw
NjJjYWEgMTAwNjQ0Ci0tLSBhL3NyYy9saWItc210cC9zbXRwLXNlcnZlci1j
bWQtYXV0aC5jCisrKyBiL3NyYy9saWItc210cC9zbXRwLXNlcnZlci1jbWQt
YXV0aC5jCkBAIC05OSw2ICs5OSw3IEBAIHN0YXRpYyB2b2lkIGNtZF9hdXRo
X2lucHV0KHN0cnVjdCBzbXRwX3NlcnZlcl9jbWRfY3R4ICpjbWQpCiAJCQlz
bXRwX3NlcnZlcl9jb25uZWN0aW9uX2RlYnVnKGNvbm4sCiAJCQkJIkNsaWVu
dCBzZW50IGludmFsaWQgQVVUSCByZXNwb25zZTogJXMiLCBlcnJvcik7CiAK
KwkJCXNtdHBfc2VydmVyX2NvbW1hbmRfaW5wdXRfbG9jayhjbWQpOwogCQkJ
c3dpdGNoIChlcnJvcl9jb2RlKSB7CiAJCQljYXNlIFNNVFBfQ09NTUFORF9Q
QVJTRV9FUlJPUl9CUk9LRU5fQ09NTUFORDoKIAkJCQljb25uLT5pbnB1dF9i
cm9rZW4gPSBUUlVFOwotLSAKMi4xMS4wCgo=

------=_Part_4848_1919261444.1556631305684--

------=_Part_214_1640106607.1556631305809
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: BCPG v1.61

iQEcBAABCgAGBQJcyE8JAAoJEBk7Y2OzREIGxigH/j7pYzs7daJ7O48zVZgQunAs
tfm6+AKhI8XMfSbtbdzF7k9aO6GdsxyonRJ/GBzBFnSLzUsyfTVBx0rFD2Og25yW
K5niUtYM9M5khzo+J+3bcIuddhpQFK6UoVtJARZ5SJyyIS9m7m2BBoZAq03Ekfvp
rX1WgWN03BuAztTYd+q0an1zMdgXMhJrqZDnqbRx/lRbUo3ajCVYCn7+zmjqoYMh
hp0p4ymjgSLJPrbXr89hY4iiyS44JQohkzmh80omv0J21M14h1a1WGD7nG9f1VwD
EJqakMuOHI7gcj6lYUU11f/6pByWlYY8pv1E6Nvt8a+X1WOPmhKUyzv1POJCZMU=
=Wj4S
-----END PGP SIGNATURE-----

------=_Part_214_1640106607.1556631305809--
