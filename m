X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["13020" "Thursday" "13" "May" "2021" "15:20:23" "+0100" "Matthew Wild" "mwild1@gmail.com" nil "462" "[oss-security] Prosody XMPP server advisory 2021-05-12 (multiple vulnerabilities)" "^Date:" nil nil "5" nil nil (number mark "        mwild1@gmail May 13  462/13020 " thread-indent "\"[oss-security] Prosody XMPP server advisory 2021-05-12 (multiple vulnerabilities)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Prosody XMPP server advisory 2021-05-12 (multiple vulnerabilities)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3344 invoked by uid 550); 13 May 2021 14:27:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28068 invoked from network); 13 May 2021 14:20:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=uRuDDtClZbdwavuolo4/gSfFih500MyQwOYLIQ2kSBQ=;
        b=ksfVo+3wWrYBAdCcN/JWxg4364ieTtfoZM69JuDH7UjXFzM4TKvmSo7prgR7C+Cfmi
         D02Z/5w1hsqNsXN6b9qXDxteRmKixsIAj2bJ6Uie0nrtn8GV9SFYht4MzHvWJg+9yNo9
         Edh8ZLwqS0LVVd7KVWfutsBDXa2mopA+zBw61pVI7t+sK10O8BW05qNecLGTN+m3lVin
         H/sFOv1Q0/D/9Wfr69JBLqbSD67nMuOvy18Ovg1Q9qELrYyBCajxUgZmrV8E9Z+mpFkk
         2IRb6yve3E/UM7zqwt0Yi3cg8dzFbTb7ztmkq+T2UaWCBEv1ruK+mKgYvSEFyskmmDnF
         RWJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=uRuDDtClZbdwavuolo4/gSfFih500MyQwOYLIQ2kSBQ=;
        b=CJZZcyRElQR9kYLisZRmuVPP0guehzNOc+EW+zkak5E2AHuL2ia51UkL42wlTWUwgB
         XLMnJeTzqMipT56ObNqMAKbRClNoYMFtV16GIlYnZKCf8Nu0Dws2Mkmhi9Zob5FdmWZW
         CZr+aCZmlgDwcfEmOQggRMHdOc+maxfudrzQASb/a2j4iGTba5svth+30aR++Ji2pR8a
         frkDog4knZfQ4atH9GThTt4FmWEliJNCpHks0l5168YJsld6AhkYnHpov+oJAwMSTvlf
         Y7kKJurRWx0Xu19cr3B5TyiSQ3NSdw+fmZYcRR7V0Boewkn9gleoplQsfwBbgvHjj0tx
         /aZA==
X-Gm-Message-State: AOAM532qEJmKvHZ+lRjZzsdL9q4QKLUQnMpvsflaHD29wQ8Va6egyPqH
	lE+VhjNBZRTrbzg57KcIaom09537CFRftYWhhbR5PZsLsG8=
X-Google-Smtp-Source: ABdhPJzWKc4bmMY5+tUyPZSBw9nuh9gOSIra38Pa2d4k0VIPcOw2xPEG5QsKz/thXczIdO3I+j+ISfB3Hvm73h9dot0=
X-Received: by 2002:a05:6214:184e:: with SMTP id d14mr7925986qvy.17.1620915635098;
 Thu, 13 May 2021 07:20:35 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAJt9-x5wmruq=9sraBHjRQwZYnVaO=QG5wn5LLw=vfAF=nynrg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Thu, 13 May 2021 15:20:23 +0100
From: Matthew Wild <mwild1@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Prosody XMPP server advisory 2021-05-12 (multiple vulnerabilities)
To: oss-security@lists.openwall.com

Prosody security advisory 2021-05-12
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Project
:   Prosody XMPP server

URL
:   https://prosody.im/

Date
:   2021-05-12

This advisory details 5 new security vulnerabilities discovered in the
Prosody.im XMPP server software. All issues are fixed in the 0.11.9 release
default configuration.

**References**

 - Release announcement: https://blog.prosody.im/prosody-0.11.9-released/
 - Advisory (HTML): https://prosody.im/security/advisory_20210512/
 - Advisory (text): https://prosody.im/security/advisory_20210512.txt

1/5: DoS via insufficient memory consumption controls
-----------------------------------------------------

CVE
: CVE-2021-32918

CVSS
: 7.0 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H/E:F/RL:O/RC:C)

CWEs
: CWE-400

Affected versions
: All versions prior to 0.11.9

Fixed versions
: 0.11.9, 0.11 nightly build 130, trunk nightly build 1434

**Description**

It was discovered that default settings leave Prosody susceptible to remote
unauthenticated denial-of-service (DoS) attacks via memory exhaustion when
running under Lua 5.2 or Lua 5.3. Lua 5.2 is the default and recommended Lua
version for Prosody 0.11.x series.

**Affected configurations**

The default configuration is susceptible to this issue.

Configurations with stricter settings for stanza size limits, rate limits a=
nd
garbage collection parameters are at decreased risk from this attack. For m=
ore
details please review the 'Mitigation' section for recommended values.

**Mitigation**

Mitigation is possible through configuration changes (on 0.11.7+). All the
configuration changes described in this section are applied by default in
Prosody 0.11.9.

1) Enable more aggressive garbage collection

   On Lua 5.2 and 5.3, the garbage collector does not free unused memory fa=
st
   enough by default. This allowed Prosody's memory usage to grow excessive=
ly
   during certain traffic patterns.

   It is recommended to set a garbage collection speed of at least 500 in t=
he
   global section of your configuration file:

   ```
     gc =3D {
       speed =3D 500;
     }
   ```

   Be aware that this setting may increase CPU usage if the other mitigatio=
ns
   in this section are not applied.

2) Enable stricter stanza size limits

   By default Prosody ships with extremely permissive stanza size limits (up
   to 10MB). This value was introduced as a way to place a limit on memory
   usage without affecting legitimate use of the server. However testing
   demonstrates that the default limit is too high for most deployments.

   Our recommendation (and the default in 0.11.9) is to adopt the same defa=
ult
   size limits that are already enforced by ejabberd, one of the other major
   XMPP servers on the network.

   To enable the new limits explicitly, add to the global section of your
   configuration file the following options:

     c2s_stanza_size_limit =3D 256 * 1024
     s2s_stanza_size_limit =3D 512 * 1024

   Be aware that reducing limits has the potential to introduce
   interoperability issues with deployments that do not enforce the same si=
ze
   limits. For example, remote contacts with large avatars.

3) Enable rate limits

   By default Prosody does not enable any rate limits. However we recommend
   enabling them for all production and public deployments to ensure fair
   consumption of resources across all connections.

   First, ensure that mod_limits is enabled by adding "limits" to your
   global modules_enabled configuration option:

   ```
     modules_enabled =3D {
       ...
       "limits";
       ...
     }
   ```

   Next, configure the limits:

   ```
     limits =3D {
       c2s =3D {
         rate =3D "10kb/s";
       };
       s2sin =3D {
         rate =3D "30kb/s";
       }
     }
   ```

**Advice**

All public deployments should upgrade to 0.11.9 or apply the above
configuration changes.

Deployments using nightly builds should upgrade to the latest available
builds.

**Credits**

Many thanks to Travis Burtrum (moparisthebest) for discovering and reporting
this issue, and providing a test case.

**Commits**

- https://hg.prosody.im/trunk/rev/db8e41eb6eff
- https://hg.prosody.im/trunk/rev/b0d8920ed5e5
- https://hg.prosody.im/trunk/rev/929de6ade6b6
- https://hg.prosody.im/trunk/rev/63fd4c8465fb
- https://hg.prosody.im/trunk/rev/1937b3c3efb5
- https://hg.prosody.im/trunk/rev/3413fea9e6db

----------------------------------------------------------------------------

2/5: DoS via repeated TLS renegotiation causing excessive CPU consumption
----------------------------------------------------------------------------

CVE
: CVE-2021-32920

CVSS
: 5.1 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L/E:H/RL:O/RC:C)

CWEs
: CWE-400

Affected versions
: All versions prior to 0.11.9

Fixed versions
: 0.11.9, 0.11 nightly build 130, trunk nightly build 1434

**Description**

It was discovered that Prosody does not disable SSL/TLS renegotiation, even
though this is not used in XMPP. A malicious client may flood a connection
with renegotiation requests to consume excessive CPU resources on the serve=
r.

Support for disabling renegotiation depends on OpenSSL 1.1.1+ and LuaSec 0.=
7+.

**Affected configurations**

The default configuration is susceptible to this issue.

**Temporary mitigation**

Ensure you have OpenSSL 1.1.1 or higher and LuaSec 0.7 or higher, and set t=
he
following ssl option (or add to your existing one if you have one):

```
  ssl =3D {
    options =3D {
      no_renegotiation =3D true;
    }
  }
```

This configuration is applied by default in 0.11.9.

**Advice**

All public deployments should upgrade to 0.11.9 or apply the above
configuration changes.

Deployments using nightly builds should upgrade to the latest available
builds.

**Credits**

This flaw was discovered by Kim Alvefur, a member of the Prosody team.

**Commits**

- https://hg.prosody.im/trunk/rev/55ef50d6cf65
- https://hg.prosody.im/trunk/rev/5a484bd050a7
- https://hg.prosody.im/trunk/rev/aaf9c6b6d18d

-----------------------------------------------------------------------

3/5: Use of timing-dependent string comparison with sensitive values
-----------------------------------------------------------------------

CVE
: CVE-2021-32921

CVSS
: 4.7 (CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N/A:N/E:U/RL:O/RC:U)

CWEs
: CWE-1254

Affected versions
: All versions prior to 0.11.9

Fixed versions
: 0.11.9, 0.11 nightly build 130, trunk nightly build 1434

**Description**

It was discovered that Prosody does not use a constant-time algorithm for
comparing certain secret strings when running under Lua 5.2 or later. This =
can
potentially be used in a timing attack to reveal the contents of secret
strings to an attacker.

Lua 5.1 utilizes a technique called "string interning", which protected str=
ing
comparisons from timing attacks. In Lua 5.2 and later versions, strings over
40 bytes in length are excluded from interning.

With Prosody running under Lua 5.2, this makes any secret string over 40 by=
tes
in length vulnerable to potential discovery via timing attacks.

Note that if a secret string contains non-ASCII (unicode) characters, it may
be longer than 40 bytes when encoded as UTF-8 (Prosody's internal encoding)
even if it is fewer than 40 characters long.

It should be noted that to successfully perform a timing attack, a signific=
ant
number of failed attempts must typically be made to "guess" at the contents=
 of
the secret string.

We are not aware of any attempts to exploit this vulnerability (which would
likely be noticeable), and no known proof-of-concept exploit exists.

**Affected configurations**

This flaw affects the following modules:

  - mod_auth_internal_plain (disabled by default)

    mod_auth_internal_plain performs a timing-dependent comparison to the
    user's password if the user's password is longer than 40 bytes. This may
    allow an attacker to discover a user's password via a timing attack.

    We do not generally recommend mod_auth_internal_plain for new deploymen=
ts,
    and mod_auth_internal_hashed has been the default for Prosody 0.11.x.

  - mod_muc (disabled by default)

    mod_muc supports password-protection of MUCs. The password validity che=
ck
    is performed using a timing-dependent comparison, which may allow an
    attacker to discover the MUC password via a timing attack if the passwo=
rd
    is longer than 40 bytes.

    We do not generally recommend using password-protected MUCs. Instead use
    affiliations to directly grant access to specific JIDs whenever possibl=
e.

  - mod_auth_internal_hashed (enabled by default but not typically vulnerab=
le)

    mod_auth_internal_hashed has been updated for safety, but it is
    not vulnerable in the default configuration of Lua 5.2 as the password
    hashes it compares do not exceed 40 bytes.

  - mod_dialback (enabled by default but not typically vulnerable)

    mod_dialback has been updated for safety, but due to the single-use nat=
ure
    of s2s dialback verification strings a timing attack on this module is =
not
    believed to be possible, or to grant an attacker any advantage if it we=
re.

**Temporary mitigation**

mod_auth_internal_plain: we recommend that people upgrade to
mod_auth_internal_hashed due to this and also to benefit from its other
security properties.

mod_muc: use affiliations to grant access to a MUC instead of passwords. If
passwords must be used, ensure they are shorter than 40 bytes.

Rate limits can greatly lengthen the amount of time required to successfully
complete a timing attack. Enable and configure mod_limits.

**Advice**

All deployments should upgrade to 0.11.9.

Deployments using nightly builds should upgrade to the latest available
builds.

**Credits**

This flaw was discovered by Matthew Wild, a member of the Prosody team. The
issue with MUC passwords was also previously identified by Robert Gr=C3=83=
=C2=B6sser.

**Commits**

- https://hg.prosody.im/trunk/rev/c98aebe601f9
- https://hg.prosody.im/trunk/rev/13b84682518e
- https://hg.prosody.im/trunk/rev/6f56170ea986

-------------------------------------------------------------------

4/5: Use of mod_proxy65 is unrestricted in default configuration
-------------------------------------------------------------------

CVE
: CVE-2021-32917

CVSS
: 5.1 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L/E:H/RL:O/RC:C)

CWEs
: CWE-862, CWE-400

Affected versions
: All versions prior to 0.11.9

Fixed versions
: 0.11.9, 0.11 nightly build 130, trunk nightly build 1434

**Description**

mod_proxy65 is a file transfer proxy provided with Prosody to facilitate the
transfer of files and other data between XMPP clients.

It was discovered that the proxy65 component of Prosody allows open access
by default, even if neither of the users have an XMPP account on the local
server, allowing unrestricted use of the server's bandwidth.

**Affected configurations**

The default configuration does not enable mod_proxy65 and is not affected.

With mod_proxy65 enabled, all configurations without a 'proxy65_acl' setting
configured are affected.

**Temporary mitigation**

Configure 'proxy65_acl' to a list of XMPP domains that should be allowed
to use the file transfer proxy.

**Advice**

All deployments should upgrade to 0.11.9 and/or configure a 'proxy65_acl' as
desired.

Deployments using nightly builds should upgrade to the latest available
builds.

The default behaviour in 0.11.9 allows all local clients to initiate a data
stream through the proxy if proxy65_acl is unconfigured.

**Credits**

This flaw was discovered by the Prosody team.

**Commits**

- https://hg.prosody.im/trunk/rev/65dcc175ef5b

--------------------------------------------------------------

5/5: Undocumented dialback-without-dialback option insecure
--------------------------------------------------------------

CVE
: CVE-2021-32919

Affected versions
: Prosody 0.10.x, Prosody 0.11.x prior to 0.11.9

Fixed versions
: 0.11.9, 0.11 nightly build 130, trunk nightly build 1434

**Description**

The undocumented option 'dialback_without_dialback' enabled an experimental
feature for server-to-server authentication. A flaw in this feature meant it
did not correctly authenticate remote servers, allowing a remote server to
impersonate another server when this option is enabled.

**Affected configurations**

The default configuration is not affected.

Configurations with the setting 'dialback_without_dialback' set to true are
affected.

**Temporary mitigation**

Remove or disable the 'dialback_without_dialback' option.

**Advice**

All deployments should upgrade to 0.11.9 or disable this feature.

Deployments using nightly builds should upgrade to the latest available
builds.

The affected feature has been removed in 0.11.9.

**Credits**

This flaw was discovered by the Prosody team.

**Commits**

- https://hg.prosody.im/trunk/rev/6be890ca492e
- https://hg.prosody.im/trunk/rev/d0e9ffccdef9
