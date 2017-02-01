X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4628" "Wednesday" "1" "February" "2017" "07:44:15" "+0100" "Laszlo Boszormenyi (GCS)" "gcs@debian.org" "<1485931455.2391.3.camel@debian.org>" "87" "[oss-security] CVE-2017-0358 ntfs-3g: modprobe influence vulnerability via environment variables" nil nil nil "2" "2017020106:44:15" "[oss-security] CVE-2017-0358 ntfs-3g: modprobe influence vulnerability via environment variables" (number mark "U       gcs@debian.o Feb  1   87/4628  " thread-indent "\"[oss-security] CVE-2017-0358 ntfs-3g: modprobe influence vulnerability via environment variables\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27971 invoked by uid 550); 1 Feb 2017 10:58:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22044 invoked from network); 1 Feb 2017 06:44:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:message-id:subject:from:to:date:organization:mime-version;
        bh=e0FT8mL6QJHyX2kYgez3LgbgfdARm5CRnQl8CpgiTwg=;
        b=SAsAVdb9e9YVEv0V6jP/VhQd1y/TYTYutN+xLlKmFwT7Kl/45CQJGXCKCwUo+0ryvk
         CQSllsyYzN+gqqfyOWuSgOJ5TuDkY2F72Rsp3FO4XTGOkdM2uutxJ3QxwFAoegmV/w+s
         rOe193ppt5RoJz6z2gxCXXCe9UO+sVPDK8Efzd/QiXcKNg4khLgowaOeXomLaPC1e1FQ
         yJ/fNXarowGZZIUfRi1mnzAoTbH0+IhmFRJr8hXSTU/WcOEFnyD714gQ9x23c6DtM2/0
         U7HKpPkxJuq5K0Bsxzbshcz/vz2GwRxbaOAIF4OnvYwq83pL9vmTBJtH9imQY19IQarS
         ++TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:message-id:subject:from:to:date
         :organization:mime-version;
        bh=e0FT8mL6QJHyX2kYgez3LgbgfdARm5CRnQl8CpgiTwg=;
        b=LNzl4io/nn/dlA5iJCvP0u/4n4BTxY5+Edvt2ziQlGiiWHvNLuJxaqS4KjPxn5x/xG
         SvcHe2PUCDTfYQ0e0EMd9AtqPaahr0wL/agT+AQkw2Q2wyzIZyflSzk8E5zsqQuop359
         BuWzsquBBbWr1FfJK+E+J5XkSbONCF4JSBeywhDZtNk7QTCgy/yIlmdE6ean3Bq5oSLv
         KCbfw9yjzrcyj1l4WEAQT0vLoDmql4YCnmD4ZUDdb7fxA5AL4aBYd0Li92jwSin3hb5+
         kKVwRSFW+rMZPCx7H9qvPUIz9SzYgPmuBMigAaNFiw2h0dUWcqcBbmMtrbItSg56Dv0v
         0lfA==
X-Gm-Message-State: AIkVDXJ6wxl4GRVvFS25NMm5HQ/BlQL3I4QWZVoBbmmGQfkdiLdww6dSsuJr61LLfVaXqA==
X-Received: by 10.28.185.77 with SMTP id j74mr1433774wmf.76.1485931467107;
        Tue, 31 Jan 2017 22:44:27 -0800 (PST)
Sender: =?UTF-8?B?TMOhc3psw7MgQsO2c3rDtnJtw6lueWk=?= <gcs.debian.org@gmail.com>
Message-ID: <1485931455.2391.3.camel@debian.org>
From: "Laszlo Boszormenyi (GCS)" <gcs@debian.org>
To: oss security list <oss-security@lists.openwall.com>
Date: Wed, 01 Feb 2017 07:44:15 +0100
Organization: Debian
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-jYc/2m4/0WNNJIwT/ih/"
X-Mailer: Evolution 3.22.4-1 
Mime-Version: 1.0
Subject: [oss-security] CVE-2017-0358 ntfs-3g: modprobe influence vulnerability via
 environment variables

--=-jYc/2m4/0WNNJIwT/ih/
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

SGksCgpKYW5uIEhvcm4sIFByb2plY3QgWmVybyAoR29vZ2xlKSBkaXNjb3Zl
cmVkIHRoYXQgbnRmcy0zZywgYSByZWFkLXdyaXRlCk5URlMgZHJpdmVyIGZv
ciBGVVNFIGRvZXMgbm90IG5vdCBzY3J1YiB0aGUgZW52aXJvbm1lbnQgYmVm
b3JlCmV4ZWN1dGluZyBtb2Rwcm9iZSB0byBsb2FkIHRoZSBmdXNlIG1vZHVs
ZS4gVGhpcyBpbmZsdWVuY2UgdGhlIGJlaGF2aW9yCm9mIG1vZHByb2JlIChN
T0RQUk9CRV9PUFRJT05TIGVudmlyb25tZW50IHZhcmlhYmxlLCAtLWNvbmZp
ZyBhbmQKLS1kaXJuYW1lIG9wdGlvbnMpIHBvdGVudGlhbGx5IGFsbG93aW5n
IGZvciBsb2NhbCByb290IHByaXZpbGVnZQplc2NhbGF0aW9uIGlmIG50ZnMt
M2cgaXMgaW5zdGFsbGVkIHNldHVpZC4gVGhpcyBpcyB0aGUgY2FzZSBmb3Ig
RGViaWFuLApVYnVudHUgYW5kIHByb2JhYmx5IEdlbnRvby4KClRoaXMgcHJv
YmxlbSBpcyBpbiB0aGUgc291cmNlIHNpbmNlIDIwMDgsIG1heWJlIGJlZm9y
ZS4KVGhlIGZpeCBpcyBlYXN5LCB1c2UgZXhlY2xlIGluc3RlYWQgb2YgZXhl
Y2wgYW5kIHBhc3MgTlVMTCBhcwplbnZpcm9ubWVudCB2YXJpYWJsZXMuCi0t
IGN1dCAtLQotLS0gbnRmcy0zZy9zcmMvbG93bnRmcy0zZy5jLnJlZsKgwqDC
oMKgwqDCoMKgwqAyMDE2LTEyLTMxIDA4OjU2OjU5LjAxMTc0OTYwMCArMDEw
MAorKysgbnRmcy0zZy9zcmMvbG93bnRmcy0zZy5jwqDCoMKgwqAyMDE3LTAx
LTA1IDE0OjQxOjUyLjA0MTQ3MzcwMCArMDEwMApAQCAtNDI5MSwxMyArNDI5
MSwxNCBAQArCoMKgwqDCoMKgwqDCoMKgc3RydWN0IHN0YXQgc3Q7CsKgwqDC
oMKgwqDCoMKgwqBwaWRfdCBwaWQ7CsKgwqDCoMKgwqDCoMKgwqBjb25zdCBj
aGFyICpjbWQgPSAiL3NiaW4vbW9kcHJvYmUiOworwqDCoMKgwqDCoMKgwqBj
aGFyICplbnYgPSAoY2hhciopTlVMTDsKwqDCoMKgwqDCoMKgwqDCoHN0cnVj
dCB0aW1lc3BlYyByZXEgPSB7IDAsIDEwMDAwMDAwMCB9O8KgwqDCoC8qIDEw
MCBtc2VjICovCsKgwqDCoMKgwqDCoMKgwqBmdXNlX2ZzdHlwZSBmc3R5cGU7
CgrCoMKgwqDCoMKgwqDCoMKgaWYgKCFzdGF0KGNtZCwgJnN0KSAmJiAhZ2V0
ZXVpZCgpKSB7CsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGlk
ID0gZm9yaygpOwrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlm
ICghcGlkKSB7Ci3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgZXhlY2woY21kLCBjbWQsICJmdXNlIiwgTlVMTCk7CivC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ZXhlY2xlKGNtZCwgY21kLCAiZnVzZSIsIE5VTEwsICZlbnYpOwrCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBfZXhp
dCgxKTsKwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9IGVsc2Ug
aWYgKHBpZCAhPSAtMSkKwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgd2FpdHBpZChwaWQsIE5VTEwsIDApOwotLS0g
bnRmcy0zZy9zcmMvbnRmcy0zZy5jLnJlZsKgwqDCoDIwMTYtMTItMzEgMDg6
NTY6NTkuMDIyNTE4NzAwICswMTAwCisrKyBudGZzLTNnL3NyYy9udGZzLTNn
LmPCoMKgwqDCoMKgwqDCoDIwMTctMDEtMDUgMTU6NDU6NDUuOTEyNDk5NDAw
ICswMTAwCkBAIC0zODg1LDEzICszODg1LDE0IEBACsKgwqDCoMKgwqDCoMKg
wqBzdHJ1Y3Qgc3RhdCBzdDsKwqDCoMKgwqDCoMKgwqDCoHBpZF90IHBpZDsK
wqDCoMKgwqDCoMKgwqDCoGNvbnN0IGNoYXIgKmNtZCA9ICIvc2Jpbi9tb2Rw
cm9iZSI7CivCoMKgwqDCoMKgwqDCoGNoYXIgKmVudiA9IChjaGFyKilOVUxM
OwrCoMKgwqDCoMKgwqDCoMKgc3RydWN0IHRpbWVzcGVjIHJlcSA9IHsgMCwg
MTAwMDAwMDAwIH07wqDCoMKgLyogMTAwIG1zZWMgKi8KwqDCoMKgwqDCoMKg
wqDCoGZ1c2VfZnN0eXBlIGZzdHlwZTsKCsKgwqDCoMKgwqDCoMKgwqBpZiAo
IXN0YXQoY21kLCAmc3QpICYmICFnZXRldWlkKCkpIHsKwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBwaWQgPSBmb3JrKCk7CsKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKCFwaWQpIHsKLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBleGVjbChjbWQs
IGNtZCwgImZ1c2UiLCBOVUxMKTsKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBleGVjbGUoY21kLCBjbWQsICJmdXNl
IiwgTlVMTCwgJmVudik7CsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoF9leGl0KDEpOwrCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoH0gZWxzZSBpZiAocGlkICE9IC0xKQrCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB3YWl0
cGlkKHBpZCwgTlVMTCwgMCk7Ci0tIGN1dCAtLQoKQ1ZFLTIwMTctMDM1OCBp
cyBhc3NpZ25lZCB0byB0aGlzIGlzc3VlIGJ5IFNhbHZhdG9yZSBCb25hY2Nv
cnNvLApEZWJpYW7CoFNlY3VyaXR5IFRlYW0uCgpSZWdhcmRzLApMYXN6bG8v
R0NT

--=-jYc/2m4/0WNNJIwT/ih/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEfYh9yLp7u6e4NeO63OMQ54ZMyL8FAliRg78ACgkQ3OMQ54ZM
yL8M2Q/+O3BkopozYWf5Kp5uT2QvXLbe5g/B0sJTXWjoP3Y5uab0gbYWs/Ogpu+G
FN8F1YCggOpKzsZxVqQ0Fv4UWC2aRn/EAhE184NMFyRG8FpL/xKmhYnMTMRNLfoY
egVDCdBBcq2AGqt51PuDFwWPgkDtS6U3OdA6GdhEgyA1nlzaqAXkrjXp5DrDMO5B
R8kkvq+myN3DUA8xL2+cjVN3NmsT7KzQ/iW61XyxMyxeahj6AwN2GESh57jvbIrE
hLuAz1T/DzO80pTcLNdr1g4Wqrd7RwOM7hzJJP9FJRzwa+D11Zn69H9QokJ/fY8K
4RWpGxI/8gaxCVTbLOuC35IMgniPCUUUd08DG7RDL371TeWs5X70KdqkAWmR8Vrs
kBXOcTibjbio6uuKsJ3r16N11ixEUMiAiGSyJsl6SMywS4jduaODmpENtHD2cA2/
Gp7XAmE1jHOkAfGewDXThFElUZCgSuJ7BkIB4l61EdXElpFJk/pTmJxI8o47uWC7
MiTlhrwerBsjjMp1VTPJ/dbbtpFm7l0xmA8FF+M5JCoL5PBq3AQzjsxeu6QEjYxG
tvd8kl1i8+0GCV4EbX5fTdv0/2VMvHs9Ts1YCYcHbdFuX1OzsRC5lYxvYFpxk8Pt
IcPGTOpMBphF8X0PKM20pE9ZN0okBRy//YvmgYwrUpMSiqw0Wew=
=Pxz9
-----END PGP SIGNATURE-----

--=-jYc/2m4/0WNNJIwT/ih/--

