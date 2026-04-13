Received: (qmail 11284 invoked by uid 550); 13 Apr 2026 02:29:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11266 invoked from network); 13 Apr 2026 02:29:07 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1776047338; cv=none;
        d=google.com; s=arc-20240605;
        b=E0sy6EgsPwNTputR8x2YCfsz4brEvR3v4mrTWcSv1tX0FI80sW+pKvsvFaEV3SDxE0
         UA1TLbE/AOZp92MGFU+yvvfYFI+dnH9Ed4vT9Db3CcB8MIywtVoJPx/2df0pypYuNBt4
         hhgPUugmdOuFJ+EqHNw3m/y/QLf21EWvaY0qLDtdO7Xf2M9P96c3k9iTsgiHXQBjflHG
         cmJDwdjqKSZSRi3ZRYBCn+NFka/1APA1lnhgHekwtBnZ5g22UQmpH+T1e9SQnHmblxaU
         dAeJMDedwUg/MsPzMjW8VF7yT4HG4Vk8XunI4bJPD5Zz4yzH479PtA6NpSKAyzKAp66w
         5yfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=scvbtqWAvxsijhh7JlQ+fOVgHVEJm3pytqj4/x+BGlg=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=coBXo0NicIMFm1tg7/gg8yR3LgAw1jLLRWh6j9z2UwbpsAwI3FBI6tLeDG1KdGHErM
         KRAmkScnG/jN690GIYmNH4icOCf1J3FWEsqrmbMurpNRgVs4FZ5VKeBTlnS4Gt9AJRXw
         4IL4hxMLiNp5xrxFpMI1xpOzkZsJsTkgHMT2r/jq4olGjFHLhaKa7O3KUvQRMnzeQz8V
         mXA4h10savnMH2t9X9V5Q582hD6DZbmAzyRlc5v/E0VlZcCLgAnZLyy8iPdTLN69HY/B
         qDeVe3ODmakXz47q8gr/WjsLOXeRyZ+ejcrhqnQFGJqeo+RYSjGfx1vpolGwiTM/6ExW
         MWaA==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776047338; x=1776652138; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=scvbtqWAvxsijhh7JlQ+fOVgHVEJm3pytqj4/x+BGlg=;
        b=Il/5DybxuU8tIRnNbn5u/vgsNP6QKFw63ee1CPCxvll0YRptY59sHuWFp31p1dVnQD
         9+Nz7xxlbxbuufU5JFW/nGBGqqjyHUkeVLcxFQeA2HNx6OIkFa1CDQWRvBBN8p4QfNd1
         3NR8KOM/13OyfFq7FpjPhLWgIsSukzwpkpluqU+VbyqoUgpJShZqgQ7RnDHYowX+4ZHN
         82+BJE1qebwiSAX76xqLPb+fjDKteXj/upLvEr9y33J88ofKbhRfpql6hqLlfTywT73K
         QKqFKoWqKiIbV5LqCxmOSkwPA6nhNakbixyrWLj/mwkZV1TBS0qO3LlsX8cT5UJ5O01O
         Ys7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776047338; x=1776652138;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=scvbtqWAvxsijhh7JlQ+fOVgHVEJm3pytqj4/x+BGlg=;
        b=Ld/B4YQjE1RHgOdnIyoJ+hXOZmXEeGLQRmZO/FIsrT6GONLtViodcvA4HTd3jYUg/f
         NBdqh7Obc//neYBphDXGZz7PT99syzP5pmdKh5xYhuSmBPTjhMAO+mWS0nO6FJlYwE4u
         bLzWuFmHpvB6RHRZDRIgA3NA5CSGY8eOI/wcfR1q37NjAUfNa5sgekHZ9iLBxHX8OejE
         zOIJJ4YlvrSBwzXCwGCblfmOuByv+N6mDlBpov68JFPSbQ5mnu8dW3KsMxiJrSFhPtl0
         vcM5xPeJElDcsXRyLDx3dYPbkrYVadQd+CRfs/idWsP5+SbMqbePsCNPBd2S9u6VjdiA
         SGKQ==
X-Gm-Message-State: AOJu0YypVLHa0hj1bquuxn6b6UwQrT6IR+RbbmPTdq86WuQJr6S5cgHe
	/pXfBR7v+0BLs46Dt4mOXGT0WHWPSIk3i4XuL7G5Pw2WH5S+hMYvZqZweyqcMAs3+1vceyUcTtH
	B8f99h+hh0+6j1w/pndd2p2B4edLWxtC0WA==
X-Gm-Gg: AeBDietcpRHjpJTey5/M0St71N6na/GdWHrWj94do7Yr0eJ0uLXeCRjZkglKiTv2YFT
	Vt3kpZO+0GR2+6bf6IO8ogMoiguCHKqeT8jPeHsR4OlIV/1CvvY//DbxCUlGQwg/TUAyAe60tTW
	I3o06wr4su39h9VFMUBqmj4ABvgLQczfy1HkyUpZXaIl8TlJXYJt+IFiWjRdWuYzsyRlsyaDNAe
	pSTzOmJWjXgHy4V8tuEZODp0eNJhOPp/huBiHEboBv4gokZIZV7VBZXS/xihXkz8M389NSu1NOW
	oVXpYIrrlk1156w2gla/VfiCCQocP2TRhiWsWYKCvbv4YtykSiV4Y7GJX0Al4e5CCLfMXtT5IyL
	u5p9MAkcxpnZodk7z/24/duOV9A==
X-Received: by 2002:a0c:e014:0:b0:89c:5d56:bca8 with SMTP id
 6a1803df08f44-8ac861a9385mr180044736d6.16.1776047338049; Sun, 12 Apr 2026
 19:28:58 -0700 (PDT)
MIME-Version: 1.0
References: <6579b4c2-c2d2-4059-8d89-fada89a9534d@oracle.com>
In-Reply-To: <6579b4c2-c2d2-4059-8d89-fada89a9534d@oracle.com>
From: Alexander Patrakov <patrakov@gmail.com>
Date: Mon, 13 Apr 2026 10:28:31 +0800
X-Gm-Features: AQROBzCKx8scRbRSMUmJ2UzPkfoLIFgym51yxm9s7eqybrtsdjFbCc7_9lJvlLE
Message-ID: <CAN_LGv3uxE6EjPPbRreaQPL-UTOwLmmZ8NxxiZBx-wcaAF1Ykw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000b05383064f4e3e1e"
Subject: Re: [oss-security] Security Audit of Hex, the Erlang package manager

--000000000000b05383064f4e3e1e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Alan,

How am I, as a user, supposed to authenticate these PDFs as materials
really produced by the parties Hex claims they are from? The PDFs are
offered for download from the audited-party domain, not from the auditors'
domains, and do not contain any digital signatures.

On Mon, Apr 13, 2026 at 4:16=E2=80=AFAM Alan Coopersmith <
alan.coopersmith@oracle.com> wrote:

> https://hex.pm/blog/security-audit announces the completion of a
> security audit & penetration testing of Hex, the Erlang package manager,
> funded by the OpenSSF and overseen by the Erlang Ecosystem Foundation.
>
> This work was done by two independent security firms, Paraxial.io and
> zentrust partners GmbH, who each produced their own reports:
>   - https://hex.pm/reports/2026/paraxial.pdf
>   - https://hex.pm/reports/2026/zentrust.pdf
>
> The announcement reports:
>
> > What was found
> > --------------
> >
> > Across both audits, a number of issues were identified, ranging from hi=
gh
> > severity vulnerabilities to low-severity hardening gaps.
> >
> > Examples include:
> >
> >  * Unsafe deserialization in hex_core that could lead to RCE under
> certain
> >    conditions
> >  * A denial of service condition during package uploads
> >  * Weaknesses in authentication flows and API key handling
> >  * Gaps in CI/CD hardening (GitHub Actions)
> >  * Missing or incomplete security controls in some areas
> >
> > Importantly, the audits focused on realistic attack scenarios such as:
> >
> >  * cross-account package tampering
> >  * bypassing integrity checks
> >  * injection in public-facing features
> >  * CI/CD compromise
> >
> > What we fixed
> > -------------
> >
> > Most findings have been remediated during the engagement and confirmed =
in
> > re-tests.
> >
> > Highlights:
> >
> >  * Fixed unsafe deserialization in hex_core (CVE-2026-21619)
> >  * Fixed API key privilege escalation (CVE-2026-21621)
> >  * Fixed password reset issues (CVE-2026-21622)
> >  * Fixed XSS in OAuth device flow (CVE-2026-21618)
> >  * Fixed denial of service in package upload (CVE-2026-23940)
> >  * Removed sensitive credentials from repositories
> >  * Hardened authentication flows (including "sudo mode" for sensitive
> actions)
> >  * Disabled legacy TLS versions
> >  * Improved CSP and other browser security controls
> >
> > Re-tests by both firms confirmed that the majority of vulnerabilities
> were
> > successfully remediated.
> >
> > Several remaining items are either:
> >
> >  * accepted risks with clear rationale (for example UX trade-offs or
> staged
> >    migrations), or
> >  * dependent on ecosystem-wide changes (for example client updates)
> >
> > What we decided not to change (yet)
> > -----------------------------------
> >
> > Some findings reflect intentional trade-offs or transitional states
> rather
> > than vulnerabilities.
> >
> > Examples:
> >
> >  * Basic authentication and optional 2FA are still supported for
> compatibility
> >    with existing clients. Both will be phased out once all clients
> support the
> >    OAuth2 device flow.
> >  * Certain features (like documentation hosting) intentionally allow
> >    user-provided content and are being isolated rather than restricted.
> >
> > These decisions were reviewed jointly by the Hex.pm team and the EEF.
>
> These issues appear to be reported against the hexpm server side, not the
> client
> side that end users & distros are likely to be running:
>
>   - Cross-site scripting (XSS) in OAuth Device Authorization screen
> (CVE-2026-21618)
>     https://github.com/hexpm/hexpm/security/advisories/GHSA-6cw9-5gg4-rhpj
>
>   - Improper Scope Enforcement in OAuth client_credentials Flow Allows
> Read-Only
>     API Key to Escalate to Full Access with Valid 2FA Code (CVE-2026-2162=
1)
>     https://github.com/hexpm/hexpm/security/advisories/GHSA-739m-8727-j6w3
>
>   - Password Reset Tokens Do Not Expire (CVE-2026-21622)
>     https://github.com/hexpm/hexpm/security/advisories/GHSA-6r94-pvwf-mxqm
>
>   - Path Traversal in Local File Store Backend (Development and Self-Host=
ed
>     Registry Setups) (CVE-2026-23939)
>     https://github.com/hexpm/hexpm/security/advisories/GHSA-42mv-r64p-4869
>
>   - Publishing Oversized Package Can Trigger Denial of Service
> (CVE-2026-23940)
>     https://github.com/hexpm/hexpm/security/advisories/GHSA-jp8w-gxf6-8hcr
>
> That leaves one CVE for distros and end users to worry about -
> https://github.com/hexpm/hex_core/security/advisories/GHSA-hx9w-f2w9-9g96
> reports:
> > Unsafe Deserialization of Erlang Terms in hex_core
> > --------------------------------------------------
> >
> > maennchen published GHSA-hx9w-f2w9-9g96 Feb 27, 2026
> >
> > Package:            hex (otp)
> > Affected versions:  >=3D 2.3.0 and <=3D 2.3.2
> > Patched versions:   2.3.2
> >
> > Package:            hex_core (Erlang)
> > Affected versions:  <=3D 0.12.1
> > Patched versions:   0.12.1
> >
> > Package:            rebar3 (otp)
> > Affected versions:  >=3D 3.9.1 and <=3D 3.27.0
> > Patched versions:   3.27.0
> >
> > Impact
> > ------
> > The Hex client (hex_core) deserializes Erlang terms received from the
> > Hex API using binary_to_term/1 without sufficient restrictions.
> >
> > If an attacker can control the HTTP response body returned by the Hex
> API,
> > this allows denial-of-service attacks such as atom table exhaustion,
> leading
> > to a VM crash. No released versions are known to allow remote code
> execution.
> >
> > Patches
> > -------
> >
> https://github.com/hexpm/hex_core/commit/cdf726095bca85ad2549d146df1e831a=
e93c2b13
> >
> https://github.com/hexpm/hex/commit/636739f3322514e9303ca335fb630696fcbb3=
c95
> >
> https://github.com/erlang/rebar3/commit/1d4478f527e373de0b225951e53115450=
e0d9b9d
> >
> > Workarounds
> > -----------
> > Ensure that the Hex API URL (HEX_API_URL) points only to trusted
> endpoints.
> > There is no client-side workaround that fully mitigates this issue
> without
> > applying the patch.
> >
> > References
> > ----------
> > - hex_core Module:
> https://github.com/hexpm/hex_core/blob/main/src/hex_api.erl
> > - Hex Vendored Module:
> https://github.com/hexpm/hex/blob/main/src/mix_hex_api.erl
> > - Rebar3 Vendored Module:
> https://github.com/erlang/rebar3/blob/main/apps/rebar/src/vendored/r3_hex=
_api.erl
> > - hex_core Patch: cdf7260
> > - Hex Vendored Patch: hexpm/hex@636739f
> > - Rebar3 Vendored Patch: erlang/rebar3@1d4478f
> >
> > Severity: Low - 2.0 / 10
> > CVSS:4.0/AV:N/AC:L/AT:P/PR:L/UI:A/VC:N/VI:N/VA:L/SC:N/SI:N/SA:N
> > CVE ID: CVE-2026-21619
> > Weaknesses:
> > - CWE-400: Uncontrolled Resource Consumption
> > - CWE-502: Deserialization of Untrusted Data
>
>
>

--=20
Alexander Patrakov

--000000000000b05383064f4e3e1e--
