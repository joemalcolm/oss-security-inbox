X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2375" "Monday" "22" "May" "2017" "13:16:03" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2o9kXFFMmnDJu3hsY3G84CyJmA_Tnt3dR2-vHyxsdMfw@mail.gmail.com>" "64" "Re: [oss-security] How to request a CVE for open source projects" "^Date:" nil nil "5" "2017052219:16:03" "[oss-security] How to request a CVE for open source projects" (number mark "        kseifried@re May 22   64/2375  " thread-indent "\"Re: [oss-security] How to request a CVE for open source projects\"\n") "<1495476334.15944.2@mail.igalia.com>" ("<1495476334.15944.2@mail.igalia.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24242 invoked by uid 550); 22 May 2017 19:16:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24222 invoked from network); 22 May 2017 19:16:15 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=metqhQ6Mre6X3pwvpBUsJwuvbjX97NDv/eDvuM6/PTc=;
        b=Geqiv/jgbreRPmyneiir0FA8GIfxAKHZ8iuw4x8WF9M66BEko2V7EUHq+3Jfrs2mKo
         VGHvtDy2BFqwmihL67c1oz6uveip7eLBTmXjTVggyGlQZ/JCMYSt1DRjd3f6xmZLwJ7o
         KAvA24nK6FCj96+49+s2li7d6M7c6JPmZSGorA4XMS2GExU7WnqETZpwTjl2mmtMVr/Q
         Ifd//7PHDZ22yLNrz3VbvK5lyhVispW8+/yhJDqFzm7KdEh13350mcPggvRHLAYAn8mb
         RSmrC/CZcp7xXkgBWMZqoO4hJAd8Xkg2oqu+ibnh4Q5R7NPt24JaoG9BZUeJYD8O34v9
         Vc+g==
X-Gm-Message-State: AODbwcC/IH3VC0LedDs6YehQjR/ZLKXD/bi6cuYXxVCdA601WMWYYNKk
	YUPLPf2EEBDmdY645NAOG+GwDPvrZ7WnCtzHwA==
X-Received: by 10.157.28.135 with SMTP id l7mr12583744ota.87.1495480563803;
 Mon, 22 May 2017 12:16:03 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1495476334.15944.2@mail.igalia.com>
References: <1495476334.15944.2@mail.igalia.com>
Message-ID: <CANO=Ty2o9kXFFMmnDJu3hsY3G84CyJmA_Tnt3dR2-vHyxsdMfw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="f40304378ef4c646ce055021b3ec"
Date: Mon, 22 May 2017 13:16:03 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How to request a CVE for open source projects
To: oss-security <oss-security@lists.openwall.com>

--f40304378ef4c646ce055021b3ec
Content-Type: text/plain; charset="UTF-8"

On Mon, May 22, 2017 at 12:05 PM, Michael Catanzaro <mcatanzaro@igalia.com>
wrote:

> Hi,
>
> I'm aware that the CVE form [1] can now be used to request CVEs. However,
> it does not seem to be designed for requesting CVEs in open source
> products. The field "Vendor of the product(s)" says "Please ensure vendors
> are on the products and sources list," indicating the intent of MITRE to
> restrict usage of the form to specific products. This list [2] says "For
> open source software products not listed below, request a CVE ID through
> the Distributed Weakness Filing Project CNA." So, clearly we are supposed
> to request a CVE through the DWF project. (Or perhaps via Red Hat, since it
> seems like it's willing to allocate CVEs for miscellaneous Linux-related
> issues.)
>
> Anyway, I attempted to request a CVE using the DWF project's request form
> [3] several months ago, but have not yet received any response [4]. So I am
> hesitant to request further CVEs from the DWF project, for fear that I
> won't receive a response and will wind up needing to make a duplicate CVE
> request somewhere else.
>

Ah, I recently did a large number of CVE assignments, I haven't emailed out
to the sequesters yet, yours was
https://github.com/distributedweaknessfiling/DWF-CVE-2017-1000000/blob/f2e15ac3468dd382d9ffa3d5acc032c106f3248c/CVE-2017-1000025.json
I believe.



>
> How are other people getting open source CVEs right now? Has anybody else
> had luck getting a CVE via DWF? Should I be trying to do this through Red
> Hat instead? Or just by filling out MITRE's CVE form even though we're not
> really supposed to be using it?
>

Part of the challenge of the DWF is this is more of an experiment to figure
out what we need/how to do it, mostly so I can scale it out/up to the
entire Open Source world. So CVEs are a bit slow right now, but that should
get better over the next few months.


>
> Michael
>
> [1] https://cveform.mitre.org/
> [2] http://cve.mitre.org/cve/request_id.html#cna_coverage
> [3] http://iwantacve.org/
> [4] https://bugzilla.gnome.org/show_bug.cgi?id=752738#c15
>
>


-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--f40304378ef4c646ce055021b3ec--
