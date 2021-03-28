X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4183" "Sunday" "28" "March" "2021" "18:35:29" "+0000" "Mark J Cox" "mark@openssl.org" nil "85" "Re: [oss-security] OpenSSL 1.1.1 CVE-2021-3450 CA certificate check bypass with X509_V_FLAG_X509_STRICT, CVE-2021-3449 NULL pointer deref in signature_algorithms processing" nil nil nil "3" nil nil (number mark "U       mark@openssl Mar 28   85/4183  " thread-indent "\"Re: [oss-security] OpenSSL 1.1.1 CVE-2021-3450 CA certificate check bypass with X509_V_FLAG_X509_STRICT, CVE-2021-3449 NULL pointer deref in signature_algorithms processing\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] OpenSSL 1.1.1 CVE-2021-3450 CA certificate check bypass with X509_V_FLAG_X509_STRICT, CVE-2021-3449 NULL pointer deref in signature_algorithms processing" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6093 invoked by uid 550); 28 Mar 2021 18:51:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22241 invoked from network); 28 Mar 2021 18:35:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=openssl.org; s=dkim-2020-2;
	t=1616956541;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=vsJftsxLuOjoy8uP/pBV5bEfnLzsytIh9OpFAht1jzU=;
	b=lDQYtYzNc5M7bEwN7RBhJ6RoCwaVZdGTgjy0ip7HKza86TGr71jQMpu0urvM4JJcMTOWx0
	1pbMvZrV4yb1AShK42Vl5WngGg8NQvZ1oQUYrWxmH2BxXE2zEJoPxNt4x/moRkmK3CrQxj
	IeJ86wjUrgBgS9Bxd/JMidcQ4WwteQuU4zwzWl0tcvFAKO2dsLyEc7vT7WtIBpUprkj7Fk
	xwepnkHJ8l2BMysvC5RZhJgbgy6uhj3NEOjqxrJazfjuUsCsNxyKRR5+1SQIzirq7QjiI2
	/BZfvuuXpOqZT+qJU+xsXENFlzAKBbY+W8pnTlILB0Up0Oq2ODg27yuSmvb9Qw==
X-Gm-Message-State: AOAM532euGKDgRK4OL2J/YRO4akA31TFspPg/pb5ZnBrzAN7CLLKirzT
	wooIVVCwvvoTckQxxG2SlnkiUcjmZbtpPaLExf8=
X-Google-Smtp-Source: ABdhPJyC+Ls4EAbFpzYtbG2958IAaFMJU0tOs6cuhwTmcScwyCQpMhahKnC9TwpY7aGfKXQaelHGgXGFVy0Eo/KL200=
X-Received: by 2002:a92:3003:: with SMTP id x3mr17852584ile.124.1616956539929;
 Sun, 28 Mar 2021 11:35:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210327180255.GA12647@openwall.com> <CANnUo4LFUr3Ou8ofA8saEn9TASDvASQvk8-grg3gQSuwqYaFoA@mail.gmail.com>
In-Reply-To: <CANnUo4LFUr3Ou8ofA8saEn9TASDvASQvk8-grg3gQSuwqYaFoA@mail.gmail.com>
From: Mark J Cox <mark@openssl.org>
Date: Sun, 28 Mar 2021 18:35:29 +0000
X-Gmail-Original-Message-ID: <CABU6YOakUYGG7UAbUe0kZ5j5QfM2x9NytNzri8m4Ei0LaJRXeg@mail.gmail.com>
Message-ID: <CABU6YOakUYGG7UAbUe0kZ5j5QfM2x9NytNzri8m4Ei0LaJRXeg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000002e097405be9d0828"
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=mark smtp.mailfrom=mark@openssl.org
Subject: Re: [oss-security] OpenSSL 1.1.1 CVE-2021-3450 CA certificate check
 bypass with X509_V_FLAG_X509_STRICT, CVE-2021-3449 NULL pointer deref in
 signature_algorithms processing

--0000000000002e097405be9d0828
Content-Type: text/plain; charset="UTF-8"

The usual process for OpenSSL pre-notifications (as per our security policy
at https://www.openssl.org/policies/secpolicy.html ) is to give a heads up
message to the private distros list and ask vendors who want details to
reconfirm they will abide by the embargo guidelines.  For those that do, we
then add to a private github fork where they can view the advisory and
patches and also comment (since the comments and testing from such
packagers are very valuable in making sure we get the right fix the first
time).

However this time we faced a little bit of a time crunch, we want to get
fixes for High issues out as soon as we can, but with the Easter public
holidays looming for several of our team, and some already pre-planned
OpenSSL team holidays, we decided to give less than our usual one-full-week
prenotification.  Usually that process of waiting for responses takes an
extra trip around the sun due to timezones, so I decided to skip it and
added all the same folks who had access to the last issue to this issue,
and the mail to distros@ asked the members to let me know if I needed to
make any add/remove changes to that list.  Those who accessed the link were
reminded of the embargo and guidelines in a few places.

We were alerted to the Wind River security advisory being public by a
vendor after they saw a tweet about it.  The page stated there were two
issues, gave the CVE names for the two issues, and gave the one line
description of each issue.  It also, as you stated, listed the commit
hashes and the URL to the private github advisory and fork.  However those
commits and the URLs were part of the private github branch therefore
protected and only accessible to the specific github ids for the vendors
we'd added.

At that point we were only 24 hours away from the scheduled release date,
and the extra details on the page were not sufficient for us to call the
embargo broken nor to bring forward the release date.  We did however ask
Wind River to remove the page and provide an explanation, which they did.
We continued to monitor to see if the CVE names were being discussed in
case we had to change the plan.  The final publication and hence end of the
embargo happened to the planned schedule.

Mark


> On Sat, Mar 27, 2021 at 6:05 PM Solar Designer <solar@openwall.com> wrote:
>
...

> So I'd appreciate an explanation/statement from Wind River on what
>> happened and what measures, if any, are being taken to prevent this from
>> happening again.  I'd also appreciate a comment from OpenSSL.
>>
>> The leak was on a web page archived here:
>>
>>
>> https://web.archive.org/web/20210324105700/https://support2.windriver.com/index.php?page=security-notices&on=view&id=7055
>>
>> As I recall, the private GitHub links in there gave me "404 Not Found"
>> soon after the windriver.com link (which was live at the time, not
>> needing archive.org) was sent to the distros list by a concerned fellow
>> distro.  This means that either OpenSSL promptly brought them down or
>> they were only ever accessible under appropriately privileged GitHub
>> accounts.  In the latter case, the existence of that web page with its
>> content might not have been that much of a leak, as in addition to the
>> public pre-notification the web page only contained CVE IDs and one-line
>> vulnerability titles and commit hashes and those GitHub links.  If the
>> actual commits and the links were never publicly accessible, then it
>> wasn't that much of an issue and reasonably didn't require considering
>> the embargo broken.
>>
>> Another concern I have is that I have to write this to ever hear from
>> Wind River.  I'd have expected them to comment on the distros list the
>> moment this was brought up in there - but they kept silent.  Did they
>> even see the message?  (Of course, I could ask privately, but the
>> concerns are already public and we need to discuss this in public.)
>>
>> To summarize, this is probably not a big deal, but let's figure out what
>> happened and what can be done better next time.
>>
>> Thanks,
>>
>> Alexander
>>
>

--0000000000002e097405be9d0828--
