X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3682" "Tuesday" "22" "November" "2016" "10:17:24" "-0500" "Scott Arciszewski" "scott@paragonie.com" "<CAKws9z3xksc=cvW-Zm==jfUZOX1zyNEeC7OZ4BSXXQ54d=1F5w@mail.gmail.com>" "96" "Re: [oss-security] WordPress (all versions): SPOF, RCE, and Negligence" "^Date:" nil nil "11" "2016112215:17:24" "[oss-security] WordPress (all versions): SPOF, RCE, and Negligence" (number mark "        scott@parago Nov 22   96/3682  " thread-indent "\"Re: [oss-security] WordPress (all versions): SPOF, RCE, and Negligence\"\n") "<20161122111332.4a850849@pc1>" ("<CAKws9z3H+VFO6kO-bEPMtyomuyyumx69+hzB7UUAxpg2o6dT8A@mail.gmail.com>" "<20161122111332.4a850849@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26403 invoked by uid 550); 22 Nov 2016 15:17:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26382 invoked from network); 22 Nov 2016 15:17:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paragonie-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=5RNNjXs1OQUGUOcQgh1yIvidsWk9Zt88ZGEidzhtvQI=;
        b=Brp/ZmijkIPRThzF1WjnFyVAG81f/Qn3FI5iw2eaw7AuRmooPT1kI5WPWO7aix34zp
         6GC4PrBrx0IRy6j1WO702oU2cve0ge4in13tQgm2DS3knsN+Sj/wxC8gE5nS+DinZwdR
         /bK2JwOLtna3UV4RuuvkcXGK5EovAYkr40dbp45+Z0akMwaJDKWNMWN+AbYdv0DJYtHF
         xnGiyQdULSabU0hgnY0fGZ5bVSADCfhexY6VtSZCf1gR/U3XK/cNnU3D6gAUOkLL0RP5
         5XBcp0HReniP5Tb9OPBoDj5qlJ+G1PyIogstdmDpr4MCh+13iHZs03oPeKK855vSwJXW
         oEQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=5RNNjXs1OQUGUOcQgh1yIvidsWk9Zt88ZGEidzhtvQI=;
        b=DqmzAx3ehdn1lmmzmJ52G5sTDHCbzJcxY0zxRwygE5OVHJwE5DWh+yzvYh9dLOrxn0
         C5dIjc0rAtpVaLPCcICB2bW/4nAFkAZeaUm+9qVvxUGr0sL3yIAAp4w0hppw+Hi7c5t2
         bLOmdkm8AQl93kvmM0tFMab/lqEze0sfyAnjpz3gLL4tTeMO56dlQJeXIZQWGcOmSGlL
         FEmqzeZsjIwDtdnFa1utwV9tdWfcnypTAiNpqlzWhhsyJnoiG+3EYScPo+DahfRHZRYw
         FdnVsrODivqioF5XWXb//DBsiKGeSWOjJUnVt5xTT2Kq2K6FjXD6mxupWyZpHaaKfF64
         2TBA==
X-Gm-Message-State: AKaTC00/MDMorClbMlrebnlbXd4avYCMwOBee58xAB21y0zavkOUbr7n7xE6StqF3r+StOioM5w2N4+BCLVN2A==
X-Received: by 10.157.56.225 with SMTP id k30mr14582017ote.22.1479827844985;
 Tue, 22 Nov 2016 07:17:24 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20161122111332.4a850849@pc1>
References: <CAKws9z3H+VFO6kO-bEPMtyomuyyumx69+hzB7UUAxpg2o6dT8A@mail.gmail.com>
 <20161122111332.4a850849@pc1>
Message-ID: <CAKws9z3xksc=cvW-Zm==jfUZOX1zyNEeC7OZ4BSXXQ54d=1F5w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 22 Nov 2016 10:17:24 -0500
From: Scott Arciszewski <scott@paragonie.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] WordPress (all versions): SPOF, RCE, and Negligence
To: oss-security@lists.openwall.com

On Tue, Nov 22, 2016 at 5:13 AM, Hanno B=C3=B6ck <hanno@hboeck.de> wrote:
> Hi,
>
> Sorry, but I find a lot of your statements very questionable.
>
> On Mon, 21 Nov 2016 11:54:33 -0500
> Scott Arciszewski <scott@paragonie.com> wrote:
>
>> Consequently, the WordPress update server is one of the largest single
>> points of failure (SPOF) on the Internet.
>
> Yeah, just like the update servers from Microsoft (which are definitely
> a bigger POF). Or Apple. Or Google. Or Samsung. Or Mozilla.
>
> Granted, having signatures as an additional protection on top of TLS
> improves security, but it's an unfortunate fact that update
> infrastructure is a big attack surface and a complicated problem.
> Signatures can only change a single point of failure to two points of
> failure.
> The solution is probably something along the lines of transparency logs
> and for binary software reproducible builds, but nobody has anything in
> that space that works today.
>
> Wordpress could do better in terms of security with some issues, e.g. I
> find it disappointing that they don't seem to show any interest in
> deploying CSP.
> But the fact that Wordpress has auto updates at all imho puts it
> in front of every other CMS out there in terms of security.
> For all the others they basically expect their users to manually
> install updates, sometimes within hours as could've been seen with
> every RCE in joomla or drupal that was discovered in the past.
> Wordpress having an auto update has probably protected millions of
> webpages from being compromised.
>
>
>
> --
> Hanno B=C3=B6ck
> https://hboeck.de/
>
> mail/jabber: hanno@hboeck.de
> GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

Hi Hanno,

I'm glad you brought these points up. The subject of secure code
delivery is a thorny problem that I've thought about a lot, and I'm
glad to hear similar issues from cryptography researchers --
especially ones whom I respect.

> Granted, having signatures as an additional protection on top of TLS
> improves security, but it's an unfortunate fact that update
> infrastructure is a big attack surface and a complicated problem.
> Signatures can only change a single point of failure to two points of
> failure.

Quick aside: From
https://paragonie.com/blog/2016/10/guide-automatic-security-updates-for-php=
-developers#elements-automatic-updates
(linked in my initial email), I outlined the elements of a secure
automatic update system. They are (for the sake of permanent record
here)...

1. Offline Cryptographic Signatures
2. Reproducible Builds
3. Decentralized Authenticity / Userbase Consistency Verification
4. Transport-Layer Security
5. Mirrors and Other Availability Concerns
6. Separation of Privileges

I'm fully in agreement that offline signatures alone are not enough.
However, it's the most straightforward addition to their protocol to
satisfy one of these requirements.

> The solution is probably something along the lines of transparency logs
> and for binary software reproducible builds, but nobody has anything in
> that space that works today.

Binary software reproducible builds isn't entirely relevant to PHP
development (the closest we have to a binary is a PHP Archive, or
Phar), but on the note of "nobody has anything in that space that
works today", see:

* https://paragonie.com/blog/2016/05/keyggdrasil-continuum-cryptography-pow=
ering-cms-airship
* https://paragonie.com/project/pharaoh

I apologize if anything I said in my initial email implied that
signatures were enough. They're just the first step towards a
resilient solution.

With respect,

Scott Arciszewski
Chief Development Officer
Paragon Initiative Enterprises <https://paragonie.com>
