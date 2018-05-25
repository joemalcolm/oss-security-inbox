X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1870" "Friday" "25" "May" "2018" "16:59:11" "+0200" "Andrey Konovalov" "andreyknvl@gmail.com" "<CA+fCnZe0=2Kc1V6nbSs98rnX8VSbEzS5+35O=mF51UF_kp_NnQ@mail.gmail.com>" "43" "Re: [oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit" nil nil nil "5" "2018052514:59:11" "[oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit" (number mark "U       andreyknvl@g May 25   43/1870  " thread-indent "\"Re: [oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit\"\n") "<CANO=Ty0pi9FsrUOBc_2zq2+aG+pLKC=1e9g0CXQTu-ncEHZ8rw@mail.gmail.com>" ("<982848644.28761175.1525953818635.JavaMail.zimbra@redhat.com>" "<1961715083.28767602.1525953956902.JavaMail.zimbra@redhat.com>" "<CA+fCnZfA=_nZfUQzS+r6ZbOqPFTLSzAEbh8EHHnvNsoDH+C87w@mail.gmail.com>" "<CANO=Ty1iLpdsxX+vcFRfJ4L7ZgG1NCPW-oOzxftbdzO0-XHuQA@mail.gmail.com>" "<CA+fCnZf2Dpv9BB4E3VUsZpeKkeqO6EDq5qJOz5tSsXru89POVA@mail.gmail.com>" "<CANO=Ty0pi9FsrUOBc_2zq2+aG+pLKC=1e9g0CXQTu-ncEHZ8rw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5407 invoked by uid 550); 25 May 2018 14:59:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5383 invoked from network); 25 May 2018 14:59:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=v0V8Pxi7N3qf/hOgh+UC+Ha0fKyEY2rIPGZ1HyWkpSs=;
        b=KVV8HcKuNYYKjcIMwBHN7KzVBd9Vb5du2bpBHElZgNnugf/mXIgKIU+1PIempHi/lx
         ycNk1nZUCs2fgESKG9OpcvS1Ltulvq23R6fXulhzRjCqzJvOMLybMta0vYBxtrwM2zUD
         4/vOBHXLoiRCbEUIqUlE2+A+MNLKSrPKKv9HIKYySWkXqc3pEttrHl8GzqCETuiNZnc5
         R6azi1IPueT7O92ZqAfc3a1WaykeCiZXeB9gR861sZ9xS76UaCSAotqNnvWdHJIccVC7
         EdiDsq8tGLLeutrUneCg4mm0/iTony6puV6fapAe8iUx4P2sPIUpkacwqEFbUSEiovGu
         sFuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=v0V8Pxi7N3qf/hOgh+UC+Ha0fKyEY2rIPGZ1HyWkpSs=;
        b=esRLKAMlIZZW/3vemjyWc0FX5dfgWePm14IalgwQ49Vq8UM5nZ7zFne8ELL6l1zf4S
         UDsc6LJWSKsUtR2HPY5dEjWB29yl6PVf86UsVROjcuRxzFJO0XLgBN+wkacfh8sLXhO0
         x2E+vxMAHqGZH+cZDE/mWBgbA24xJO4c+7ubZ34JXrAkHFecpOy/2jQteKseuIWFXYVZ
         RGHPr6HV4s/xSMR5HdM50N28MB8UomjAOrV9oThKffpFGT/vqWsFvWhCxa1O9YO6rRd5
         LSZzGTJ4urQ2Sp7IAPFtFOg/7l19nfa/2cSW8j+DpN/+cOoZIP+klibFDeJxbkiurdfF
         ABsQ==
X-Gm-Message-State: ALKqPwees0BcRSy/52fDrJgyITsNtZ98h+XyvCrbcd4WBMYkflB+eMFM
	11dwYlba/RbonkVoTZWsuxrnq141D92vR4DV4mX0pEDN
X-Google-Smtp-Source: ADUXVKL7n6Rh5dkyy5Aui6IEnr+KSwvhd6uAGiW88YecRPWkxRgz27KJECfRUq5vVi3gxznLpRysGv00jcfcAY1y8R0=
X-Received: by 2002:a19:944f:: with SMTP id w76-v6mr1747092lfd.90.1527260351833;
 Fri, 25 May 2018 07:59:11 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CANO=Ty0pi9FsrUOBc_2zq2+aG+pLKC=1e9g0CXQTu-ncEHZ8rw@mail.gmail.com>
References: <982848644.28761175.1525953818635.JavaMail.zimbra@redhat.com>
 <1961715083.28767602.1525953956902.JavaMail.zimbra@redhat.com>
 <CA+fCnZfA=_nZfUQzS+r6ZbOqPFTLSzAEbh8EHHnvNsoDH+C87w@mail.gmail.com>
 <CANO=Ty1iLpdsxX+vcFRfJ4L7ZgG1NCPW-oOzxftbdzO0-XHuQA@mail.gmail.com>
 <CA+fCnZf2Dpv9BB4E3VUsZpeKkeqO6EDq5qJOz5tSsXru89POVA@mail.gmail.com> <CANO=Ty0pi9FsrUOBc_2zq2+aG+pLKC=1e9g0CXQTu-ncEHZ8rw@mail.gmail.com>
From: Andrey Konovalov <andreyknvl@gmail.com>
Date: Fri, 25 May 2018 16:59:11 +0200
Message-ID: <CA+fCnZe0=2Kc1V6nbSs98rnX8VSbEzS5+35O=mF51UF_kp_NnQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Vladis Dronov <vdronov@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer
 dereference in net/dccp/output.c:dccp_write_xmit

On Fri, May 25, 2018 at 3:49 PM, Kurt Seifried <kseifried@redhat.com> wrote:
> On Fri, May 25, 2018 at 4:48 AM, Andrey Konovalov <andreyknvl@gmail.com>
> wrote:
>> Hi Kurt,
>>
>> Perhaps I should've been more clear. I wasn't asking "what qualifies
>> for a CVE?", but rather "There are a 100 bugs that qualify for CVEs,
>> how do single out 10 of them to actually request CVEs for?".
>>
>
> So if a security vulnerability qualifies for CVE INCLUSION (see
> https://cve.mitre.org/cve/editorial_policies/counting_rules.html) the next
> step is to SPLIT and MERGE the vulns as needed. Esentially what we want is
> to end up with buckets where each bucket of vulnerability(s) is:
>
> 1) unique to a specific code base
> 2) unique to a specific version(s)(*)
> 3) the same root cause (this is where you have to do homework)
>
> * Note: the version thing, obviously the affected versions/commits for
> these will be different in the Linux kernel and so by this rule, strictly
> speaking each vuln would get it's own CVE, but in general if they all
> affect the same broad version of the Linux Kernel they can be bucketed
> together.
>
> So assuming the homework is done of properly identifying and classifying
> these security vulnerabilities then you can simply request CVE's for all of
> them, the worst ones, or whatever you want. I would of course prefer that
> all of them be identified/tracked but that's just me.

Nevermind, you're missing the point of what I'm asking :)

>> In particular, the 100 bugs that I'm referring to are the bugs
>> reported by syzbot (perhaps there's even more:
>> https://syzkaller.appspot.com/?fixed=upstream) and the 10 bugs (or so)
>> are the ones Vladis announced on oss-security over the last few
>> months. I'm just curious how did he choose those 10 bugs out of that
>> 100+.
>>
>
> You'd have to ask him.

That's exactly what I did.
