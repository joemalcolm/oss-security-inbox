X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2265" "Wednesday" "23" "May" "2018" "08:57:45" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1iLpdsxX+vcFRfJ4L7ZgG1NCPW-oOzxftbdzO0-XHuQA@mail.gmail.com>" "80" "Re: [oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit" nil nil nil "5" "2018052314:57:45" "[oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit" (number mark "U       kseifried@re May 23   80/2265  " thread-indent "\"Re: [oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit\"\n") "<CA+fCnZfA=_nZfUQzS+r6ZbOqPFTLSzAEbh8EHHnvNsoDH+C87w@mail.gmail.com>" ("<982848644.28761175.1525953818635.JavaMail.zimbra@redhat.com>" "<1961715083.28767602.1525953956902.JavaMail.zimbra@redhat.com>" "<CA+fCnZfA=_nZfUQzS+r6ZbOqPFTLSzAEbh8EHHnvNsoDH+C87w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30403 invoked by uid 550); 23 May 2018 14:57:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30378 invoked from network); 23 May 2018 14:57:58 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=qSR+wr/Ar9htTYzoTqBprrsmIvtU50E133GjxbaH9o0=;
        b=Q967bQzQunQcybqkbQXhLrQenx8aaEh3GQyml+pFjZs2pIJ4ozK4SPh3TxEMNuc9v2
         9Dr/IBBbHS8+OnusiZsxou1qlOSDwo14M3D8/66tsxXbhw48cukv9y75qvfHIEKz2j/r
         U+NxS25ujBqAArTVaVbLY8pdT/vrP/cHOFaOGRz6WIgu7M92EXkNbP3+pkwFYbaCTgSr
         Z02BhNqHpV+9H/W3vj1vCQBvVHdhzN/GfIlr5ou2eLUMuds68bpueoPFlYlaUZVZsgEU
         h+fVO8QmRwKr1D9EvpFtgesnA3+hhbp1gmSoNhE2YGJzGqxPiGwZ1ZRuM+m31THTGem+
         8mVQ==
X-Gm-Message-State: ALKqPwehlx6RHgXgA0GBUtvq0/bFMI8Cf885F/Aknwbgq/IXy1hSH7k9
	K3q+ibuO9Qk99AD51iMYVj2NPTE9yJXBgcqnO5qyuin7
X-Google-Smtp-Source: AB8JxZq6cJIxlTYOGtcJliFecX/pt3ywDZZKonzvpnhYQurEbgVT3o/iRQlO7WRmbJgUihQolKxZzj2wZkPssIx7Gmc=
X-Received: by 2002:a9d:c41:: with SMTP id 59-v6mr1871464otr.255.1527087466149;
 Wed, 23 May 2018 07:57:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+fCnZfA=_nZfUQzS+r6ZbOqPFTLSzAEbh8EHHnvNsoDH+C87w@mail.gmail.com>
References: <982848644.28761175.1525953818635.JavaMail.zimbra@redhat.com>
 <1961715083.28767602.1525953956902.JavaMail.zimbra@redhat.com> <CA+fCnZfA=_nZfUQzS+r6ZbOqPFTLSzAEbh8EHHnvNsoDH+C87w@mail.gmail.com>
From: Kurt Seifried <kseifried@redhat.com>
Date: Wed, 23 May 2018 08:57:45 -0600
Message-ID: <CANO=Ty1iLpdsxX+vcFRfJ4L7ZgG1NCPW-oOzxftbdzO0-XHuQA@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Cc: Vladis Dronov <vdronov@redhat.com>
Content-Type: multipart/alternative; boundary="000000000000f61460056ce0c148"
Subject: Re: [oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer
 dereference in net/dccp/output.c:dccp_write_xmit

--000000000000f61460056ce0c148
Content-Type: text/plain; charset="UTF-8"

On Wed, May 23, 2018 at 8:49 AM, Andrey Konovalov <andreyknvl@gmail.com>
wrote:

> On Thu, May 10, 2018 at 2:05 PM, Vladis Dronov <vdronov@redhat.com> wrote:
> > Hello,
> >
> > A null pointer dereference in dccp_write_xmit() function in
> net/dccp/output.c
> > in the Linux kernel before v4.16-rc7 allows a local user to cause a
> denial of
> > service by a number of certain crafted system calls.
>


So the classic CVE statement for this is "does it cross/violate a trust
boundary". Yeah I know, not super helpful.

In general when I look at something and need to decide whether or not it
deserves/needs a CVE the fundamentals are:

1) Can an attacker use this vulnerability to gain access, additional
privileges, basically is there an impact to
Confidentiality/Availability/Integrity? This is really two tests: is there
an impact, and is there a way for the attacker to trigger or exploit it?
That's a CVE.

2) Does the software/system make a specific security claim that they then
fail to meet? E.g. "we include a firewall that blocks access to everything
inbound except for port 22", if they were to then also allow port 80,
that'd be a CVE.

So for the syzbot stuff mostly what you need to determine is:

a) is there a security related impact?
AND
b) can an attacker trigger it?

If both are yes, then a CVE is warranted.




> >
> > References:
> >
> > https://syzkaller.appspot.com/bug?id=833568de043e0909b2aeaef7be136d
> b39d21ba94
> >
> > https://marc.info/?t=152036611500003&r=1&w=2
> >
> > An upstream patch:
> >
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/
> linux.git/commit/?id=67f93df79aeefc3add4e4b31a752600f834236e2
> >
> > Best regards,
> > Vladis Dronov | Red Hat, Inc. | Product Security Engineer
>
> Hi Vladis,
>
> I've been wondering, how do you choose which bugs you request CVEs
> for? Syzbot reported a few hundreds of them over the last few months
> and a decent fraction of them looks scarier than a null pointer
> dereference.
>
> Thanks!
>



-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--000000000000f61460056ce0c148--
