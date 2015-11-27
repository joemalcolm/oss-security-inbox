X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7247" "Saturday" "28" "November" "2015" "00:00:07" "+0200" "Andrey Utkin" "andrey.od.utkin@gmail.com" "<5658D267.5020605@gmail.com>" "170" "[oss-security] [RFC] Keychain for GPG, SSH, X.509 etc. (inspired by Split GPG)" nil nil nil "11" "2015112722:00:07" "[oss-security] [RFC] Keychain for GPG, SSH, X.509 etc. (inspired by Split GPG)" (number mark "U       andrey.od.ut Nov 28  170/7247  " thread-indent "\"[oss-security] [RFC] Keychain for GPG, SSH, X.509 etc. (inspired by Split GPG)\"\n") "<5658D146.2070403@gmail.com>" ("<5658D146.2070403@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32536 invoked by uid 550); 28 Nov 2015 07:39:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15782 invoked from network); 27 Nov 2015 22:00:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:references:to:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type;
        bh=wQjxaikjvy2zUxvadWqoGvGART8ff9o388S2JWP9H8I=;
        b=jNXXTg5Be4WimBgc4Rqsmk+dmfoxHBZWuk9lzFTiGNlQxTEDx1GJDOMO+gE82Fcqji
         Go0X2B2/aWQLRpl2uZ2Qc5oU0f2HXwM1UMst5p1nb2mHBZZ4gJh6SAG9FuH5uM8yZXoC
         XoaSCA4P2brtoKgeE1AY0XrKAsZjIqsjSgTM9HP8LWlUUWGO+RAOQ4+ZCZ2TuAIxoEYb
         kDD31J3jkw1KvD9ogIVGWcPsKbIEWU/h6Tmfleamn8hKRsetKv8xqDy9NSMS4ldCFKNk
         3BHUGsux/WW150tKo1b6ae1xmXA1z2XBWWPYtptTmhoTcdV6qH9rEoj4FQrtmqlhV1zm
         LFjA==
X-Received: by 10.112.130.138 with SMTP id oe10mr21069817lbb.54.1448661609082;
        Fri, 27 Nov 2015 14:00:09 -0800 (PST)
References: <5658D146.2070403@gmail.com>
To: oss-security@lists.openwall.com
From: Andrey Utkin <andrey.od.utkin@gmail.com>
X-Forwarded-Message-Id: <5658D146.2070403@gmail.com>
Message-ID: <5658D267.5020605@gmail.com>
Date: Sat, 28 Nov 2015 00:00:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <5658D146.2070403@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="gKdqxHLrOXXg2x04N8MJSA3tmKiwjLIxb"
Subject: [oss-security] [RFC] Keychain for GPG, SSH, X.509 etc. (inspired by Split GPG)

--gKdqxHLrOXXg2x04N8MJSA3tmKiwjLIxb
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

TL;DR: Generalization of "Split GPG" concept.
Any comments?
Anybody likes the idea?
Ready to join development or early adoption?


What is this: Concept of flexible solution for usage of private keys
without disclosing them. Key usage is always confirmed by user (as a
form of AnyNumber-factor auth).

What is planned to guard: OpenPGP keys, SSH keys, X.509 client certificates.

Inspiration: Split GPG (https://www.qubes-os.org/doc/split-gpg/),
PGP-smartcards, SSH-smartcards.

Implementation form: portable libraries/toolkit.

Elements:
 - keychain server (KS): the process which is accessible via specified
protocols and has access to the unprotected keys, so that it can use them:
 --- encrypt/decrypt/sign;
 --- create challenge responses;
 - keychain key usage client (KUC): the process which makes requests for
key usage;
 - keychain confirmation server (KCS): the process conveying User's
decision (approval or rejection) to each key usage request;

The following elements must run in trusted environment (including
trusted physical security system, trusted hypervisor, trusted machine OS);
 - keychain server;
 - keychain confirmation server.
Keychain key usage client can work in entirely hostile environment.
Keychain usage client (KUC) may be entirely spoofed by attacker, no data
from KUC is trusted and it must be verified by User.

The above restriction is not a show-stopper ("oh, too much restricted
scheme - how to get such trusted environments?"). It is an improvement
comparing to default scheme, which supposes secret keys exposition in
same hostile environment. The point is in decoupling these three
essential entities of key material, key usage agent (gpg-agent,
ssh-agent) and key control (usually underdeveloped in mainstream systems
- you just MAY get asked to enter passphrase if you use it).
This scheme is an improvement comparing to hardware smartcard usage
because it brings flexiblility and fine-grained control to key usage
confirmation procedure.

Q: How confirmation happens?
A: This function is outsourced to plugin system. Different systems would
find different ways as most fit. Used/allowed plugins configuration is
set up in keychain server. It possibly will look similar to Linux PAM.

Q: How to have keychain server data encrypted?
A: As long as KS must actually use the keys in their unencrypted form,
it is required that safety of KS is trusted. If we cannot assume KS
environment trusted, then keys are compromised as soon as they get
loaded in unencrypted form. See http://blog.invisiblethings.org/keys/ "I
proudly use empty passphrases on all of my private keys...". Encryption
of KS data is out of scope of this scheme, but it may be implemented as
the adopter decides, as additional safety measure.

Q: How to ensure unspoofability of confirmation dialog?
A: Confirmation app must run in trusted environment, so this is not
needed. If environment is not trusted, the unspoofability of
confirmation dialog is only one of countless unresonvable security issues.

Q: Which protocols are used to convey key usage dialogs and confirmation
dialogs?
A: The ones that can be considered handy and trusted in specific case.
The following ones are offered for adopters consideration:
 - SSH;
 - other end-to-end (KUC-KS, KS-KCS, KUC-KCS) encrypted connections:
 --- XMPP via TLS chat with PGP or OTR encryption;
 --- HTTPS online session with realtime notifications;
 --- encrypted VoIP or VVoIP call communication (smart audio
synthesis/recognition software are probably required);
 --- confirmation HTTPS link in encrypted email;
 - NFC (near-field communication protocol, hardware) - NFC crypto chip
prepares signature which shows approval to KS;
 - (bad, use as fallback) SMS, PSTN call;
It should be stated that KC may want to gather more than one approval,
by more than one communication channel (thus we have multi-factor
authorization). Or system may query several confirmation channels in
parallel or serial fashion.


Examples of viable platforms for trusted elements (KC, KCS), review of
potential risks:
 - Android device: so-so to bad (depending on whether the system is
fully dedicated, and on system configuration):
 --- risk for KC: vendor-provided OS system services tend to spy on user;
 --- risk for KC: normally every app has its kernel-guarded storage, but
processes with system privilegee (gained by exploit or by user
permission) may access this data;
 --- risk for KCS: potential spoofing of KCS app dialogs;

 - Remote sever: bad to so-so to good (depending on whether VPS or owned
and guarded physical machine):
 --- risk for any component: remote attack (TODO elaborate, review more
in-depth);

 - Pluggable micro-PC with dedicated system (like
http://inversepath.com/usbarmory.html): potentially good, but there's
lack of interactive peripheral for dialog, a gadget like androids
without bloatware would be nice.

 - Virtual machines: good, but must be used properly - untrusted env
mustn't be supervising trusted env.

 - Different UNIX system accounts from untrusted component: bad, trusted
elements are owned on privilege escalating exploitation.

 - LXC: same as with UNIX accounts (kernel exploit owns everything)?


Example elements layouts:

 - keychain server (KC) and confirmation server (KCS) on Android device,
keychain usage client (KUC) on a workstation: simple, affordable, bad
security;
 - keycnain server (KC) on remote server, usage client (KUC) on a
workstation, confirmation client (KCS) on another, trusted workstation:
pretty good, if remote server is safe;


Further expansion of this scheme:
 - X.509 client cert auth challenge forwarding (using browser plugin);
 - HTTP DIGEST auth challenges forwarding from KUC (using browser
plugin) to KS;
 - forwarding requests for file access, i.e. implementation of
filesystem in userspace, with manual access control on sensitive data
exposed to untrusted environment.

--=20
OpenPGP usage is appreciated (it also helps your letter to bypass spam
filters). To email me with encryption easily, go
https://encrypt.to/0xC6FCDB11






--gKdqxHLrOXXg2x04N8MJSA3tmKiwjLIxb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWWNJnAAoJENVqfNDG/NsRWjEP/j9xjoofx0G8JssgHxHvrkxd
jF73p8ZTwyXW6kOTIqUGQZ/gjfCieNbSUZTdI5iHt6kzEZlHRAnbFj/5rWACP6P4
Jl6xME7M+r0o2fe4q4vnpN6pmDU/9ixOVFq6WrA7A5mW80zymmPzysz1jA2z+OdC
N0rG6X8559qDLlcjACroC9Yx7ZFhN05ynfEzyyqAL4oe2wabkdyeC++Rp8UtNRmC
ffA8MeB7BIpqeafTxjzf/13oNvj7W+S77DpqIm5rjDYorzjxr/foNVlRpIrN62WP
amAb0IEUCgG0Y/Fen6dqeEpjOyCycnd4I/mHLMZ5spuItINS+OjF87F3H5d08/L1
IoHk3bBLrEn3sovyWuc2BDXDNRBGjnnCtJL1OehneDijxX5XbLFPxlxPBeB/6cCq
5oewPkQFqAbXDzMNlxKt9FBV4OxPYVId6dFv5TxIQD7glcEvD9KBqIiN0SsYh3b5
SUUHEElpOtxSJDS8SiZ70FupaF8KHK9SIMGEDT00VuzX4543ZDbJOxv6pez2AR1f
3IJUHWrFzG+hTk/kgrKIoN2LD/nvRwjXhY8FrHfqq0Swycz79Fq7WtMyjGxcW4+c
MIMIJL8hiIBdZcVhELfOWCkij82N/2XH31Vymrp2lbZzpyrsfzg84Snx4fwFu3vy
YhQb1mF/Gzynd/HIyL/1
=bhkW
-----END PGP SIGNATURE-----

--gKdqxHLrOXXg2x04N8MJSA3tmKiwjLIxb--
