X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2797" "Wednesday" "6" "May" "2020" "14:49:25" "-0500" "Gage Hugo" "gagehugo@gmail.com" "<CAE4Awf_qX8osK8cvGF=+1Lozp9+TR442K7KDSATX_zJE2EW9Gg@mail.gmail.com>" "79" "[oss-security] [OSSA-2020-004] Keystone: Keystone credential endpoints allow owner modification and are not protected from a scoped context (CVE PENDING)" nil nil nil "5" "2020050619:49:25" "[oss-security] [OSSA-2020-004] Keystone: Keystone credential endpoints allow owner modification and are not protected from a scoped context (CVE PENDING)" (number mark "U       gagehugo@gma May  6   79/2797  " thread-indent "\"[oss-security] [OSSA-2020-004] Keystone: Keystone credential endpoints allow owner modification and are not protected from a scoped context (CVE PENDING)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [OSSA-2020-004] Keystone: Keystone credential endpoints allow owner modification and are not protected from a scoped context (CVE PENDING)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21517 invoked by uid 550); 6 May 2020 22:17:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22000 invoked from network); 6 May 2020 19:49:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=J9kQE9VE7KZkijYjc+lHqZ9C84hyZt356ZLvoJq2oQI=;
        b=AoijyGn8YkfjZJ/hJeo48lB+VwP4Rk4fUgNE1GBVr9IfSihNcBynL00xaqDUxlWpxM
         MC+q7udjAyXH+JF2zAmrIeG2uAytbsC2P2akL7ZYpO4wO6YIAlgcUZ3pJtPNpq8pMcFT
         9ROtfvf6aV5GBNPSRsiUCNbzl3WiUkrfn7lBCWBS+ALnb1FV6/UnggZYztPcadGX/F9g
         WMd5o/8YbA0cqjdgXSwqN8w1iX8XAZM3hO8a19GWGLPdVtCbq3E4G74ZMu3v2It+NbG9
         YmP22xDEjF74YyMODmB+SGWVRAZ1G5l3gi+urm/Y3IWaT/bQyJC0MjMxHnRofhgv4017
         9h0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=J9kQE9VE7KZkijYjc+lHqZ9C84hyZt356ZLvoJq2oQI=;
        b=mNdslNwdqKwEkx5WjQEJZCDVq9opoak5MVNc2nJXyEyOT9GqgSDVgftVXF+PIXVew9
         wsgCdQjiMyfLRGHjEmAsRZqXOxD+FLxCv6aT7cNT8R6HF0D9RUfbrLz5Cqcx9V0ivFac
         uPznxDRpPJKJwoRzYSQCni5/FfBA99HtxpCD9JiFq5H9S/Pe4YAW/dMRQSsFf+aqUOlB
         mFbi/kuQlEEoBw3xvq7bSdodejMxihelJ92ch9JJlt4ZcBmGZXpR7zj4pk0X6HQJ7m61
         jukrQeMCGfeMwrHlBXgHzKbw7z85jwNnTqj5mhYPsmK/nhKCDVlPDuYWsfz27LCVnYH0
         SeqQ==
X-Gm-Message-State: AGi0PuYuOAMfC9Q22fDHpKpAS4yWPKwPbAq3UJmkfqfj8INVVYbW6LZf
	CR+jVZbWq4VEloVcXCce+EU28GByAdj7NG8afKGxwfkN
X-Google-Smtp-Source: APiQypLHGqUgqx96gc5I+dAJtz+oZB1KWHuQgKaHLNWF1NfPPYx5brcBuBVAgwWwjfb/0CFkbXgeX7hlTI8XWH5VncI=
X-Received: by 2002:a25:8411:: with SMTP id u17mr15987645ybk.131.1588794576729;
 Wed, 06 May 2020 12:49:36 -0700 (PDT)
MIME-Version: 1.0
From: Gage Hugo <gagehugo@gmail.com>
Date: Wed, 6 May 2020 14:49:25 -0500
Message-ID: <CAE4Awf_qX8osK8cvGF=+1Lozp9+TR442K7KDSATX_zJE2EW9Gg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000005dfb0605a5001091"
Subject: [oss-security] [OSSA-2020-004] Keystone: Keystone credential endpoints allow owner
 modification and are not protected from a scoped context (CVE PENDING)

--0000000000005dfb0605a5001091
Content-Type: text/plain; charset="UTF-8"

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

=================================================================================================================
OSSA-2020-004: Keystone credential endpoints allow owner modification and
are not protected from a scoped context
=================================================================================================================

:Date: May 06, 2020
:CVE: Pending


Affects
~~~~~~~
- - Keystone: <15.0.1, ==16.0.0


Description
~~~~~~~~~~~
kay reported two vulnerabilities in keystone's EC2 credentials API.
Any authenticated user could create an EC2 credential for themselves
for a project that they have a specified role on, then perform an
update to the credential user and project, allowing them to masquerade
as another user. (CVE #1 PENDING) Any authenticated user within a
limited scope (trust/oauth/application credential) can create an EC2
credential with an escalated permission, such as obtaining admin while
the user is on a limited viewer role. (CVE #2 PENDING) Both of these
vulnerabilities potentially allow a malicious user to act as admin on
a project that another user has the admin role on, which can
effectively grant the malicious user global admin privileges.


Patches
~~~~~~~
- - https://review.opendev.org/725895 (Rocky)
- - https://review.opendev.org/725893 (Stein)
- - https://review.opendev.org/725891 (Train)
- - https://review.opendev.org/725888 (Ussuri)
- - https://review.opendev.org/725886 (Victoria)


Credits
~~~~~~~
- - kay (CVE Pending)


References
~~~~~~~~~~
- - https://launchpad.net/bugs/1872733
- - https://launchpad.net/bugs/1872735
- - http://cve.mitre.org/cgi-bin/cvename.cgi?name=Pending


Notes
~~~~~
- - The stable/rocky branch is under extended maintenance and will receive
no new
  point releases, but a patch for it is provided as a courtesy.
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEWa125cLHIuv6ekof56j9K3b+vREFAl6zE70ACgkQ56j9K3b+
vREQsBAAnHZLyrbjSwu7/CEdDVfb0sQZfDvyuXMttzouXQ6ZwEgLFKzc/aFWMjru
loyst9jAx2pJzvxDfMYO11oU0M5tYFCFxhKsVvu+3ggbcNHeov1s25bPkxE7A2j7
IYJj9b+bbieYVj1ru3FJjDl3iTae4K73DeHNBCdxTSeahJZdya7hiboA1VJFt4p7
fNqU3+szsYt/vwspPBi7x+xnZszIMaUw8tVgxzB4KVD6YXbDR9Mp7itH77kGdn8l
e3OpnURvfaIkPbK6fqE6jjwjQEL/6+Ahffaf4KqvsdjbAcdQRpK0UQrBX+n6DIWd
TRwV/W7bEy64HrC16W78fcBlegRmEUUM4xNmdll3lwUS5KqfEeM3vXU4Ksfe9tQ2
8fDU1hDALcC55+2CMMrdFfmX/MBSTz0HVmP4snaGuoXBL/iQz22OmekFKC1tmXxb
+vAtOUBsdzphRZn9KWvPIHOFGeuepWb9W0eN594JT2pdHfniLj6EaPrBaN63l7M/
pu0DTPygN5IdUXv6v/vquQZp50CaN59okmXDNiFkBeHsfaAqhdyjJjRaYvyU62OA
apjVam8/f2HM0RC0vvpIqv0z0kU55NPCo61dlMZPg6U9JiQd2PzBqvEtDF1lyByF
vz5e+r9fmtRcgCJIYr0Z7VlOlSMONpITN03oICaexieDTEXDXHc=
=lSDG
-----END PGP SIGNATURE-----

--0000000000005dfb0605a5001091--
