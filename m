X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1787" "Friday" "14" "July" "2017" "12:04:20" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0kA2sgHgZj+w1Xg6Z2G9WGSexa_i59Hi2eo2PQeW=YPQ@mail.gmail.com>" "43" "Re: [oss-security] Estimate for the total number of exploitable bugs in large linux distro?" "^Date:" nil nil "7" "2017071418:04:20" "[oss-security] Estimate for the total number of exploitable bugs in large linux distro?" (number mark "        kseifried@re Jul 14   43/1787  " thread-indent "\"Re: [oss-security] Estimate for the total number of exploitable bugs in large linux distro?\"\n") "<20170714150537.3e2irp53kwj5xsn7@LykOS.localdomain>" ("<20170714093401.GB865@sivokote.iziade.m$>" "<20170714150537.3e2irp53kwj5xsn7@LykOS.localdomain>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32548 invoked by uid 550); 14 Jul 2017 18:04:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32524 invoked from network); 14 Jul 2017 18:04:32 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=tCjD86Ng0x82l+uKzMh7Gw/lykgRpKPETlOQFkflUtg=;
        b=UlYHW9yiJ+vSVR0g26vezA42J20IYoBHFe3JgnmBfdNKd4fBMRBgzfFMC18MTIz/gV
         OQN3GRaeQ18J96NXC3W8N4ZfI2Ff+XH9lirpnnA52rd3HQw8+NDqX89AhyLUOJlbdQIs
         RfB9C0pFNlfAddeQfdWphMz+z+AODGvtDF5/Ou79cDbIsTL2Krc/lLNmRpG6vO0U1qTc
         xxv4jsTTW9LwKP2FTbRKODyK2/gHzT5N5yn4ziVtn6spdyt9UvJfiWPT/0ogsWlwiBDb
         tJXPcBKpwZzAUTe8GGioC0ZKKv1FdJKlSf+QDVMBvWADsBVKCqzcGntYHDcdhlm1bf+L
         Mbwg==
X-Gm-Message-State: AIVw112zhYPdJrnbAVwOdJ1DhnjyP/6lieV8C50HzitCTr7jPhMwHmiN
	T2qE+lqW0wki24QGeiwY9t2JzXx1YsMQqttPAw==
X-Received: by 10.55.162.213 with SMTP id l204mr11983265qke.65.1500055460647;
 Fri, 14 Jul 2017 11:04:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170714150537.3e2irp53kwj5xsn7@LykOS.localdomain>
References: <20170714093401.GB865@sivokote.iziade.m$> <20170714150537.3e2irp53kwj5xsn7@LykOS.localdomain>
Message-ID: <CANO=Ty0kA2sgHgZj+w1Xg6Z2G9WGSexa_i59Hi2eo2PQeW=YPQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a114d8a66e031ae05544ae0ec"
Date: Fri, 14 Jul 2017 12:04:20 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Estimate for the total number of exploitable bugs
 in large linux distro?
To: oss-security <oss-security@lists.openwall.com>

--001a114d8a66e031ae05544ae0ec
Content-Type: text/plain; charset="UTF-8"

> On Fri, Jul 14, 2017 at 12:34:01PM +0300, Georgi Guninski wrote:
> > What is an estimate for the total number of exploitable bugs in large
> > linux distro?
>

First you need to define "distribution". Do we go with "all" the packages
shipped? Ok... what about things like firefox?
https://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=firefox 1500 CVEs... does
that count to the distribtion count?  What about non-free in Debian? Anyone
that ships Flash is also going to see their stats bumped way up.

Now we need to define "exploitable bugs", for example an exploit chain, is
that multiple bugs or do we count that as a single one for this discussion?
There's a lot of /tmp flaws that are "exploitable" but I can pretty much
guarantee nobody will ever bother.

I would then point out the only source of data anyone is mentioning is CVE.
And CVE has counting rules. For example if you find 100 XSS flaws in a php
app (because they forgot to use htmlspecialchars on output) in the same
version we'll assign a single CVE, not 100. So how many bugs do you count
this as?

CVE is also incomplete. There's lots and lots of vulns with no CVE
(something I'm trying to remediate with the DWF).

I would suggest before anyone continue this thread they go read:

https://media.blackhat.com/us-13/US-13-Martin-Buying-Into-The-Bias-Why-Vulnerability-Statistics-Suck-Slides.pdf

it's largely a pointless discussion because the question isn't well
defined, and we know for a fact we don't have good data to answer it
(yet...).


-- 
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a114d8a66e031ae05544ae0ec--
