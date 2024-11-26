Received: (qmail 3807 invoked by uid 550); 26 Nov 2024 05:31:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29696 invoked from network); 26 Nov 2024 05:23:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hexsys.org;
	s=protonmail2; t=1732598614; x=1732857814;
	bh=e/9W7cNnxu+HDXwbf7LC6Jl/W18864vi1/jYhpILXYQ=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=RILIxVM35etIbbio+UlGLN+nrLDR05DEATOhxlf4znt+o39KzyzycCYnxmujAy8rG
	 +3xQpQVwFBJ/rNELCrF0GMw4cGjfVPJq0tA0abvWinfrVL3YA31fMQtyXAatF4FtwR
	 MSkgje+7jLjFIPrcCfdOL81X4xiqeQsR8CBi7evUB2NZwut4qkw54vzwvUF2b8JRSy
	 /rYm55CI33h8yptYzHsOcbyZzzjxb5omXew7sV80coqid9ZOhvsUn6F27U3Ui+69sV
	 jEwhU4rY3jYnS20hI9lT5DHtjTwENvi7tn8BpP8RatHd8DzS2uwgaFhVudWyfPcxKK
	 lIb4t6ANmrJVw==
Date: Tue, 26 Nov 2024 05:23:29 +0000
To: oss-security@lists.openwall.com
From: Ali Polatel <alip@hexsys.org>
Message-ID: <hasMYF5DZHQQe2qNdAWfRbjZZjdV_KPTt4HFQwwUSIwl_73pgEbYIbsU6oN4LzkU6_kS8B9krXHJt63boPcmhesrvy4BN-QyX6dm_3Br_Jk=@hexsys.org>
In-Reply-To: <CAAiePB7WGmCJ4za4poNm9vMYMjhQgzu0G26eWRam1arHPuO+tA@mail.gmail.com>
References: <ykmy97joESH91bCHsZwXrM1OS3YcckmX8UcuxUQ6ogsxZjKI9lox0cTS-HuVaVUgn7fcmBdjRV4kdvZU3X5J6j8Ro1OJKzl1DHnka9f6g-M=@hexsys.org> <20240520120909.GA8629@openwall.com> <CAAiePB65qp8UeYHGZsH3g+mbCe76jCS=MJ5EeM4f=F2x-FfyDw@mail.gmail.com> <b411aa8f-77dc-4542-89b6-9f2cb0f5b031@gentoo.org> <CAAiePB7WGmCJ4za4poNm9vMYMjhQgzu0G26eWRam1arHPuO+tA@mail.gmail.com>
Feedback-ID: 105281019:user:proton
X-Pm-Message-ID: 5b9d2a1577669e597987fbba8a3d52d6b733903a
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------401dc85a3b85a899874de41c6e4e09aac5c4ddda3b856d584bd22628ffb49ec4"; charset=utf-8
Subject: Re: [oss-security] Article: State of Sandboxing in Linux

--------401dc85a3b85a899874de41c6e4e09aac5c4ddda3b856d584bd22628ffb49ec4
Content-Type: multipart/mixed;boundary=---------------------45bee8db65aee8122e3b8666ec617b35

-----------------------45bee8db65aee8122e3b8666ec617b35
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

On Monday, November 25th, 2024 at 17:04, Evan Carroll <me@evancarroll.com> =
wrote:

> > You might want "sydbox", though I wouldn't know.
>=20

>=20

> Historically, there were 10,000 different ways to sandbox things. From
> chroots, to firejails. I however don't understand why anyone would
> entertain any of these pre-containerization methods today. That's why I'm
> questioning what's the purpose of comparing different sandboxing methods =
in
> isolation of the current status quo -- containerization. Why would anyone
> want sydbox (whatever it is) over rootless podman?

Your argument makes no sense and makes me believe you're either ignorant
or borderline trolling, however I'll try one last time:

Here is a comprehensive list of technologies that sydbox uses:
1. seccomp-bpf
2. seccomp-unotify
3. landlock
4. namespaces (including user namespaces)
5. ptrace
6. MDWE

Out of the technologies listed above only ptrace is considerably
older to the point you can consider it "pre-containerization".
Again you'd be comparing apples and oranges because sandboxing
has nothing to do with containerization and there's nothing
to stop you from using syd-oci or gVisor as a runtime to podman.
Read on, it gets better.

> By the way, you mention "when would I want [...] over kernel
>=20

> > user-namespaces", which I think is a complete and utter misunderstanding
> > of the problem domain.
> >=20

> > sydbox documents that one of the technologies it uses in its source code
> > is user namespaces. Generally, "user namespaces" isn't a program you
> > use, it's a technique you can make use of in the source code of another
> > program entirely... such as sydbox or at a high level, podman.
>=20

>=20

> Right! And if it's not providing anything except user namespaces, and
> cgroups, and secgroups, it's just another containerization tool. So why
> introduce a term that has fallen entirely into disuse like "sandbox" that
> includes technologies that predate contianers. As far as I can see, that's
> adding complexity and explaining nothing. And, why not compare these tools
> against the 600 lb gorilla in containerization: rootless podman.

I'll just laugh at this because I am speechless... You seem to be much
more ignorant than I initially believed. Start by going to cve.mitre.org
and search for user namespaces.
=20

> From looking through the sydbox homepage, and very quickly checking for
>=20

> > keywords such as "podman", I got pointed to this link:
> >=20

> > https://man.exherbolinux.org/syd-oci.1.html
> >=20

> > It suggests that the relevance of this software to podman is that you
> > can use "sydbox" as an OCI runtime for podman, to replace "crun" or
> > "runc", via:
> >=20

> > podman run --runtime=3Dsyd-oci
>=20

>=20

> So now we're getting at it: syd isn't a "sandboxing" thing at all. It's a
> container runtime. And now the 100 million dollar question is very simple,
> how does this container runtime compare with youki, which is also in rust
> and it clearly says it's based on, from your link "It is largely based on
> youki": Youki has 113 contributors. Sydbox seems to be a one man show
> https://gitlab.exherbo.org/sydbox/sydbox/-/commits/main/?ref_type=3DHEADS

This is hilarious. syd-oci is a container runtime. sydbox is a general purp=
ose
sandbox that aims to make sandboxing as easy as text searching is with grep.
Please be so kind to RTFM before you actually throw random ideas at me.
I am not your therapist, this page might help tho: http://man.exherbolinux.=
org

Let me give you a list of features that your container engine does/can/will=
 not do,
so you'll maybe come to the realization that sandboxing is just a different=
 concept
than containerization not a "pre-historic" technology:

1. Setting AT_SECURE auxillary vector to avoid unsafe environment variables.
   http://man.exherbolinux.org/syd.7.html#Enforcing_AT_SECURE_and_UID/GID_V=
erification
   Apparmor and iirc SELinux does this too.
2. Enforcing PIE executables and thereby ASLR.
   http://man.exherbolinux.org/syd.7.html#Enforcing_Position-Independent_Ex=
ecutables_(PIE)
3. Enforcing non-executable stack (see the ssh-agent exploit where the smar=
t people
   dlopen an execstack library to turn the whole stack of a program into ex=
ecutable
   and drop shellcode, like in the 90s, no worries all these are prehistori=
c in your funny bubble,
   so please stay in there, SELinux does the same)
   http://man.exherbolinux.org/syd.7.html#Enforcing_Non-Executable_Stack
4. Process name change restrictions (especially useful in malware analysis):
   http://man.exherbolinux.org/syd.7.html#Process_Name_Modification_Restric=
tion
5. Prevent timing analyses on block or character devices via stat(2) or ino=
tify(7)/fanotify(7)
   http://man.exherbolinux.org/syd.7.html#Device_Sidechannel_Mitigations
6. Enhanced Path Integrity measures similar to SafeName LSM: (see the recen=
t unsafe shell expansion thread)
   http://man.exherbolinux.org/syd.7.html#Enhanced_Path_Integrity_Measures
7. Preventing NULL arguments for execve(2) argv and envp pointers, thereby
   raising the bar for an attacker preparing to exploit via ROP:
   (HardenedBSD implemented this short after sydbox)
   http://man.exherbolinux.org/syd.7.html#Enhanced_execve_and_execveat_Sysc=
all_Validation
8. Enforcing of non-executable memory file descriptors (which are 777 by de=
fault):
   (ChromeOS does the same)
   http://man.exherbolinux.org/syd.7.html#Enhanced_Security_for_Memory_File=
_Descriptors
9. Enhanced symbolic link validations and procfs/devfs limitations:
   (count how many proc fds leaks or magic symlinks caused podman CVEs, the=
n please look at a mirror and laugh at yourself, mmkay?)
   http://man.exherbolinux.org/syd.7.html#Enhanced_Symbolic_Link_Validation
   http://man.exherbolinux.org/syd.7.html#Hardened_procfs_and_devfs

> Not that this is reason enough not to take it seriously. But the blog ent=
ry
> we need doesn't compare it to esoteric tech in Gentoo (which no one uses).
> It's a comparison between it and Youki that explains how each of the poin=
ts
> under "capabilities" is different from Youki which doesn't use a
> "unikernel" and claims many of the same capabilities (because as you said,
> they're all using user-namespaces, cgroups, and secgroups under the hood).

Most of this paragraph is being completely ignorant and claiming all the wo=
rld
is made up of containers. That said, I'll clarify one important thing for m=
e:

The reason I call the new syd a unikernel is because it executes the system=
 calls
on behalf of the sandbox process and as such is not vulnerable to TOCTTOU
as its historic alternatives, such as GsWTK and SysTrace.

> --
> Evan Carroll - me@evancarroll.com
> System Lord of the Internets
> web: http://www.evancarroll.com
> ph: 281.901.0011 <+1-281-901-0011>

Finally, sorry if this was offensive. This is my last reply here unless
you start actually reading things and making sense for a change.

Best regards,
Ali Polatel=

-----------------------45bee8db65aee8122e3b8666ec617b35
Content-Type: application/pgp-keys; filename="publickey - alip@hexsys.org - 0xC22DA9DE.asc"; name="publickey - alip@hexsys.org - 0xC22DA9DE.asc"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="publickey - alip@hexsys.org - 0xC22DA9DE.asc"; name="publickey - alip@hexsys.org - 0xC22DA9DE.asc"

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgp4ak1FWmdRSmRSWUpLd1lCQkFI
YVJ3OEJBUWRBbjlaVnJMbi9tclpseThqTE9qVklwTmRWSXhTSVZ4WmUKL2ZDeDZpcTNPM1hOSVdG
c2FYQkFhR1Y0YzNsekxtOXlaeUE4WVd4cGNFQm9aWGh6ZVhNdWIzSm5Qc0tNCkJCQVdDZ0ErQllK
bUJBbDFCQXNKQndnSmtCY2phUTFHWTNTNkF4VUlDZ1FXQUFJQkFoa0JBcHNEQWg0QgpGaUVFd2ky
cDNrbUo2K2VhOUErdEZ5TnBEVVpqZExvQUFFaDlBUUNVRlB2YytPL1FzYzdpVDF0STcvMTAKakJW
aklPa2xyL01DU2lzZ2w0SzRqQUQvZkRaejVuVStqbzBmcjh3QXNLdFU0M1UrVWd5alVuNHhuczVQ
CnVzcFViZy9PT0FSbUJBbDFFZ29yQmdFRUFaZFZBUVVCQVFkQXFrait2ejdsbjQyNmhmQS9wSWZz
elJKbQpWWHpLc1VJOWJQd3dqZEdQUlNRREFRZ0h3bmdFR0JZS0FDb0ZnbVlFQ1hVSmtCY2phUTFH
WTNTNkFwc00KRmlFRXdpMnAza21KNitlYTlBK3RGeU5wRFVaamRMb0FBTHNMQVAwWUVEUkw1OVdi
UndSTFdpN0RlRjY2ClRCSzZtdmZGeG5maG9rM3JKSU1lWXdFQTZGNi85c1J6SzJqbExCRk9kbHlu
ZGdZbEpxUFVpZk1CZGU5ego2QkZFY1FnPQo9NFhXSgotLS0tLUVORCBQR1AgUFVCTElDIEtFWSBC
TE9DSy0tLS0tCg==

-----------------------45bee8db65aee8122e3b8666ec617b35--

--------401dc85a3b85a899874de41c6e4e09aac5c4ddda3b856d584bd22628ffb49ec4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wrsEARYKAG0FgmdFWzgJkBcjaQ1GY3S6RRQAAAAAABwAIHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdT1qqgO8+wYOxgYaLq1h+oiCd08uZey8FMuvaG
CWBpUBYhBMItqd5JievnmvQPrRcjaQ1GY3S6AAD6GAD6A4MmmWKNoYYc6tvg
Q0n9AXDczQTi+lQg83VPypSsjGQBANR++V3Bm/KsWzYZGb+jF59fmOgTMcFC
F9KbkxFEok0B
=q982
-----END PGP SIGNATURE-----


--------401dc85a3b85a899874de41c6e4e09aac5c4ddda3b856d584bd22628ffb49ec4--

