X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3653" "Monday" "21" "November" "2016" "14:24:40" "-0500" "Scott Arciszewski" "scott@paragonie.com" "<CAKws9z2UE3koezOFsRzauDtsAC1aOm_kfkJYDc=P8wXJxRggRA@mail.gmail.com>" "73" "Re: [oss-security] WordPress (all versions): SPOF, RCE, and Negligence" "^Date:" nil nil "11" "2016112119:24:40" "[oss-security] WordPress (all versions): SPOF, RCE, and Negligence" (number mark "        scott@parago Nov 21   73/3653  " thread-indent "\"Re: [oss-security] WordPress (all versions): SPOF, RCE, and Negligence\"\n") "<CANvqVdr4d8C_04Php5iP78eMfZOtat2a6LuCoqVXHojB1HE5yw@mail.gmail.com>" ("<CAKws9z3H+VFO6kO-bEPMtyomuyyumx69+hzB7UUAxpg2o6dT8A@mail.gmail.com>" "<CABMkiz5wp5gA=7vV6QAkV4HWUooun3-CcxjqOYqxTLLdBxwwVQ@mail.gmail.com>" "<CANvqVdr4d8C_04Php5iP78eMfZOtat2a6LuCoqVXHojB1HE5yw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26352 invoked by uid 550); 21 Nov 2016 19:24:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26334 invoked from network); 21 Nov 2016 19:24:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paragonie-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=F6u9L5RIXG5q5Uj5ahSwApB8wRSiavyEvfMIcj+kX58=;
        b=FnErTuXl7DYNO12EmhFgaodNM2zCGFOas/HEUz9YfX3rt35D9kmaEbeGMaDi3PzE8E
         oAMJRzcEk6m4Zqt2HyFnh+7rIivuWwxpfkMfwCHRGQCdY8VrpnENq3n/njGmPpZ7xz1f
         6ctaVq1zPkSeYbDuYLWun2C73FDiUsH9BZKdB8KxQxX8vvlMh/PXv82baqTbMR8I4vdc
         RuTZ6oYy0+hMBhDiT10EF35W9s74HA1XsYK5j57uHDJ4emqqJoq7Gu8tf5jt5TqjxCMr
         9FPBRbzRjFkYT1yP1T93JC8Y120dFRvkoRYCSABsCp5BoHTM6DJwj7U6SRw9uBfudPyb
         2B+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=F6u9L5RIXG5q5Uj5ahSwApB8wRSiavyEvfMIcj+kX58=;
        b=icYSKPHcQGRoZBWVdRESh123irbM7D+fr+IaWVPciGDRdCrWXma2IcqequPJLHyA7b
         WhUMJfaOjOrU0lfg36Jtt8r2Jjmvg5E6s0QKK8udcgbb0OXM+AitqRt9OYc+9HCQjTs7
         k4jIYfoNjQOSmgyp/T8MMkVqgyt25L3d+MXrk8OX0iBZwQXW9aJr3NQsWu+XnveO3utK
         ifVIUbRDZEEcZ/CHjKgUoVdvwLl9TZ3tHWhayGFjCjXPzcpmvjnHhgmskUEnOu/rCOI+
         coK+q36Yv2RvCiaSbfSMgXWZODvOStDxB4f0cewWDvQcTm5Vgmx/gbr/6OeFkaWFiAnH
         5CAQ==
X-Gm-Message-State: AKaTC039jpd6Zbzq2l4aR34ASKDRBUSjP3ZGIoOpIpDo4ttfG+HzoZfhDi1jL70C9TV765pqf5y1ghd6x4eikw==
X-Received: by 10.157.14.210 with SMTP id 76mr9439613otj.71.1479756281365;
 Mon, 21 Nov 2016 11:24:41 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CANvqVdr4d8C_04Php5iP78eMfZOtat2a6LuCoqVXHojB1HE5yw@mail.gmail.com>
References: <CAKws9z3H+VFO6kO-bEPMtyomuyyumx69+hzB7UUAxpg2o6dT8A@mail.gmail.com>
 <CABMkiz5wp5gA=7vV6QAkV4HWUooun3-CcxjqOYqxTLLdBxwwVQ@mail.gmail.com> <CANvqVdr4d8C_04Php5iP78eMfZOtat2a6LuCoqVXHojB1HE5yw@mail.gmail.com>
Message-ID: <CAKws9z2UE3koezOFsRzauDtsAC1aOm_kfkJYDc=P8wXJxRggRA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 21 Nov 2016 14:24:40 -0500
From: Scott Arciszewski <scott@paragonie.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] WordPress (all versions): SPOF, RCE, and Negligence
To: oss-security@lists.openwall.com

On Mon, Nov 21, 2016 at 11:32 AM, Ben Tasker <ben@bentasker.co.uk> wrote:
> I assume you're talking about the PHP versions that Wordpress supports (as
> opposed to on their update server?).

Yes. Raise the minimum PHP version supported by WordPress and get
everyone onto non-EOL'd
versions of PHP. Among other benefits, you can then move every
WordPress blog to use
password_hash() and password_verify() instead of their current
situation (i.e. 8192 rounds of
salted MD5 for password storage).

I'm not kidding.
https://paragonie.com/blog/2016/08/on-insecurity-popular-open-source-php-cms-platforms#wordpress-password-storage

On Mon, Nov 21, 2016 at 1:26 PM, Michael Babker
<michael.babker@gmail.com> wrote:
> On Mon, Nov 21, 2016 at 11:32 AM, Ben Tasker <ben@bentasker.co.uk> wrote:
>
>> There was a similar issue a while back where Joomla! decided to run a
>> version check to ensure PHP version was >= 5.3.10. It broke a number of
>> sites, and the most common fix seems to have been a core-hack to disable
>> that check. The logic for inserting that check was reasonable, but lacked
>> consideration of who the market actually is.
>
>
> While I can somewhat understand why the Linux distributions choose the
> model they use for their "long term support" packages, it honestly does a
> disservice to those of us who now have to defensively code around it.  We
> can no longer rely on a package's version to accurately represent the state
> of the code base.
>
> I was Joomla's release lead at the time this decision was made.  We did not
> arbitrarily choose a PHP version number, arbitrarily locking out vendor
> modified PHP builds distributed with the LTS distros, just because we
> wanted to.  We first attempted to implement bcrypt password hashing using
> feature detection, after hacking the polyfill library to lower its PHP
> minimum from 5.3.7 (which blocked some of its checks) to be able to try and
> support the PHP 5.3.3 build the distros have elected to stabilize on and
> modify.  This effort failed catastrophically, and our project collectively
> decided we could not revert support for bcrypt hashed passwords and could
> not try to support this feature using feature detection mechanisms; it was
> too unreliable and we elected therefore to lock on a version number which
> we knew would satisfy all of our requirements natively.  We could have
> locked to 5.3.7 but elected to bump to 5.3.10 due to the security issues
> fixed between those releases and at that point Ubuntu's LTS was at that
> version so it helped us to make a logical choice.
>
> While I understand where you are coming from, to be quite frank, I don't
> believe the PHP ecosystem and its major players can continue to cater to
> these modified PHP builds as might have been expected in years past.

There is a similar problem with Linux distributions shipping stale
versions of libsodium:
http://stackoverflow.com/questions/40684596/libsodium-for-php-is-not-working

The only reliable workaround involves **installing gcc to production
then compiling libsodium from source**. And then uninstalling gcc
because you probably shouldn't have that installed in a production
environment. Naturally, a lot of people don't feel comfortable with
that.

Linux distros that provide PHP 5.3, 5.4, or 5.5 are a problem, but
they really shouldn't pin the patch number. Just pin the major and
minor versions. Offer 5.6.x, not 5.6.28.

For Debian users, Guillaume Pleissis does it right. Follow his
example, please:
https://www.dotdeb.org/2016/11/10/php-7-0-13-for-jessie/

Scott Arciszewski
Chief Development Officer
Paragon Initiative Enterprises <https://paragonie.com>
