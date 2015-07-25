X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1173" "Saturday" "25" "July" "2015" "14:18:05" "-0700" "Michal Zalewski" "lcamtuf@coredump.cx" "<CALx_OUB2WodQCwYW3VvfJGKq59Yy3VtDA4q9sJaiph3AqFVLwQ@mail.gmail.com>" "25" "Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" nil nil nil "7" "2015072521:18:05" "[oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" (number mark "        lcamtuf@core Jul 25   25/1173  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser\"\n") "<87wpxo9ck7.fsf@lysator.liu.se>" ("<20150723170954.GA17931@localhost.localdomain>" "<87h9oud89s.fsf@lysator.liu.se>" "<CAHQ_-nR8WGDK58PmsmhPp8ApnmwjrLRxeyCKTsfRL83ZUZjTxA@mail.gmail.com>" "<871tfxdgzw.fsf@lysator.liu.se>" "<55B22C72.4020706@tillo.ch>" "<874mktb7xv.fsf@lysator.liu.se>" "<875603C9-F2F1-4D25-A081-503D870A5FEB@shub-internet.org>" "<87wpxo9ck7.fsf@lysator.liu.se>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6059 invoked by uid 550); 25 Jul 2015 21:18:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6041 invoked from network); 25 Jul 2015 21:18:36 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=YI3zSNFJORj5OZvpcTNjSli64ec+U6EMthIt3GP4BN0=;
        b=N4bpm0pMozCjsuVvTzCW+ZZQ2B+3ZSL+kKMIsDCWAPigxbxP6Dm9h3iThJFxzXQL//
         hr4Ra/JAEB8v45cde/wnTyaQQQGa2uY/lR1YMESH6dcNVuYDLQnIfUXa20ZSszgdDK9p
         NT52K4eC1yM+0i6EDxyG/APAq7Hkx9kgyfXucdw/AyYhs1h+2WmOIrRh2ocUY0kFaiFX
         s02nEnr4JX9O0ZYv+6L9nYOu0YOi5OvH6d0k9ew9XVCcVlhqL67rp2Y2Cv5ka1O5huns
         fH9qvtdFpqxp8xOmXKrq2ultckGxxxC0wnNtiNCSZ85Wb3cKkuQuLuBvkFfLgqrjJb+2
         HbuA==
X-Gm-Message-State: ALoCoQmhPqbj2vdfP2dB83ydX/rhcNy5U+xDNHhFSjrzN+dmYQT55UVFDbAP1zNNBzpHUfHRDNpd
X-Received: by 10.202.88.66 with SMTP id m63mr20168945oib.47.1437859104800;
 Sat, 25 Jul 2015 14:18:24 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <87wpxo9ck7.fsf@lysator.liu.se>
References: <20150723170954.GA17931@localhost.localdomain> <87h9oud89s.fsf@lysator.liu.se>
 <CAHQ_-nR8WGDK58PmsmhPp8ApnmwjrLRxeyCKTsfRL83ZUZjTxA@mail.gmail.com>
 <871tfxdgzw.fsf@lysator.liu.se> <55B22C72.4020706@tillo.ch>
 <874mktb7xv.fsf@lysator.liu.se> <875603C9-F2F1-4D25-A081-503D870A5FEB@shub-internet.org>
 <87wpxo9ck7.fsf@lysator.liu.se>
Message-ID: <CALx_OUB2WodQCwYW3VvfJGKq59Yy3VtDA4q9sJaiph3AqFVLwQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Sat, 25 Jul 2015 14:18:05 -0700
From: Michal Zalewski <lcamtuf@coredump.cx>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - CVE-2015-3245
 userhelper - CVE-2015-3246 libuser
To: oss-security <oss-security@lists.openwall.com>

> Frankly, over the years I have seen pretty few people on the side of the
> angels complain that "But *why* didn't you include a weaponized exploit
> with your advisory? I feel so cheated!".

AFAICT, virtually all the open-source and closed-source security
testing tools are dependent on the availability of this information;
this certainly includes Nessus, most web security scanners, most AV
software, etc.

> In these situations, where an exploit for a new local root vulnerability
> turned up without prior warning, we typically started seeing root-level
> incidents within 24 hours. Have you ever tried to get big organizations,
> made up of a zillion independent entities, to apply security patches
> within a timescale of hours?

Would you choose not to do this in situations where no public exploit
is available, and therefore you would be unlikely to see the
immediately evident nuisance attacks described in your message?

Starting with the premise that the disclosure of security bugs makes
computer systems more vulnerable to attacks, would it be preferable to
completely discourage sharing vulnerability information with the
general public? If not, why?

/mz
