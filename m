X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1794" "Monday" "25" "September" "2017" "19:41:20" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2T4=wPUVuDQcO59Pgvq7j_agZnT0TUmAa_0Fkk4Laafw@mail.gmail.com>" "55" "Re: [oss-security] Linux kernel CVEs not mentioned on oss-security" "^Date:" nil nil "9" "2017092601:41:20" "[oss-security] Linux kernel CVEs not mentioned on oss-security" (number mark "U       kseifried@re Sep 25   55/1794  " thread-indent "\"Re: [oss-security] Linux kernel CVEs not mentioned on oss-security\"\n") "<EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>" ("<EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15836 invoked by uid 550); 26 Sep 2017 01:41:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15818 invoked from network); 26 Sep 2017 01:41:32 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=AMzpA8YJ9aFKufb/31L/0+XiOrxxAe9vm6gR7Ptf0Ag=;
        b=kzeVMUPXDUvjkuDwXmMA9oVXkhH2U0FZiu6cjT2R7pDId86kWXqqJ7SY839F9gVG3Z
         OgMLOUmzLzVxsyYbz/zpbOuehFwEU507tfktkAyuCabNtT2ii0JmUF47nkwR6Wvy5+53
         O9ez0JxfZpQ+/xQKYvaHdyJzV/aNOqesLSrodj9UKwdJEOQjSE7o1+1UstABmt3Va4wK
         NMyeS1jav+Keh0qR9XKu1knlcNGe2Uceg/KSmLouOV0ChuHFHcc8PFIilgDs+Cqszb4o
         UwSSipDggoGJQNiTDNJlXiXzMotWb8H5UxEBcKpHRsC2qWg3hGX6x+rlLsJwueIC+o1l
         e8FQ==
X-Gm-Message-State: AHPjjUhHebpUI5kepyT6tqetDM4235WUl2uJbhWmy81fOmCpPfBYIsUX
	u/GAhEK7KEVgMy56q0UUocHanZnaRSCiOjKAj32tbakrOGA=
X-Google-Smtp-Source: AOwi7QAlFCqCcSWG1W8KjpnZp8GPW2Zhdku63q3HEJsrc5cEzA7QashGgCz6Sy0Z12wboLjBGDmZuyBwPDNmrM83+5c=
X-Received: by 10.202.206.195 with SMTP id e186mr10438339oig.73.1506390080822;
 Mon, 25 Sep 2017 18:41:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>
References: <EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>
Message-ID: <CANO=Ty2T4=wPUVuDQcO59Pgvq7j_agZnT0TUmAa_0Fkk4Laafw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a113d3b24a934af055a0dc5d0"
Date: Mon, 25 Sep 2017 19:41:20 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel CVEs not mentioned on oss-security
To: oss-security <oss-security@lists.openwall.com>

--001a113d3b24a934af055a0dc5d0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 25, 2017 at 3:50 PM, Priedhorsky, Reid <reidpr@lanl.gov> wrote:
>
>
> My questions:
>
> 1. Is oss-security=E2=80=99s coverage of security issues in open-source s=
oftware
> intended to be comprehensive? If so, this appears not to be true for the
> Linux kernel.
>

Nope. To quote the web site: 'Open Source software security discussions "
http://www.openwall.com/lists/ the fact that it has turned into a security
announce list with limited discussion is  just how things go I guess. Also
it's tough because the Linux Kernel has explicitly said they won't get
CVE's for all their security issues, they simply fix and move on, their
culture is "run something current, if not, to bad" (which part of me agrees
with, but that doesn't work so well for IoT/enterprise/people needing a
high degree of stability/assurance).


>
> 2. Is there another source of comprehensive coverage of vulnerabilities in
> the Linux kernel, including but not necessarily limited to all CVEs issued
> for it?
>

There are commercial security information vendors that claim to provide
this, I won't name names as I don't know how good they are. Step 1 here for
the open source community would be making sure Kernel issues get CVEs, and
then that those CVEs get into the CVE database so people are aware of them.


>
> I appreciate everyone=E2=80=99s time and effort on all this stuff. This p=
ost
> should not be interpreted as singling out Debian for criticism.
>
> Thanks,
> Reid




--=20

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113d3b24a934af055a0dc5d0--
