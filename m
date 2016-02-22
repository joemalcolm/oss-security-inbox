X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["760" "Monday" "22" "February" "2016" "13:25:33" "+0100" "Stefan Cornelius" "scorneli@redhat.com" "<20160222132533.7c9cf4f7@redhat.com>" "28" "Re: [oss-security] CVE Request -- Buffer overflow in Python-Pillow and PIL" "^Cc:" nil nil "2" "2016022212:25:33" "[oss-security] CVE Request -- Buffer overflow in Python-Pillow and PIL" (number mark "        scorneli@red Feb 22   28/760   " thread-indent "\"Re: [oss-security] CVE Request -- Buffer overflow in Python-Pillow and PIL\"\n") "<009C89DE-A7D7-4E3E-875A-13C4A916676D@soroos.net>" ("<009C89DE-A7D7-4E3E-875A-13C4A916676D@soroos.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15629 invoked by uid 550); 22 Feb 2016 12:25:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15611 invoked from network); 22 Feb 2016 12:25:51 -0000
Message-ID: <20160222132533.7c9cf4f7@redhat.com>
In-Reply-To: <009C89DE-A7D7-4E3E-875A-13C4A916676D@soroos.net>
References: <009C89DE-A7D7-4E3E-875A-13C4A916676D@soroos.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Cc: oss-security@lists.openwall.com, cve-assign@mitre.org
Date: Mon, 22 Feb 2016 13:25:33 +0100
From: Stefan Cornelius <scorneli@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request -- Buffer overflow in Python-Pillow
 and PIL
To: Eric Soroos <eric@soroos.net>

On Tue, 2 Feb 2016 18:51:24 +0000
Eric Soroos <eric@soroos.net> wrote:

> Hello,=20
>=20
> I=E2=80=99d like to request a CVE number for all versions of Python Pillo=
w <=3D
> 3.1.0  and PIL =3D=3D 1.1.7 (at the least).=20
>=20
> There is a buffer overflow in PcdDecode.c, where the decoder writes
> assuming 4 bytes per pixel into a 3 byte per pixel wide buffer,
> allowing writing 768 bytes off the end of the buffer. This overwrites
> objects in Python's stack, leading to a crash.=20
>=20
> This issue and the patch are public:
> https://github.com/python-pillow/Pillow/pull/1706
>=20
> Thanks,=20
>=20
> Eric

Hi,

I don't think this ever got a CVE? Could one please be assigned?

Thanks and kind regards,
--=20
Stefan Cornelius / Red Hat Product Security
