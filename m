X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1871" "Thursday" "19" "May" "2016" "12:25:09" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty26E=diToYAoedQB4JKTbnjykSy94ciE-XBNdyJBU0jNw@mail.gmail.com>" "50" "Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714" "^Date:" nil nil "5" "2016051918:25:09" "[oss-security] ImageMagick Is On Fire -- CVE-2016-3714" (number mark "        kseifried@re May 19   50/1871  " thread-indent "\"Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714\"\n") "<alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org>" ("<CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>" "<20160503181505.GA8195@openwall.com>" "<57292879.7050303@gmail.com>" "<alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5309 invoked by uid 550); 19 May 2016 18:25:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5288 invoked from network); 19 May 2016 18:25:21 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=LA1U1N3+YUS9QMUhtHBXah9WfhBqfi2uVa6BQB1K1SE=;
        b=a7IQHEmDnPPq1I8UshHN/mRVaq13p3zb85MaCiyn4lI7a4yR8rHr5Ogvcko86q0Iqi
         1ur4dgMaL1+IlzN79WTQFoC8K6Vi4HCDPEcCSd0HU9vV53ovaqZRseTNENnwtD0LZkPz
         mmzICD8qsoLs2/DRsKINj+DRYaXpuC5w1A9L7UiykcAz3HpICHRvKgR1ebpOjQqmnWSe
         8Aj+9wrk//fJI14iYY6wLN5HLLLnKcv+w3JrE/GZgw/qzCJ4JGNmxXDav+MV8NsrAlQD
         w06plmUFu+ohkMPESH8kI8mvij7BrSP8UhCKmMdYkaV725NaIHI0zEQp6W8UQdNNcfWl
         iIIw==
X-Gm-Message-State: AOPr4FWt4BxIUhgTtTJCqR9McaavaeDEQj/RHaS7KOxY2To/JK8nxwO3niYBmyAGuhXZNsPbs4X9QUJSM99YjAJs
MIME-Version: 1.0
X-Received: by 10.129.147.71 with SMTP id k68mr8605365ywg.76.1463682309158;
 Thu, 19 May 2016 11:25:09 -0700 (PDT)
In-Reply-To: <alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org>
References: <CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>
	<20160503181505.GA8195@openwall.com>
	<57292879.7050303@gmail.com>
	<alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org>
Message-ID: <CANO=Ty26E=diToYAoedQB4JKTbnjykSy94ciE-XBNdyJBU0jNw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c07e9e81a35f9053336188d
Date: Thu, 19 May 2016 12:25:09 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714
To: oss-security <oss-security@lists.openwall.com>

--94eb2c07e9e81a35f9053336188d
Content-Type: text/plain; charset=UTF-8

Without making a commercial pitch for the company I work ... I suspect one
aspect of other vendors not fixing this is that there is a very
simple/effective/verifiable workaround to prevent exploitation of this, and
even with vendor updates I would still suggest using the workaround, after
reading the MVG docs it seems to much like flash to ever be "safe" (also in
a web app world I can't imagine a normal use case for people uploading MVG
files).

On Thu, May 19, 2016 at 11:07 AM, Bob Friesenhahn <
bfriesen@simple.dallas.tx.us> wrote:

> I find it very disturbing that there seems to be very little response from
> popular OS distributions to this issue.  Most do not appear to have issued
> any package updates to close the shell exploit.  Perhaps
> the opinion is that major new versions will be introduced as part of major
> distribution releases and it is ok for users to exposed to problems for two
> or three years.
>
> As an example Ubuntu 14.04.4 LTS (which is supposed to be getting security
> updates) has not provided ImageMagick or GraphicsMagick package updates in
> 3 years.
>
> Even NebBSD pkgsrc does not appear to have created a new version to
> address the "ImageTragick" issues.
>
> What is the point of security notices and advisories if there is no
> response from the community to provide updates to protect the majority of
> their users (who are using 'stable' releases) from the problems?
>
>
> Bob
> --
> Bob Friesenhahn
> bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
> GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c07e9e81a35f9053336188d--
