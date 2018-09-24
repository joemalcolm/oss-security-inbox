X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1706" "Monday" "24" "September" "2018" "09:36:51" "+0800" "Terry Chia" "terrycwk1994@gmail.com" "<CAGqxZSVqxSd27nWYFgicNVVMD8z=WXGZohsyX5xJ-Hh8p1643g@mail.gmail.com>" "58" "Re: [oss-security] CVE-2018-8023: A remote attacker can exploit a vulnerability in the JWT implementation to gain unauthenticated access to Mesos Executor HTTP API." "^Cc:" nil nil "9" "2018092401:36:51" "[oss-security] CVE-2018-8023: A remote attacker can exploit a vulnerability in the JWT implementation to gain unauthenticated access to Mesos Executor HTTP API." (number mark "U       terrycwk1994 Sep 24   58/1706  " thread-indent "\"Re: [oss-security] CVE-2018-8023: A remote attacker can exploit a vulnerability in the JWT implementation to gain unauthenticated access to Mesos Executor HTTP API.\"\n") "<CAE-_4r2P-=PaJC7SFVawyKi3Y+X8raPnmddjmXC36pS6DLfEjw@mail.gmail.com>" ("<CAPNiXbEAF=Se=QxAumYgog+4ZCoVpoPCUsfONszrNDqkNmzYaw@mail.gmail.com>" "<CAE-_4r2P-=PaJC7SFVawyKi3Y+X8raPnmddjmXC36pS6DLfEjw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22386 invoked by uid 550); 24 Sep 2018 05:59:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7728 invoked from network); 24 Sep 2018 01:37:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6KqzUpdhZil8a8dcf8bF6dv322qDqMpSEGjLs4sxHCY=;
        b=Whqgwd+RO4nEe6AiF3aN8dd5dd8d64S9HTksISa2ou67CfbZgKRaJV+vV7F8LWgSdV
         9kbK48irO7QJUEpM3xK2QAYxZV/kE6MmS8LVsw7oA0kVMfaq2JrG55HJrj9ETDDuUf+H
         y1KelX84Rz8eqSD5LHt22PeUNkePwyWrBz/kMzG5wirg3qNlatJ1DRHpaWfS3fsUgF7T
         Xe2HL8Et4xd6D99nL6Fz1Rqnb2o+tx7b5wZPOdTOcBneW4i8dcd071fXiBuJV/capad8
         DdCTG+FNLJs8b30Wj8VsffQKMyfox7fQyxspxOYoKPNJN5ZQEiKTGVGvGUe2uxL28fef
         vt1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6KqzUpdhZil8a8dcf8bF6dv322qDqMpSEGjLs4sxHCY=;
        b=JtyiJVM7uYliuI83/v6XjCYsN2ywLZ90I/PqR1d1dc7Mc1h0qgaLLolnK7e7URjbgB
         nhVOonqfty9c3NpcNbMLqTg/6dE5DR+RDJkr0zbEGfDduZ83Tqpj0KsmVAD29oSt7Rvo
         jB1SRsVwVRz3aNiKEyjWWMt7jloZPcSI4FFrXmI2c8QXzcqlhCHgQIcvyihMwRY0e3+y
         9iXoZDybnaxuaxO8WEnoKb2LMBW7HxQY/VbxcsGqc5ugp37DNBEAJvfYxvvgE0bvFtF4
         ytGb9bXaw+nSsdW39oNhDTVx+lfy1mJdoJKM4dyFN+e2WZIPgWuGqQsJgV0q/zv8cj0D
         vpyA==
X-Gm-Message-State: APzg51CbqDY3irsPjEV6XvKUQ4JWaPA1d06TrQNBP78u7t+KgCVISU8n
	pK+PYthLmlQNOanWObC07mz/XJEqTVmvTP/c1aU=
X-Google-Smtp-Source: ACcGV60WDmrDIPZZ5VSflNEDFbyJSsmGdzAyOs3dWjbXwlGgnSTO30UjSxGquMS52A0st+Aohfj50Of96bbAeZRuZiE=
X-Received: by 2002:a24:7941:: with SMTP id z62-v6mr6242172itc.20.1537753022439;
 Sun, 23 Sep 2018 18:37:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAPNiXbEAF=Se=QxAumYgog+4ZCoVpoPCUsfONszrNDqkNmzYaw@mail.gmail.com>
 <CAE-_4r2P-=PaJC7SFVawyKi3Y+X8raPnmddjmXC36pS6DLfEjw@mail.gmail.com>
In-Reply-To: <CAE-_4r2P-=PaJC7SFVawyKi3Y+X8raPnmddjmXC36pS6DLfEjw@mail.gmail.com>
Message-ID: <CAGqxZSVqxSd27nWYFgicNVVMD8z=WXGZohsyX5xJ-Hh8p1643g@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000a7a899057694063a"
Cc: oss-security@lists.openwall.com, Alex R <alexr@apache.org>
Date: Mon, 24 Sep 2018 09:36:51 +0800
From: Terry Chia <terrycwk1994@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2018-8023: A remote attacker can exploit a
 vulnerability in the JWT implementation to gain unauthenticated access to
 Mesos Executor HTTP API.
To: Ariel Zelivansky <ariel.zelivans@gmail.com>

--000000000000a7a899057694063a
Content-Type: text/plain; charset="UTF-8"

Hi Ariel,

I believe the following commit contains the fix:
https://github.com/apache/mesos/commit/2c282f19755ea7518caf6f43e729524b1c6bdb23

Cheers,
Terry

On Sun, Sep 23, 2018 at 12:46 AM Ariel Zelivansky <ariel.zelivans@gmail.com>
wrote:

> Hi,
>
> I couldn't find the fix for this in the mesos repository and it is not
> documented in the CHANGELOG, could someone direct me to the fixing
> commit/patch?
>
> Thanks
> Ariel
>
> On Fri, Sep 21, 2018 at 1:50 PM, Alex R <alexr@apache.org> wrote:
> >
> > Severity: Important
> >
> > Vendor:
> > The Apache Software Foundation
> >
> > Versions Affected:
> > Apache Mesos 1.4.0 to 1.6.0
> > The unsupported Apache Mesos pre-1.4.0 releases may be also affected.
> >
> > Description:
> > Apache Mesos can be configured to require authentication to call the
> > Executor HTTP API using JSON Web Token (JWT). The comparison of the
> > generated HMAC value against the provided signature in the JWT
> > implementation used is vulnerable to a timing attack because instead
> > of a constant-time string comparison routine a standard `==` operator
> > has been used. A malicious actor can therefore abuse the timing
> > difference of when the JWT validation function returns to reveal the
> > correct HMAC value.
> >
> > Mitigation:
> > pre-1.4.x users should upgrade to at least 1.4.2
> > 1.4.x users should upgrade to 1.4.2
> > 1.5.x users should upgrade to 1.5.2
> > 1.6.0 users should upgrade to 1.6.1
> > 1.7.0-dev users should obtain Mesos 1.7.0
> >
> > Credit:
> > This issue was discovered by Terry Chia (Ayrx).
> >
> > Alex on behalf of Mesos PMC
>

--000000000000a7a899057694063a--
