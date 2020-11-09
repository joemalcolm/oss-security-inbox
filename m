X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["14634" "Monday" "9" "November" "2020" "11:00:50" "-0500" "Demi M. Obenour" "demiobenour@gmail.com" "<606c5dc2-b39c-2547-d00c-9c44778303b9@gmail.com>" "339" "[oss-security] The importance of mutual authentication: Local Privilege Escalation in X11" "^Date:" nil nil "11" "2020110916:00:50" "[oss-security] The importance of mutual authentication: Local Privilege Escalation in X11" (number mark "        demiobenour@ Nov  9  339/14634 " thread-indent "\"[oss-security] The importance of mutual authentication: Local Privilege Escalation in X11\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] The importance of mutual authentication: Local Privilege Escalation in X11" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24155 invoked by uid 550); 9 Nov 2020 16:09:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20137 invoked from network); 9 Nov 2020 16:01:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:message-id:date:user-agent:mime-version;
        bh=bfghwDmlRxdiMQvHrCfixeOLfFUDqrNYKgMtyk4KQUU=;
        b=DdSbhIvvbpVHMoG7g1Nys+Yx0N9Am16t/9NXfc1qMJjxwPiymwJMk2l0uMzrGqOZzF
         YO25eDsGR6dm4Lu+dZXmnZnbIX/Df8qa6DTtJKqfpjpYJqCcMr+BabvmOZsxtBf8/FTD
         6LT/bwB8ZxJUbx+6kEs95DgalcA4Xc/F58zjI2nSVxupJPsbT4yJwKWf6giiDBzeRxRs
         rso7orUg0+J2Az2PpFh2gOn7Usm/sL261bKAqv3CYDYIysNF5iHx/ZQxiyWDzG3oMr0A
         /SEupObbVC4T5yGDOnKLEJb7Zb1vkZl3mBQX70qEnoqrdvbrP0y9VsgbVSf+yTMI/fsC
         b7ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version;
        bh=bfghwDmlRxdiMQvHrCfixeOLfFUDqrNYKgMtyk4KQUU=;
        b=dKAbYgPS2bTaVsKyDORG+/vmgcaH484tncGu1lRVAf7o4O05hem8422UmWj6pSoACY
         MGVaCYwGgXFXkvoYegw4oDnCzo8L8Hz3v3ASzc6E5xT1RUEAsfBcvYVb/iWuCeluMS0R
         LSMGzYYTeCDef2y+KlNrNsM1inRQfXk1rUemfhR8Wu9yyowIn+z0YBpk1T7ywk3WggHe
         7A4N8BejM1rvUerySkniWUbUuug//4nFGs9onqr10Qa6OBcESPDJT9tkLpBTCXEO6m62
         /N8LzVxOXZIXLDcgjygkNK0/YTxawJ1bRgxWeC1kR8uvaus1lhg5Mfg3QcgURD77IthD
         Q0AQ==
X-Gm-Message-State: AOAM532/wgKbA7BGh8S116K/9N+6RbCgU7e7VM9H0uIWpYbtJyTjw1OD
	u18l48S6JX56Q7Ggofq4fmmrRlx3a/mw0w==
X-Google-Smtp-Source: ABdhPJz0yw56Quj2nFwJeaBZ3PgHVwOtiJ+mYkcNo2siO6464uv85D9ZWNbUzr3+JOf8Re+rFdfwPA==
X-Received: by 2002:a0c:8c8a:: with SMTP id p10mr15209169qvb.54.1604937655511;
        Mon, 09 Nov 2020 08:00:55 -0800 (PST)
Message-ID: <606c5dc2-b39c-2547-d00c-9c44778303b9@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="ggaOKYXWvb9u6l23bpPflg6WtG4H0DsXD"
Date: Mon, 9 Nov 2020 11:00:50 -0500
From: "Demi M. Obenour" <demiobenour@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] The importance of mutual authentication: Local Privilege Escalation
 in X11
To: oss-security@lists.openwall.com

--ggaOKYXWvb9u6l23bpPflg6WtG4H0DsXD
Content-Type: multipart/mixed; boundary="qsSgWyk5KZBnwQfwUuxNJiM1yXhGZgjKL";
 protected-headers="v1"
From: "Demi M. Obenour" <demiobenour@gmail.com>
To: oss-security@lists.openwall.com
Message-ID: <606c5dc2-b39c-2547-d00c-9c44778303b9@gmail.com>
Subject: The importance of mutual authentication: Local Privilege Escalation
 in X11

--qsSgWyk5KZBnwQfwUuxNJiM1yXhGZgjKL
Content-Type: multipart/mixed;
 boundary="------------6A343E14F758A1303442D619"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------6A343E14F758A1303442D619
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

# The importance of mutual authentication: Local Privilege Escalation in X11

While X11 servers authenticate their clients, X11 clients *do not*
authenticate the server.  This can be exploited to take control of an X
application by impersonating the server it is expecting to connect to.

Exploiting this vulnerability is not trivial.  Typically, the X11
socket is either in `/tmp/.X11-unix` (which is sticky) or in the
abstract namespace.  Therefore, it is necessary to wait until
the legitimate X server has exited and the socket is unlinked.
Many graphical applications exit if their connection to the X
server is lost, so a typical desktop session is either impossible
or difficult to exploit.  If the socket has already been bound, X
will fail to start.  If this prevents client programs from starting,
planting a =E2=80=9Cpoisoned=E2=80=9D X socket won=E2=80=99t work either, a=
lthough it
will create a denial of service condition.

It is, however, possible to exploit any X application that
(erroneously) starts after the X server has already exited.  There are
several potential ways this can happen:

- On single-seat graphical workstations, the DISPLAY environment
  variable is virtually always set to `:0`, as there is generally only
  one X server running at a time.  Therefore, users may (erroneously)
  write scripts that assume this to be the case, and start them from
  outside of a graphical session (such as via cron or systemd).

- There is a race condition during session exit: if the X server shuts
  down and unlinks its socket, but another program has already started
  to execute an X client application, there is a window during which
  an attacker can bind to the previous X socket before the client
  tries to connect to it.

## Potential Fixes:

Fixing this vulnerability requires that X clients authenticate the
server, or that the X server socket is protected against spoofing.
Three potential methods of doing so follow, but there may very well be
others.  Only the first addresses the denial of service vulnerability,
but all three prevent privilege escalation.

### Placing the X socket in a secure directory

X11 is usually used with AF_UNIX sockets.  In this case, performing
the attack requires that either the directory containing the X socket
be writable by an attacker, or that the abstract namespace is in use.
If neither condition is met, the attack is thwarted.  In this case, the
server is implicitly authenticated by being able to write to a location
on the file system.  On systems other than macOS, placing the X socket
in a non-default directory requires changes to X.  On Linux, this also
requires that abstract sockets be disabled in the X client libraries.

A user=E2=80=99s home directory is a safe location on virtually all systems.
/run/user/$UID is a good choice when it is secure and available,
such as on systemd-based Linux distributions.  /tmp/.X11-unix can
be made safer by ensuring that it is created before any untrusted
code runs and ensuring that untrusted code cannot write to it.
For example, it could be owned by root and have 0755 permissions.
For this to be effective, untrusted code must not be allowed to start
if creating /tmp/.X11-unix fails; this can be enforced by dropping
into single-user mode in this case.  Furthermore, if the standard
location for lock files (/tmp/.X*-lock) is used, there is still a
potential denial of service, as anyone can create a lock file and
prevent the legitimate server from starting.

I recommend using /run/user/$UID when it exists, is owned by the user,
and has 0700 permissions.  Otherwise, a user=E2=80=99s home directory (or
subfolder thereof) is an acceptable fallback.  I do not recommend
continuing to use /tmp/.X11-unix, due to the risks outlined above.

### Explicit checking of peer credentials

When `AF_UNIX` sockets are used (the most common case), the
client can check the server=E2=80=99s credentials using `SO_PEERCRED`,
`SCM_CREDENTIALS`, or another platform-specific mechanism.  The X.org
server already has the code to check a peer=E2=80=99s credentials, and can
be configured to use this instead of `~/.Xauthority`.  The set of
trusted user IDs is system-dependent.  Generally, it should include
the superuser and the UID of the X client, but on some systems (such
as OpenBSD), the X server runs as a dedicated non-privileged user,
which may also need to be included in the trusted UID list.

### Cryptographic authentication

For both `AF_UNIX` and TCP transports, it is possible to use
cryptographic authentication.  This must be designed carefully
to prevent replay attacks.  One such protocol (which has not been
audited) is as follows.  It uses the X11 cookie K, a MAC, and distinct,
equal-length domain-separation strings S1 and S2.

1. Client generates a 32-byte random token (CR) and sends it to
   the server.

2. The server generates a 32-byte random number (SR).  It computes
   `Sauth :=3D MAC(K, S1 || CR || SR || server_sockaddr || client_sockaddr)`
   and sends `Sauth || SR` to the client.

3. The client checks if Sauth was computed correctly.  If not,
   it disconnects.  If it was, the client computes
   `Cauth :=3D MAC(K, S2 || CR || SR || server_sockaddr || client_sockaddr)`
    and sends it to the server.

4. The server checks that `Cauth` was computed correctly.  If it was,
   the client is authenticated; otherwise, the server disconnects.

Note that CR and SR must be generated randomly for every connection.
Reasonable choices for the MAC include Blake2b, Blake3, and HMAC-SHA2.
Length fields are omitted because the lengths of CR and SR are fixed,
and the length of a `struct sockaddr_storage` can be determined from
its address family.  `AF_UNIX` sockaddrs MUST be NUL-terminated.
For `AF_UNIX` sockets, this is only safe if anonymous `AF_UNIX`
sockets have unique addresses, which I believe to be the case on Linux.

The X11 protocol does not provide any encryption or authentication
of messages.  Therefore, users who can sniff network traffic can still
read all X protocol traffic over TCP, and users who can inject packets
can tamper with such traffic.  On OpenBSD, both require full root
privileges, so this is not a problem in the default configuration.
On Linux and illumos, packet sniffing and injection does not require
full root privileges, although it requires privileges that ordinary
users typically do not have.  X over TCP is usually used in the context
of SSH forwarding, and switching SSH forwarding to use AF_UNIX would
avoid this problem.

## Timeline

2019-10-25: Reported to openssh@openssh.com as a vulnerability in
            OpenSSH X11 forwarding.

2019-10-31: The OpenSSH developers states that this is a bug in X11,
            not in OpenSSH.

2019-11-01: I report this bug to xorg-security@lists.x.org

2019-11-04: Reply stating that this scenario is possible, but unlikely,
            and that fixing it would require major changes to the X
            protocol.

2019-11-04: I reply that SCM_CREDENTIALS and friends can be used for
            AF_UNIX sockets.

2019-11-23 through 2019-11-25: A new X authorization mechanism is
            suggested by the X developers.  Private discussions about the
            form this will take.

2020-01-23: I ask for an update and mention that AF_UNIX sockets are
            vulnerable as well.

2020-02-02: I ask for an update and mention that over 90 days have
            elapsed.

2020-10-08: I write an advisory and state that I intend to publicly
            disclose it.

2020-10-08 through 2020-10-29: Discussion of the vulnerability leads to
            changes in the advisory text.

2020-11-02: Vulnerability sent to distros@vs.openwall.org

2020-11-03: Marcus Meissner <meissner@suse.de> confirms that
            distros@vs.openwall.org has received the message.

2020-11-05: I email xorg-security@lists.x.org asking if a fix will
            be available.

2020-11-06: Alan Coopersmith <alan.coopersmith@oracle.com> states
            that there are too few people working on X for upstream
            to create a fix prior to disclosure.

2020-11-06: Red Hat Product Security assigns CVE-2020-25697 to this
            issue.

2020-11-09: Full disclosure

Sincerely,

Demi M. Obenour


--------------6A343E14F758A1303442D619
Content-Type: application/pgp-keys;
 name="OpenPGP_0xB288B55FFF9C22C1.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="OpenPGP_0xB288B55FFF9C22C1.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xsFNBFp+A0oBEADffj6anl9/BHhUSxGTICeVl2tob7hPDdhHNgPR4C8xlYt5q49yB+l2nipdaq+=
4=0A=
Gk6FZfqC825TKl7eRpUjMriwle4r3R0ydSIGcy4M6eb0IcxmuPYfbWpr/si88QKgyGSVZ7GeNW1=
U=0A=
nzTdhYHuFlk8dBSmB1fzhEYEk0RcJqg4AKoq6/3/UorR+FaSuVwT7rqzGrTlscnTDlPWgRzrQ3j=
s=0A=
sesI7sZLm82E3pJSgaUoCdCOlL7MMPCJwI8JpPlBedRpe9tfVyfu3euTPLPxwcV3L/cfWPGSL4P=
o=0A=
fBtB8NUU6QwYiQ9Hzx4xOyn67zW73/G0Q2vPPRst8LBDqlxLjbtx/WLR6h3nBc3eyuZ+q62HS1p=
J=0A=
5EvUT1vjyJ1ySrqtUXWQ4XlZyoEFUfpJxJoN0A9HCxmHGVckzTRl5FMWo8TCniHynNXsBtDQbab=
t=0A=
7aNEOaAJdE7to0AH3T/Bvwzcp0ZJtBk0EM6YeMLtotUut7h2Bkg1b//r6bTBswMBXVJ5H44Qf0+=
e=0A=
KeUg7whSC9qpYOzzrm7+0r9F5u3qF8ZTx55TJc2g656C9a1P1MYVysLvkLvS4H+crmxA/i08Tc1=
h=0A=
+x9RRvqba4lSzZ6/Tmt60DPM5Sc4R0nSm9BBff0Nm0bSNRS8InXdO1Aq3362QKX2NOwcL5YaStw=
O=0A=
DNyZUqF7izjK4QARAQABzTxEZW1pIE1hcmllIE9iZW5vdXIgKGxvdmVyIG9mIGNvZGluZykgPGR=
l=0A=
bWlvYmVub3VyQGdtYWlsLmNvbT7CwXgEEwECACIFAlp+A0oCGwMGCwkIBwMCBhUIAgkKCwQWAgM=
B=0A=
Ah4BAheAAAoJELKItV//nCLBhr8QAK/xrb4wyi71xII2hkFBpT59ObLN+32FQT7R3lbZRjVFjc6=
y=0A=
MUjOb1H/hJVxx+yo5gsSj5LS9AwggioUSrcUKldfA/PKKai2mzTlUDxTcF3vKx6iMXKA6AqwAw4=
B=0A=
57ZEJoMM6egm57TV19kzPMc879NV2nc6+elaKl+/kbVeD3qvBuEwsTe2Do3HAAdrfUG/j9erwIk=
6=0A=
gha/Hp9yZlCnPTX+VK+xifQqt8RtMqS5R/S8z0msJMI/ajNU03kFjOpqrYziv6OZLJ5cuKb3bZU=
5=0A=
aoaRQRDzkFIR6aqtFLTohTo20QywXwRa39uFaOT/0YMpNyel0kdOszFOykTEGI2u+kja35g9TkH=
9=0A=
0kkBTG+aEWttIht0Hy6YFmwjcAxisSakBuHnHuMSOiyRQLu43ej2+mDWgItLZ48Mu0C3IG1seeQ=
D=0A=
jEYPtqvyZ6bGkf2Vj+L6wLoLLIhRZxQOedqArIk/Sb2SzQYuxN44IDRt+3ZcDqsPppoKcxSyd1N=
y=0A=
2tpvjYJXlfKmOYLhTWs8nwlAlSHX/c/jz/ywwf7eSvGknToo1Y0VpRtoxMaKW1nvH0OeCSVJitf=
R=0A=
P7YbiRVc2aNqWPCSgtqHAuVraBRbAFLKh9d2rKFB3BmynTUpc1BQLJP8+D5oNyb8Ts4xXd3iV/u=
D=0A=
8JLGJfYZIR7oGWFLP4uZ3tkneDfYzTxEZW1pIE9iZW5vdXIgKElUTCBFbWFpbCBLZXkpIDxhdGh=
l=0A=
bmFAaW52aXNpYmxldGhpbmdzbGFiLmNvbT7CwY4EEwEIADgWIQR2h02fEza6IlkHHHGyiLVf/5w=
i=0A=
wQUCX6YJvQIbAwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRCyiLVf/5wiwWRhD/0YR+YYC5K=
d=0A=
uv/2LBgQJIygMsFiRHbR4+tWXuTFqgrxxFSlMktZ6gQrQCWe38WnOXkBoY6n/5lSJdfnuGd2Uag=
Z=0A=
/9dkaGMUkqt+5WshLFly4BnP7pSsWReKgMP7etRTwn3Szk1OwFx2lzY1EnnconPLfPBc6rWG2mo=
A=0A=
6l0WX+3WNR1B1ndqpl2hPSjT2jUCBWDVrGOUSX7r5f1WgtBeNYnEXPBCUUM51pFGESmfHIXQrqF=
D=0A=
A7nBNiIVFDJTmQzuEqIyJl67pKNgooij5mKzRhFKHfjLRAH4mmWZlB9UjDStAfFBAoDFHwd1HL5=
V=0A=
QCNQdqEc/9lZDApqWuCPadZN+pGouqLysesIYsNxUhJ7dtWOWHl0vs7/3qkWmWun/2uOJMQhra2=
u=0A=
8nA9g91FbOobWqjrDd6x3ZJoGQf4zLqjmn/P514gb697788e573WN/MpQ5XIFl7aM2d6/GJiq6L=
C=0A=
9T2gSUW4rbPBiqOCeiUx7Kd/sVm41p9TOA7fEG4bYddCfDsNxaQJH6VRK3NOuBUGeL+iQEVF5Xs=
6=0A=
Yp+U+jwvv2M5Lel3EqAYo5xXTx4ls0xaxDCufudcAh8CMMqx3fguSb7Mi31WlnZpk0fDuWQVNKy=
D=0A=
P7lYpwc4nCCGNKCj622ZSocHAcQmX28L8pJdLYacv9pU3jPy4fHcQYvmTavTqowGnM7BTQRafgN=
K=0A=
ARAAvcp2SPS1PriZDHhCXickP/FRZAiUD0GRLCBszk5T58L1Z2tAEvOp9mfqyu0f7rGLOYiQmee=
f=0A=
ySElnfMQ+e7ntHgeO23Cb1ahpTmyNgxBvE8GltDtHbkYQ4MzBC+LdSnUQHqSBEgRAP4j6SOIH1G=
1=0A=
RCBELqnakMjuBgHvjJA9B8uSR/9KoBZm2knoDU3UIOYqmI0Wd7bYrMGpapdf4ksr9VmHgtTgLPt=
g=0A=
SzgE9jRIIEolTrcRH4HsLELQlovB9UqIq2pCH6OOR89LZPwHfWVodj7zhrfeymvOaOEyycYCSah=
h=0A=
J6nBVGZySa4sKGkSEvDdgvP5xDOd429bB9IGHXTFN0MWO3WDSyFK0SkHjZBd9HSu1eiUR+6ZXkZ=
X=0A=
/sEHDX0QCFKzZWrY/U8cIr0KypwvWiBRRxMv9JgILa0EoXDEZjIFZUaDgOQfEU7pUSwppGn78Lo=
b=0A=
OnQsTdBjQDkSFVRcY8fVZ+zqmD4MIqH2ekmxJdIYD8lgULxPOZJRS2S6I+6fo6A2NVzUM7ZnwK5=
y=0A=
fcfmFeIoI1iJiDQGUpZhHGLXfscty4v/KHmAwKq7J6zo2/lrxoQspCZOLqwaINizbXMgo5E7Oxf=
l=0A=
nlxlKNDQ4W3d2egMhX6nhe7idw+YZaV9pyPZ6P7oD6601aFWQIK65zc9ImRtg1ceOsfdd6VSh5e=
Z=0A=
pWEAEQEAAcLBXwQYAQIACQUCWn4DSgIbDAAKCRCyiLVf/5wiwcDSD/wIiBxPG6CKkXhUMmjM8au=
p=0A=
ROGGQmTY+uQf55Azr6HUosH8I41VRNld4hM8TB24MkwhgOu/gaP3eWkBo4J9Ez7bBs3pckB4qWl=
M=0A=
xMq7HHlBlmKCl2MlVihH8odHA353fXYgJt1XjanIbXDKaHoREx/H60R5yXQXI39ddj80EnSgupK=
l=0A=
NENfenOFaeRwzkHzYg503+4GUo9Aa2hzgcsvSxAwi4UIgpq/thNK1uLQbQwJ9h5E/bn99mRqiQp=
9=0A=
TvtrlXxYRrurzxOapKq20hPExvtNx/HnFNqudM4B1j3RzDgb8txIc3wIdlZjkk3ESvrUlHv7t8H=
S=0A=
0Qz8L/w08xiN+ioJMvTLAwuYKSMDWziT9hv6tcE9aBpMOCF31r9rn1ol6ifpOxxItjdbK3nuw8v=
S=0A=
gQqm/nGtbxYWDwyX4T++SP1Z8x1bLGf62Gffudcg6FAAaDXSTUhlGJfmIfT8PaRNyreBBc1JRWV=
m=0A=
xOMSi/zT56Ps+CfWlnpiy7M3GM/7t152zr1EkB0q5nzs193FeMn5ozOZXsIErLaMRsk8djPHp7J=
Y=0A=
HV4T7YWZQ505zk/gvjk7IfPpubaLPB0I2jzNNTCgYgKnT4JLJtcLtg668FIugoUVU1AXI+vv/SC=
f=0A=
NR9j9oCZNy7NwFSMSH3y6GN+BPjGEn5BIwc9BPAiznAMOySMAGngUw=3D=3D=0A=
=3DjHHo=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------6A343E14F758A1303442D619--

--qsSgWyk5KZBnwQfwUuxNJiM1yXhGZgjKL--

--ggaOKYXWvb9u6l23bpPflg6WtG4H0DsXD
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAl+pZ7UACgkQsoi1X/+c
IsGREw//YTGPxmrlwfen0sQB8HUhym/EF8QIDrF5cTdPF7aMdwIB8y2sHevGog0g
s2SBqteBLlvR70lak0q2d1s89awMSNqVRobNkYzWJhj3NIOP4cynYyoL2wVbBftp
Uz0pI5KLp0oUY0ojsSgiYR5olNp0EvSq18t8OS8LWxBzeelVFLaRkMT2lrQrdWR3
bbwYDhxeXBws7P8rPhQ6GIfed3+1b93rzqnaxbQCPG1NSsAWOZ01kRp+OhYcM+xv
XIwbi5QN7jDQ4E/Dsqmtqtwa/pZj56BiM0GOeGN0xDUMLa7QP0PbaUK4s6nhQset
OSGpZLFzefTI/iaJDJcl5XA0KTQP/W4kSRxBguuuX4oYkNNP5UGQmM1C6zigzdY4
48OLpg0YNZr6tWPFoCln+kLxjqSsNqLmWrkO6FuIy3s76XzovATHzEkbakoUZBlD
hLCtuvmchafs1BHuaXZLheoHknD33S9FycpVC7oVSG7WesQ91zGxt9iPerJKDGyq
xeznEtYs7kLL0bRkYFP5pwT+yqKO5omaQ62AxH8cExDPHpcanK8bXir+sHVs/XQN
DTC30k3rAAyCa5h6FB5vz3ALISl0IcGjOTI+sK+3q71I7J4run9SHkkUgWmpZgZl
61AXY896e/31ZMc6sXT0xiwErXAN6PHnxEv7gKsLAwDz6bdPI7c=
=WOcB
-----END PGP SIGNATURE-----

--ggaOKYXWvb9u6l23bpPflg6WtG4H0DsXD--
