Received: (qmail 25991 invoked by uid 550); 11 Apr 2026 22:58:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5826 invoked from network); 11 Apr 2026 18:41:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775932865; x=1776537665; darn=lists.openwall.com;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EOlOvh0i/k0EaCFiV7ReNYAs8yD8r/q5A8mkumZiTMI=;
        b=euER4UUH8+RFMOpz1YfbzBqaBnfATzUtRJDPly4Oe4LcnCA7Fjoc8WkeHncAxp2/qi
         lhSk9q8LEXUyos6CxgKaG91FklZoGGiVGlWRKiZB1j+l1NQjMBBiEKUv8+Kkw6FZs9GV
         W1Q4XuQruuKPmGj08IzvOZtKrdElKKXVGsZZCTulea3wbef+K0eWNVMIbi4/IzecLEq5
         9c11ZGZ47Vt4a2iXrux/YC5KUF6s+9+W5ueVZYtzT4UDGZ07x4di5jeKbpFKKsel9wqE
         ZE15JdM1KTQGTMZrdraiKVbhqP2u4UlIpr5ct6/FN8bl5XKOLzUYtg+n8X5sMvhGbP/d
         2tAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775932865; x=1776537665;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EOlOvh0i/k0EaCFiV7ReNYAs8yD8r/q5A8mkumZiTMI=;
        b=eeMPDzVJtK18fIAtiQ1vGPcl9h0XLrmNiC/QDNgSfpi9EhkkL/0EIw+QzI29V+Lmxe
         CL7HaDk8gWv6OoR40x1yu35GtBQuS90h3LhoidxvsAt9PKUSx6l28zh94bRUVxXSjh6G
         RXgcZc4W0pqmcMcT84PkTO0N1tlien/PvBdwCphbLFG7yOxYTyxIETgVjayLONWTNTYd
         MM5a89jpmTIyIrgouIwoGiTxmWL9/k6ix7Tf/XB4sgPKIDSrhUE02oRYSNk/N5jOtCwU
         cjf3i7ZscxfVnPGi88HnA4etVuCeSOVtKfWAGb8m+YPkr77MFIKAdv4OzfWW2bfNtDNU
         jNtw==
X-Gm-Message-State: AOJu0YwRBTF5Vjmk7Xlc73YOxw9ro8Q9g9LcNRFXK/I+uXhvBvXfs6QP
	TWJJDzSxGpR0DFO7AuNMtfzuY16wcZzsCYIVBpmph22bPy2z+Yv7mDk1aTCEyQ==
X-Gm-Gg: AeBDies2Xw92t0RiLSZNeiO8b0JpVVYh2bUX4P+kqEuvT4jA+ilb1Q1EaKlv0odAd63
	i9xXz8MbraakBk1C00jnE8fPkdFj9jo4IZHRwsOM6UafyJd1jVhhtN4O7Pk84LKNwPGs0TxHt39
	/TPfCyt//q/U54t3oPtb6G0YkaS6PYtj0ntzvGdUz+JhvK8AzcxUPuRQ2PZywQnyclZEbeD1K4c
	+CPn1JyiBVWYMwc1/DVaNphdqCqosX8TbgH0gCupL4zVE5cAfuV0uEDm7qahUyxkYZgSy09Q06m
	0M6hzQda+k6tXzkDRFYOJW59eQeHOAZWb64EcKul86afbuG1kw+Pnox5eTcNka7kj7T/8gJ9ZmI
	5Z1Sek64Lp+JmYUgoYj2jaSylYiwHP+wjui4XCWsYXou/bPu3Mpyo9aBDo+dTAnSYcMQVp9gLMF
	KyMqvx
X-Received: by 2002:a05:7301:fa0d:b0:2be:7885:31df with SMTP id 5a478bee46e88-2d5890793d5mr4051929eec.17.1775932865201;
        Sat, 11 Apr 2026 11:41:05 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: oss-security@lists.openwall.com
In-Reply-To: <e9445380-c50f-4385-93fb-02fbeec634af@oracle.com>
References: <e9445380-c50f-4385-93fb-02fbeec634af@oracle.com>
Date: Sat, 11 Apr 2026 11:41:03 -0700
Message-ID: <874ilh5ohs.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] GNU tar: listing/extraction desynchronization
 allows hidden file injection

Alan Coopersmith <alan.coopersmith@oracle.com> writes:

> Red Hat appears to have assigned CVE-2026-5704 to this issue.
>
> Paul Eggert provided a patch in
> https://lists.gnu.org/archive/html/bug-tar/2026-03/msg00011.html
> which is also available in
> https://cgit.git.savannah.gnu.org/cgit/tar.git/commit/?id=b8d8a61b25588caca4efaf9bdd2e3f1a49da77e3
>
> https://lists.gnu.org/archive/html/bug-tar/2026-03/msg00012.html points out
> that a similar report was also included in
> https://lists.gnu.org/archive/html/bug-tar/2026-02/msg00022.html
> along with a number of other bug reports.

Not directly related to the issues in GNU tar, but one of the reports
you shared [1]. See the following text:

> I am happy to coordinate on a disclosure timeline. Please let me know
> if you need additional information or testing.

This is one of many examples I have seen lately of people writing as if
they were sending private messages on a public list. I assume it is a
common LLM hallucination?

I find it mildly annoying, especially since it is often paired with
total slop. I guess in this case it isn't a bug deal since it is
associated with an actual issue.

For a worse example, see a recent bug report in GNU coreutils claiming
that the 'printf' command allowed for remote code execution because it
allows the user the control the format string [2]. Which is made worse
by it just making up code that doesn't exist.

Collin

[1] https://lists.gnu.org/archive/html/bug-tar/2026-03/msg00007.html
[2] https://bugs.gnu.org/80802
