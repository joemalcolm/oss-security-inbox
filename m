X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2361" "Tuesday" "1" "March" "2016" "17:31:50" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2FD92Oj-ebOJ=dJnO-+Y1zxNJNwW6HUR5mXH+8G64_ag@mail.gmail.com>" "58" "Re: [oss-security] Re: CVE's for SSLv2 support" "^Cc:" nil nil "3" "2016030200:31:50" "[oss-security] Re: CVE's for SSLv2 support" (number mark "        kseifried@re Mar  1   58/2361  " thread-indent "\"Re: [oss-security] Re: CVE's for SSLv2 support\"\n") "<CAComcpOd1_+qxMnTdJYLM2dP0W=E95Kn6OZ4yYuUS72EQLBpiQ@mail.gmail.com>" ("<CANO=Ty0ZOjCGL-iXCZ46FbSQ3i+fpGHBB6X1x2Agy9jftQ3ozA@mail.gmail.com>" "<20160301191235.EDA1852E01C@smtpvbsrv1.mitre.org>" "<CAComcpOd1_+qxMnTdJYLM2dP0W=E95Kn6OZ4yYuUS72EQLBpiQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11787 invoked by uid 550); 2 Mar 2016 00:32:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11769 invoked from network); 2 Mar 2016 00:32:01 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=r/dMG0ugZKymxFY+IbPOQNNKV4NTPWlRdKAJuCv1Y7k=;
        b=O19m88DaD5h4fskVZXAbJ4bmFLoUhnek2fT7uFWm7+jn97MP+C1y950o78eImLPlIY
         qH18fO76l4mg7XLyF8OBq0zUyxEB/1KYo/GzJPpw3MnQYLf9NbvhaVTHTJqjGJ18q6Lw
         OCb2iROEhqShYUzowWBUde4ljx4wfDMSNpr7MBeJArp79Q4OsfJBM2t+NomcW0f79ZgS
         34a0s72ERDYjo/GoT74tYx/+IKVmMP9qlpdksuCGFwGxYcZAp2jy9nyuTVB0pUMv0gWc
         6QEoi0Xo9tHvQ69xHjirnixSZklVUMD03rRjY6T6o/kcVoXbFq99XfTjEC4zJSbFLyp8
         h0Iw==
X-Gm-Message-State: AD7BkJKOQZoBAPbR6tEKJUTQz2bnyIvAy91R9hkDEGx5XIQ1qM3HGh4SRWVn8IUSrqqOZMcRabiyG4rqy7whPCiU
MIME-Version: 1.0
X-Received: by 10.37.230.204 with SMTP id d195mr13203926ybh.134.1456878710317;
 Tue, 01 Mar 2016 16:31:50 -0800 (PST)
In-Reply-To: <CAComcpOd1_+qxMnTdJYLM2dP0W=E95Kn6OZ4yYuUS72EQLBpiQ@mail.gmail.com>
References: <CANO=Ty0ZOjCGL-iXCZ46FbSQ3i+fpGHBB6X1x2Agy9jftQ3ozA@mail.gmail.com>
	<20160301191235.EDA1852E01C@smtpvbsrv1.mitre.org>
	<CAComcpOd1_+qxMnTdJYLM2dP0W=E95Kn6OZ4yYuUS72EQLBpiQ@mail.gmail.com>
Message-ID: <CANO=Ty2FD92Oj-ebOJ=dJnO-+Y1zxNJNwW6HUR5mXH+8G64_ag@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c0a980e02a7c4052d0602df
Cc: oss-security <oss-security@lists.openwall.com>, CVE ID Requests <cve-assign@mitre.org>
Date: Tue, 1 Mar 2016 17:31:50 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE's for SSLv2 support
To: Bob Beck <beck@openbsd.org>

--94eb2c0a980e02a7c4052d0602df
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 1, 2016 at 2:23 PM, Bob Beck <beck@openbsd.org> wrote:

> On Tue, Mar 1, 2016 at 12:12 PM,  <cve-assign@mitre.org> wrote:
> > -----BEGIN PGP SIGNED MESSAGE-----
> > Hash: SHA256
> >
> >> If a crypto library (e.g. OpenSSL, NSS) supports AND enables SSLv2 by
> >> default should it receive a CVE?
> >
> > There's no general answer to that question. CVE ID assignments are not
> > based on outsiders making guesses about the expectations of a product's
> > customers. For example, there might be a crypto library intended for
> > communication on isolated networks to high-value embedded devices that
> > support only SSLv2, and cannot and will not ever be updated.
>
>
> What.. like... I have an embedded high value device that only supports
> TELNET to access it.. OMG please give me a CVE?
>
> replace SSLV2 in the above sentence with telnet or ssh v1 for that
> matter and you have the same issue.
>

That is a perfect example actually. Telnet makes no security claims,
explicit, implied or otherwise. It's a simple clear text protocol. In fact
if you want to secure it you can use SSL enabled Telnet (in fact I remember
fighting with it prior to the wide spread existence of SSH and then
OpenSSH).

SSL and TLS both makes explicit and implicit claims about security, most
notably at a minimum:

1) the SSL/TLS protocols encrypt the and the data cannot be read by an
attacker
2) the SSL/TLS protocols ensure the data is not altered in transit by an
attacker without detection

Additionally depending on how you configure the servers there are claims
that you are talking to the correct server/client (e.g. using certificates)
but that is not germane to this discussion.

SSLv2 is obviously NOT capable of ensuring claim #1 (that data is encrypted
and cannot be read by an attacker), due to a wide variety of issues, and I
have no doubt more will be found if people keep looking. Hence my thinking
is that ANY and ALL use of SSLv2 is CVE worthy, especially when considering
that many devices/manufacturers are less than transparent about their
configurations/security issues.


--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c0a980e02a7c4052d0602df--
