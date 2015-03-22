X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1126" "Sunday" "22" "March" "2015" "15:25:53" "+1100" "Michael Samuel" "mik@miknet.net" "<CACYkhxjb6ok=8bLcD9zUB0dYA6b84ane_kZy-5JhYyhSB++hOg@mail.gmail.com>" "27" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032204:25:53" "[oss-security] CVE for Kali Linux" (number mark "        mik@miknet.n Mar 22   27/1126  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<550E289C.1060602@redhat.com>" ("<550E21FA.6090704@redhat.com>" "<CAHZU0yRzjyO78Nan5jgf38Mqt3hPQDDhcsirdVmBFPmRZ=6k9g@mail.gmail.com>" "<550E289C.1060602@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13841 invoked by uid 550); 22 Mar 2015 04:26:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13822 invoked from network); 22 Mar 2015 04:26:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=miknet.net; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=+QCCJNW/qSyfrnq1ZuRpY/LK2yBYKk1n0zoikbuo2Ig=;
        b=CmShcDts8STvVhYfCwQFT8ffBnID3q9iQB9jWyhUKdSbDfWvOetr/2hgf/tqPC9M0I
         i46L0TY/fxnRV/g2uk/cTtcJCmY4mzWRWltKM1IOq1In8lRQlwoe0+LFTdhQPbNF31dM
         ol7ObFjC972pIm1uIAyEdLc/H5qmq9NNJqLw4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=+QCCJNW/qSyfrnq1ZuRpY/LK2yBYKk1n0zoikbuo2Ig=;
        b=ZSS1iNNDX+5cjX9LIW5F7rfeDJz1Wg7p4lDTKnUp4KSiV/rzgnolWo6+ygE6LNuRU1
         am6Y/oyl7dgz0OpTyx+bkz9f4tex6TnlnUI2PszcwiMmX6AFw5k0q8ajkIEV4zJl+KgH
         2UUpsmKiiAL1FfqoUsqnyQrW5PPrInqJIo9vu/1UMHiNANscVM5GXmhHlWX7zO/O/Znf
         hK5qkBxzi02qbksOC6qTDx+nVr/iK4Ub/opnKPlSzTF6+vZmmFT6cekqSu1cCBapJl1y
         GaFAmh6avpZQLnnLVzGXHxo+XzsRothWY95RhPbpJnE7h2eG1lYFQcBEadsxaZq6N7IQ
         QBCg==
X-Gm-Message-State: ALoCoQnru983cALpVd8dAgeUmpE9muHL6lv+1M7zixtO7+jwxh744ao2vk1nx1uyFoHUvQS3nCm9
X-Received: by 10.42.224.1 with SMTP id im1mr12819102icb.55.1426998373253;
 Sat, 21 Mar 2015 21:26:13 -0700 (PDT)
MIME-Version: 1.0
X-Originating-IP: [202.147.141.11]
In-Reply-To: <550E289C.1060602@redhat.com>
References: <550E21FA.6090704@redhat.com> <CAHZU0yRzjyO78Nan5jgf38Mqt3hPQDDhcsirdVmBFPmRZ=6k9g@mail.gmail.com>
 <550E289C.1060602@redhat.com>
Message-ID: <CACYkhxjb6ok=8bLcD9zUB0dYA6b84ane_kZy-5JhYyhSB++hOg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: Assign a CVE Identifier <cve-assign@mitre.org>
Date: Sun, 22 Mar 2015 15:25:53 +1100
From: Michael Samuel <mik@miknet.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

Hi,

On 22 March 2015 at 13:27, Kurt Seifried <kseifried@redhat.com> wrote:
> So I guess we enter uncharted territory here. So my thought is this:
>
> Vendor has front page that recommends doing something completely insane
> and insecure (http/md5s/etc.). On the back end (good lucking finding
> this) vendor does something sort of secure (gpg signing of packages, no
> clue if key distribution is secure) but this is not really documented well.

Securely distributed md5 and sha1 hashes are just fine against third-party
attackers unless you can think of a way in which an attacker could set up a
collision ahead of time.

There have been attacks against dpkg that work prior to GPG sig checks,
as well as attacks against GPG itself.   But then again, TLS stacks aren't
exactly bug-free.

> Does this win a CVE or not? I personally think yes, yes it does.

If any of those circumstances come up, I expect CVEs to be assigned,
but other than that any changes here are just hardening.  Something like
http://www.w3.org/TR/SRI/#downloads-1 might be a good start, but I
don't know what the browser takeup is.

Regards,
  Michael
