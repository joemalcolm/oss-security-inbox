X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4936" "Wednesday" "27" "July" "2016" "16:26:37" "-0400" "Jesse Hertz" "jesse.hertz@nccgroup.trust" "<B760F07C-908F-431A-8BCE-A3AE9E93E33F@nccgroup.trust>" "116" "Re: [oss-security] cve request: systemd-machined: information exposure for docker containers" "^Date:" nil nil "7" "2016072720:26:37" "[oss-security] cve request: systemd-machined: information exposure for docker containers" (number mark "        jesse.hertz@ Jul 27  116/4936  " thread-indent "\"Re: [oss-security] cve request: systemd-machined: information exposure for docker containers\"\n") "<20160727200021.GB3330@motoko>" ("<1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>" "<20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>" "<20160727170537.GA3330@motoko>" "<398a8ff1-a2ea-9140-c695-c1969ffc58af@redhat.com>" "<20160727200021.GB3330@motoko>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24207 invoked by uid 550); 27 Jul 2016 20:27:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24157 invoked from network); 27 Jul 2016 20:27:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nccgroup.trust; s=dkim20160329; t=1469651214; bh=fZb9TfORGq9gOLQrjP7lav5KLE8S1LTv5sJTPKfjGEI=; h=Content-Type:MIME-Version:Subject:From:In-Reply-To:Date:Message-ID:References:To; b=e3dHuJuBaR8G8PYvwuifPnCXg2epOjcQfqk145DdUW+sS1LIqAOBMHNRF4xSn11kjwxDHILyYdZcyfyXwI5tb5JEdWAz9j/HN1e5FpR9jwBilmPbIBTIl0+B6JC3oFWZRrDEvIIcfolKwxiv610AFZZ1AlH2hWIiiLQ6VCUDpEU=
X-MC-Unique: yOUShtJdPdGefwiSkjV3Iw-1
X-PGP-Universal: processed;
	by lon1srvpgp01p.nccgroup.local on Wed, 27 Jul 2016 21:26:50 +0100
Content-Type: multipart/signed;
	boundary="Apple-Mail=_0B61A405-9D15-497F-9966-3D69C78A8899";
	protocol="application/pgp-signature"; micalg=pgp-sha512
MIME-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail
In-Reply-To: <20160727200021.GB3330@motoko>
Message-ID: <B760F07C-908F-431A-8BCE-A3AE9E93E33F@nccgroup.trust>
References: <1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com> <20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org> <20160727170537.GA3330@motoko> <398a8ff1-a2ea-9140-c695-c1969ffc58af@redhat.com> <20160727200021.GB3330@motoko>
X-Mailer: Apple Mail (2.2104)
X-Originating-IP: [172.20.1.120]
X-ClientProxiedBy: MANCASEXCH02.nccgroup.local (10.1.120.102) To
 MANDBSEXCH03.nccgroup.local (10.1.120.104)
signature: OK
Date: Wed, 27 Jul 2016 16:26:37 -0400
From: Jesse Hertz <jesse.hertz@nccgroup.trust>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] cve request: systemd-machined: information exposure for docker containers
To: <oss-security@lists.openwall.com>

--Apple-Mail=_0B61A405-9D15-497F-9966-3D69C78A8899
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Just to chime in here, since a docker container would be inside its own PID=
 namespace, running =E2=80=98ps=E2=80=99 inside a container would not show =
you other processes/containers running on the same host.
A similar =E2=80=9Cvulnerability" I =E2=80=9Cfound=E2=80=9D was patched in =
Docker earlier (tl;dr '/proc/sched_debug=E2=80=99 is not pid namespace awar=
e).

-jh
> On Jul 27, 2016, at 4:00 PM, Christian Rebischke <Chris.Rebischke@archlin=
ux.org> wrote:
>=20
> On Wed, Jul 27, 2016 at 01:27:08PM -0400, Daniel J Walsh wrote:
>>=20
>>=20
>> On 07/27/2016 01:05 PM, Christian Rebischke wrote:
>>> On Tue, Jul 26, 2016 at 03:24:13PM -0400, cve-assign@mitre.org wrote:
>>>> -----BEGIN PGP SIGNED MESSAGE-----
>>>> Hash: SHA256
>>>>=20
>>>>> Once docker containers register themselves to systemd-machined
>>>>> by oci-register-machine. Any unprivileged user could run
>>>>> machinectl to list every single containers running in the host
>>>>> even if the containers do not belong to this user (including containe=
rs
>>>>> belong to the root user), and access sensitive information associated
>>>>> with any individual container including its internal IP address, OS
>>>>> version, running processes, and file path for its rootfs.
>>>>>=20
>>>>> $ machinectl status cc8d10c7b9892b75843d200d54d34a3a
>>>>> cc8d10c7b9892b75843d200d54d34a3a(63633864313063376239383932623735)
>>>>>           Since: Mon 2016-07-25 17:55:36 UTC; 34s ago
>>>>>          Leader: 43494 (sleep)
>>>>>         Service: docker; class container
>>>>>            Root: /var/mnt/overlay/overlay/0429684e3da515ae4f11b8514c7=
b20f759613
>>>>>         Address: 172.17.0.2
>>>>>                  fe80::42:acff:fe11:2
>>>>>              OS: Red Hat Enterprise Linux Server 7.2 (Maipo)
>>>>>            Unit: docker-cc8d10c7b9892b75843d200d54d34a3a9435fe0f65527=
c254ebfd2d
>>>>>                  43494 sleep 3000
>>>> Use CVE-2016-6349.
>>> Hello,
>>> I don't think that the bug for this problem lies in systemd.
>>> It's more a design mistake in docker or oci-register-machine.
>>> I have forwarded this issue to the systemd developer team and I don't
>>> think they will fix this in the future. In their opinion it's a
>>> bug in docker or oci-register-machine:
>>>=20
>>> https://github.com/systemd/systemd/issues/3815
>>>=20
>>> by the way.. I would feel glad if the security researchers would first
>>> message the developers and then assign a CVE a bug. This is the normal
>>> way for a full disclosure.
>>>=20
>>> best regards,
>>>=20
>>> Christian Rebischke
>> Why is this a bug in oci-register-machine?  All it is doing is calling
>> the systemd-machine call to register with it using the three flags
>> available.
>> Is systemd saying we should not use that call?
>=20
> Let me quote Lennart Poettering:
>=20
> ---
> machined is a system service and is for registering containers running
> on the system. There's no concept of "user containers" with that, and
> unprivileged users do not have the privileges to even register any
> containers with machined.
>=20
> If you ask me the CVE is complete and utter rubbish. At least against
> systemd. If Docker knows a concept of user containers, then good for
> them, but in that case they shouldn't register them with machined
> really, if they are not supposed to be visible on the host.
>=20
> Generally though I think the CVE is without merit entirely, after all
> "ps" is generally unrestricted, and hence you can always see container
> processes running on the host anyway.
> ---
>=20
> In my opinion I would say you shouldn't use this call if you don't want
> an information leak. Even if systemd would fix the output of
> `machinectl status ..`. The information leak would still be there
> because you could still see informations about the container with `ps`
> or other tools. systemd is not designed for 'user containers'.
>=20
> If yo have further questions. I would say that you ask the
> systemd-developers on their mailing list directly.


--Apple-Mail=_0B61A405-9D15-497F-9966-3D69C78A8899
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="signature.asc"
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQEcBAEBCgAGBQJXmRj9AAoJEPhkPVYKhDWb6CgH/21mI6fjXxwYP0GZhZhbrg5l
9Yzs86bnekS2zDS90i9D9o4S88YrfLQeexITNsGkQsGxa+07oFWHXx1DbBbQdqOm
XdCG2MM+/ZA31UW2RBd3Ts8uJtnS3LFseGVEl3EmAJdqFv1Anf1feOcV20slUc2q
9FljnRYeqhhc//5iC8TWPCVnWirHH9egfQjY36de81RcO6sItsKpHhEEiPloM6Md
s3sDwQCE3Xo3JoHoOWkj6Ll/Jdx0cCgaVSPN9PZYB+/FaTwbFA3oxQdE1I1wYZOT
8E5JlPyowBzmYEvOoih+vhe1PvHukhEgtg1nCv4tlXthDwPzPG9pj/1P69Q1/6k=
=XwKh
-----END PGP SIGNATURE-----

--Apple-Mail=_0B61A405-9D15-497F-9966-3D69C78A8899--

