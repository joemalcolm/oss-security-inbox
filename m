X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2289" "Friday" "29" "September" "2017" "01:03:31" "+0200" "Guido Vranken" "guidovranken@gmail.com" "<CAO5O-EL=MsSrj39-A_yf9_NmE-m7hrF6YfC+SOFnAw41Ae4g8Q@mail.gmail.com>" "42" "Re: [oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)" nil nil nil "9" "2017092823:03:31" "[oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)" (number mark "U       guidovranken Sep 29   42/2289  " thread-indent "\"Re: [oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)\"\n") "<20170928182541.r7dzm3epg7txsplh@tunkki.bugs.fi>" ("<20170928182541.r7dzm3epg7txsplh@tunkki.bugs.fi>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13682 invoked by uid 550); 28 Sep 2017 23:45:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14160 invoked from network); 28 Sep 2017 23:04:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=qDdIchYvJl6WjX2Fa2vDNj1UpI4XsFNUgaqffw0SdLM=;
        b=aOynYPMxUqsp5MzyrAY5lejHqw4ntRvkJNdem3jqEfP222FQZOtGHrS942xXwGULhS
         uOWhXGzX5QWq+FEjcUE3CDvnqn7y9f4jpOyuH1f7mhJPl29yZnIjSurdgGx+qsAvrG9D
         pEMb9NqBPfgAx3bk2Dr6UMqO8VrLuHMA8x5M3/xl53VIc4UB0Dc/cNzunnjT/JMqSS7c
         AVRmP8nVq8z8F4yhuvDqbtuVBmwseGmvpllQYHi+J9J4hG4nQoW4GF3dTcCzHdNsHsx7
         rvvMBvkfiSwqbnHz50qE/RH8QhPvk8qUXrBAYS+Ei0FlNCC2PzgYdo0hxf5DVv34xRHP
         LLGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=qDdIchYvJl6WjX2Fa2vDNj1UpI4XsFNUgaqffw0SdLM=;
        b=Kdae33ScIf1uH59r5UHS3hYI21KK4OACsIv8SRf3G65hUThtvsJt7wv6qXOylPojuM
         dJFMidaxaDYYzK/OeZbIc/lulmZb0YbFwqRxIxHhX2g6xkYVymSX4aOSEG7o+lA3SMsK
         jpfVQ93mQcHrDURleoai2OKLDKUUrfVaqUMoFIcwUwcXDv68kpUaz4izDLs/nAgd8td7
         3+XoImkT3nr8OfQEseLyp/DDfr8potCZv47wvlJ7JPeijeeIQo9uD704ZTPS6koKJDxG
         nIxgmZAhAkXu0yPxOaz/Ttzuby6HU0j2gxQj3nLq1La9mfLkX0va7QHkkhowxrVEyaiM
         NCDw==
X-Gm-Message-State: AHPjjUgqGKA8x9cip+C3tOsUpt2R9LRm5bYGnVzUdb5aiplzsnoyz1LN
	YZWtIO/cGQqYfnmxm7IIx1nFoR8TJQIqU1qjwi3xto9e
X-Google-Smtp-Source: AOwi7QCgfktea7bvrgI1ncJ7GzFXRzuL5ETe5eT0El+jkX2K4dPpFmod+rn63P6Y9t30A9fq9ZTjjB9a8tD4zkRlwT8=
X-Received: by 10.99.145.73 with SMTP id l70mr1106929pge.132.1506639812311;
 Thu, 28 Sep 2017 16:03:32 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170928182541.r7dzm3epg7txsplh@tunkki.bugs.fi>
References: <20170928182541.r7dzm3epg7txsplh@tunkki.bugs.fi>
From: Guido Vranken <guidovranken@gmail.com>
Date: Fri, 29 Sep 2017 01:03:31 +0200
Message-ID: <CAO5O-EL=MsSrj39-A_yf9_NmE-m7hrF6YfC+SOFnAw41Ae4g8Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)

I found a buffer overflow in one of the projects within 30 minutes,
and there are probably many more issues to be found (as in virtually
any large, unaudited project). What makes this project special
compared to other bug bounties for C libraries (such as the regular
Internet Big Bounty programs) is that they require a full, reliable
exploit.

If they would be willing to be lenient in their qualification of what
constitutes a working exploit, such as exploitation of a binary
without advanced anti-exploit protections such ASLR, I might bother,
otherwise I won't. Enhancing open source projects is a honourable
pursuit indeed and I've done it many times for free, but if I'm going
to hack for money I might as well choose something that is easier or
more profitable or both at the same time. You can fetch $500 for any
old XSS on a web page or a buffer overflow in the clusterfucks that
are the PHP and Python code
(https://hackerone.com/directory?query=ibb%3Ayes&sort=published_at%3Adescending&page=1
-- see the sheer number of submissions to both those programs).

Right after the program was announced, I sent an email to the IBB
asking if exploitation of a non-ASLR configuration of the binary at
hand would be sufficient. Unfortunately, I have not yet received a
reply. The reason they want full exploits is, I think, to cut the
chaff from the grain and solicit bugs that at least have real
potential. A nice middle ground would be paying a percentage (25%?) of
their current bounty offering for raw submissions of bugs that are
generally assumed to constitute a security risk. It will attract a
larger body of researchers for sure, and in the end this will be more
beneficial to the overall security of the internet than under their
current approach.

A Heartbleed-like vulnerability in an image parsing or conversion
library, where an attacker can send a crafted image file resulting in
exposure of unrelated memory, would not be eligible under this
program. Case in point: see Chris Evans' Yahoobleed:
https://scarybeastsecurity.blogspot.nl/2017/05/bleed-more-powerful-dumping-yahoo.html

All in all I think they should reconsider their current program
stipulations, if only to increase their own return-on-investment
(making the internet safer with a limited funding).

Guido
