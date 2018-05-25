X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3497" "Friday" "25" "May" "2018" "07:49:04" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0pi9FsrUOBc_2zq2+aG+pLKC=1e9g0CXQTu-ncEHZ8rw@mail.gmail.com>" "102" "Re: [oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit" nil nil nil "5" "2018052513:49:04" "[oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit" (number mark "U       kseifried@re May 25  102/3497  " thread-indent "\"Re: [oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit\"\n") "<CA+fCnZf2Dpv9BB4E3VUsZpeKkeqO6EDq5qJOz5tSsXru89POVA@mail.gmail.com>" ("<982848644.28761175.1525953818635.JavaMail.zimbra@redhat.com>" "<1961715083.28767602.1525953956902.JavaMail.zimbra@redhat.com>" "<CA+fCnZfA=_nZfUQzS+r6ZbOqPFTLSzAEbh8EHHnvNsoDH+C87w@mail.gmail.com>" "<CANO=Ty1iLpdsxX+vcFRfJ4L7ZgG1NCPW-oOzxftbdzO0-XHuQA@mail.gmail.com>" "<CA+fCnZf2Dpv9BB4E3VUsZpeKkeqO6EDq5qJOz5tSsXru89POVA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1714 invoked by uid 550); 25 May 2018 13:49:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1696 invoked from network); 25 May 2018 13:49:16 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=34w+y8D0JAfo31gCyhUTzNj8/7wujrM48SglBg056p8=;
        b=QllxvheEq+STagFnI8oCUKtabOmnKzai1xYISKM+PZ4FVgOw0UQVN1GaoYqiDiDQZY
         DLL1/x9uHzgMIU49AEe14AVpjvQbhLfR1YRq+XW69RQcZSATdsUdDVbL8T3tO3AYmyDB
         viIVw2GfWj58Rgh60Oo8BMSu+U9XowFR5hjOHsLHsndHByWbK3PlPDpU79PHOFKjbiPM
         W41daa/YBeymOFTW9/74ttH65a6SbaM4FjmLC5c04uXp02sI0kgRUDeKduwewWTRT1Y1
         UUCFzFLexMrEeXlCql/brW1zxKBa24V5OwDkb8Yxi6lPBQT9GMHfRDJD8TUyeqkRfwXU
         /cBQ==
X-Gm-Message-State: ALKqPwfhZIpYtX+8fI5nXVNa2gWP0Us9Kag85qKT/f06w1tQ8kWRquzo
	kHGPOFziEsGbi+cePFfal8YkZm6P0lGLuTfGucPjejw+evY=
X-Google-Smtp-Source: ADUXVKICZRvuIeJ7lqoGre/0Z9zzwcNiOkfiCGTAvUfcJK0EJpXiDZ/V4Rm8qasYifBCQeVIugx/Fn1a6umA9qcddrU=
X-Received: by 2002:a9d:4881:: with SMTP id d1-v6mr1668237otf.353.1527256144812;
 Fri, 25 May 2018 06:49:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+fCnZf2Dpv9BB4E3VUsZpeKkeqO6EDq5qJOz5tSsXru89POVA@mail.gmail.com>
References: <982848644.28761175.1525953818635.JavaMail.zimbra@redhat.com>
 <1961715083.28767602.1525953956902.JavaMail.zimbra@redhat.com>
 <CA+fCnZfA=_nZfUQzS+r6ZbOqPFTLSzAEbh8EHHnvNsoDH+C87w@mail.gmail.com>
 <CANO=Ty1iLpdsxX+vcFRfJ4L7ZgG1NCPW-oOzxftbdzO0-XHuQA@mail.gmail.com> <CA+fCnZf2Dpv9BB4E3VUsZpeKkeqO6EDq5qJOz5tSsXru89POVA@mail.gmail.com>
From: Kurt Seifried <kseifried@redhat.com>
Date: Fri, 25 May 2018 07:49:04 -0600
Message-ID: <CANO=Ty0pi9FsrUOBc_2zq2+aG+pLKC=1e9g0CXQTu-ncEHZ8rw@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Cc: Vladis Dronov <vdronov@redhat.com>
Content-Type: multipart/alternative; boundary="000000000000fe326a056d080712"
Subject: Re: [oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer
 dereference in net/dccp/output.c:dccp_write_xmit

--000000000000fe326a056d080712
Content-Type: text/plain; charset="UTF-8"

On Fri, May 25, 2018 at 4:48 AM, Andrey Konovalov <andreyknvl@gmail.com>
wrote:

> On Wed, May 23, 2018 at 4:57 PM, Kurt Seifried <kseifried@redhat.com>
> wrote:
> > On Wed, May 23, 2018 at 8:49 AM, Andrey Konovalov <andreyknvl@gmail.com>
> > wrote:
> >
> >> On Thu, May 10, 2018 at 2:05 PM, Vladis Dronov <vdronov@redhat.com>
> wrote:
> >> > Hello,
> >> >
> >> > A null pointer dereference in dccp_write_xmit() function in
> >> net/dccp/output.c
> >> > in the Linux kernel before v4.16-rc7 allows a local user to cause a
> >> denial of
> >> > service by a number of certain crafted system calls.
> >>
> >
> >
> > So the classic CVE statement for this is "does it cross/violate a trust
> > boundary". Yeah I know, not super helpful.
> >
> > In general when I look at something and need to decide whether or not it
> > deserves/needs a CVE the fundamentals are:
> >
> > 1) Can an attacker use this vulnerability to gain access, additional
> > privileges, basically is there an impact to
> > Confidentiality/Availability/Integrity? This is really two tests: is
> there
> > an impact, and is there a way for the attacker to trigger or exploit it?
> > That's a CVE.
> >
> > 2) Does the software/system make a specific security claim that they then
> > fail to meet? E.g. "we include a firewall that blocks access to
> everything
> > inbound except for port 22", if they were to then also allow port 80,
> > that'd be a CVE.
> >
> > So for the syzbot stuff mostly what you need to determine is:
> >
> > a) is there a security related impact?
> > AND
> > b) can an attacker trigger it?
> >
> > If both are yes, then a CVE is warranted.
>
> Hi Kurt,
>
> Perhaps I should've been more clear. I wasn't asking "what qualifies
> for a CVE?", but rather "There are a 100 bugs that qualify for CVEs,
> how do single out 10 of them to actually request CVEs for?".
>

So if a security vulnerability qualifies for CVE INCLUSION (see
https://cve.mitre.org/cve/editorial_policies/counting_rules.html) the next
step is to SPLIT and MERGE the vulns as needed. Esentially what we want is
to end up with buckets where each bucket of vulnerability(s) is:

1) unique to a specific code base
2) unique to a specific version(s)(*)
3) the same root cause (this is where you have to do homework)

* Note: the version thing, obviously the affected versions/commits for
these will be different in the Linux kernel and so by this rule, strictly
speaking each vuln would get it's own CVE, but in general if they all
affect the same broad version of the Linux Kernel they can be bucketed
together.

So assuming the homework is done of properly identifying and classifying
these security vulnerabilities then you can simply request CVE's for all of
them, the worst ones, or whatever you want. I would of course prefer that
all of them be identified/tracked but that's just me.


> In particular, the 100 bugs that I'm referring to are the bugs
> reported by syzbot (perhaps there's even more:
> https://syzkaller.appspot.com/?fixed=upstream) and the 10 bugs (or so)
> are the ones Vladis announced on oss-security over the last few
> months. I'm just curious how did he choose those 10 bugs out of that
> 100+.
>

You'd have to ask him.


>
> Thanks!
>



-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--000000000000fe326a056d080712--
