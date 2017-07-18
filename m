X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6917" "Tuesday" "18" "July" "2017" "14:56:23" "-0700" "Euan Kemp" "euan.kemp@coreos.com" "<9479d640-2002-2462-9d81-2379d60d8f54@coreos.com>" "154" "[oss-security] CoreOS membership to linux-distros (updated)" "^Cc:" nil nil "7" "2017071821:56:23" "[oss-security] CoreOS membership to linux-distros (updated)" (number mark "        euan.kemp@co Jul 18  154/6917  " thread-indent "\"[oss-security] CoreOS membership to linux-distros (updated)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28456 invoked by uid 550); 18 Jul 2017 22:17:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20015 invoked from network); 18 Jul 2017 21:56:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=coreos.com; s=google;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version;
        bh=9bUhS/c8SksnDxv8Z4RFSIe0vMMDDYao16njD8c+Sn4=;
        b=TGO1oWgT5la6+SmKk11y8KP682rLVNb7YyoHkfV+ZFkdrWl9B5t5iDXEQ5fhLe1Mny
         NHPtNcu2V+0TiYGzcelLAm9NKNTEhky3KLyFxRhBb1zG4uJX2ZgLv0PvCnR+9jWvELsc
         AozdyyFNhXG9jpDjdOxg6oMAkkm9TvEopfLas=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version;
        bh=9bUhS/c8SksnDxv8Z4RFSIe0vMMDDYao16njD8c+Sn4=;
        b=pMML0qB2rTgGUnzv2Oe2qeBiaGVKqFTmrOHrKxoSTuy2rQUizauYMRAYeB5o3fvcPD
         weE+vNOG+O5socny7U8rhg7073tbis789Id6+cIRTmbyD0CEzdrslyFjhSbBmLNAr86g
         qDwMhcEbWxUuTZG/YJ0goI5NON9qRv89sEA4mrxu7h0RUnnJh/82XQYNbsTOhUfLI2MC
         A9FAeTkJ+BNwgADkDDrOjoexWwQ2pyu8zXU+bkuQXTmv1Le5SIbrssqN2Zquu2G+s9p6
         VWgSnS5/Pm9ZNCeWnDj3WBcC0ZxH/kl5B0XYQkSCC/dKn5Jj4+uzpISISvhkBg+m465K
         N4Ww==
X-Gm-Message-State: AIVw11007qk/XfEi42ZBcKGWGRCpLI1CvarU0nltpbnTKZ+k6itR8lzj
	7CLs6dEV3433xKqp
X-Received: by 10.98.69.91 with SMTP id s88mr3726884pfa.183.1500414986574;
        Tue, 18 Jul 2017 14:56:26 -0700 (PDT)
Message-ID: <9479d640-2002-2462-9d81-2379d60d8f54@coreos.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="CEgfu75WAnH12wvPUrBJ91mKpwIv30iFe"
Cc: keescook@google.com, Brandon Philips <brandon.philips@coreos.com>,
 Alex Crawford <alex.crawford@coreos.com>
Date: Tue, 18 Jul 2017 14:56:23 -0700
From: Euan Kemp <euan.kemp@coreos.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CoreOS membership to linux-distros (updated)
To: oss-security@lists.openwall.com

--CEgfu75WAnH12wvPUrBJ91mKpwIv30iFe
Content-Type: multipart/mixed; boundary="nrFolqjNQKuXLC0B5nNnElo6CWQUmBdBA";
 protected-headers="v1"
From: Euan Kemp <euan.kemp@coreos.com>
To: oss-security@lists.openwall.com
Cc: keescook@google.com, Brandon Philips <brandon.philips@coreos.com>,
 Alex Crawford <alex.crawford@coreos.com>
Message-ID: <9479d640-2002-2462-9d81-2379d60d8f54@coreos.com>
Subject: CoreOS membership to linux-distros (updated)

--nrFolqjNQKuXLC0B5nNnElo6CWQUmBdBA
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

This is a followup to our previous thread
(http://seclists.org/oss-sec/2017/q2/619) since the criteria are now
explicit.

I=E2=80=99ve listed each criterion and why I think we, the Container Linux =
team
at CoreOS, qualify.

> 1. Be an actively maintained Unix-like operating system distro with
substantial use of Open Source components
We=E2=80=99ve been making regular releases for roughly the last 4 years.
All components of the distro are open source, as are all the tools used
to build it.

> 2. Have a userbase not limited to your own organization
Our distribution has a large userbase including companies and hobbyists.
It=E2=80=99s available as an option in quite a few clouds.

> 3. Have a publicly verifiable track record, dating back at least 1
year and continuing to present day, of fixing security issues (including
some that had been handled on (linux-)distros, meaning that membership
would have been relevant to you) and releasing the fixes within 10 days
(and preferably much less than that) of the issues being made public (if
it takes you ages to fix an issue, your users wouldn't substantially
benefit from the additional time, often around 7 days and sometimes up
to 14 days, that list membership could give you)
Our release notes show a consistent history of fixing CVEs, a number of
which were discussed on the linux-distros list.

A few examples of CVEs which were discussed on linux-distros and that we
shipped patches for shortly after the embargo lifted:
CVE-2015-0235 (aka GHOST): https://coreos.com/releases/#522.6.0
CVE-2016-5195 (aka Dirty COW): https://coreos.com/releases/#1122.3.0
CVE-2016-8655 (af_packet race): https://coreos.com/releases/#1185.5.0
CVE-2017-6074 (DCCP): https://coreos.com/releases/#1235.12.0


> 4. Not be (only) downstream or a rebuild of another distro (or else we
need convincing additional justification of how the list membership
would enable you to release fixes sooner, presumably not relying on the
upstream distro having released their fixes first?)
Gentoo is the upstream for a subset of our packages, but we maintain a
number of packages separately from Gentoo and will fork from upstream to
update packages earlier in some cases.
The components we maintain largely independently include linux, bash,
and openssl, each of which has had embargoed CVEs in the past.

> 5. Be a participant and preferably an active contributor in relevant
public communities (most notably, if you're not watching for issues
being made public on oss-security, which are a superset of those that
had been handled on (linux-)distros, then there's no valid reason for
you to be on (linux-)distros)
We actively monitor oss-security and other channels for vulnerabilities.
We haven=E2=80=99t participated actively in the discussion since we=E2=80=
=99ve rarely
had anything to add.

> 6. Accept the list policy
Of course.

> 7. Be able and willing to contribute back (see above), preferably in
specific ways announced in advance (so that you're responsible for a
specific area and so that we know what to expect from which member), and
demonstrate actual contributions once you've been a member for a while
The Container Linux team is fairly small. Furthermore, since we package
relatively few pieces of software, a number of the CVEs won=E2=80=99t apply=
 to
us and so we won=E2=80=99t be the best fit for covering some of the technic=
al roles.

Based on your previous messages, it sounds like it=E2=80=99s expected for u=
s to
inherit 'primary' for the administrative tasks of:
> 1. Promptly review new issue reports for meeting the list's requirements =
and confirm receipt of the report and, when necessary, inform the reporter =
of any issues with their report (e.g., obviously not actionable by the dist=
ros) and request and/or propose any required yet missing information (most =
notably, a tentative public disclosure date) - primary: CloudLinux, backup:=
 vacant
> 2. If the proposed public disclosure date is not within list policy, insi=
st on getting this corrected and propose a suitable earlier date - primary:=
 CloudLinux, backup: vacant

I=E2=80=99ll also volunteer us for the administrative task of:
> 6. If multiple issues are reported at once, see if any of them can reason=
ably be made public sooner than the rest, and if so help untangle them and =
stay on top of their disclosure process

We=E2=80=99ll be happy to be on the lookout for possible conflation of issu=
es
and kick off discussion if we think something can be broken up.

> 8. Be able and willing to handle PGP-encrypted e-mail
Yup.

We=E2=80=99ll provide relevant GPG keys separately if our membership is acc=
epted.

> 9. Have someone already on the private list, or at least someone else
who has been active on oss-security for years but is not affiliated with
your distro nor your organization, vouch for at least one of the people
requesting membership on behalf of your distro (then that one
vouched-for person will be able to vouch for others on your team, in
case you'd like multiple people subscribed)
Kees Cook can vouch for Brandon Philips (both on cc).


I=E2=80=99m happy to answer any question or provide any additional informat=
ion.

- Euan


--nrFolqjNQKuXLC0B5nNnElo6CWQUmBdBA--

--CEgfu75WAnH12wvPUrBJ91mKpwIv30iFe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJJBAEBCAAzFiEEfEYNjvSfc3UkcHLhMEFvVV8YDMwFAlluhAgVHGV1YW4ua2Vt
cEBjb3Jlb3MuY29tAAoJEDBBb1VfGAzMU7cP+wQim9JrZKr2FMgUoiMd6mDvk0yV
wXEDY34i3qWo7ZzL8VaF7gn0ZDhxsgHEb7KPG/ynwc9+vLVWGOAtQ9OIwDLRxA+/
bcQDglf4udwVCKURP1M/FmgK/b1ebuiD0Kl9RZxgot22ti0fDudcEtLbkMmauH68
SdSv43dmNqSBoVebpESCHQMzT+civRiAKlQ5Qv9z9EIgFr+jH42/HcIrDJpguP72
685gsXgN5VOWSwHqWYWFBRcFfapi8nCednS+/xVwr7uCDEwCIOfPtupEnGeMqC6G
5yEnk6yXMM173sDrrylZkDJhE420XE1DRbySTW79mOufQn+7sg+ghxq+JNAmZP5k
F3nwClU+hEA5IW4hjiIdz0tUWIP+5JGYoYs+OKl+nVRoByAc+EDjjTJ6uQsmgbvD
k0xgyNjsmoCm40Fa+Qcoh3zd760f2cNndDEGSwfOBXNGo/iiWgRBk/2KO3USIgqF
JHrT5+pe2Sc5IligWgaX80diiGy7fiNxvsWkYJJtD34blKAINryxkHGFbWVligid
JwX9UPwh3E6yN3/eybYFCjQmA/xWeVqmrhzM1yxYNI6Dp14xUEDx5/Qkayu19F+t
Tnc/cgluQS3gycho5zyQBnHA0gr0YxyuCDinH9kYxsL/aIBk9baYBhdnyqgsXo4i
QksK/Tmdj+xUfm52
=/ykF
-----END PGP SIGNATURE-----

--CEgfu75WAnH12wvPUrBJ91mKpwIv30iFe--
