X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2250" "Friday" "8" "July" "2016" "07:55:40" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3S0SmpoUVj5ZiQL9RF99PL7Kxt4SpDJQt2D_1SDwQmsw@mail.gmail.com>" "58" "Re: [oss-security] On anonymous CVE assignments" "^Cc:" nil nil "7" "2016070813:55:40" "[oss-security] On anonymous CVE assignments" (number mark "U       kseifried@re Jul  8   58/2250  " thread-indent "\"Re: [oss-security] On anonymous CVE assignments\"\n") "<CAEsznC46-6Z7vLuP2FDuNVATcOkGV8jERu8q059AFaP=TjusPA@mail.gmail.com>" ("<CAEsznC46-6Z7vLuP2FDuNVATcOkGV8jERu8q059AFaP=TjusPA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7734 invoked by uid 550); 8 Jul 2016 13:55:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7714 invoked from network); 8 Jul 2016 13:55:53 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=uhZfU075b4UZhRDXHXvYeo94pHgEj/BLlbv+Nt5DoxQ=;
        b=guPMF6TVoi8j16JvBqa6np2q93oyHWQ6UHKGZd7SRFVcs2tugQDx82wONyGuFK2dWe
         g8TWz01yBTukd60JTEX+UHNqEoHWohanb3NjJUpVB2MttMkD3GNurO8uHV4aWFo1gxrT
         fpGFEPPs7T/khYnKxbi2OecOLP4FXfOtq8+IOjUpyW9/spRdyacqvE7eux8CCezyqvkg
         dldZV+eLq3KZfT/LG0r5xFjViERTWeBg1odgl2wEm6b03J5Gk0vZEWeJtG+ME82lBTu/
         D2OiqdsHmGYT8SbGVFjjR1OTBaE9fqMPLiwE+84u9Syg+kbYcv8Exq3ZLDxnPOwtlSyX
         RJoQ==
X-Gm-Message-State: ALyK8tIDzFBvQ8sblXNkK6I8ajdxIFGa6MCSR3bQMB4m9WjXtVfxisTjgQbRp+6oUBcDbVbat69VJLTL9FGX0c2F
X-Received: by 10.202.107.17 with SMTP id g17mr3133140oic.198.1467986141405;
 Fri, 08 Jul 2016 06:55:41 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAEsznC46-6Z7vLuP2FDuNVATcOkGV8jERu8q059AFaP=TjusPA@mail.gmail.com>
References: <CAEsznC46-6Z7vLuP2FDuNVATcOkGV8jERu8q059AFaP=TjusPA@mail.gmail.com>
Message-ID: <CANO=Ty3S0SmpoUVj5ZiQL9RF99PL7Kxt4SpDJQt2D_1SDwQmsw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11403bc87e7e3105372028a6
Cc: CVE ID Requests <cve-assign@mitre.org>
Date: Fri, 8 Jul 2016 07:55:40 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] On anonymous CVE assignments
To: oss-security <oss-security@lists.openwall.com>

--001a11403bc87e7e3105372028a6
Content-Type: text/plain; charset=UTF-8

I'm hoping to make this better with the DWF by including more meta data in
the CVE data (e.g. affected products/versions) which will make it much
easier to automate notification in the future (e.g. "if affected product ==
php then email security@php.net" or whatever). Part of the problem is that
for an org like MITRE or the DWF to do all the coordination around security
issues (as opposed to straight up CVE assignments) is highly labor
intensive and difficult to scale.

Also if projects don't like "Surprise" CVEs one way to deal with that is to
request the CVE's themselves when they know something is a security
vulnerability. Also making it easy to contact them helps, the harder you
make it for a security researcher to deal with you, the less likely they
are to.

On Fri, Jul 8, 2016 at 7:39 AM, Lior Kaplan <kaplanlior@gmail.com> wrote:

> Hi,
>
> I'm sorry for sending this to the cve-assign mail, but I think this is
> important to how CVE assignment process should work and the importance of
> cooperating with the upstream projects.
>
> In the past year+ I've been dealing with CVE assignment and the PHP
> project. During this period we managed to work closer with the Linux
> distributions and also to improve the internal process regarding CVE
> requests.
>
> I've blogged about a recent problem I encountered with is request and
> assignment of CVE for issues almost a year old without any public info
> about this ("anonymous requests"). Meaning that me, being part of upstream
> (incl. the security team), don't even know we've got CVE assigned and can
> update things on our side (and also other relevant upstreams such as
> libgd).
>
> More details at
> https://liorkaplan.wordpress.com/2016/07/07/anonymous-cve-requests/
>
> I'll be happy to be referred to the right forum to further discuss this.
> Till then, I hope you'll take these remakes into consideration, so the
> whole eco system could work more smoothly.
>
> Kaplan
> The PHP project
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a11403bc87e7e3105372028a6--
