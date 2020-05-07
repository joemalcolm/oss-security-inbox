X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6005" "Thursday" "7" "May" "2020" "16:00:25" "-0500" "Gage Hugo" "gagehugo@gmail.com" "<CAE4Awf9hGeTGw-k1k2EJDwXffXU-Q4Auddtvz8L+9c=zJLU1Lg@mail.gmail.com>" "173" "[oss-security] Re: [OSSA-2020-004] Keystone: Keystone credential endpoints allow owner modification and are not protected from a scoped context (CVE PENDING)" nil nil nil "5" "2020050721:00:25" "[oss-security] Re: [OSSA-2020-004] Keystone: Keystone credential endpoints allow owner modification and are not protected from a scoped context (CVE PENDING)" (number mark "U       gagehugo@gma May  7  173/6005  " thread-indent "\"[oss-security] Re: [OSSA-2020-004] Keystone: Keystone credential endpoints allow owner modification and are not protected from a scoped context (CVE PENDING)\"\n") "<CAE4Awf_qX8osK8cvGF=+1Lozp9+TR442K7KDSATX_zJE2EW9Gg@mail.gmail.com>" ("<CAE4Awf_qX8osK8cvGF=+1Lozp9+TR442K7KDSATX_zJE2EW9Gg@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: [OSSA-2020-004] Keystone: Keystone credential endpoints allow owner modification and are not protected from a scoped context (CVE PENDING)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 2041 invoked by uid 550); 7 May 2020 21:17:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24476 invoked from network); 7 May 2020 21:00:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=SoImcQ4wAF+EEW2AUpmBxXdULDmMIIY5/CRS4/Pnnj4=;
        b=C2eSePYMmvV/zM9tKFyI4GH4iLgfAEEjDAV75AwMVL1k03HkNfrIPXFk6S0RvRn55U
         R0Ax4TxdgL1KgeJKNAzsvYchXJht0r25dxZMPtjozD/zeuAMpJwk51JST0BnEYZ7FJAp
         FkdBqYvvB1KakJ50nOUvsfjLI7ewEKjeYilXeiexgzZa7bi4cg/+9Te8mNu0wMY3op2X
         /nOTZuFxy+qP/BBTlMEAQLLz59qZ4pegudC9yGWD59FbgyXBGKo2WX32p97BUeTIPADE
         IdnrQuk74XLtDZeRBRZZPZ/3t2aN2VpFAY6qIpqjIxY68VJ16dfAFzimkI3mMmrKdPzB
         ypUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=SoImcQ4wAF+EEW2AUpmBxXdULDmMIIY5/CRS4/Pnnj4=;
        b=J1v2DL4KLhi0K2oJppcTTFF9RcmLFMrh+buM8fvBUxwY6cgux5vbVw/PIiJJBA00q4
         ozpN6cUmPI7trQ8Il3MGKgp2AgdSIeVyjGavPZJbwnjVoJRyxFm0jqK+VURZEMTpk+5+
         zQLH8Wvn+NWdVpv44WA5sCerN6l8ZEFb3jt538xkqD8Y5vV0ydu/aHFAYz2zAWazKFyb
         v3pkbpqEHKUCP3w0Zj8mdoOTzsJFw7f+EQ5DU2xFI0nh+sDVOvpDnshqk7utlxJRQmJs
         Cttnh6PidHh7onLXzZm4u22OT0rJP+5LM4Bi3e4POuTllfl2eW0TUPMzv8n2c0mk0SRg
         gksw==
X-Gm-Message-State: AGi0PuYVlGo/J3fSVq95wnhB1hJgPwB4PGfes0uk4qnCFn3LQMCbmKHb
	bKl8qyTOOUcPoVu3CtnDX0+DB6wPnOCOurbv/+Inb5xnxLU=
X-Google-Smtp-Source: APiQypKGLxqULlYGTNo/rM3r3Twu3S0qtJeO+zpbS9lLh4VMPKSd4Gi97zWRn53kJnInqSzjWgnEEpRWAgRMRsd7lw8=
X-Received: by 2002:a25:8043:: with SMTP id a3mr24394135ybn.495.1588885236900;
 Thu, 07 May 2020 14:00:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAE4Awf_qX8osK8cvGF=+1Lozp9+TR442K7KDSATX_zJE2EW9Gg@mail.gmail.com>
In-Reply-To: <CAE4Awf_qX8osK8cvGF=+1Lozp9+TR442K7KDSATX_zJE2EW9Gg@mail.gmail.com>
From: Gage Hugo <gagehugo@gmail.com>
Date: Thu, 7 May 2020 16:00:25 -0500
Message-ID: <CAE4Awf9hGeTGw-k1k2EJDwXffXU-Q4Auddtvz8L+9c=zJLU1Lg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000022695c05a5152c52"
Subject: [oss-security] Re: [OSSA-2020-004] Keystone: Keystone credential endpoints allow
 owner modification and are not protected from a scoped context (CVE PENDING)

--00000000000022695c05a5152c52
Content-Type: text/plain; charset="UTF-8"

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

=================================================================================================================
OSSA-2020-004: Keystone credential endpoints allow owner modification and
are not protected from a scoped context
=================================================================================================================

:Date: May 06, 2020
:CVE: CVE-2020-12689,
      CVE-2020-12691


Affects
~~~~~~~
- - Keystone: <15.0.1, ==16.0.0


Description
~~~~~~~~~~~
kay reported two vulnerabilities in keystone's EC2 credentials API.
Any authenticated user could create an EC2 credential for themselves
for a project that they have a specified role on, then perform an
update to the credential user and project, allowing them to masquerade
as another user. (CVE-2020-12691) Any authenticated user within a
limited scope (trust/oauth/application credential) can create an EC2
credential with an escalated permission, such as obtaining admin while
the user is on a limited viewer role. (CVE-2020-12689) Both of these
vulnerabilities potentially allow a malicious user to act as admin on
a project that another user has the admin role on, which can
effectively grant the malicious user global admin privileges.


Errata
~~~~~~
CVE-2020-12689 and CVE-2020-12691 were assigned after the original
publication date.


Patches
~~~~~~~
- - https://review.opendev.org/725895 (Rocky)
- - https://review.opendev.org/725893 (Stein)
- - https://review.opendev.org/725891 (Train)
- - https://review.opendev.org/725888 (Ussuri)
- - https://review.opendev.org/725886 (Victoria)


Credits
~~~~~~~
- - kay (CVE-2020-12689, CVE-2020-12691)


References
~~~~~~~~~~
- - https://launchpad.net/bugs/1872733
- - https://launchpad.net/bugs/1872735
- - http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-12689
- - http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-12691


Notes
~~~~~
- - The stable/rocky branch is under extended maintenance and will receive
no new
  point releases, but a patch for it is provided as a courtesy.


OSSA History
~~~~~~~~~~~~
- - 2020-05-07 - Errata 1
- - 2020-05-06 - Original Version
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEWa125cLHIuv6ekof56j9K3b+vREFAl60dYUACgkQ56j9K3b+
vRESOw//YJGlVKCPz7HkUtmyu6RWnpGzSPMoWhzP0HyLLpStMlrFXUKNZsgfXAw3
90vFD6zWSSWn2abJxlyW4JFDtOALKdGEZ0Ml68WSREDdupyOyd+G/ucT01Y95wB2
6nHkoHVvKbhPAI1OeV2haNGp02UUROSLGBT/FtvFnnCAcfAiUfI7+kBbLQgeG50q
/MNQlfaWi0uBxCt/HZg0YqZ3QXIE/LuS2MgFkaQ2+Yr4r9V1M58Wi2pYA1Dkhz6e
J7q/2hDJ1Nn7P4LHUuZEXupR3Ztjrnh5uIO8yr2jSK/r4DawCmRMqT24r7ebS5ZA
/p+JhvV0+StujicmhfPSyY3A24kNHRQCSCOlFn0xF8aN+/VEFT82SOIf+NVuutZb
04wzrp4D3KIrSoulIbXVebAX+lj21qvlaYGwPAkmT8/p7kmj8mGWMlWhqBrCBJIC
OiGd9pUe2GQcRSvBPj2Bex4WZCedvehSkPAiWh1MXFmUAUb2T7iNXNP7BlMd7LZA
gdM4gW6HeFUEysj0vQfSCF+Mu+cB1PAjKZgqgHX7twgu+sOzlCKDlFkQuuzbma3M
abGlfPwVl1v7X/xZ0U7xAwViFCAI+gpqA+Yi1hmMirxzyotUWn/J17AtvhOk3Hms
mwUZiGr41oJhGhX3uSB2Jn0TulA+qhapncuMxG5qDk9Y/ijcpmQ=
=ddr5
-----END PGP SIGNATURE-----

On Wed, May 6, 2020 at 2:49 PM Gage Hugo <gagehugo@gmail.com> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA512
>
>
> =================================================================================================================
> OSSA-2020-004: Keystone credential endpoints allow owner modification and
> are not protected from a scoped context
>
> =================================================================================================================
>
> :Date: May 06, 2020
> :CVE: Pending
>
>
> Affects
> ~~~~~~~
> - - Keystone: <15.0.1, ==16.0.0
>
>
> Description
> ~~~~~~~~~~~
> kay reported two vulnerabilities in keystone's EC2 credentials API.
> Any authenticated user could create an EC2 credential for themselves
> for a project that they have a specified role on, then perform an
> update to the credential user and project, allowing them to masquerade
> as another user. (CVE #1 PENDING) Any authenticated user within a
> limited scope (trust/oauth/application credential) can create an EC2
> credential with an escalated permission, such as obtaining admin while
> the user is on a limited viewer role. (CVE #2 PENDING) Both of these
> vulnerabilities potentially allow a malicious user to act as admin on
> a project that another user has the admin role on, which can
> effectively grant the malicious user global admin privileges.
>
>
> Patches
> ~~~~~~~
> - - https://review.opendev.org/725895 (Rocky)
> - - https://review.opendev.org/725893 (Stein)
> - - https://review.opendev.org/725891 (Train)
> - - https://review.opendev.org/725888 (Ussuri)
> - - https://review.opendev.org/725886 (Victoria)
>
>
> Credits
> ~~~~~~~
> - - kay (CVE Pending)
>
>
> References
> ~~~~~~~~~~
> - - https://launchpad.net/bugs/1872733
> - - https://launchpad.net/bugs/1872735
> - - http://cve.mitre.org/cgi-bin/cvename.cgi?name=Pending
>
>
> Notes
> ~~~~~
> - - The stable/rocky branch is under extended maintenance and will receive
> no new
>   point releases, but a patch for it is provided as a courtesy.
> -----BEGIN PGP SIGNATURE-----
>
> iQIzBAEBCgAdFiEEWa125cLHIuv6ekof56j9K3b+vREFAl6zE70ACgkQ56j9K3b+
> vREQsBAAnHZLyrbjSwu7/CEdDVfb0sQZfDvyuXMttzouXQ6ZwEgLFKzc/aFWMjru
> loyst9jAx2pJzvxDfMYO11oU0M5tYFCFxhKsVvu+3ggbcNHeov1s25bPkxE7A2j7
> IYJj9b+bbieYVj1ru3FJjDl3iTae4K73DeHNBCdxTSeahJZdya7hiboA1VJFt4p7
> fNqU3+szsYt/vwspPBi7x+xnZszIMaUw8tVgxzB4KVD6YXbDR9Mp7itH77kGdn8l
> e3OpnURvfaIkPbK6fqE6jjwjQEL/6+Ahffaf4KqvsdjbAcdQRpK0UQrBX+n6DIWd
> TRwV/W7bEy64HrC16W78fcBlegRmEUUM4xNmdll3lwUS5KqfEeM3vXU4Ksfe9tQ2
> 8fDU1hDALcC55+2CMMrdFfmX/MBSTz0HVmP4snaGuoXBL/iQz22OmekFKC1tmXxb
> +vAtOUBsdzphRZn9KWvPIHOFGeuepWb9W0eN594JT2pdHfniLj6EaPrBaN63l7M/
> pu0DTPygN5IdUXv6v/vquQZp50CaN59okmXDNiFkBeHsfaAqhdyjJjRaYvyU62OA
> apjVam8/f2HM0RC0vvpIqv0z0kU55NPCo61dlMZPg6U9JiQd2PzBqvEtDF1lyByF
> vz5e+r9fmtRcgCJIYr0Z7VlOlSMONpITN03oICaexieDTEXDXHc=
> =lSDG
> -----END PGP SIGNATURE-----
>

--00000000000022695c05a5152c52--
