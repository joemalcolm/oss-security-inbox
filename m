X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6116" "Sunday" "22" "March" "2015" "14:15:32" "-0400" "Donald Stufft" "donald@stufft.io" "<B4A0F2FB-FAE2-4ECB-A158-82F55DAAA580@stufft.io>" "138" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032218:15:32" "[oss-security] CVE for Kali Linux" (number mark "        donald@stuff Mar 22  138/6116  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<550F01FF.1010208@redhat.com>" ("<550EE478.70005@redhat.com>" "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>" "<20150322172300.GA21110@openwall.com>" "<550F01FF.1010208@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24385 invoked by uid 550); 22 Mar 2015 18:15:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24365 invoked from network); 22 Mar 2015 18:15:46 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=stufft.io; h=
	x-sasl-enc:content-type:mime-version:subject:from:in-reply-to
	:date:message-id:references:to; s=mesmtp; bh=FrqrwUlaq4/xu7QL3vP
	TEfNsQhQ=; b=glrxgYRnEpSJPs9/xMNgBn7EDixkEvN/5OC6T03La/3OafJ0vFn
	R4wtQnwWKKBqOUPQRIXIz3CmJ4Mahjjjn1ONsmrHFy4XG/vgsInuQtYwjJ66amk/
	ufflwMOj+eROutCKxgxnsKIpvEY1qn2mhOG1IYUnq3xd/6xg2kY1w080=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=x-sasl-enc:content-type:mime-version
	:subject:from:in-reply-to:date:message-id:references:to; s=
	smtpout; bh=FrqrwUlaq4/xu7QL3vPTEfNsQhQ=; b=i1NVbg+DBL/S44iudQMY
	RMQCbkXhtEDkTcodnxzfFYjfNqAo/E9QL8x6FKormjauhcuvIrJcpuw7hM3G7FFX
	mpnnQlIowUF9/AmwQTKqgIcD2eNWqqVHBmDJV7kcBpPAA/5K0BmqWG2sTrQPrakm
	SElvpyyq9YSBnJmjxzEOapE=
X-Sasl-enc: ElK3ISovRbzcwOI7S5pZ0WIKomjwF1JmNSMM3YoBqN5E 1427048133
Content-Type: multipart/signed; boundary="Apple-Mail=_7D82FCA2-CE34-4229-8BFB-E4A797428307"; protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
X-Pgp-Agent: GPGMail 2.5b6
In-Reply-To: <550F01FF.1010208@redhat.com>
Message-Id: <B4A0F2FB-FAE2-4ECB-A158-82F55DAAA580@stufft.io>
References: <550EE478.70005@redhat.com> <E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com> <20150322172300.GA21110@openwall.com> <550F01FF.1010208@redhat.com>
X-Mailer: Apple Mail (2.2070.6)
Date: Sun, 22 Mar 2015 14:15:32 -0400
From: Donald Stufft <donald@stufft.io>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

--Apple-Mail=_7D82FCA2-CE34-4229-8BFB-E4A797428307
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


> On Mar 22, 2015, at 1:55 PM, Kurt Seifried <kseifried@redhat.com> wrote:
>=20
> On 03/22/2015 11:23 AM, Solar Designer wrote:
>> On Sun, Mar 22, 2015 at 12:54:57PM -0400, David A. Wheeler wrote:
>>> On 2015-02-26 I reported to Cygwin that they had a similar man-in-the-m=
iddle issue.
>>> The Cygwin package manager (which downloaded all other packages) was un=
protected
>>> and downloaded using http (as http://cygwin.com/setup-x86.exe or http:/=
/cygwin.com/setup-x86_64.exe).
>>> They changed it to load with HTTPS, and later added HTTP Strict Transpo=
rt Security (HSTS).
>>=20
>> IMO, http vs. https is a red herring.  We shouldn't be focusing on
>> security of software downloads, but rather on authenticity of the
>> software.  If the distribution web server gets compromised, https
>> doesn't help.  Thus, GPG signatures and the like.
>=20
> The problem is to do this you need some key/shared secret/verifiable
> secret, e.g. a GPG key. How do I get the GPG key securely?
>=20
> In reality most system, for better or worse, ship with a set of
> certificate roots that can be used (in theory) to prove the validity of
> a web site. Hence the HTTP vs HTTPS debate. Sadly, HTTPS is the best we
> have for that initial bootstrap often.
>=20
> My personal thought on this is the same reason I sign all my email. I
> don't sign my email for security reasons, so much as to prove the
> validity of the key, e.g. at this point either I truly am
> keifried@redhat.com or someone has been impersonating me for so long and
> getting away with it, they might as well be me.
>=20
> So in the case of an ISO download that is GPG signed how do I verify the
> key is correct? If this is all done over HTTP it is pretty trivial for
> an attacker to run a Man in the Middle proxy that string replaces they
> key/signature as needed. HTTPS significantly raises this bar, it goes
> from "run off the shelf Squid/etc" to "convince a CA to give you a wonky
> certificate".
>=20
>> I don't care about CVEs much, but if CVEs start being assigned to
>> anything like this, they should be for lack of signatures or lack of
>> signature verification in the vendor's recommended software installation
>> or update mechanism or lack of a way to verify the signing key or lack
>> of key verification in the vendor's recommended procedures (where
>> applicable).  (With key verification, it gets tricky.  So probably those
>> issues are not CVE-worthy yet, except in extreme cases where e.g. new
>> signing keys would be downloaded automatically with no verification.)
>=20
> That is what we have done in past, however in this case my question is
> still "if a vendor provides a download securely, but then advises people
> to do something really insecure, does that win a CVE=94.

To be clear, I have a massive +1 on getting anything behind HTTPS, but IIRC
CVEs are only for vulnerabilities in software that get distributed? In other
words, the lack of HTTPS on a particular site is not a CVE worthy issue, but
if some software that connects to HTTPS sites doesn=92t verify the TLS then
that is a vulnerability?

The line does get grey in the terms of tooling designed to interact with a
particular domain that does not have HTTPS enabled.

However in a more pertinent note, it looks like Kali Linux downloads are ho=
sted
over HTTPS with SHA1 digests (which are signed by GPG), when I clicked on t=
he
link to actually download them I was taken to: https://www.kali.org/downloa=
ds/

So it sounds like in this case the docs that the thread originally started =
with
are likely just outdated? There=92s SSL stripping issues of course, since t=
he
docs themselves are not hosted via HTTPS someone can MITM those to rewrite =
the
instructions to point to somewhere else=85 but that quickly starts getting =
into
the weeds in terms of a CVE-worthiness.

>=20
>> They should not be for use of http, nor for https vulnerabilities.
>>=20
>> https does offer a security aspect that signatures don't: it hides from
>> some observers which exact software is being downloaded (and maybe that
>> it's a software download at all).  It doesn't do that perfectly because
>> the target address and transfer timings and sizes may be revealing, but
>> I do acknowledge there's some subtle improvement over http here.  I just
>> think this is far less important than ensuring authenticity of the
>> software.  So let's demand signatures and signature verification first,
>> and let's not be distracted by http vs. https.
>=20
> How do you propose we bootstrap secure key distribution and verification
> then? This is a real world problem with no easy solution.
>=20
>> Alexander
>>=20
>=20
> --
> Kurt Seifried -- Red Hat -- Product Security -- Cloud
> PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
>=20

---
Donald Stufft
PGP: 7C6B 7C5D 5E2B 6356 A926 F04F 6E3C BCE9 3372 DCFA


--Apple-Mail=_7D82FCA2-CE34-4229-8BFB-E4A797428307
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJVDwbEAAoJEG48vOkzctz6HJ8P/j3Lp26h60aZCy9V3fM/mKsc
C/iusKjY8mZLS67Fee6fzaJA97vQeQ4OLnYCWSptuzarboAqv2FEa+fDxrnLsslw
jKk46mW4Jpu0ytIMhg8cBT6a7ZgG+AU6f9Yf612wttUgt0Og75fibarHMXNN3Yhy
Vo5dbpId62Dd+TBS7WqHx3tphiq8jyLckhywvrJdAGBEo7Nmfh8OsfZX/Za4lwe9
VV0IQzQhc0kfBTbgHiOGa2zWZRAWlCKvy1lt391wYGgkMo+Y2hkIksg3cxdNhyzc
P/h54fftG0DrI4kDhPQOvk4VmyOSyyt/5Foz4z6AmieEZ4UGGp2bwlBWMAhMRvhD
TNaUQ1JAjq/NEuhqJQa1ttAXYWOI5x3E2onuSHMmn0Jupyyp9qNDlVWOl10CJ4/o
faI/LxBDpULZo3M5r1zhlg+C0MhoxHID2GMvNYfc+aU2yS5/4Yug6DjOEbF/LSl2
7T1sgYu3/H9CkgXskp/TLQVxeJ8hd62HXeKn6h7X3pD1lPqkFK8C+CqKg7Oc8fL8
JnkdPBh9Mvloa40Fq84P3oWEe/XSp1k6jmxRwiFgc9DAW0Y6mfqn8/RhezqsZhj4
MC8ntczLgEP5FIWHyNHJ3W43O68Wn4ZwEGP//eXCLRvz4GA+0yPnxSfJrg7JcmC6
F2gAuF13MTLSonGNZsQN
=91D7
-----END PGP SIGNATURE-----

--Apple-Mail=_7D82FCA2-CE34-4229-8BFB-E4A797428307--
