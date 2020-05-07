X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5036" "Thursday" "7" "May" "2020" "16:01:01" "-0500" "Gage Hugo" "gagehugo@gmail.com" "<CAE4Awf-WydLwF1KQVEi0TLbNXRCGB2cvCfESq0wigQr2ASOg+w@mail.gmail.com>" "160" "[oss-security] Re: [OSSA-2020-005] Keystone: OAuth1 request token authorize silently ignores roles parameter (CVE PENDING)" nil nil nil "5" "2020050721:01:01" "[oss-security] Re: [OSSA-2020-005] Keystone: OAuth1 request token authorize silently ignores roles parameter (CVE PENDING)" (number mark "U       gagehugo@gma May  7  160/5036  " thread-indent "\"[oss-security] Re: [OSSA-2020-005] Keystone: OAuth1 request token authorize silently ignores roles parameter (CVE PENDING)\"\n") "<CAE4Awf-A6xTc41ycXKMv_635EzuqJ22ft=-_EvZh4kYo=VL5Zw@mail.gmail.com>" ("<CAE4Awf-A6xTc41ycXKMv_635EzuqJ22ft=-_EvZh4kYo=VL5Zw@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: [OSSA-2020-005] Keystone: OAuth1 request token authorize silently ignores roles parameter (CVE PENDING)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3564 invoked by uid 550); 7 May 2020 21:17:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25689 invoked from network); 7 May 2020 21:01:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=GdGE2EPATNLqlaclJkKgKKpr0qY6wDXuEspigfkyis4=;
        b=THJo4kieVED8Z+c0wiM+9uQKnbbp595HyNS5DFV/wjAq9Wz6l1j2dWl1GlFdG9LSMJ
         b+GAVFiktvU1tJR4WkX+Rde2xyIDRYraufV+VcQh4Yuz6i9N1+TTsBDVzFQGXocDDHuJ
         2TUJMC0kGb0cUz82CTL/mtchnoQzOcwb2sXblVABcfoaXM/c+/ES3Ex+KOHL/CQ0NpSv
         bH1T/4l5k40cjgjo+aTEmYvLo9QGGs0Pp9LwxBK8yQ4aaL/fvwLMmFc5QJJzqD6kPjrh
         HDSkFT+R/1MSJDHe2E1jRgJg4BKBlFMld0j6Cldr8Vd8BDynRP61ahJrn2EHFUiIOCM/
         sipQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=GdGE2EPATNLqlaclJkKgKKpr0qY6wDXuEspigfkyis4=;
        b=NN9bAmcWDsISIS4W1gW4b9oAgsBD65P4XE70MS0Fbk5Yl5vKhCYm9RDY1cqoBJBuv5
         d2VfsBwaw1uqzZ7a/YJrNsicKx4LWjSr+05OASEtiXhnhKlfBl5J+uCPoZQz8A98zY9V
         Jst1UQ//w+B40g+4EO0CicVBgdubZbW5ryrItCBNqocqe3i6s6iXQhapiPAILg6B01wx
         Bue9Csv52EZ0rutc3TmHuL04LmLk4dgLFs4SoCrLJTJjPU0EcbnpIzFFOPn+UtNjBrXV
         T11SE8nju0/u+zAqtCclWJSQBWIBv6RDskqoJqFaDxFCfZVvEUdZnJ5sI+mp6LLbLOwd
         1pcQ==
X-Gm-Message-State: AGi0PuY7GH0t7QUdLB4zhre/BRMhri48EUJvsRh3yMAqGAFp3a7wBiVB
	X/+Kc6tFwKfctCk8M1bU9LfX0El0oyyGVFkXG/yZuLYVG9k=
X-Google-Smtp-Source: APiQypLa/g+HVsYmpwCTn1WE9BaDGi///qvR7577b5EFHAiMeFdULioA4aNicmjxpRchuta+Listoq0AS5cJQiDwyg8=
X-Received: by 2002:a25:b78d:: with SMTP id n13mr5477272ybh.348.1588885273069;
 Thu, 07 May 2020 14:01:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAE4Awf-A6xTc41ycXKMv_635EzuqJ22ft=-_EvZh4kYo=VL5Zw@mail.gmail.com>
In-Reply-To: <CAE4Awf-A6xTc41ycXKMv_635EzuqJ22ft=-_EvZh4kYo=VL5Zw@mail.gmail.com>
From: Gage Hugo <gagehugo@gmail.com>
Date: Thu, 7 May 2020 16:01:01 -0500
Message-ID: <CAE4Awf-WydLwF1KQVEi0TLbNXRCGB2cvCfESq0wigQr2ASOg+w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000004a4b6605a5152e7f"
Subject: [oss-security] Re: [OSSA-2020-005] Keystone: OAuth1 request token authorize silently
 ignores roles parameter (CVE PENDING)

--0000000000004a4b6605a5152e7f
Content-Type: text/plain; charset="UTF-8"

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

==============================================================================
OSSA-2020-005: OAuth1 request token authorize silently ignores roles
parameter
==============================================================================

:Date: May 06, 2020
:CVE: CVE-2020-12690


Affects
~~~~~~~
- - Keystone: <15.0.1, ==16.0.0


Description
~~~~~~~~~~~
kay reported a vulnerability in Keystone's OAuth1 Token API. The list
of roles provided for an OAuth1 access token are ignored, so when an
OAuth1 access token is used to request a keystone token, the keystone
token will contain every role assignment the creator had for the
project instead of the provided subset of roles. This results in the
provided keystone token having more role assignments than the creator
intended, possibly giving unintended escalated access.


Errata
~~~~~~
CVE-2020-12690 was assigned after the original publication date.


Patches
~~~~~~~
- - https://review.opendev.org/725894 (Rocky)
- - https://review.opendev.org/725892 (Stein)
- - https://review.opendev.org/725890 (Train)
- - https://review.opendev.org/725887 (Ussuri)
- - https://review.opendev.org/725885 (Victoria)


Credits
~~~~~~~
- - kay (CVE-2020-12690)


References
~~~~~~~~~~
- - https://launchpad.net/bugs/1873290
- - http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-12690


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

iQIzBAEBCgAdFiEEWa125cLHIuv6ekof56j9K3b+vREFAl60dYoACgkQ56j9K3b+
vRG6Tg//ZV/05IJTRghymKImfgWiT4G49Z2gZ5TgxbMqLmJ1+w5YthbaDNSrlmyO
zmXBG5xLDuXhG6aD9IeKBjmVMgJhr2oef0bqV73vuwmTaUPW60A7cpx5en7frEbT
UBgaG49+9BxtJsTJyI2oDpzAj9Z42u/gZPzfM3wbaCjbvAHJP7t2aqQL51iwCbhM
IJSJUYprfrPf/YbeG6k1uWuNIT7iZs1TgqyLQfoYzbNX1sIP3rJie3XC7ZOOt+De
FJ+AxLy9cRihG1p3kVS6SUQmSyIyluUyP6FhxBOyL36ZXCwEZABVjHXbK2QK4F2A
Tgfz8R8moJ/J4ReWw2z226czaCWKg3ApjGdjEqBhakBrGP/aTualMlDFRSHxkI/9
oAUucNKGS64XgUmGPwQhVm4oCNrs+9YpGdH63S14N9os64BHB/D4hGMzHwrE4Fxk
ejuIzrYAHqsnKIgNDhAl2gZJgT6j924MJfR/ImkdLp31S5qh49NrCbA5cmgLY9Ke
XzNrnLhKcqSN+z1YwVidUWF8B7HEliPQBHgVwf4bpWl+jKgjr5wfWKYW5f9civtu
1tWjbgdjYqce/gataAjIOw41IIFrSGWyZfHc2wQnkBwR3xhz2NPbxPCniHZg5kAT
h/pAiVk6InwpTnTfor8OoHFPiD7MTg34EJmEkGqmCPPOIpm/BSk=
=3dVo
-----END PGP SIGNATURE-----

On Wed, May 6, 2020 at 2:54 PM Gage Hugo <gagehugo@gmail.com> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA512
>
>
> ==============================================================================
> OSSA-2020-005: OAuth1 request token authorize silently ignores roles
> parameter
>
> ==============================================================================
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
> kay reported a vulnerability in Keystone's OAuth1 Token API. The list
> of roles provided for an OAuth1 access token are ignored, so when an
> OAuth1 access token is used to request a keystone token, the keystone
> token will contain every role assignment the creator had for the
> project instead of the provided subset of roles. This results in the
> provided keystone token having more role assignments than the creator
> intended, possibly giving unintended escalated access.
>
>
> Patches
> ~~~~~~~
> - - https://review.opendev.org/725894 (Rocky)
> - - https://review.opendev.org/725892 (Stein)
> - - https://review.opendev.org/725890 (Train)
> - - https://review.opendev.org/725887 (Ussuri)
> - - https://review.opendev.org/725885 (Victoria)
>
>
> Credits
> ~~~~~~~
> - - kay (CVE Pending)
>
>
> References
> ~~~~~~~~~~
> - - https://launchpad.net/bugs/1873290
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
> iQIzBAEBCgAdFiEEWa125cLHIuv6ekof56j9K3b+vREFAl6zFWsACgkQ56j9K3b+
> vRFDnhAArgXdQUnCyckPQciBvxMxQvqhCEhzGH0aQNAmMLaImYUwFhFVVO0DlcNb
> kt/ynLQLdyi3YnCz1x4VhUXaCh4Rhi9pYkU4LKa/tvJj6anrCSLHmuDD52idkZeB
> sFslgkh/BGfdM4HcuPLhs4SSaZpI53ASitiOhyjBIN/DmpLUbZgmJ1iz3FfQ3cTB
> wtjYI4jGCCMq+4POSozWMzeYdL3JzR264jBCRrCw1ErIPjpF4KSOFaH5vqakBnzw
> Ot7KR7s7FmIwU7LhCuvjgLW3rxwE1g5bz+Qd/97rC1bTx/iPHklQjMP5SoGwmjta
> Kx1prUaQqFys5Bw93e0cj1Fwn0zNHUjqLs4LZscNbyGRyAZCPREeg2quwBxVUNk9
> D6jxW3J2LYIu+ictVV5fnBQd4/+NtxM8ofLDM03QZouUpkNfCHAmW81BYqd2+Pii
> VbJi5Litz+DHLrAyh0O4zD/PBc5+5zxB2EXEDVEJitqaxQWfogJwJzGe89ULom0I
> VXMuYOvqaLV9f2JIG6SEBiKrfaUhSgoHTrmznt82KOlsOBMamQUaj5iTqDoDzPD2
> LVB2WLABj1cFZsnTFAec1qKwEPXuT0p3Dsb7eyvwsq5aJYS5I2bjK6Q1WcCcqzJF
> 1b+v0iqW0Qu+Hk4fwvcrqqQMDZ7Q982tT+B7sU8xV4jYBtFLseQ=
> =iEFE
> -----END PGP SIGNATURE-----
>

--0000000000004a4b6605a5152e7f--
