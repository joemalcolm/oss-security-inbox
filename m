X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1470" "Wednesday" "21" "June" "2017" "15:15:11" "-0700" "Qualys Security Advisory" "qsa@qualys.com" "<20170621221511.GC28151@localhost.localdomain>" "34" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Cc:" nil nil "6" "2017062122:15:11" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        qsa@qualys.c Jun 21   34/1470  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<20170621122526.GA32701@grsecurity.net>" ("<20170619152843.GC7769@localhost.localdomain>" "<14558692.afnJ5aRU9J@wanheda>" "<20170621122526.GA32701@grsecurity.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29957 invoked by uid 550); 21 Jun 2017 22:19:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25788 invoked from network); 21 Jun 2017 22:15:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=qualys.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=oicJ+ZJv3sfuz7XteewQ/gwyCGtRRMfpR6mSQekz5m0=;
        b=YFDpeCsITnN5D6sTet4/fU3h3R7b1VtkeX1i2MQaB6MWGjfWR9OICWDqOk+qF7kWHT
         c6k9AE5UdMzuwnTIO/AvewwTUJS/g6Mv/3wOTGyN4+ScC1TZ7OGZ7m2jvcQKKRgl9zXJ
         QEIgk2yFwaeVZA/K0iGhkUcL0aDDZ6RFHyL3oZpTj2Bdf3+g1XM1FFbHJOSw+apaUZVY
         KDLT0yKc1NjY/JqpVf4XAEUpHsWHSYZqsUh4W4VVgJfh03PBuxpjgj0UzbwyDcB+l5uE
         HKrtOCfKi3L503Zu9lLNVlxK2XJcZBGZlWZrfQc9MgrxUzdxuZOZXEFXXhxIqdvITB1C
         a4gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=oicJ+ZJv3sfuz7XteewQ/gwyCGtRRMfpR6mSQekz5m0=;
        b=PLa5vuDZ7PauNie9yIGe82Vz+pfA6Tgco/0N6r75rs01SRQPfj+e0uctYdQKzJU4EU
         1DOjrsiNprLmD20YU1CZiNdwK3fUGVr18X9pb2h2P6QwrSd4cLslwC4atD1VZAu1E1Pa
         td1OOF2ab2hAUpDrnykqm3UHek3AegnczbXgx4j/Rj63XVx6CGeBs2F4W0nPz4F1Ehqm
         UNuCwzNdxW2NURYmyN/dWffVRiHWKgqvuC+j6/KYPmU8eosawZNs6q28nLznssPLGa+E
         Hram3Y6vTBzaLKCFuhRNi17gotydM2f9qocpQy8VGxiZrf3xcPAKe63XKKEwoSQ+/ROX
         Pfhw==
X-Gm-Message-State: AKS2vOxJpvN2z73CqWDTmKd9vGqTNeGYb0+c7HbiBu5jmPXzS5BwErKf
	luhYFwQlqXbEnJtVS5w=
X-Received: by 10.101.90.6 with SMTP id y6mr39850087pgs.252.1498083321182;
        Wed, 21 Jun 2017 15:15:21 -0700 (PDT)
Message-ID: <20170621221511.GC28151@localhost.localdomain>
References: <20170619152843.GC7769@localhost.localdomain>
 <14558692.afnJ5aRU9J@wanheda>
 <20170621122526.GA32701@grsecurity.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170621122526.GA32701@grsecurity.net>
Cc: Theo de Raadt <deraadt@openbsd.org>
Date: Wed, 21 Jun 2017 15:15:11 -0700
From: Qualys Security Advisory <qsa@qualys.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com

Hi Brad, Theo, all,

On Wed, Jun 21, 2017 at 08:25:26AM -0400, Brad Spengler wrote:
> OpenBSD publishing this commit
> ...
> What's the official
> explanation for this, and is any action being taken for what I assume is a
> member of the private list breaking the embargo?

OpenBSD is not a member of distros@, and we therefore contacted them
separately: we tried a first time on May 3, then a few times after that,
and on May 12 we received a reply.  On that same day, and before we sent
them our advisory draft (OpenBSD part only), we asked them if they would
accept an embargo until May 30, and they accepted.

On May 13 they acknowledged receipt of our advisory draft, on May 17 we
sent them our proof-of-concept, and on May 18 we were notified by a
distros@ member that OpenBSD publicly patched their qsort(), and on May
19 we were notified by another distros@ member that OpenBSD publicly
patched their stack guard-page implementation.

On May 19 we asked OpenBSD for an explanation as to why they broke the
embargo, and on May 21 we received a mail from them but no explanation.

However, instead of dwelling on the past, we would like to ask an
important question about the future:  what should we do the next time we
(or other researchers) discover a vulnerability that affects OpenBSD and
other operating systems?  Will OpenBSD properly enforce the next
embargo?  Please advise.  Thank you very much!

With best regards,

-- 
the Qualys Security Advisory team
