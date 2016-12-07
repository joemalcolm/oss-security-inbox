X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["577" "Wednesday" "7" "December" "2016" "14:37:58" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20161207133758.GA25762@lorien.valinor.li>" "22" "Re: [oss-security] Re: CVE-2016-8655 Linux af_packet.c race condition (local root)" "^Date:" nil nil "12" "2016120713:37:58" "[oss-security] Re: CVE-2016-8655 Linux af_packet.c race condition (local root)" (number mark "        carnil@debia Dec  7   22/577   " thread-indent "\"Re: [oss-security] Re: CVE-2016-8655 Linux af_packet.c race condition (local root)\"\n") "<20161207141515.4f21682f@pc1>" ("<CAHQ_-nTXwwmno6iu2fFRsH+JJwZ4rRT93kf7_eRFtoi00kJK2g@mail.gmail.com>" "<CAHQ_-nTRLMQ21e3DHESbRcJcK3H3DCZGB9yrkx-TeMRi4f5vVQ@mail.gmail.com>" "<20161207141515.4f21682f@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21837 invoked by uid 550); 7 Dec 2016 13:38:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21813 invoked from network); 7 Dec 2016 13:38:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=fIz1CXCLy2O6xN7iI3MyMOWU4N1hWdpt7xigvLSc1os=;
        b=S58yLBRgikIU+v6Qbesz1FqKxtL45lWg1hvIRyhaYLhWhayGcUV2PzALQ6NWXppe/d
         rgfJLDs1F9iTlKDqF160tao49x6Sc/r450xgKqJtnvKOYp4XU14zFfXCSF/w2PTfxWem
         KUkwKN/9qgKpl/wtQtmE2P1oGqjhfyv7Uta91U4HLe7HZ6h/EB4EYH3XAiVEnXhB4d5U
         EVXcnoWqahiOdDN23g0zTSxQ9DGM5EDC55GhMcbDjV95Y22c6Lr2nTKxeuJ7mtcEN9Nr
         mAbk4BYNu4wVBI12DgI8NHXl3Ww/HhAglJ28ziUff116Kq+Ical3Wcs/WZdOsYiXNh2K
         8v7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=fIz1CXCLy2O6xN7iI3MyMOWU4N1hWdpt7xigvLSc1os=;
        b=QiIolSujbmkH0nKapazwekcg8OVKcQk4rPf4I4X+cFV5TKSwnzkK3OuzaAOmqqq3A0
         EmrB1w1y75/ze4uh0MzwLHUwn7cS9AwwXzPyCObFIGleOS74qSV8Me2Wl0+xK8SnRYQh
         gwCuvjIs60+ch+ctRy8NhT0tTow5b7pqSMAdg85ZFN8yTYVm5L8QRBkp2Udnm8ntytH0
         OX/qJSYl1QUihPwTp4PKLXmd6Sm3k63cQgUTI0Q3a4Dl9PwksZu8cJWes9O5pz/ippdz
         zWjdD5eYt0SMIIxtWiTsQzF2tPbXQcJtQUYIVtOCVcmmwXBwfWZXIbN3xp7P/VkharYa
         Xw1g==
X-Gm-Message-State: AKaTC03Wiv2jOCFj4s/BxcGhKlpeEPxpBhtVI9keQQkqYVlFo13SaQYC6VbkCPijXEeaIg==
X-Received: by 10.55.91.193 with SMTP id p184mr58591293qkb.301.1481117882767;
        Wed, 07 Dec 2016 05:38:02 -0800 (PST)
Message-ID: <20161207133758.GA25762@lorien.valinor.li>
References: <CAHQ_-nTXwwmno6iu2fFRsH+JJwZ4rRT93kf7_eRFtoi00kJK2g@mail.gmail.com>
 <CAHQ_-nTRLMQ21e3DHESbRcJcK3H3DCZGB9yrkx-TeMRi4f5vVQ@mail.gmail.com>
 <20161207141515.4f21682f@pc1>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20161207141515.4f21682f@pc1>
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Wed, 7 Dec 2016 14:37:58 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] Re: CVE-2016-8655 Linux af_packet.c race
 condition (local root)
To: oss-security@lists.openwall.com

Hi Hanno,

On Wed, Dec 07, 2016 at 02:15:15PM +0100, Hanno Böck wrote:
> Hi,
> 
> I'm running kernel 4.8.12, which has the fix you pointed out included,
> however:
> 
> > You can also run it with "crash" as the first argument to force a
> > panic.
> 
> running your code with the "crash" parameter reliably panics this
> kernel.
> This doesn't seem right. Is this an incomplete or nonworking fix?

The fix actually should not be included in 4.8.12. It is 

$ git describe --contains 84ac7260236a49c79eede91617700174c2c19b0c
v4.9-rc8~5^2~14

Regards, hope this helps,
Salvatore
