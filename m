X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1246" "Wednesday" "15" "July" "2015" "00:03:12" "+0200" "Markus Vervier" "markus.vervier@lsexperts.de" "<55A58720.6020105@lsexperts.de>" "33" "Re: [oss-security] CVE Request: AWS s2n" nil nil nil "7" "2015071422:03:12" "[oss-security] CVE Request: AWS s2n" (number mark "        markus.vervi Jul 15   33/1246  " thread-indent "\"Re: [oss-security] CVE Request: AWS s2n\"\n") "<55A52F41.8070702@redhat.com>" ("<55A525D8.5060303@lsexperts.de>" "<55A52F41.8070702@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1466 invoked by uid 550); 15 Jul 2015 00:07:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9802 invoked from network); 14 Jul 2015 22:03:24 -0000
Message-ID: <55A58720.6020105@lsexperts.de>
User-Agent: foomail 3.1337
MIME-Version: 1.0
References: <55A525D8.5060303@lsexperts.de> <55A52F41.8070702@redhat.com>
In-Reply-To: <55A52F41.8070702@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2015 00:03:12 +0200
From: Markus Vervier <markus.vervier@lsexperts.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: AWS s2n
To: oss-security@lists.openwall.com


-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On 14.07.2015 17:48, Kurt Seifried wrote:
> Reminder: Client mode is disabled and won't be enabled until X509 validat=
ion is ready. But we
can still make improvements and fixes in the meantime.
> so I'm not sure this needs a CVE as the code is not yet enabled.
Hi Kurt,

that is a valid point from you and not for me to decide.
Yet with default settings a binary is compiled (bin/s2nc) which will
work in client mode when environment variable S2N_ENABLE_CLIENT_MODE=3D1
is set (as documented). So it is possible several people were tempted to
use s2n in client mode already as the client mode code is actually
compiled into the lib and useable by default.
I guess it depends on your definition of "enabled".

Markus
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVpYcNAAoJEK9u9A5+VXgeHR0H+wQnDAGMjFmug9ohQ4pibJyZ
G2K5fVgQ9AGcjY8S7soimlW3aLiXFo4yhNXhoiJW47y1nOxcipOKc83Mr9j2PCNt
X6FFVxFfKShRfDWnaonijbrgM0H/fvqMNtEohk7VFr3PbcRHIb67Xu7gzy0EAzU2
L611K7VMGP0x681+huSX8qNfxHiyvqxgXN4bV8VUj8BHvUyhRpyramOa5KPFtvs1
cFZYBxdEVNw83CRXOY7pmJ4CIiSLEiq900bI1glJpolAmjiP/wlPaakLc7Nq1+wt
F9pXdnI+wkgi1OIajdl1CfenBlSI3SiYEQRDH52AiAUMumKpWVgdtQe4A5gTqUo=3D
=3DrHk5
-----END PGP SIGNATURE-----


