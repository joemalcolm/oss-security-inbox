X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1528" "Wednesday" "22" "July" "2015" "14:16:27" "+0200" "Markus Vervier" "markus.vervier@lsexperts.de" "<55AF899B.4090104@lsexperts.de>" "45" "Re: [oss-security] CVE Request: AWS s2n" nil nil nil "7" "2015072212:16:27" "[oss-security] CVE Request: AWS s2n" (number mark "U       markus.vervi Jul 22   45/1528  " thread-indent "\"Re: [oss-security] CVE Request: AWS s2n\"\n") "<DEC09A5F-2AE7-405F-AC80-5E672B8451A6@amazon.com>" ("<55A525D8.5060303@lsexperts.de>" "<55A52F41.8070702@redhat.com>" "<55A58720.6020105@lsexperts.de>" "<55A5A594.9040100@redhat.com>" "<cig332lhei9qz8.fsf@u54ee75415b8454d5169f.ant.amazon.com>" "<DEC09A5F-2AE7-405F-AC80-5E672B8451A6@amazon.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1841 invoked by uid 550); 22 Jul 2015 12:16:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1812 invoked from network); 22 Jul 2015 12:16:39 -0000
Message-ID: <55AF899B.4090104@lsexperts.de>
Date: Wed, 22 Jul 2015 14:16:27 +0200
From: Markus Vervier <markus.vervier@lsexperts.de>
User-Agent: foomail 3.1337
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <55A525D8.5060303@lsexperts.de> <55A52F41.8070702@redhat.com> <55A58720.6020105@lsexperts.de> <55A5A594.9040100@redhat.com> <cig332lhei9qz8.fsf@u54ee75415b8454d5169f.ant.amazon.com> <DEC09A5F-2AE7-405F-AC80-5E672B8451A6@amazon.com>
In-Reply-To: <DEC09A5F-2AE7-405F-AC80-5E672B8451A6@amazon.com>
Content-Type: multipart/alternative;
 boundary="------------000702040606030508010800"
Subject: Re: [oss-security] CVE Request: AWS s2n

--------------000702040606030508010800
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On 15.07.2015 03:57, MacCarthaigh, Colm wrote:
> like our first cut. That restriction also means that we=E2=80=99re not se=
eing any production usage from
downstream adopters, or downstream packaging. I=E2=80=99m not aware of anyo=
ne
using s2n as a client.

Hi Colm,

thx for the long explanation, I see your point. I just have to add that
I would recommend to not compile client mode code regarded as
insecure/unstable into the library by default. Even if somewhat guarded
by an environment variable.

Markus

- --=20
Markus Vervier (IT Security Consultant and Software Developer),
http://www.lsexperts.de
LSE Leading Security Experts GmbH, Postfach 100121, 64201 Darmstadt
Tel.: +49 (0) 6151 86086-261, Fax: -299,
Unternehmenssitz: Weiterstadt, Amtsgericht Darmstadt: HRB8649
Gesch=C3=A4ftsf=C3=BChrer: Oliver Michel, Sven Walther
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVr4mLAAoJEK9u9A5+VXgeqEUIALhFsuAm/Owzv7JhIPzuJYjn
nWibQowQq2/x5CcQ+woqoTxqQOLLcV9Ajr07MEYf3st0SMb+NM6E6NI/1nJiAxIZ
bNBOkPoMbf+GqvFWDpuLAYcKgpD9+12X26oESX8ccIjMk7n214SUI8GKB7YcOBSM
JoWzDIGcjxP9WdhhsHtsAhibHDVV6+I89HnMFbyIGsoCP2xysW8O96dh2IGJ2SWa
dF3Yfve6FcaBIUMDvr3Ye7Gge3aoG1TIUpvqdQ31pLX+ZcUADQHfU7ohOxNO/HkM
smMES7hMoWJo20hFggKsxDswHidw3tAixVcSUMcvBl6q5xW1i70mlWdJjONEtVA=3D
=3DH0Wz
-----END PGP SIGNATURE-----


--------------000702040606030508010800--
