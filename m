Received: (qmail 26174 invoked by uid 550); 8 Sep 2023 13:38:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26138 invoked from network); 8 Sep 2023 13:38:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1694180278; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=wNOBUUaeuzWLKsH+pYcND8bXFKnlOHAX5D02R58P5Hc=;
	b=MYD5F8YmVbl1ejxko0TjWyvIjRswyn7nU8PZ7XfghnAvo6XlqLREU+v2IF1E7zbEm25nth
	i0AzOMfoH64VAde0nKJsNt949GE+3USjZEeUWzLsEJy8KJNY6q+irqgK13azcu887iW+Eg
	uaWdr9rQ5eZGO2FX6whlZkfZhjSNWAQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1694180278;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=wNOBUUaeuzWLKsH+pYcND8bXFKnlOHAX5D02R58P5Hc=;
	b=WUnG3cDikjEcGHu3PTU13LmsKW9Asy8HQt7zZxLWCCXmmeLK5J3f/klHuVskYZ6m2Jh5Az
	LnZlICTP/If98OAg==
Date: Fri, 8 Sep 2023 15:37:55 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <ZPsjthELNqb7nPFf@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bnlumxlvdET9EEUn"
Content-Disposition: inline
Subject: [oss-security] croc: multiple issues in file sharing utility

--bnlumxlvdET9EEUn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 8 Sep 2023 15:37:55 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: croc: multiple issues in file sharing utility

Hello list,

this report is about the Croc [1] file sharing utility. I have found a coup=
le
of security relevant issues in it that are not currently fixed. The upstream
author doesn't have enough resources to address them on its own and wants to
develop fixes in the open. Therefore I have created GitHub issues in the
upstream project and publish the full report today.

Only after finishing the review I found an older report [2] about Croc that
states some of the same issues as in this report. These have been discovered
independently of each other.

1) Review Scope and Motivation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

This report is based on Croc release 9.6.5 (v9.6.5 Git repository tag). Croc
is a cross platform tool. I reviewed it with a focus on the Linux operating
system.

Croc was added to openSUSE Tumbleweed a while ago and the package's
description caught my interest due to its promise to "easily and securely
send files from one computer to another". I found issues in similar tools
before like KDE Connect [3] or Warpinator [4].

2) Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Croc is a command line program that is supposed to allow secure and easy fi=
le
transfer between computers. It connects two parties, the sender and the
receiver of files, over an untrusted network. Sender and receiver establish=
 a
shared secret that needs to be exchanged over a second channel, which is not
covered by Croc.

Croc offers to automatically generate the shared secret in the style of a
human readable phrase like:

     1355-sunday-yoga-africa

Alternatively the sender can also specify a custom free form shared secret
that needs to have a minimum length of six characters.

2.1) Design Overview
--------------------

Croc is a surprisingly complex utility, therefore this section offers a
broader overview of how it works, to make clearer some of the later sections
of the report.

The communication between sender and receiver is always routed through what=
 is
called a relay instance of Croc. There exists a default public relay reacha=
ble
on the Internet, which is used if nothing else is configured. Users can also
host their own relay. If no explicit IP addresses are configured then the
sender also runs a relay implicitly and communicates its presence via a
zeroconf protocol. This implicit relay on the sender side is prefered by the
receiver, if possible (i.e. if firewalls are not preventing this).

While a relay can have its own password protection (`--pass` command line
switch), there is a password "pass123" used by default i.e. relays will
typically be accessible by anybody without authentication.

The initial connection to a relay happens via TCP on the default port 9009.
The protocol used here allows some unencrypted operations, like sending a
"ping" message for testing the availablity of the service. For regular
operation a PAKE (password authenticated) key exchange is performed based o=
n a
custom implementation for Croc. When this succeeds then a relay encryption
context is available and encrypted messages can be exchanged between sender
and relay, or receiver and relay, respectively. No authenticity checks are
present at this stage i.e. the relay could also be a man-in-the-middle or
otherwise harmful.

The relay maintains "rooms" which are identifiers used for connecting pairs=
 of
sender and receiver that are interested to transfer files. Rooms are
identified by a free form string. Sender and receiver communicate their des=
ired=20
room ID using their relay encryption context, i.e. the room IDs cannot be
eavesdropped by other parties. On the sender/receiver side the room names a=
re
selected from the three character prefix of the shared secret. Once sender
and receiver enter the same room at the relay, the relay switches into a
"pipe" mode where it simply forwards all data between sender and receiver
(full duplex) and no longer interprets the message contents.

At this stage sender and receiver can communicate with each other and will
perform another PAKE key exchange. If this succeeds then a second
sender/receiver encryption context has been established. The encrypted
communication can only take place if the shared secret matches. So on this
level a sort of authenticity check between sender and receiver can be assum=
ed,
provided that the secret has been shared in a safe manner. Also the relay
should not be able to access the cleartext of the data exchanged between
sender and receiver. Thus the authenticity of the relay should not be relev=
ant
at this point regarding safety of integrity of the transferred data.

Using the second level end to end encryption, the sender now tells the
receiver which kind of files are about to be transferred (metadata). The
receiver will ask the interactive user whether to accept the files. Then the
files (which can also be directories or symlinks) specified by the sender w=
ill
be created locally and the data received will be written to them. There is
also support for transferring multiple files in ZIP files which will be
decompressed transparently by the receiver. There is a file overwrite check=
 in
place for overwrite situations. The interactive user will be asked whether
overwriting should take place or not.

For the actual file paylaod transmission a file chunk algorithm is employed
and the transfer is potentially carried out over multiple TCP connections by
connecting to a sequence of ports available at the relay (ports 9010 to 9013
by default). For these additional TCP connections further PAKE encryption
contexts will be setup, based on the shared secret.

3) Security Relevant Findings
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

3.1) Possible (Concealed) Creation of Files in Dangerous Path Locations
-----------------------------------------------------------------------

If more than one file is transferred via Croc then, before the transfer
starts, the receiver only sees a summary line about the files about to be
received, like:

    Accept 2 files (159 B)? (Y/n)

Only after confirming this dialog the full file reception list will be
printed, like:

    Receiving (<-[ip]:[port])
    file1 100% |=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=
=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=
=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88| (140/140 B, 610 B/s) 1/2
    file2 100% |=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=
=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=
=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88| ( 0/ 1 B) 2/2

The Croc protocol allows the sender to specify arbitrary paths to be
transferred. Via social engineering an attacker could attempt to transfer o=
ne
or more malicious files in a larger file list, that otherwise looks
unsuspicious.

There is a file overwrite check in Croc that prevents existing files from
being overwritten without user consent (at least by default, there's the
`--overwrite` switch to disable the prompt). For not yet existing files the=
re
are no security boundaries though. So if e.g. `$HOME/.ssh/authorized_keys` =
is
not existing yet on the receiver side, then the sender can transfer this,
maybe unnoticed by the receiver. Even if the receiver notices it after the
fact, it might be too late, and the attacker already had the chance to
compromise the receiver's system.

Two relevant pieces of information might be missing for an attacker in this
scenario: the receiver's home directory location and its current working
directory. Guessing or determining the receiver's home directory path via
social engineering might be well within reach though. Simply implying that =
the
CWD is the home directory might otherwise be a good guess. Also relative pa=
ths
like `../.ssh/authorized_keys` can be transferred. An attacker has to be
careful about this, though, because if the path reaches above the home
directory, then "permission denied" errors will become visible on the recei=
ver
end, which are more likely to raise alarm.

Fixing this kind of attack scenario is difficult, when trying to parse
incoming file paths and to detect dangerous situations in userspace.
Especially since there is also the possibility of symlinks and Croc even
explicitly supports the creation of symlinks in its protocol. In Warpinator=
 [4]
the developers ended up using isolation techniques to lock the receiver
process side in a specific download directory.

Using mount namespaces (ideally an existing tool for creating a namespace
jail) or Linux features like Landlock is probably the best solution for this
problem. Since Croc is cross platform, implementing isolation can become a
large effort though, since there are no shared APIs available for this.

3.2) Circumventing the Interactive File Overwrite Prompt
--------------------------------------------------------

As mentioned in issue 3.1) there is a check on the receiver side of Croc
whether an incoming file path will overwrite an existing file, and Croc will
ask the user interactively whether it should be overwritten, if it already
exists. This check works reasonably well, even if symlinks are involved. I =
did
not look that deep into this though - due to the following finding I stopped
spending time on finding further possible ways around the restriction. There
might still linger attack surface in the parallelism of the chunk transfer
(exploiting race conditions) or by aptly crafting the file metadata.

There is a loophole in conjunction with the transparent ZIP transfer option
though (`croc send --zip`). The sender alone decides if something will be
zipped or not (somewhat confusingly flagged by the `FileInfo.TempFile` flag=
).

The receiver will take whatever data has been transferred and will try to
unzip it. This way even the overwrite check can be overcome, by placing
creative paths into the ZIP archive. Even relative paths like
`../../.ssh/authorized_keys` can be placed in the ZIP archive. The unzip
operation will silently overwrite existing files.

When combined with issue 3.1) then a potential attacker has a lot of freedom
to attempt to trick the receiving party into harming its system.

If an isolation technique as outlined in issue 3.1) is implemented, then the
consequences of overwriting files should be less problematic - although it
could still be surprising if previously downloaded files are overwritten wi=
th
something else. As an additional protection measure only the receiver should
decide whether ZIP files are handled, or not. Better controlling the unzip
process to prevent overwrites would also be helpful. The safest approach wo=
uld
be to use a pristine empty directory for each new file transfer where nothi=
ng
can be overwritten in the first place.

3.3) Escape Sequences in Filenames are not Filtered
---------------------------------------------------

Filenames on Linux can contain arbitrary characters except for the path
separator '/'. Thus filenames can also contain possibly dangerous characters
like ASCII control codes (newline, linefeed, etc.) or even complete ANSI/CSI
terminal escape sequences.

On the Croc receiver side the filenames communicated by the sender side are
accepted unfiltered and are also output on stdout during transmission. When
the latter happens, the escape sequences are interpreted by the receiver's
terminal and can lead to colored text, moving the cursor around or - if an
insecure terminal emulator setup [5] is used - even arbitrary code execution
can be achieved.

In particular this issue is a nice addition to issues 3.1) and 3.2), since =
it
allows to hide filenames of previously transmitted files on stdout, therefo=
re
making the attack less conspicuous. This is an example of how this can be
done:

    # this moves the cursor up one line and performs a carriage return, thus
    # overwriting the previous line on the terminal
    sender $ touch "`echo -e '\033[1A\rharmless'`"
    sender $ touch "evil"
    sender $ croc send evil *harmless
    [...]

    receiver $ croc <shared-secret>
    receiver $ Accept 2 files (0 B)? (Y/n) Y

    harmless 100% |=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88=
=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=
=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88=E2=96=88| ( 0/ 1 B) 2/2

An interactive user will only see the "harmless" file, probably not noticing
that a file seems to be "missing" in the output.

To fix this Croc should filter filenames on the receiver side and either
reject or replace any unsafe non-printable characters.

3.4) Use of Parts of the Shared Secret as Room Name
---------------------------------------------------

The leading three characters of the shared secret are implicitly used to
select a common "room name" at the relay so that sender and receiver can fi=
nd
each other (croc.go:827, croc.go:769, croc.go:572, croc.go:483).

When using shared secrets generated by Croc this is fine, because they are
formatted just so that the leading part of the secret will make up the room
name, like in "1355-sunday-yoga-africa". The leading number is completely
unrelated to the rest of the shared secret. For some reason only the leading
three digits will be used for the room name, in this case "135", while the
final "5" will remain unused.

If a sender is selecting a custom shared secret then things can look differ=
ent,
though. Imagine selecting a secret like "MySecretPass". Now the relay will =
get
"MyS" as room name. The relay is a possibly untrusted party that is not
verified in the Croc protocol scheme (except if a relay password (`--pass`)=
 is
explicitly used). The room name is visible in cleartext to the relay, thoug=
h.
In the example of this custom secret, the room name reveals information abo=
ut
the rest of the shared secret used by sender and receiver. A malicious relay
might thus be able to guess the shared secret or the cryptography may be
otherwise weakened, allowing the relay to eavesdrop on the ongoing
communication, or to impersonate the receiver.

For the parallel file chunk transfer further room names of the form
`<digest>-<port>` (croc.go:1174) are used for setting up connections on the
relay transfer ports (`--ports` option). Here `<digest>` is the SHA256 dige=
st
of the five leading characters of the shared secret. So it would be the SHA=
256
digest of "1355-" or "MySec" in the examples above. Of the resulting digest
only the leading six characters will be used for the room name. The relay
might be able to make deductions about the relatively short five character
input for the hash e.g. by building rainbow tables. Although there will be a
lot of collisions that likely make a practical attack difficult, this feels
risky overall.

To fix this sender and receiver should always use a (sufficiently
cryptographically secure) digest of the shared secret as room name. General=
ly
it should be avoided to use the shared secret for anything else than setting
up the cryptography - any use beyond that should be carefully considered an=
d a
safely derived value should be used.

3.5) Unencrypted "ips?" Message
-------------------------------

As a typical part of the Croc protocol (if no explicit `--ip` is passed), t=
he
receiver will ask the sender about its locally assigned IP addresses via the
`ips?` message (croc.go:792). This message and its reply are sent unencrypt=
ed.
I assume there is no encryption, because the receiver might still switch the
connection to a direct one, without going through a public relay, and setti=
ng
up the encryption context twice might add additional latency, or additional
code complexity.

The message being unencrypted means, however, that the sender will send out
cleartext information over the Internet, containing all locally assigned IP
addresses. This might be an unexpected information leak for a range of user=
s.
It can reveal information about the structure of internal networks or
otherwise offer information about the identity of the sender.

To fix this, the encryption layer should be established before any other da=
ta
is transferred between sender and receiver.

3.6) Explicit Evaluation of Wildcard Characters on the Sender Side CLI
----------------------------------------------------------------------

The Croc command line tool explicitly (re)evaluates wildcard glob characters
in filename arguments (croc.go:262). This seems highly unusual to me, since
normally the user's shell will expand wildcards, not the programs that the
filenames are passed to.

This means even if special characters are escaped on shell level, that Croc
will still attempt to expand them. This only happens if a filename contains=
 at
least one `*` character. For a sender side user this could be surprising, i=
f a
filename actually contains an `*` character, that this will suddenly be
expanded nevertheless. Although a bit far fetched it might still pose a
social engineering attack vector, by tricking somebody into forwarding a
strangely named file and make them unwittingly send more files than intende=
d.

The principle of least surprise is violated here and I would drop this logi=
c,
or execute it only in whatever use case this is helpful with.

3.7) Well known "pingRoom" in Relays
------------------------------------

This is not actually a security issue, since I couldn't find anything harmf=
ul
to do with it. Still this aspect allows a relay to operate in a confusing
state that should better not occur in the first place.

For processing "ping" messages the relay uses a well known "pingRoom".
However, a malicious sender can specify "pingRoom" also as an actual room n=
ame
for transmitting files. First I thought this could be suitable for causing =
the
relay to crash, by tricking it into deleting the "pingRoom". The relay
actually attempts to do this, but the "pingRoom" is a global variable and n=
ot
stored in the dynamic room map, thus nothing bad happens.

This "pingRoom" should be excluded from being used for actual file transfer=
s.
On a side topic I would generally restrict the length of room name to a sho=
rt
string. And maybe introduce a special namespace like rooms starting with a =
"."
that cannot be used for file transfers, to generalize this concept of speci=
al
rooms.

3.8) Shared Secret Passed on Command Line
-----------------------------------------

On the sender side a custom shared secret can be specified via the `croc se=
nd
--code <SECRET>` command line. On the receiver side the shared secret,
custom or not, is typically passed on the command line using the `croc
<SECRET>` command line . The latter invocation variant is actively
advocated by the output displayed on the sender side like:

    On the other computer run
=20=20=20=20
    croc <SECRET>

By passing the shared secret on the command line it will become visible on =
the
host's process list for all local users (on Linux and most UNIX like system=
s).
On a multi user system this might allow other local users to get knowledge =
of
the shared secret and to receive the files instead of the intended recipien=
t.

To fix this, the shared secret should be read from stdin, a local file or an
environment variable, even though it will be less intuitive than passing it=
 on
the command line.

4) Cryptography
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

I am not a cryptography expert, therefore I did not even start to analyze t=
he
formal security of the PAKE protocol implementation in Croc. Still I have m=
ade
some higher level observations regarding the use of cryptography in Croc th=
at
are collected in this section.

4.1) Custom PAKE Protocol
-------------------------

The implementation of a custom PAKE protocol for this utility generally see=
ms
risky to me. The finding in [2] shows that problematic issues can linger he=
re.

The use of the fixed `weakKey` (tcp.go:176) and why this is cryptographical=
ly
secure should be well documented I believe.

4.2) Mixing of Encrypted and Unencrypted Messages
-------------------------------------------------

One aspect that I found problematic about the communication protocol in Croc
is that encrypted and unencrypted messages are mixed on the same channel and
there is no clear transition point as to when the channel is secured.

I would find it better if the channel would be secured right away, no matter
what, and no unencrypted messages would be transmitted after that. There is
one point after which unencrypted communication is rejected in
croc.go:1233. This is at a relatively late stage of the protocol though.

4.3) The same Channel is used for Various Different Kinds of Contexts
---------------------------------------------------------------------

Similarly I found it difficult to follow that the same TCP connection is
potentially used for many different kind of contexts: unencrypted
communication (towards the relay and later towards the peer), the encryption
context setup with the relay and the encryption context setup with the peer.
The shared secret is then also potentially reused on additional TCP ports on
the port range used to transfer file chunks.

This mix of contexts is sometimes difficult to follow in the code, like the
same functions are used for multiple contexts and the actual context is
determined only by boolean flags.

I don't know how to improve on this without major changes to the current
protocol scheme, though. Maybe the code could at least be refactored to make
the different contexts clearer.

4.4) Authenticity Completely Relies on the Shared Secret
--------------------------------------------------------

An aspect that always makes we worry in programs like Croc, that don't rely=
 on
a trusted party, is that the authenticity verification of the communication
partner completely relies on a shared secret that somehow needs to be
exchanged over a second channel.

I am missing some heads up in the Croc documentation that makes users aware
how important a sufficiently safe exchange of the shared secret is for the
safety of the application.

Maybe also adding an explicit peer authenticity verification step would make
this clearer than just relying on the shared secret and making it work "like
magic". A prompt in the spirit of what openSSH does for host authenticity
verification.

4.5) Minimum Shared Secret Length can Lead to very short PAKE Password Input
----------------------------------------------------------------------------

For custom shared secrets the minimum length is currently set to six
characters. When using such a short shared secret then, due to the use of t=
he
prefix of the shared secret as room names, `pake.InitCurve()` will only
receive a single byte as password input e.g. in `croc.go:1112` and
`croc.go:224`. A single byte of input seems critically low.

Requiring longer shared secrets could improve upon this. But also avoiding =
to
use cleartext portions of the shared secret for other things would make it
possible to use the full shared secret for the PAKE setup.

5) CVE Assignments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

I have requested CVEs from Mitre for the more tangible issues 3.1 through 3=
.5
and issue 3.8. I will publish them here once they are available.

6) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2023-08-08: I started the review of the Croc codebase.
2023-08-31: I reported my findings to the upstream author and offered
            coorindated disclosure. He replied quickly and stated that he
            wants to address the issues publicly without a formal embargo.
2023-09-04: I replied and agreed to open issues in the GitHub upstream
            project. I asked about his wishes about CVE assignments, but did
            not get a reply anymore (yet).
2023-09-08: I created public GitHub issues corresponding to the findings in=
 my
            report. I requested CVEs from Mitre for the more tangible issues
            found. I published the full report.

7) References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://github.com/schollz/croc.git
[2]: https://redrocket.club/posts/croc
[3]: https://www.openwall.com/lists/oss-security/2020/10/13/4
[4]: https://www.openwall.com/lists/oss-security/2023/04/26/1
[5]: https://www.openwall.com/lists/oss-security/2017/05/01/13

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=C3=BCrnberg
Gesch=C3=A4ftsf=C3=BChrer: Ivo Totev, Andrew McDonald, Werner Knoblich

--bnlumxlvdET9EEUn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmT7I7MACgkQFMQFyXGS
NVPDHQ/+NPmcJAiUjHm9HZZMpm2DXPVIFpByiGJda5H7sMdNzQ1L/T9C19+QLujo
8ZbjId8Hn7bOm2gOdzN9N9BdDGN9qIm7wYtk1bl0jGSBYn26ZcJVDwpVqQWErQzG
HD7I8EO/WbS5mKOay3+5UaRzG526FkFaMX9xxD8hyQ28niuiZEvUWKsvgd/agyqD
gCmmkacWDNIXelj59Z46FTQdI7XKDyxEFiaZOBRCZs9FlWUNxLjJUVkp7CcKhYXY
g2oMbru7+gEY+kU5rxBObZ7v4aPLYrJcrucaSEp76wgWDve6t3Tji37Wr5oSC0et
Qv0l2+xzEHH7fJPq0Cac9vd20/QvWDDsYnqi7hIx1k6pqAW6/iq+CLImhn+ZXv3P
+rj63EMEkKtsJmZJJ0297tXqysv1xKfWFG1j35fcUV+sR/oRBrd7szj9f0Kqq8eF
H2mBzyNsqzVYixY6kFTqUmkbMMvDc/S1EnwVKB0Iq4hJc3pCwMRHnqhlPnFLiSPk
MMU0obiazKzL/oMwQfKvWGC8SKG6MOy500v1pt3OyjNtVDEUlt1TkioG89/dGJnU
sPcIiqvNk35VN+PZuYwa6XiEsh4CJY8bJ+d1yOcfxuX6qYqGNYaiq0jBAaLtU8nS
J5QI2HjGum9f/nzIB8IBN+Ajq43WYRGHlHHdcUnVXR0SEcOLV6A=
=gMGt
-----END PGP SIGNATURE-----

--bnlumxlvdET9EEUn--
