X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1986" "Thursday" "19" "December" "2019" "00:33:59" "+0500" "Alexander E. Patrakov" "patrakov@gmail.com" nil "47" nil "^Date:" nil nil "12" nil nil (number mark "        patrakov@gma Dec 19   47/1986  " thread-indent "\"Re: [oss-security] [CVE-2019-16782] Possible Information Leak / Session Hijack Vulnerability in Rack\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] [CVE-2019-16782] Possible Information Leak / Session Hijack Vulnerability in Rack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12081 invoked by uid 550); 18 Dec 2019 19:34:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12063 invoked from network); 18 Dec 2019 19:34:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=EwsEEjIqMDSvi7A5xUJe8G9lrxIUQC2T7V4dQWsrdXY=;
        b=I9br3F11op70oMmyCPSl6URo/n7W0EuveJhD9jn3lsJkTaUTGlFbd2SMii+ONG+va4
         U1DbGMmcPYaxSp1GWUTu3VftiZGqLjsL4HBR9HiwD4gG/r39gJnxxaoB5lk9I8GborFe
         JJv9rYFN0p9+dBMtOnSfMuK5/fw7JRr7tRwaXA8BwHIdDw4NLiB3lZ73dOYNnR8X4Eei
         IjMfVjxnbo+zx79GF2psb5j5zeBhvFu1ZrJB3flSLEnb5K4nCW7ZCfGLpgWF0d7RWKBD
         GoRgWPizaLNaJpIbpRiR8p1tQlUJH6FdlkfjkzVa+OtyTi6KqkiSvg6a9mN6SJLil0Cb
         92vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=EwsEEjIqMDSvi7A5xUJe8G9lrxIUQC2T7V4dQWsrdXY=;
        b=sr3aBAjNndlmI5CuMjoLFZeEpZt7ikOkHE3z2t2h9A9orjdeOG8q9+h7fIksknECNC
         /s98pLwtYTbdh1hePZRN9jiOU/M/iH4OZJR4cpfTFBGRTuUnENSspp3OwnUWowF8sblo
         isGmt+nBEWTt6s3sGlU2aFBfD6Jc3hZvnc1BIGddypZ1WNXB5+PkkGyEHKM7K6FV/Yfz
         HztZXTbSjsYespQPi5wiohtxwP3ouuQ7zToyVHe+jlmX5s4+lR5nd5SaMIB9P8/YAuaF
         2Y9TKCYe3d4ci5u8qubpZluWZY64sQ35t3bvDIGhGF69P6M73CR604FDlW/sbhk5c3Wc
         2bhQ==
X-Gm-Message-State: APjAAAVOSYtKKWac2QmpkX/chptftXf/aW/Jg7YWezIWCtfMkjgwjvJZ
	EygUIeF8L4LR0LNo9DWrJKOKx4RSy7yQRSq6m16XGOR/B+k=
X-Google-Smtp-Source: APXvYqyTwyGA3UZTGYrPeP/PhcWs0pFARC6IUJ2JmfIr3/HjlvWhIJKdK2G2Q/SxRuZaZ5jO4gBIr8Un6spvcPshfVY=
X-Received: by 2002:a37:9f41:: with SMTP id i62mr4341763qke.272.1576697650092;
 Wed, 18 Dec 2019 11:34:10 -0800 (PST)
MIME-Version: 1.0
References: <20191218181602.GA62521@tc-lan-adapter.local>
In-Reply-To: <20191218181602.GA62521@tc-lan-adapter.local>
Message-ID: <CAN_LGv17OG6JB-dm+t62WbDJajEAdik+fncnownEvrv+NUSvoQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 19 Dec 2019 00:33:59 +0500
From: "Alexander E. Patrakov" <patrakov@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [CVE-2019-16782] Possible Information Leak /
 Session Hijack Vulnerability in Rack
To: oss-security@lists.openwall.com

On Wed, Dec 18, 2019 at 11:17 PM Aaron Patterson
<aaron.patterson@gmail.com> wrote:
>
> There is a possible information leak / session hijacking vulnerability
> in Rack. This vulnerability has been assigned the CVE identifier
> CVE-2019-16782.
>
> Versions Affected:  All.
> Not affected:       None.
> Fixed Versions:     1.6.12, 2.0.8
>
> There's a possible information leak / session hijack vulnerability in
> Rack. Attackers may be able to find and hijack sessions by using timing
> attacks targeting the session id. Session ids are usually stored and
> indexed in a database that uses some kind of scheme for speeding up
> lookups of that session id. By carefully measuring the amount of time it
> takes to look up a session, an attacker may be able to find a valid
> session id and hijack the session.
>
> The session id itself may be generated randomly, but the way the session
> is indexed by the backing store does not use a secure comparison.

I don't understand why this is reported as something Rack-specific.

If I read the patch correctly (which is improbable, as I don't know
Ruby at all), the idea is:

1. The attacker could send various bogus session ids, starting with
all possible valid bytes. The database, if it uses a trie (yes,
strawman example - is it used by any real-world database?) as a data
structure to speed up looking up sessions, will terminate the
comparison early on invalid bytes, thus disclosing them.
2. Given one valid byte of a session id, the attacker tries to extend
it using the same procedure.
3. At the end, the attacker will get a full session ID.

The patch works by making the thing stored in the database as a key
not the session ID in the cookie, but a hash of it. Therefore, step 2
fails, as it is computationally hard to find something with a given
prefix.

On the other hand, I don't see how a timing attack would be possible
on the most common data structures (B-Tree and Hash) used for database
indexes.

-- 
Alexander E. Patrakov
