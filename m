X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8062" "Wednesday" "9" "March" "2016" "19:13:31" "+0100" "X41 D-Sec GmbH Advisories" "advisories@x41-dsec.de" "<56E067CB.8080009@x41-dsec.de>" "217" "[oss-security] Advisory X41-2016-001: Memory Corruption Vulnerability in \"libotr\"" nil nil nil "3" "2016030918:13:31" "[oss-security] Advisory X41-2016-001: Memory Corruption Vulnerability in \"libotr\"" (number mark "U       advisories@x Mar  9  217/8062  " thread-indent "\"[oss-security] Advisory X41-2016-001: Memory Corruption Vulnerability in \"libotr\"\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24474 invoked by uid 550); 9 Mar 2016 18:20:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20180 invoked from network); 9 Mar 2016 18:14:02 -0000
From: X41 D-Sec GmbH Advisories <advisories@x41-dsec.de>
To: oss-security@lists.openwall.com
Organization: X41 D-Sec GmbH
Message-ID: <56E067CB.8080009@x41-dsec.de>
Date: Wed, 9 Mar 2016 19:13:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="Jri7MW5IxOTtUuOjuFR0WuNsWjAuvdr2r"
Subject: [oss-security] Advisory X41-2016-001: Memory Corruption Vulnerability in "libotr"

--Jri7MW5IxOTtUuOjuFR0WuNsWjAuvdr2r
Content-Type: multipart/mixed; boundary="afoA9GoG5GI8sOCDO9b8Hut9P3sBTOfwT"
From: X41 D-Sec GmbH Advisories <advisories@x41-dsec.de>
To: oss-security@lists.openwall.com
Message-ID: <56E067CB.8080009@x41-dsec.de>
Subject: Advisory X41-2016-001: Memory Corruption Vulnerability in "libotr"

--afoA9GoG5GI8sOCDO9b8Hut9P3sBTOfwT
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


X41 D-Sec GmbH Security Advisory: X41-2016-001

Memory Corruption Vulnerability in "libotr"
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Overview
--------
Severity Rating: high
Confirmed Affected Version: 4.1.0 and below
Confirmed Patched Version: libotr 4.1.1
Vendor: OTR Development Team
Vendor URL: https://otr.cypherpunks.ca
Vendor Reference: OTR Security Advisory 2016-01
Vector: Remote
Credit: X41 D-Sec GmbH, Markus Vervier
Status: public
CVE: CVE-2016-2851
CVSS Score: 8.1 (High)
CVSS Vector: CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H
Advisory-URL: https://www.x41-dsec.de/lab/advisories/x41-2016-001-libotr/

Summary and Impact
------------------
A remote attacker may crash or execute arbitrary code in libotr by
sending large OTR messages.
While processing specially crafted messages, attacker controlled data on
the heap is written out of bounds.
No special user interaction or authorization is necessary in default
configurations.

Product Description
-------------------
Off-the-Record (OTR) Messaging is a cryptographic protocol used in
well-known instant messaging clients such as Pidgin, ChatSecure, Adium
and others. It is designed to work on top of existing protocols and used
worldwide to provide secure communication in insecure environments.
OTR is regarded as highly secure and according to documents revealed by
Edward Snowden one of the protocols that the NSA is not able to decrypt
via cryptanalysis.
The most commonly used implementation of OTR is "libotr" which is a pure
C code implementation of the OTR protocol.

Analysis
--------
During a manual code review X41 D-Sec GmbH discovered a remotely
exploitable vulnerability in libotr.

By sending large messages, an integer overflow can be triggered which
subsequently leads to a heap overflow on 64 bit architectures.

When a message of type OTRL_MSGSTATE_DATA is received during an
established OTR conversation, this message is passed to function
otrl_proto_accept_data in src/message.c line 1347:

	case OTRL_MSGSTATE_ENCRYPTED:
		extrakey =3D gcry_malloc_secure(OTRL_EXTRAKEY_BYTES);
		err =3D otrl_proto_accept_data(&plaintext, &tlvs, context,
		                  message, &flags, extrakey);

After base64 decoding the message and reading various values from it,
the length of a payload is read into a variable of type "unsigned int"
in file proto.c line 784:

	read_int(datalen);

It is checked that the message buffer will contain at least a "datalen"
number of bytes using read_int in proto.c line 785:

	require_len(datalen);

The macros "read_int" and "required_len" are defined in src/serial.h:

	#define require_len(l) do { \
		if (lenp < (l)) goto invval; \
	    } while(0)

	#define read_int(x) do { \
		require_len(4); \
		(x) =3D (((unsigned int)bufp[0]) << 24) | (bufp[1] << 16) | (bufp[2] <<
8) | bufp[3]; \
		bufp +=3D 4; lenp -=3D 4; \
	    } while(0)

4 bytes are read from the message buffer and interpreted as unsigned int
value.

Subsequently a buffer of size datalen+1 is allocated using malloc
in proto.c line 786:

    data =3D malloc(datalen+1);
    if (!data) {
        err =3D gcry_error(GPG_ERR_ENOMEM);
        goto err;
    }

Now data from the message is copied into this buffer using memmove in
line 791:

    memmove(data, bufp, datalen);

The vulnerability is triggered if a value of 0xFFFFFFFF (MAX_UINT) is
read from the message buffer. As datalen is of size 32-bit (unsigned
int) the operation "datalen+1" will wrap around before being passed to
malloc.
This will effectively result in a zero allocation ( malloc(0) ) which is
valid in common implementations of malloc on the x86_64 architecture.
As no addition is done in the value passed to the call to memmove, 4
gigabytes of data are copied out of bounds to the heap location pointed
to by data.

Proof of Concept
----------------
In order to successfully trigger the vulnerability, an attacker must be
able to send a data message of more than 5.5 gigabytes to a victim in
order to pass the check "require_len(datalen)".
Due to the support of fragmented OTR messages assembled by libotr this
is possible in practice. By sending 275 messages of size 20MB each, X41
was able to make libotr process such a data message successfully on a
system with 8GB of ram and 15GB of swap space.
As data types for lenp and other lengths of the message are 64 bit large
size_t types on x86_64 architectures huge messages of multiple gigabytes
are possible.
Sending such a message to a pidgin client took only a few minutes on a
fast network connection without visible signs of any attack to a user.

A proof of concept triggering a heap overwrite and crash in the
pidgin-otr plugin for the popular pidgin messenger on x86_64 Linux
architectures is available[1].

The crash occurs due to the overwrite hitting unmapped memory. Using
techniques such as heap grooming, X41 was able to inflate the heap to
more than 4GB and overwrite function pointers and arguments on the heap
in order to take over control flow. A working exploit will not be
published at this time.

Interaction by users beyond having enabled OTR is not necessary as OTR
sessions are automatically established with anyone by default in Pidgin
and other common software using libotr. This also applies to
unauthorized contacts in most default configurations.

Workarounds
-----------
As a temporary workaround on Linux and BSD systems, the amount of memory
available to the process running libotr may be limited to less than 4GB
via ulimit.

About X41 D-Sec GmbH
--------------------
X41 D-Sec is a provider of application security services. We focus
on application code reviews, design review and security testing. X41
D-Sec GmbH was founded in 2015 by Markus Vervier. We support customers
in various industries such as finance, software development and public
institutions.

Timeline
--------
2016-02-17	Discovery during a manual code review of "libotr" version 4.1.0
2016-02-17	Initial PoC
2016-02-18	Vendor contacted
2016-02-18	Vulnerability confirmed by vendor
2016-03-03	Vendor patch available
2016-03-04	CVE requested
2016-03-06	CVE-2016-2851 assigned
2016-03-09	Embargo lifted and disclosure

References
----------
[1]
https://www.x41-dsec.de/lab/advisories/x41-2016-001-libotr/otr-heap-overwri=
te-poc.py
--=20
X41 D-SEC GmbH, Dennewartstr. 25-27, D-52068 Aachen
T: +49 241 9809418-0, Fax: -9
Unternehmenssitz: Aachen, Amtsgericht Aachen: HRB19989
Gesch=C3=A4ftsf=C3=BChrer: Markus Vervier



--afoA9GoG5GI8sOCDO9b8Hut9P3sBTOfwT--

--Jri7MW5IxOTtUuOjuFR0WuNsWjAuvdr2r
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJW4GfLAAoJEKOSpaYOdAsQGQsQAICgHtPJI/4YGtepgKXhnT3L
YeLM2+4hDl0ILHEycAtd1sMdugqt4dTYQYu5AsHS1b+uZwnlniPs/CLSW41dlhxR
yRMbuUlwcEpjCd9ECwQfPn01o54/P3UWeUGAGAL3WkQ8PUX0cLq0w2762/8qDjEw
YMe73lAykAjsoG2U+kTVdOfxmXzU2lzHqYN567IC2x/3xKcJrZY7YokvkXD/iXM3
b/BgjzslirSq1jjxLZ8cK+xP70gMBklHu3d1buLLdPJhcZZbooYbJJkUQazdqRPW
Aeyk964EbnOmNbXQ5jqzf+t+BA12xPh7+zEHYnhV156OlC2hlcaONGoEUXX/QkRa
fR+irE4nwNOQ/cN3/P4WyfMYeNR4y33TF9LegjHF4YRo+sZoT5MrFCVcbsBE8SYL
jImKDoUCeaIPo1hUOYnfZ9VW+vpRe/I3RBzeDg6ONCylpESL9cajAKbgLm2s1/eT
/Fwh8k+I1JlXAwvEwkV/TLLwt5eaPoRVHzEKwQaH7BvszZW9wg6By/Hdo6nTRKDu
9IYCWnT/tX+16ZGcfEfHSNdcNmJFQfTvYsOrCizfJeSgnyLyOjxdc1GMHwu+/uzS
3p8ch+qFZ4YWo8RkDVJR5v+U8DXNcMykT2uB//kjsN9UuA2dYEdIAtl487Yi2thy
cIcI/VfMFRvsJluZXskv
=6OrL
-----END PGP SIGNATURE-----

--Jri7MW5IxOTtUuOjuFR0WuNsWjAuvdr2r--
