X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3813" "Thursday" "6" "July" "2017" "09:57:25" "+0100" "Ben Tasker" "ben@bentasker.co.uk" "<CABMkiz61DeoXuSYd5yRBYRXmVbAenFduHNJAWC0ATijPHQ=xQg@mail.gmail.com>" "82" "Re: [oss-security] systemd fails to parse user that should run service" "^Date:" nil nil "7" "2017070608:57:25" "[oss-security] systemd fails to parse user that should run service" (number mark "        ben@bentaske Jul  6   82/3813  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<20170705215814.4wyzvq2deid4ln7q@perpetual.pseudorandom.co.uk>" ("<a8a90fab-58af-da5e-2697-e17ef034e906@oracle.com>" "<20170705200345.GA1671@pali>" "<20170705215814.4wyzvq2deid4ln7q@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32716 invoked by uid 550); 6 Jul 2017 10:22:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28276 invoked from network); 6 Jul 2017 08:57:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bentasker.co.uk; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=9Nu9QqnRpP52nXnqGWNVj+YUHXVBh1RNGsITIUHzKdY=;
        b=e3ZPIxQLd2er/dE3Y5KBkG1yxu4dpx1qMJzkQ2oyeg9m0ZA9ErW0FJvOsbSlJWaeSi
         2+/e3SeSCq5N9jdLdfYYgnB5Zp3EV8dVgP+fFZ2BTNYoqms/GZhtDzMwke6OOJ2MV/y1
         HMu181Rs7bAhjRSg9mH3JqGuKV8f0RSsaFjZ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=9Nu9QqnRpP52nXnqGWNVj+YUHXVBh1RNGsITIUHzKdY=;
        b=LL9V6pYXeJEHZjjrIPIxnBprBm7I6SdWcJ0CIweB1xhKMoAkFKg8BZycQKlz+kSrcS
         mQz82KbCWRpDQc1qgt2BfdsauE8LJ7sj52T/z1E5xKEZa2acdlmE2PFcQHUjdZfPRkRT
         qCOR0IPWO0TZ0wvYuegXIlsAqO8efHS4BKRMgmTwzRRCGbq0ABVd/mq+mAgJ/2ir9uta
         lAzJjhzVh8MNsPEb/H/d6R2LG6wXnUN7pi9S3wenmgRn9DH71wkibMXKZ25ZNe+T0ilu
         BVuyDXKDLodkmTjRyXMAsmEWRbL2dxjqTDHBGitsK051OApwL3bWM40Egp54EyV57vx6
         yJtg==
X-Gm-Message-State: AKS2vOxyCxdpoWBxKM9v/19ferfHegePNPvDMOkm0QocHn0947CpXuUx
	ruA3PwUrKNjdajPy21ZN9im97UrRb5Ei
X-Received: by 10.202.212.65 with SMTP id l62mr35470133oig.65.1499331446625;
 Thu, 06 Jul 2017 01:57:26 -0700 (PDT)
MIME-Version: 1.0
X-Originating-IP: [178.62.118.116]
In-Reply-To: <20170705215814.4wyzvq2deid4ln7q@perpetual.pseudorandom.co.uk>
References: <a8a90fab-58af-da5e-2697-e17ef034e906@oracle.com>
 <20170705200345.GA1671@pali> <20170705215814.4wyzvq2deid4ln7q@perpetual.pseudorandom.co.uk>
Message-ID: <CABMkiz61DeoXuSYd5yRBYRXmVbAenFduHNJAWC0ATijPHQ=xQg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a113df3e646f5110553a24e82"
Date: Thu, 6 Jul 2017 09:57:25 +0100
From: Ben Tasker <ben@bentasker.co.uk>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run service
To: oss-security@lists.openwall.com

--001a113df3e646f5110553a24e82
Content-Type: text/plain; charset="UTF-8"

On Wed, Jul 5, 2017 at 10:58 PM, Simon McVittie <smcv@debian.org> wrote:
>
> Not every bug is a security vulnerability (not even the really bad
> ones). At the moment, there is a strong correlation between security
> vulnerabilities with CVE IDs, and issues for which there is consensus
> among relevant upstream and downstream developers that the issue is in
> fact a vulnerability for which a prompt security update is necessary. I'm
> becoming concerned that if the working definition of a vulnerability
> gets stretched too far towards things that are "just a bug", it will
> reduce the perceived importance of fixing CVEs promptly, harming the
> overall level of security in software.
>
>
Whilst I agree with you in the general sense on this, I'm not sure it's
applicable to this particular issue.

If this issue is triggered, then a process will run with substantially
elevated privileges compared to those that would be expected based on a
review of the unit file (or indeed, the installing package).

For some distro's, it might stand out immediately as a mistake (as they
also prohibit usernames beginning with a digit), but for others (EL7 is
referenced in the Github issue) it won't, because the username is
considered valid.

So, as a result, you've potentially got a daemon listening for connections
from the outside world, whilst running as root (despite the fact you're
expecting it to run as an unprivileged user). If someone can convince that
daemon to run arbitrary code, it does so with superuser privileges.

IMHO the discussion on how that unit file makes it onto the system in the
first place is an irrelevant distraction.

Mistakes happen, whether that's a package reviewer missing the connotations
of the *valid* username in the unit file, or some eejit leaving a unit file
world writeable (I've seen kernel modules with 0777 on public facing
production systems in the past). There is, of course, all kinds of other
nastiness you could do in the case of the latter, but the issue in SystemD
contributes a nice subtle means to gain root privileges without changing
anything too much (reducing the risk of subsequent detection).

It may depend on additional prior mistakes, but there's a lot you could
potentially do with this, and unless you know to look for it, it's not
going to be particularly easy to detect. Assuming it's safe (for a given
measure of) because it needs other mistakes to happen, is, at best, unwise.

So personally, I'd argue that this is more than "just a bug" as there *are*
real-world security connotations to it, and issuing CVE's for issues that
require something else to be exploited first isn't a new concept.



> On Wed, 05 Jul 2017 at 13:27:17 -0700, Alan Coopersmith wrote:
> > Honestly, given the level of flaming and trolling that happens on issues
> > like this, locking the report is the only sane option I can see once
> > everyone started piling on.   Forcing FOSS maintainers to accept infinite
> > amounts of shitposting is a horrible way to reduce security by burning
> > out all FOSS maintainers quickly and leaving software abandoned.
>
> I have little to add to this, but I couldn't resist a "me too" here,
> because I think Alan's point is very important. Maintainers can't be
> expected to behave in a professional and effective way if their working
> environment is consistently hostile.
>
>
+1

And in their defence, I would add that SystemD, for various reasons, does
attract a lot of vitriol. I'm sure a good chunk of it is perceived as
well-deserved by those directing it, but the knock on effect is that other
issues wind up getting locked far earlier than they perhaps should (IMO).



-- 
Ben Tasker
https://www.bentasker.co.uk

--001a113df3e646f5110553a24e82--
