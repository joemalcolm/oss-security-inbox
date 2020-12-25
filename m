X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["952" "Thursday" "24" "December" "2020" "21:05:31" "-0500" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8=VXvPCwbSSDv==QPOp7N+j28_9H1E0C+fSC84JbMdHQg@mail.gmail.com>" "26" "Re: [oss-security] CVE request experience (was: Multiple memory leaks fixed in Privoxy 3.0.29 stable)" nil nil nil "12" "2020122502:05:31" "[oss-security] CVE request experience (was: Multiple memory leaks fixed in Privoxy 3.0.29 stable)" (number mark "U       noloader@gma Dec 24   26/952   " thread-indent "\"Re: [oss-security] CVE request experience (was: Multiple memory leaks fixed in Privoxy 3.0.29 stable)\"\n") "<20201223175828.48163487@fabiankeil.de>" ("<20201129165312.64bd840f@fabiankeil.de>" "<20201223175828.48163487@fabiankeil.de>") nil nil nil nil nil nil nil "Re: [oss-security] CVE request experience (was: Multiple memory leaks fixed in Privoxy 3.0.29 stable)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27833 invoked by uid 550); 25 Dec 2020 10:56:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21726 invoked from network); 25 Dec 2020 02:06:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to;
        bh=h/zLvRtP6ZzrKeVOxV5yBKbfzVuAjlzETwJg7IWOitk=;
        b=dLDDhyZMO9vnHuEeo30kepF3rYF6Iq5NBXFXMZicuaZdXrhnertsHUaXveSTX7tqjM
         alFxQbamt0/pXexYZxrTY7B+OKzlOiorySxupIKTytXs6/wUwO9IXFFA1AyIrn8NRTY2
         h+IAnSgUK/XtpsCNbq2jretlVRKpikRQK6YramA5aDjYFo3nEuR/eKs8kEE3cfUjLQTC
         1/nLO3ovSohthrqjX4IlzTBqrgUqLLbk87huuSw4fU6oJz+mNfLeJQrydeMUE8DS+Fp6
         0/tScWcUSr6GDG0I3Vc58K1mMMbpwYj0tcqtkhaF33ONw1rOCMrJ5CMtOlteqPjwsHSi
         adOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to;
        bh=h/zLvRtP6ZzrKeVOxV5yBKbfzVuAjlzETwJg7IWOitk=;
        b=eeSjFH6Y3FxKGdZ8VQA9LbAjuiofJWtTIDknFFkJM7YYpLNulDaU9nEbWOGRXpZke/
         uZRTV0xZ5lZ9RE6l1n4KLuTHRIt/Bun4vUy8MA5Nu8kfwioiwl4CF/TbCW1oGj7ATKDI
         TWprLizT5iDEgCuP+vdMDdsnSwRTOmFLqamMCMS6A66Hzkpq4OwaXneeoDGAoE4Iurdv
         smPvKNJFhrTpZEPw1X86UurGLQYtJiXu03durWdcVLHBizxUB3of0B9/ed2Mqj8xmPOs
         sFSAXD6t226zGWHC2y9JVudcfhdY+4r/2Y3p1JEi3ij3t1mYzAqQrTNSf4w4w9oU9q68
         q+QA==
X-Gm-Message-State: AOAM532e1Uw9GSppILdeCggCUox0rRsOeG5Y3vfWXRiX6Xtxb8mAHimW
	3JXtQGavWircxnmr+RCPVGNGn90mewRocXkj2HjkBBrmY/o=
X-Google-Smtp-Source: ABdhPJztHwmaJ9963dN1SVYDcFBysjxgcxj6o+KF3Ia2uW/wylFpvPjO8D9FLtYap1J+WaR6gNJNNifAtEjG4RtW0Is=
X-Received: by 2002:a02:7f41:: with SMTP id r62mr28725451jac.17.1608861954453;
 Thu, 24 Dec 2020 18:05:54 -0800 (PST)
MIME-Version: 1.0
References: <20201129165312.64bd840f@fabiankeil.de> <20201223175828.48163487@fabiankeil.de>
In-Reply-To: <20201223175828.48163487@fabiankeil.de>
From: Jeffrey Walton <noloader@gmail.com>
Date: Thu, 24 Dec 2020 21:05:31 -0500
Message-ID: <CAH8yC8=VXvPCwbSSDv==QPOp7N+j28_9H1E0C+fSC84JbMdHQg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE request experience (was: Multiple memory leaks
 fixed in Privoxy 3.0.29 stable)

On Wed, Dec 23, 2020 at 12:21 PM Fabian Keil
<freebsd-listen@fabiankeil.de> wrote:
>
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
> ...

Related, you are not alone. I just tried to use the form at
https://cveform.mitre.org/ to get a CVE for a memory error.

That form is impossible to use. I emailed cve@mitre.org and asked for
the assignment.

Jeff
