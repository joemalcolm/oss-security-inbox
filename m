X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1835" "Monday" "22" "May" "2017" "15:08:44" "-0400" "Anthony Sasadeusz" "sasadeu1@umbc.edu" "<CAH468dq50NUG9ohUFnXcAUG1gowU19=EZJwuoW8o=ygLgnGiMg@mail.gmail.com>" "45" "Re: [oss-security] How to request a CVE for open source projects" "^Date:" nil nil "5" "2017052219:08:44" "[oss-security] How to request a CVE for open source projects" (number mark "        sasadeu1@umb May 22   45/1835  " thread-indent "\"Re: [oss-security] How to request a CVE for open source projects\"\n") "<1495476334.15944.2@mail.igalia.com>" ("<1495476334.15944.2@mail.igalia.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9496 invoked by uid 550); 22 May 2017 20:49:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20090 invoked from network); 22 May 2017 19:08:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umbc-edu.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=lBM8hSFHhw3drYm20VWwa05BkBNT3HB/o+7/zpEQDDQ=;
        b=WgFO+du0NWkkb6p9F5HtrhcLCU90ZGtefQLmbVxqVl3aarywPaoEuUPFHGnjmaYd6l
         q8siaBlvmWxP+dWhi65B66me9DUEhZakIGqsluLtOLcun6EBJvyb0E66bl8ThnWCwbxA
         IZGBXWDb8A87wLf+pJpe4NyRIOlS4gP2Y6dVXCK6frU+l23c7KE8VSaeycgFe6gLjT4i
         3ZSrsruRAmLzidttaXzDZkN2nLKT+FMrsh7pjNHtq2vT41ifS4AObYpT/wwPa3gTlBnr
         PiqJ1xaVnplR68WrD9FuYaCmqD/zlX/EySVFIrF+++xNopluatvwx+xZbQiJQTrhqVuu
         7SLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=lBM8hSFHhw3drYm20VWwa05BkBNT3HB/o+7/zpEQDDQ=;
        b=NwtbJw3HWTuE/cotclSezL4kC4MZKEiRJV8pJwjVLGfKtj9/Dhv219uXoXHEhQXfjp
         AAoMqqRW/HYN4UMvh/N5PuboWpTvCNPbT2PZrKvArTwbxUQRweCjCGc/uIruKipyriXQ
         1PT1wUafW1f755SwbYBAB8m9Mbx9G6y/rq5AtETPNB0meiYyl+N7P4MfObPaiOjNnXzC
         kuiAlf1sa1hIrFkEb1JP5TBnOGF+4SR1AkuCGo+N6xsrhL9NB/U1bqgNWYjZ9bMn9/TZ
         wwxj53Gtafgq+OhxWkVkZAybkMZ8HjghbW5SePFtu48jpcos2bZldPaMgPEM8GOcHkI3
         SBIg==
X-Gm-Message-State: AODbwcDi1IDLbqisIr53fexbxVV2Q/cJyDTNbm+QAKPhUiYAnDiE99Uk
	emVx/vbuLRV5UZKyfpGZeKB8zFouW+t1
X-Received: by 10.31.181.141 with SMTP id e135mr7388415vkf.23.1495480124532;
 Mon, 22 May 2017 12:08:44 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1495476334.15944.2@mail.igalia.com>
References: <1495476334.15944.2@mail.igalia.com>
Message-ID: <CAH468dq50NUG9ohUFnXcAUG1gowU19=EZJwuoW8o=ygLgnGiMg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a11439e3e977e1b055021993f"
Date: Mon, 22 May 2017 15:08:44 -0400
From: Anthony Sasadeusz <sasadeu1@umbc.edu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How to request a CVE for open source projects
To: oss-security@lists.openwall.com

--001a11439e3e977e1b055021993f
Content-Type: text/plain; charset="UTF-8"

Yeah, I'm kind of in the same boat. Used the DWF form, got a response
basically asking to accept the Mitre Terms of Service, and nothing since.

Anthony

On Mon, May 22, 2017 at 2:05 PM, Michael Catanzaro <mcatanzaro@igalia.com>
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
> How are other people getting open source CVEs right now? Has anybody else
> had luck getting a CVE via DWF? Should I be trying to do this through Red
> Hat instead? Or just by filling out MITRE's CVE form even though we're not
> really supposed to be using it?
>
> Michael
>
> [1] https://cveform.mitre.org/
> [2] http://cve.mitre.org/cve/request_id.html#cna_coverage
> [3] http://iwantacve.org/
> [4] https://bugzilla.gnome.org/show_bug.cgi?id=752738#c15
>
>

--001a11439e3e977e1b055021993f--
