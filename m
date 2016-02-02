X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["701" "Tuesday" "2" "February" "2016" "18:51:24" "+0000" "Eric Soroos" "eric@soroos.net" "<009C89DE-A7D7-4E3E-875A-13C4A916676D@soroos.net>" "23" "[oss-security] CVE Request -- Buffer overflow in Python-Pillow and PIL" "^Cc:" nil nil "2" "2016020218:51:24" "[oss-security] CVE Request -- Buffer overflow in Python-Pillow and PIL" (number mark "        eric@soroos. Feb  2   23/701   " thread-indent "\"[oss-security] CVE Request -- Buffer overflow in Python-Pillow and PIL\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11519 invoked by uid 550); 2 Feb 2016 19:06:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1830 invoked from network); 2 Feb 2016 18:51:51 -0000
Content-Type: multipart/alternative; boundary="Apple-Mail=_5A547589-88A3-4948-96A1-9E8F7AE73C45"
Message-Id: <009C89DE-A7D7-4E3E-875A-13C4A916676D@soroos.net>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
Cc: cve-assign@mitre.org
Date: Tue, 2 Feb 2016 18:51:24 +0000
From: Eric Soroos <eric@soroos.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request -- Buffer overflow in Python-Pillow and PIL
To: oss-security@lists.openwall.com

--Apple-Mail=_5A547589-88A3-4948-96A1-9E8F7AE73C45
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252

Hello,=20

I=92d like to request a CVE number for all versions of Python Pillow <=3D 3=
.1.0  and PIL =3D=3D 1.1.7 (at the least).=20

There is a buffer overflow in PcdDecode.c, where the decoder writes assumin=
g 4 bytes per pixel into a 3 byte per pixel wide buffer, allowing writing 7=
68 bytes off the end of the buffer. This overwrites objects in Python's sta=
ck, leading to a crash.=20

This issue and the patch are public:  https://github.com/python-pillow/Pill=
ow/pull/1706

Thanks,=20

Eric=

--Apple-Mail=_5A547589-88A3-4948-96A1-9E8F7AE73C45--
