X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1182" "Wednesday" "22" "August" "2018" "20:11:51" "+0300" "Andrus Adamchik" "aadamchik@apache.org" "<88FF8C3C-25BF-4A80-823D-9803E8394AE8@apache.org>" "38" "[oss-security] CVE-2018-11758: Apache Cayenne XXE Vulnerability in CayenneModeler GUI tool " nil nil nil "8" "2018082217:11:51" "[oss-security] CVE-2018-11758: Apache Cayenne XXE Vulnerability in CayenneModeler GUI tool" (number mark "U       aadamchik@ap Aug 22   38/1182  " thread-indent "\"[oss-security] CVE-2018-11758: Apache Cayenne XXE Vulnerability in CayenneModeler GUI tool \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14120 invoked by uid 550); 22 Aug 2018 19:27:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24552 invoked from network); 22 Aug 2018 17:12:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:message-id:mime-version:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; bh=vzirbCv0ug3pbNjSMrFHsJfc3sZOK
	LzuYTz9UFAziNg=; b=YQJk3tKT4zoDY24BogEJD9WzB1bLCUe8pBneZYKajb6i5
	Agjhn2l7or5WnLSFUfLynIymgJgCPf0JWOYozLCVf0Kib3Ht8S0Z1X6dsjkjutAI
	wjSMXJqrtvB47xsnOr18zvWzZ9urMeLO9nlirU6zB3/hZP7DEUUiGsnfD/lksKL0
	Lg+BONhCzW4Zzi534sIswiwWD4qrl5+xvnQaq8vc3gcwzySxK+0rVEq7CP7EBADI
	MFvBMI0kVm0m4doIp/GStgKJZJ/T6Xvsm+CLqYMGzNzrjzlpdUyOXtGfSBzDL3L7
	lmiDcvrizAlWrzXux57FAZR3Cj+4wlFeV18RwwWRA==
X-ME-Proxy: <xmx:Wpl9W6qDB0BNcmfFeKg4nu1LwlxEIhYFR5ap9_QFSA5Be4sBHfYlyw>
    <xmx:Wpl9WwCRigk8J4cscRUBcdiaaWg5Hk8D4Nrhg93l2pJUQFqXObaxLQ>
    <xmx:Wpl9W7MKtax0z99WhMvN7kPORPy3ukWF83xpSURPCJ8RZNhNRQhxvw>
    <xmx:Wpl9Wzj1OzuJq9BSkD_UjCOyg6kqTd0X9ZQQ4hCHoaQaGZQhhqv0Rw>
    <xmx:Wpl9WzSx2YNV5daxqwQzfzxm9ay0uyLXvjyH2oVnoRwK6HaakYogFw>
    <xmx:Wpl9W6cyJLirHnSdvvVEaWZDZCcnYt0Bgywe-KTDK4a8f7xJJp9glw>
X-ME-Sender: <xms:Wpl9W3MaJkDuhSMFC21kFib-aAneLBYhSVCq6Dj7xtWfFHxVM_ASTw>
From: Andrus Adamchik <aadamchik@apache.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <88FF8C3C-25BF-4A80-823D-9803E8394AE8@apache.org>
Date: Wed, 22 Aug 2018 20:11:51 +0300
To: user@cayenne.apache.org,
 dev@cayenne.apache.org,
 oss-security@lists.openwall.com,
 Apache Security Team <security@apache.org>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: [oss-security] CVE-2018-11758: Apache Cayenne XXE Vulnerability in CayenneModeler
 GUI tool 

CVE-2018-11758: Apache Cayenne XXE Vulnerability in CayenneModeler GUI tool=
=20

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
Cayenne 4.1.M1
Cayenne 3.2.M1, 4.0.M2 to 4.0.M5, 4.0.B1, 4.0.B2, 4.0.RC1
Cayenne 3.1, 3.1.1, 3.1.2
The unsupported Cayenne 2.0.x, 3.0.x versions may be also affected

Description:
CayenneModeler is a desktop GUI tool for working with Cayenne ORM models st=
ored as XML files.
If an attacker tricks a user of CayenneModeler into opening a malicious XML=
 file, the attacker
will be able to instruct the XML parser built into CayenneModeler to transf=
er files from a local
machine to a remote machine controlled by the attacker. The cause of the is=
sue is XML=20
parser processing XML External Entity (XXE) declarations included in XML. T=
he vulnerability is
addressed in Cayenne by disabling XXE processing in all operations that req=
uire XML parsing.

Mitigation:
4.1.x users should upgrade to 4.1.M2 or newer.
4.0.x users should upgrade to 4.0 (GA release).
3.1.x users should upgrade to 3.1.3.

References:=20
https://www.owasp.org/index.php/XML_External_Entity_(XXE)_Processing

---
Andrus Adamchik
Apache Cayenne PMC=
