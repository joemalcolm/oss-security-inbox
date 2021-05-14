X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["14475" "Friday" "14" "May" "2021" "11:14:57" "+0200" "Robert G." "robert.groesser@googlemail.com" nil "486" "Re: [oss-security] Prosody XMPP server advisory 2021-05-12 (multiple vulnerabilities)" "^Date:" nil nil "5" nil nil (number mark "        robert.groes May 14  486/14475 " thread-indent "\"Re: [oss-security] Prosody XMPP server advisory 2021-05-12 (multiple vulnerabilities)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Prosody XMPP server advisory 2021-05-12 (multiple vulnerabilities)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26166 invoked by uid 550); 14 May 2021 10:07:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8054 invoked from network); 14 May 2021 09:15:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=M7KamWjZzp8uTDVBZJfwxgc+j1Y06QZz6VQvOQKlm2w=;
        b=Fpphn0gU5wpFGLTRSem9hJMjgU8kLDEkzBmJDJSxjKPaxuFdfsVSIGszEa4yGTPRM+
         6fYon67ANdktU092ryPaHf3LDP9VN6SkTF0I4T9MG5Qd0xjeK8GYDadR63eqMd4M3Gdz
         j56f8/OaqY5FsMaPbVgVp99BzAqXq8rog33/JHjexds3cb9BjSh6FFfK+awu98yG61ft
         LWDGSp4iLMkVykgo2HW6UBkDm2Mxlysyr4j3dub95KWHazKyx7JaVFjwN+CwSRLRfm3M
         EymiTOjuA4U7479l9i4KzeDbR1e3/io2zZtI+TM6+xUfUkXaaXxA0dvtxEAtuhnXabLp
         GpIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=M7KamWjZzp8uTDVBZJfwxgc+j1Y06QZz6VQvOQKlm2w=;
        b=UxIbVR3mFR2KDlp7XA5ZhrsgQYLYBE8br8Y90pGlMvWbim7cUltw7I4qBpd/R8g1lM
         hD0tqfvTYrPCYaIctS+2K8tZ7OJ2zp5q1cqst/WG94lmDG16ytfVD49OVt3qhzCaymEU
         xX0f0+qr8xwUIA729GTzL3PSblfQL5UNQoD/SXpifnJ6ONj1y1JFYEs6HlCKULAMPaCX
         6/8ccn4tSyUZ6Kc4C+8zlafKUb9Eipr2wiBkMDkvV7vs4SyIEf7Vb5dePFJUkLVvUjmW
         zSSmBjtrL0DTj/OWQpDOwXufwV720FKXynDmtaML0SByIl5vOvI9fwV18lt+OYp3Q2s1
         A2qQ==
X-Gm-Message-State: AOAM532HbWHYHbaLNuv1OabSGoEmnqk6ksoQObztm9jHU38VCPZNLlrv
	ypJn/45bXjleQkkkVg+/bPIo6PlHuTpUX1u/m0I+yWwo+bo=
X-Google-Smtp-Source: ABdhPJxFJ1qqTZg4MvX2NojKmVbypIN54GATkX1RwPBOdC/DeHU/R7EK5JPXgdpT3BlrnsDphOBfb7h/qYyQI2Aeui0=
X-Received: by 2002:a2e:b6d1:: with SMTP id m17mr28101813ljo.149.1620983708511;
 Fri, 14 May 2021 02:15:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210514110545.3f4412d1@LXKA-4PGK1N2>
In-Reply-To: <20210514110545.3f4412d1@LXKA-4PGK1N2>
Message-ID: <CAGBF=vy+s6NBrn-1KyMdwRufeg8VTZME_9rKL=kfvd4ankkHRg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000021f18f05c246ae91"
Date: Fri, 14 May 2021 11:14:57 +0200
From: "Robert G." <robert.groesser@googlemail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prosody XMPP server advisory 2021-05-12 (multiple vulnerabilities)
To: oss-security@lists.openwall.com

--00000000000021f18f05c246ae91
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey guys,

thank you for fixing this!

>This flaw was discovered by Matthew Wild, a member of the Prosody team.
The issue with MUC passwords was also previously identified by Robert
Gr=C3=83=C2=B6sser.

This wasn't identified by me, to be fair. I only reported this.
The flaw was initially found by my colleague Marvin Zerulla.

Best
Robert

Date: Thu, 13 May 2021 15:20:23 +0100
> From: Matthew Wild <mwild1@gmail.com>
> To: oss-security@lists.openwall.com
> Subject: [oss-security] Prosody XMPP server advisory 2021-05-12
> (multiple vulnerabilities)
>
>
> Prosody security advisory 2021-05-12
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Project
> :   Prosody XMPP server
>
> URL
> :   https://prosody.im/
>
> Date
> :   2021-05-12
>
> This advisory details 5 new security vulnerabilities discovered in the
> Prosody.im XMPP server software. All issues are fixed in the 0.11.9
> release default configuration.
>
> **References**
>
>  - Release announcement:
>    https://blog.prosody.im/prosody-0.11.9-released/
>  - Advisory (HTML): https://prosody.im/security/advisory_20210512/
>  - Advisory (text): https://prosody.im/security/advisory_20210512.txt
>
> 1/5: DoS via insufficient memory consumption controls
> -----------------------------------------------------
>
> CVE
> : CVE-2021-32918
>
> CVSS
> : 7.0 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H/E:F/RL:O/RC:C)
>
> CWEs
> : CWE-400
>
> Affected versions
> : All versions prior to 0.11.9
>
> Fixed versions
> : 0.11.9, 0.11 nightly build 130, trunk nightly build 1434
>
> **Description**
>
> It was discovered that default settings leave Prosody susceptible to
> remote unauthenticated denial-of-service (DoS) attacks via memory
> exhaustion when running under Lua 5.2 or Lua 5.3. Lua 5.2 is the
> default and recommended Lua version for Prosody 0.11.x series.
>
> **Affected configurations**
>
> The default configuration is susceptible to this issue.
>
> Configurations with stricter settings for stanza size limits, rate
> limits and garbage collection parameters are at decreased risk from
> this attack. For more details please review the 'Mitigation' section
> for recommended values.
>
> **Mitigation**
>
> Mitigation is possible through configuration changes (on 0.11.7+). All
> the configuration changes described in this section are applied by
> default in Prosody 0.11.9.
>
> 1) Enable more aggressive garbage collection
>
>    On Lua 5.2 and 5.3, the garbage collector does not free unused
>    memory fast enough by default. This allowed Prosody's memory usage
>    to grow excessively during certain traffic patterns.
>
>    It is recommended to set a garbage collection speed of at least 500
>    in the global section of your configuration file:
>
>    ```
>      gc =3D {
>        speed =3D 500;
>      }
>    ```
>
>    Be aware that this setting may increase CPU usage if the other
>    mitigations in this section are not applied.
>
> 2) Enable stricter stanza size limits
>
>    By default Prosody ships with extremely permissive stanza size
>    limits (up to 10MB). This value was introduced as a way to place a
>    limit on memory usage without affecting legitimate use of the
>    server. However testing demonstrates that the default limit is too
>    high for most deployments.
>
>    Our recommendation (and the default in 0.11.9) is to adopt the same
>    default size limits that are already enforced by ejabberd, one of
>    the other major XMPP servers on the network.
>
>    To enable the new limits explicitly, add to the global section of
>    your configuration file the following options:
>
>      c2s_stanza_size_limit =3D 256 * 1024
>      s2s_stanza_size_limit =3D 512 * 1024
>
>    Be aware that reducing limits has the potential to introduce
>    interoperability issues with deployments that do not enforce the
>    same size limits. For example, remote contacts with large avatars.
>
> 3) Enable rate limits
>
>    By default Prosody does not enable any rate limits. However we
>    recommend enabling them for all production and public deployments to
>    ensure fair consumption of resources across all connections.
>
>    First, ensure that mod_limits is enabled by adding "limits" to your
>    global modules_enabled configuration option:
>
>    ```
>      modules_enabled =3D {
>        ...
>        "limits";
>        ...
>      }
>    ```
>
>    Next, configure the limits:
>
>    ```
>      limits =3D {
>        c2s =3D {
>          rate =3D "10kb/s";
>        };
>        s2sin =3D {
>          rate =3D "30kb/s";
>        }
>      }
>    ```
>
> **Advice**
>
> All public deployments should upgrade to 0.11.9 or apply the above
> configuration changes.
>
> Deployments using nightly builds should upgrade to the latest available
> builds.
>
> **Credits**
>
> Many thanks to Travis Burtrum (moparisthebest) for discovering and
> reporting this issue, and providing a test case.
>
> **Commits**
>
> - https://hg.prosody.im/trunk/rev/db8e41eb6eff
> - https://hg.prosody.im/trunk/rev/b0d8920ed5e5
> - https://hg.prosody.im/trunk/rev/929de6ade6b6
> - https://hg.prosody.im/trunk/rev/63fd4c8465fb
> - https://hg.prosody.im/trunk/rev/1937b3c3efb5
> - https://hg.prosody.im/trunk/rev/3413fea9e6db
>
>
> -------------------------------------------------------------------------=
---
>
> 2/5: DoS via repeated TLS renegotiation causing excessive CPU
> consumption
>
> -------------------------------------------------------------------------=
---
>
> CVE
> : CVE-2021-32920
>
> CVSS
> : 5.1 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L/E:H/RL:O/RC:C)
>
> CWEs
> : CWE-400
>
> Affected versions
> : All versions prior to 0.11.9
>
> Fixed versions
> : 0.11.9, 0.11 nightly build 130, trunk nightly build 1434
>
> **Description**
>
> It was discovered that Prosody does not disable SSL/TLS renegotiation,
> even though this is not used in XMPP. A malicious client may flood a
> connection with renegotiation requests to consume excessive CPU
> resources on the server.
>
> Support for disabling renegotiation depends on OpenSSL 1.1.1+ and
> LuaSec 0.7+.
>
> **Affected configurations**
>
> The default configuration is susceptible to this issue.
>
> **Temporary mitigation**
>
> Ensure you have OpenSSL 1.1.1 or higher and LuaSec 0.7 or higher, and
> set the following ssl option (or add to your existing one if you have
> one):
>
> ```
>   ssl =3D {
>     options =3D {
>       no_renegotiation =3D true;
>     }
>   }
> ```
>
> This configuration is applied by default in 0.11.9.
>
> **Advice**
>
> All public deployments should upgrade to 0.11.9 or apply the above
> configuration changes.
>
> Deployments using nightly builds should upgrade to the latest available
> builds.
>
> **Credits**
>
> This flaw was discovered by Kim Alvefur, a member of the Prosody team.
>
> **Commits**
>
> - https://hg.prosody.im/trunk/rev/55ef50d6cf65
> - https://hg.prosody.im/trunk/rev/5a484bd050a7
> - https://hg.prosody.im/trunk/rev/aaf9c6b6d18d
>
> -----------------------------------------------------------------------
>
> 3/5: Use of timing-dependent string comparison with sensitive values
> -----------------------------------------------------------------------
>
> CVE
> : CVE-2021-32921
>
> CVSS
> : 4.7 (CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N/A:N/E:U/RL:O/RC:U)
>
> CWEs
> : CWE-1254
>
> Affected versions
> : All versions prior to 0.11.9
>
> Fixed versions
> : 0.11.9, 0.11 nightly build 130, trunk nightly build 1434
>
> **Description**
>
> It was discovered that Prosody does not use a constant-time algorithm
> for comparing certain secret strings when running under Lua 5.2 or
> later. This can potentially be used in a timing attack to reveal the
> contents of secret strings to an attacker.
>
> Lua 5.1 utilizes a technique called "string interning", which protected
> string comparisons from timing attacks. In Lua 5.2 and later versions,
> strings over 40 bytes in length are excluded from interning.
>
> With Prosody running under Lua 5.2, this makes any secret string over
> 40 bytes in length vulnerable to potential discovery via timing attacks.
>
> Note that if a secret string contains non-ASCII (unicode) characters,
> it may be longer than 40 bytes when encoded as UTF-8 (Prosody's
> internal encoding) even if it is fewer than 40 characters long.
>
> It should be noted that to successfully perform a timing attack, a
> significant number of failed attempts must typically be made to "guess"
> at the contents of the secret string.
>
> We are not aware of any attempts to exploit this vulnerability (which
> would likely be noticeable), and no known proof-of-concept exploit
> exists.
>
> **Affected configurations**
>
> This flaw affects the following modules:
>
>   - mod_auth_internal_plain (disabled by default)
>
>     mod_auth_internal_plain performs a timing-dependent comparison to
>     the user's password if the user's password is longer than 40 bytes.
>     This may allow an attacker to discover a user's password via a
>     timing attack.
>
>     We do not generally recommend mod_auth_internal_plain for new
>     deployments, and mod_auth_internal_hashed has been the default for
>     Prosody 0.11.x.
>
>   - mod_muc (disabled by default)
>
>     mod_muc supports password-protection of MUCs. The password validity
>     check is performed using a timing-dependent comparison, which may
>     allow an attacker to discover the MUC password via a timing attack
>     if the password is longer than 40 bytes.
>
>     We do not generally recommend using password-protected MUCs.
>     Instead use affiliations to directly grant access to specific JIDs
>     whenever possible.
>
>   - mod_auth_internal_hashed (enabled by default but not typically
>     vulnerable)
>
>     mod_auth_internal_hashed has been updated for safety, but it is
>     not vulnerable in the default configuration of Lua 5.2 as the
>     password hashes it compares do not exceed 40 bytes.
>
>   - mod_dialback (enabled by default but not typically vulnerable)
>
>     mod_dialback has been updated for safety, but due to the single-use
>     nature of s2s dialback verification strings a timing attack on this
>     module is not believed to be possible, or to grant an attacker any
>     advantage if it were.
>
> **Temporary mitigation**
>
> mod_auth_internal_plain: we recommend that people upgrade to
> mod_auth_internal_hashed due to this and also to benefit from its other
> security properties.
>
> mod_muc: use affiliations to grant access to a MUC instead of
> passwords. If passwords must be used, ensure they are shorter than 40
> bytes.
>
> Rate limits can greatly lengthen the amount of time required to
> successfully complete a timing attack. Enable and configure mod_limits.
>
> **Advice**
>
> All deployments should upgrade to 0.11.9.
>
> Deployments using nightly builds should upgrade to the latest available
> builds.
>
> **Credits**
>
> This flaw was discovered by Matthew Wild, a member of the Prosody team.
> The issue with MUC passwords was also previously identified by Robert
> Gr=C3=83=C2=B6sser.
>
> **Commits**
>
> - https://hg.prosody.im/trunk/rev/c98aebe601f9
> - https://hg.prosody.im/trunk/rev/13b84682518e
> - https://hg.prosody.im/trunk/rev/6f56170ea986
>
> -------------------------------------------------------------------
>
> 4/5: Use of mod_proxy65 is unrestricted in default configuration
> -------------------------------------------------------------------
>
> CVE
> : CVE-2021-32917
>
> CVSS
> : 5.1 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L/E:H/RL:O/RC:C)
>
> CWEs
> : CWE-862, CWE-400
>
> Affected versions
> : All versions prior to 0.11.9
>
> Fixed versions
> : 0.11.9, 0.11 nightly build 130, trunk nightly build 1434
>
> **Description**
>
> mod_proxy65 is a file transfer proxy provided with Prosody to
> facilitate the transfer of files and other data between XMPP clients.
>
> It was discovered that the proxy65 component of Prosody allows open
> access by default, even if neither of the users have an XMPP account on
> the local server, allowing unrestricted use of the server's bandwidth.
>
> **Affected configurations**
>
> The default configuration does not enable mod_proxy65 and is not
> affected.
>
> With mod_proxy65 enabled, all configurations without a 'proxy65_acl'
> setting configured are affected.
>
> **Temporary mitigation**
>
> Configure 'proxy65_acl' to a list of XMPP domains that should be allowed
> to use the file transfer proxy.
>
> **Advice**
>
> All deployments should upgrade to 0.11.9 and/or configure a
> 'proxy65_acl' as desired.
>
> Deployments using nightly builds should upgrade to the latest available
> builds.
>
> The default behaviour in 0.11.9 allows all local clients to initiate a
> data stream through the proxy if proxy65_acl is unconfigured.
>
> **Credits**
>
> This flaw was discovered by the Prosody team.
>
> **Commits**
>
> - https://hg.prosody.im/trunk/rev/65dcc175ef5b
>
> --------------------------------------------------------------
>
> 5/5: Undocumented dialback-without-dialback option insecure
> --------------------------------------------------------------
>
> CVE
> : CVE-2021-32919
>
> Affected versions
> : Prosody 0.10.x, Prosody 0.11.x prior to 0.11.9
>
> Fixed versions
> : 0.11.9, 0.11 nightly build 130, trunk nightly build 1434
>
> **Description**
>
> The undocumented option 'dialback_without_dialback' enabled an
> experimental feature for server-to-server authentication. A flaw in
> this feature meant it did not correctly authenticate remote servers,
> allowing a remote server to impersonate another server when this option
> is enabled.
>
> **Affected configurations**
>
> The default configuration is not affected.
>
> Configurations with the setting 'dialback_without_dialback' set to true
> are affected.
>
> **Temporary mitigation**
>
> Remove or disable the 'dialback_without_dialback' option.
>
> **Advice**
>
> All deployments should upgrade to 0.11.9 or disable this feature.
>
> Deployments using nightly builds should upgrade to the latest available
> builds.
>
> The affected feature has been removed in 0.11.9.
>
> **Credits**
>
> This flaw was discovered by the Prosody team.
>
> **Commits**
>
> - https://hg.prosody.im/trunk/rev/6be890ca492e
> - https://hg.prosody.im/trunk/rev/d0e9ffccdef9
>

--00000000000021f18f05c246ae91--
