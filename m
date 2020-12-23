X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2177" "Wednesday" "23" "December" "2020" "11:24:31" "-0700" "Nick Tait" "ntait@redhat.com" "<CALDM2HcJCXfMBybnqKiAVQq44DMhhgb0m81wG+WFBtesbr-1QQ@mail.gmail.com>" "68" "Re: [oss-security] CVE request experience (was: Multiple memory leaks fixed in Privoxy 3.0.29 stable)" nil nil nil "12" "2020122318:24:31" "[oss-security] CVE request experience (was: Multiple memory leaks fixed in Privoxy 3.0.29 stable)" (number mark "U       ntait@redhat Dec 23   68/2177  " thread-indent "\"Re: [oss-security] CVE request experience (was: Multiple memory leaks fixed in Privoxy 3.0.29 stable)\"\n") "<20201223175828.48163487@fabiankeil.de>" ("<20201129165312.64bd840f@fabiankeil.de>" "<20201223175828.48163487@fabiankeil.de>") nil nil nil nil nil nil nil "Re: [oss-security] CVE request experience (was: Multiple memory leaks fixed in Privoxy 3.0.29 stable)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7673 invoked by uid 550); 23 Dec 2020 18:39:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32744 invoked from network); 23 Dec 2020 18:25:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1608747912;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=VIF1Joh7rbzpX8EbwR+YlMHJLPNWlUlXvYf6IvUMa9E=;
	b=gXAzbFakQFXXwJwthfTidSbZZVWx5cnFEgLQWBmZS9b/XEB0wO4xsOw5hwPzehDBZhU3xI
	9BnQ/V0YADbsiogtdSKX6URe9qPo8EDhZbcmcp/sR597BTVGENt60Bu8fnyxk65pI+FTbL
	wqWvyGy97d3LYjXjeHjTuAzG15LFFpI=
X-MC-Unique: q6HBu4jFN02rMswmJoH9UQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=VIF1Joh7rbzpX8EbwR+YlMHJLPNWlUlXvYf6IvUMa9E=;
        b=ZyuiOD7vDeoYSrooas+wOtLZDeNOcNg9s5EUYYMQR8I/9QWcYaBuX+uAFAKUowjBlk
         xEaTwkIOlJO38zvhdI+4lBw4jxpwJDdoGZd9VM8pJa54N7bM+n6e6KFd+vVbvIOnDS2n
         P/yaUGXmBHFDXCmzH4d+JDbRj2hH+HL0Fp4MJnyCmXXi0VW9HGVDiZfMdEf5aQVYMoXT
         sUxdSk/BE4U3QUndMm9mDNJ5FUbJJMAWKX6KhiIJQ6iO4AfVgQoRpiU3gH9fFyyL+a6/
         crjvQgjmr4c0j985VYJRrhiFenEukJfEBnzAZTm+VXByeZF9qfHm/uVH7aNSkCM/4TSw
         s+3A==
X-Gm-Message-State: AOAM532uPbzBs+7l9R+lbrEPTihjVJc6QGLftrQQWW1GmF4Tt8FbGNqb
	XLscUC1+9EZMK2EJXsr9PaCNzzpO7XXrjwqGx5T0VQP48/gVF0twcaENAnAIksvtp0GJdzwVa84
	TDSOpNn4PUzjmnW3cqqBLkhU+Q78qQzQ3nrqP3+fvdvHT
X-Received: by 2002:a19:cc05:: with SMTP id c5mr10914834lfg.393.1608747907564;
        Wed, 23 Dec 2020 10:25:07 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyKkDXwf0p7yY16NQjUCT3jpJP2YJDJx5XRrQ4cWQiDQIyF2NmVhHpIaPbGL73i14AKpxaIMTxwE7+jyfP9er8=
X-Received: by 2002:a19:cc05:: with SMTP id c5mr10914827lfg.393.1608747907363;
 Wed, 23 Dec 2020 10:25:07 -0800 (PST)
MIME-Version: 1.0
References: <20201129165312.64bd840f@fabiankeil.de> <20201223175828.48163487@fabiankeil.de>
In-Reply-To: <20201223175828.48163487@fabiankeil.de>
From: Nick Tait <ntait@redhat.com>
Date: Wed, 23 Dec 2020 11:24:31 -0700
Message-ID: <CALDM2HcJCXfMBybnqKiAVQq44DMhhgb0m81wG+WFBtesbr-1QQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ntait@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000008d501105b725cfa3"
Subject: Re: [oss-security] CVE request experience (was: Multiple memory leaks
 fixed in Privoxy 3.0.29 stable)

--0000000000008d501105b725cfa3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That is a rather poor experience Fabian, sorry! Took a look at that
incident number and no encrypted message appears on our end. I believe you
did actually send a message but not sure what went wrong. While I can't
directly help, did request the appropriate people follow up with you.

Nick Tait

He / Him / His =F0=9F=8F=B3=EF=B8=8F=E2=80=8D=F0=9F=8C=88

Product Security Engineer - OpenStack

Red Hat
<https://www.redhat.com>

secalert@redhat.com for urgent response
<https://www.redhat.com>

IM: nickthetait

If I am replying on an unusual time or day it is because I am working an
adjusted schedule. No pressure to reply immediately, wait until your normal
working hours.
<https://www.redhat.com>


On Wed, Dec 23, 2020 at 10:20 AM Fabian Keil <freebsd-listen@fabiankeil.de>
wrote:

> Fabian Keil <freebsd-listen@fabiankeil.de> wrote on 2020-11-29:
>
> >                Announcing Privoxy 3.0.29 stable
> [...]
> > - Security/Reliability:
> >   - Fixed memory leaks when a response is buffered and the buffer
> >     limit is reached or Privoxy is running out of memory.
> >     Commits bbd53f1010b and 4490d451f9b. OVE-20201118-0001.
>
> I tried to get a CVE for OVE-20201118-0001 by using the
> "new" form at https://cveform.mitre.org/ on 2020-11-18 but
> was told by MITRE that "the reported vulnerabilities would
> fall in the scope of Red Hat for assignment" and that their
> mail should be forwarded to secalert@redhat.com.
>
> I did that on 2020-11-18 using the OpenPGP key recommended at:
> https://access.redhat.com/security/team/contact
>
> On 2020-11-23 I received a response from Red Hat claiming
> that my e-mail had "no body".
>
> The same day I replied with an unencrypted mail explaining
> that the previous mail was OpenPGP-encrypted and asked whether
> that was still supported.
>
> As a result I was informed that "INC1525130" "has been resolved".
>
> As of today I still haven't received a CVE and thus did
> not bother to request CVEs for the other issues fixed in
> Privoxy 3.0.29 ...
>
> Fabian
>

--0000000000008d501105b725cfa3--

