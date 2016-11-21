X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4277" "Monday" "21" "November" "2016" "17:32:32" "+0000" "Ben Tasker" "ben@bentasker.co.uk" "<CABMkiz5wp5gA=7vV6QAkV4HWUooun3-CcxjqOYqxTLLdBxwwVQ@mail.gmail.com>" "108" "Re: [oss-security] WordPress (all versions): SPOF, RCE, and Negligence" "^Date:" nil nil "11" "2016112117:32:32" "[oss-security] WordPress (all versions): SPOF, RCE, and Negligence" (number mark "        ben@bentaske Nov 21  108/4277  " thread-indent "\"Re: [oss-security] WordPress (all versions): SPOF, RCE, and Negligence\"\n") "<CAKws9z3H+VFO6kO-bEPMtyomuyyumx69+hzB7UUAxpg2o6dT8A@mail.gmail.com>" ("<CAKws9z3H+VFO6kO-bEPMtyomuyyumx69+hzB7UUAxpg2o6dT8A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13776 invoked by uid 550); 21 Nov 2016 17:44:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8062 invoked from network); 21 Nov 2016 17:32:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bentasker.co.uk; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=YjiPmToHf5PWMEERQgA9T3Vh5R3Qfbao9afx31WIAIU=;
        b=AyR5kFlBsOiwMzTHkNZ5eyf1H5NyATjg/REOM26+D+i+oWmrubUa0voqh+FpvXNCan
         9HlORLAI57vJ1XBbubjIWEdYU2LqS7Shrba9HMbe4JnyOxMLwwqQaYlyO+i6sqjp61c6
         L/29/dZhduyvSNpA63Z9wBRrsyl73TdlcMNK8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=YjiPmToHf5PWMEERQgA9T3Vh5R3Qfbao9afx31WIAIU=;
        b=fge1Xdp3nhG/4naV+hnWIslTSugrCSBLIGCRdcNfwz5ocA6tc52Tb06u52kmDTO5qD
         skQGVQcY8SqVu1XuhMlrwpfdJdUl2RB3w0osanMVzYjvLuDq5gbWzq0chSHOfePk6suu
         JAKdF8RX6kvufePjNDJJszMw7wLC/3qBROB8F7RG/3qHNxcD+HbPtJVHCnvaP9yRh+nz
         gEaguNTijZpLFQ6nttJBXEDrIb8HZdUE6rSNfafGChgttJap8IeScZxsfB2MIhhI9QF/
         DEKlwGYICh5+LwI8X1xY3g41OregIsmGk4y0JqIYwgUtAcRlPzO7BQZwBzUDDKAeKwxr
         zqNg==
X-Gm-Message-State: AKaTC00L+kamje4cDZnz8+wiG/ywzbX0kDVjs3HMpNCIvzAwc7OMs0vGpDI91F3LDvubM9CA7xJn5m7CdNLZCg==
X-Received: by 10.25.18.90 with SMTP id h87mr3651757lfi.91.1479749553174; Mon,
 21 Nov 2016 09:32:33 -0800 (PST)
MIME-Version: 1.0
X-Originating-IP: [137.221.138.2]
In-Reply-To: <CAKws9z3H+VFO6kO-bEPMtyomuyyumx69+hzB7UUAxpg2o6dT8A@mail.gmail.com>
References: <CAKws9z3H+VFO6kO-bEPMtyomuyyumx69+hzB7UUAxpg2o6dT8A@mail.gmail.com>
Message-ID: <CABMkiz5wp5gA=7vV6QAkV4HWUooun3-CcxjqOYqxTLLdBxwwVQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113fa75c794cab0541d30a67
Date: Mon, 21 Nov 2016 17:32:32 +0000
From: Ben Tasker <ben@bentasker.co.uk>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] WordPress (all versions): SPOF, RCE, and Negligence
To: oss-security@lists.openwall.com

--001a113fa75c794cab0541d30a67
Content-Type: text/plain; charset=UTF-8

> Up the minimum PHP version to at least 5.6.0.

I assume you're talking about the PHP versions that Wordpress supports (as
opposed to on their update server?).

Such sweeping version checks do not work well with Stable distributions.
Given that most web hosts use stable distros, implementing such a
requirement would lock Wordpress out of a substantial proportion of their
target market:


CentOS 6 will continue to be supported until Q2 2017, with maintenance
releases until 2020. The version in the repos is 5.3.3 with security
backports

Debian Wheezy 5.4.45 (again with security backports) and will be supported
until 2018.


An important question, of course, is whether the issues fixed in PHP 5.6.0
were correctly marked as security fixes (and as a result backported by the
distro maintainers)

There was a similar issue a while back where Joomla! decided to run a
version check to ensure PHP version was >= 5.3.10. It broke a number of
sites, and the most common fix seems to have been a core-hack to disable
that check. The logic for inserting that check was reasonable, but lacked
consideration of who the market actually is.

The alternative is that hosters move onto more bleeding edge distro's, and
I'm not convinced that's good in the long term.

On Mon, Nov 21, 2016 at 4:54 PM, Scott Arciszewski <scott@paragonie.com>
wrote:

> This is the function that fetches downloads from the WordPress update
> servers: https://github.com/WordPress/WordPress/blob/
> f5b6731777bbd1dfe290867d2240a2a68e2f0cf1/wp-admin/includes/
> class-wp-upgrader.php#L252-L283
>
> The only verification it offers is an MD5 checksum, which is sent by
> the server that also serves the file:
> https://github.com/WordPress/WordPress/blob/eeefec932f3d4f3b50369f6523c2cd
> 8fad3d467f/wp-admin/includes/file.php#L482-L525
>
> At no point lower in the automatic update process is a cryptographic
> signature verified. The update server is trusted explicitly and
> implicitly by every WordPress website online.
>
> WordPress powers an estimated 26% of websites on the Internet.
>
> Consequently, the WordPress update server is one of the largest single
> points of failure (SPOF) on the Internet. If you manage to hack their
> infrastructure, you can push a false update to millions of WordPress
> blogs and get reliable remote code execution everywhere.
>
> They are aware of this issue, and have been for years:
> https://core.trac.wordpress.org/ticket/25052
>
> Additionally, PHP before 5.6.0 had terrible SSL/TLS support. It may
> also be possible to get targeted RCE out of a MitM condition due to
> their stubborn insistence on supporting PHP 5.2.4. I need to do more
> research here.
>
> The WordPress culture, for those who are not aware, prioritizes higher
> adoption rates over better security. They see backwards compatibility
> as a usability problem more than a liability.
>
> The WordPress team also promotes the use of the misnomer "responsible
> disclosure" over the more accurate "coordinated disclosure", and
> refuse to entertain suggestions to improve their vernacular.
>
> In short, WordPress is semi-toxic towards improving their own
> security-- mostly out of negligence and stubbornness rather than
> outright hostility (see: OpenCart).
>
> I don't believe there's much chance of fixing this, due to political
> problems rather than technological problems. The first step towards a
> reliable solution would look like this:
>
> 1. Up the minimum PHP version to at least 5.6.0.
> 2. Use openssl_sign() and openssl_verify() with an RSA keypair
> maintained by their team.
>
> A total solution would incorporate all of the elements listed here for
> both core updates and theme/plugin updates:
> https://paragonie.com/blog/2016/10/guide-automatic-
> security-updates-for-php-developers#elements-automatic-updates
>
> Should anyone wish to endure the steep uphill battle to try to get
> WordPress to fix this problem _before_ we see headlines titled
> "WormPress: How your blog was hacked" in the news, godspeed.
>
> Scott Arciszewski
> Chief Development Officer
> Paragon Initiative Enterprises <https://paragonie.com>
>



-- 
Ben Tasker
https://www.bentasker.co.uk

--001a113fa75c794cab0541d30a67--
