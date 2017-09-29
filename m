X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3620" "Thursday" "28" "September" "2017" "23:13:22" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNWjgtc00AvQrdfUspAqx0U+-0aEPGL3aiP1j-im4XC+6w@mail.gmail.com>" "78" "Re: [oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)" "^Date:" nil nil "9" "2017092906:13:22" "[oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)" (number mark "U       reed@reedlod Sep 28   78/3620  " thread-indent "\"Re: [oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)\"\n") "<CAO5O-EL=MsSrj39-A_yf9_NmE-m7hrF6YfC+SOFnAw41Ae4g8Q@mail.gmail.com>" ("<20170928182541.r7dzm3epg7txsplh@tunkki.bugs.fi>" "<CAO5O-EL=MsSrj39-A_yf9_NmE-m7hrF6YfC+SOFnAw41Ae4g8Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28643 invoked by uid 550); 29 Sep 2017 06:13:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28621 invoked from network); 29 Sep 2017 06:13:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=+8ZKzF09lFajEki50wz0+TLuYSWxrhcj1muAfK4nrBI=;
        b=C++E0Tgd0dz1VGJnF2QMsVBVvVGILaPOAMIRbHcJbdQ26CKtOQCLqdMkfsKVfdEQg/
         9bXrPs8FhCxuy3Zrbwd8J8s1gkafxZ1t14cTxhtWE60DF1rfzlrq82DW1nMF9Rp+BfVH
         CJqYuuvKwhuqyOReyoY0nBedibx23mlRU7hnE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=+8ZKzF09lFajEki50wz0+TLuYSWxrhcj1muAfK4nrBI=;
        b=d6gKYR97fB1n2x7tTYIkMTvwZUaHbxfq1bSg2Tqp3TdxR0tsur6qZ8tIw/h1yqrHLb
         75aINXuk4qaf8z7UCbET8o+V9p1oxY3aEchUai5WaLL58ygyeDU8rQu2V2wJhQTB9Dc+
         u1DEHKkx9q7yCaUYiaJecoZoYgQczBvKyyMQLHnc5umR5dj338W47KpqUm8WrgxIwBz9
         sIBEagx+VzM9kaHylpcb+1S3FKi/VQGkUBudFkeZYbdkvrllSGUzjeAa1dlxKVXWwZBo
         hklvLwVsFhHWP1XYZhhWIwgMN/r0IRuNadB4dC1mBQckB4yWZOsePZaGLo5y72D8ilcF
         +ySg==
X-Gm-Message-State: AHPjjUhfPzUQzwk3fOTBuNxFTlxXuURGmwYUjlvYO1YG7k6GQoXRTRrw
	a3vW3zY9XMLs5OPd1xYp2eqYlzoyYVI/3nOzIfadZ151/1g=
X-Google-Smtp-Source: AOwi7QAeZmpxsqbQ9bPXuFBxANcjtC46fuKF0AtiHozMmSOujv81piJq4XGZoZyrXR3TxXtIk7t7qbjGQWeRAQds5aM=
X-Received: by 10.159.32.36 with SMTP id 33mr4310029uam.41.1506665622440; Thu,
 28 Sep 2017 23:13:42 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAO5O-EL=MsSrj39-A_yf9_NmE-m7hrF6YfC+SOFnAw41Ae4g8Q@mail.gmail.com>
References: <20170928182541.r7dzm3epg7txsplh@tunkki.bugs.fi> <CAO5O-EL=MsSrj39-A_yf9_NmE-m7hrF6YfC+SOFnAw41Ae4g8Q@mail.gmail.com>
Message-ID: <CALPTtNWjgtc00AvQrdfUspAqx0U+-0aEPGL3aiP1j-im4XC+6w@mail.gmail.com>
Content-Type: multipart/alternative; boundary="94eb2c04c5c2389e48055a4dedcf"
Date: Thu, 28 Sep 2017 23:13:22 -0700
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)
To: oss-security@lists.openwall.com

--94eb2c04c5c2389e48055a4dedcf
Content-Type: text/plain; charset="UTF-8"

(Wearing my IBB hat)

I just replied to Guido privately, but wanted to follow-up here stating
that we (the IBB) are open to paying for issues in a non-ASLR configuration.

The main reason we have extra stipulations on this particular program is
that some of the projects that have signed up were worried about being
inundated with low-severity issues that didn't actually do much to improve
security. So, we started with a fairly high bar to emphasize the main goal
of looking for critical vulnerabilities (i.e., RCE). However, ASLR is not
full-proof and only delays the inevitable, so I agree that vulnerabilities
that are solely mitigated by ASLR should still be in-scope for a bounty.

Separately, we're happy to announce that libav (
https://git.libav.org/?p=libav.git;a=summary) was added to the scope
earlier today.

If other well-known projects fit into the category of "data processing" and
wish to participate, please reach out to panel [@] internetbugbounty.org,
and we'd be happy to add you.

Happy hacking,
~reed
(for the Internet Bug Bounty)

On Thu, Sep 28, 2017 at 4:03 PM, Guido Vranken <guidovranken@gmail.com>
wrote:

> I found a buffer overflow in one of the projects within 30 minutes,
> and there are probably many more issues to be found (as in virtually
> any large, unaudited project). What makes this project special
> compared to other bug bounties for C libraries (such as the regular
> Internet Big Bounty programs) is that they require a full, reliable
> exploit.
>
> If they would be willing to be lenient in their qualification of what
> constitutes a working exploit, such as exploitation of a binary
> without advanced anti-exploit protections such ASLR, I might bother,
> otherwise I won't. Enhancing open source projects is a honourable
> pursuit indeed and I've done it many times for free, but if I'm going
> to hack for money I might as well choose something that is easier or
> more profitable or both at the same time. You can fetch $500 for any
> old XSS on a web page or a buffer overflow in the clusterfucks that
> are the PHP and Python code
> (https://hackerone.com/directory?query=ibb%3Ayes&sort=published_at%
> 3Adescending&page=1
> -- see the sheer number of submissions to both those programs).
>
> Right after the program was announced, I sent an email to the IBB
> asking if exploitation of a non-ASLR configuration of the binary at
> hand would be sufficient. Unfortunately, I have not yet received a
> reply. The reason they want full exploits is, I think, to cut the
> chaff from the grain and solicit bugs that at least have real
> potential. A nice middle ground would be paying a percentage (25%?) of
> their current bounty offering for raw submissions of bugs that are
> generally assumed to constitute a security risk. It will attract a
> larger body of researchers for sure, and in the end this will be more
> beneficial to the overall security of the internet than under their
> current approach.
>
> A Heartbleed-like vulnerability in an image parsing or conversion
> library, where an attacker can send a crafted image file resulting in
> exposure of unrelated memory, would not be eligible under this
> program. Case in point: see Chris Evans' Yahoobleed:
> https://scarybeastsecurity.blogspot.nl/2017/05/bleed-
> more-powerful-dumping-yahoo.html
>
> All in all I think they should reconsider their current program
> stipulations, if only to increase their own return-on-investment
> (making the internet safer with a limited funding).
>
> Guido
>

--94eb2c04c5c2389e48055a4dedcf--
