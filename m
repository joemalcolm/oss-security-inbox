X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4238" "Wednesday" "5" "July" "2017" "13:28:43" "+0100" "Ben Tasker" "ben@bentasker.co.uk" "<CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>" "114" "Re: [oss-security] systemd fails to parse user that should run service" "^Cc:" nil nil "7" "2017070512:28:43" "[oss-security] systemd fails to parse user that should run service" (number mark "        ben@bentaske Jul  5  114/4238  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<20170705085034.GA2638@pali>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" "<20170705085034.GA2638@pali>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21699 invoked by uid 550); 5 Jul 2017 12:37:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3311 invoked from network); 5 Jul 2017 12:28:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bentasker.co.uk; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=rismOUSlcMfGHe2sprrxZ1pBITjFsDp28Qd3RwWZDsU=;
        b=K/oJQBQVSpwV1b9nUNsJ8DuwTHVvpII6zwe9DUlFPpp/GQTgXw0T+US8Zu5lrxsf8q
         qWJhdj/Fj0tuAAINsmwrDXaE6cNHJeIoRlzrHRpXFzDkB7OxryEDvN8Mbl778glOaks2
         GO8eF5SfrBUZz6QHRMBypuMiEpe8NGvDh2whk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=rismOUSlcMfGHe2sprrxZ1pBITjFsDp28Qd3RwWZDsU=;
        b=HeEXZn4LgSN+sxMezSWpdtB7NaVDopBEZklYKuosFWVF/ZlUz7Fd6nlLYkCSJICW5z
         mXsgrOmoNlafA/PuiJkmaXGVsjuoo68ugIK2dXOB59EinLcIx3zHfaEEXdsrYjUlY1Od
         9jCfB7PNieYHqFl6dzh9qZ1BDcEy9ijyhK7N0KOcw34HNp7C3w70E0VDpfZAirpLTpVZ
         syeFzAuxAhbReLytW6heg0NzRybBdnq0QXAuYrBCfFUsDJSp526piHei3bc8nbmxGEw/
         SyJEPsT619LDw01EXNvMbDVV9sKnACyOOqJDQfdKX5xBxRDZD8o/EuS1H8Cejz7zzVH0
         Yabw==
X-Gm-Message-State: AIVw111fU3eZ6hjiSvDcmuBfbCe9GA9eJw0c3KMgMUfj8785iF5UqDHl
	db2ZW9omqeWORJQEu44QqwKkKSFg2IKX9nc=
X-Received: by 10.202.230.212 with SMTP id d203mr5344828oih.143.1499257724373;
 Wed, 05 Jul 2017 05:28:44 -0700 (PDT)
MIME-Version: 1.0
X-Originating-IP: [178.62.118.116]
In-Reply-To: <20170705085034.GA2638@pali>
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
 <20170705085034.GA2638@pali>
Message-ID: <CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a1141aede16abbd0553912487"
Cc: =?UTF-8?Q?Daniel_Skowro=C5=84ski?= <daniel@dsinf.net>
Date: Wed, 5 Jul 2017 13:28:43 +0100
From: Ben Tasker <ben@bentasker.co.uk>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run service
To: oss-security@lists.openwall.com

--001a1141aede16abbd0553912487
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 5, 2017 at 9:50 AM, Pali Roh=C3=A1r <pali.rohar@gmail.com> wrot=
e:

>
> Hi!
>
> There are basically two problems:
>
> 1) In more Linux distributions useradd tool allow to create a new user
> which starts with digit. Also according to POSIX such user name is a
> valid. This means that valid user name (for some Linux distributions)
> from /etc/passwd specified in systemd unit file results running service
> as root user.
>
> 2) If user name specified in systemd unit file is syntactically correct
> (according to systemd check) but user name does not exist then systemd
> refuse to start that unit.
>
> Which leads to problem that syntactically invalid user name (for
> systemd) results in root user and syntactically valid non-existent user
> name cause error.


> Because check if user name is valid is different in systemd as specified
> in POSIX and also different as in useradd tool supplied by some Linux
> distributions, I see this as a security problem when processing invalid
> input from configuration unit file.
>
>
You'd really hope it'd be consistent. If they want to enforce a policy that
user names cannot start with a digit (which as Poettering notes, many
distro's do) that's fine, but the resulting behaviour should be safe, well
defined and expected. I wouldn't say running the service as root falls
under that definition, personally.

I think it'd be possible to take a different view on it if the usecase of a
non-existing user presented different behaviour. If it too fell back to
root, that wouldn't be great, but would at least be consistent. Personally,
I think the better behaviour would be to refuse to start the unit in either
case.

As others have noted, this is something that could quite easily happen as
the result of installing a package.

It'd be all too easy for a reviewer to look at the unit file, note it runs
as '0day', double check that the package creates a user called '0day' and
be happy that it's going to work. Hopefully someone *would* notice but that
might not happen until after a vulnerability in that particular package has
been remotely exploited (giving root access, oh dear), which is a situation
that's in no-one's interest.

I wouldn't expect to see it happen to a package in the main distro's
repo's, but could quite easily see it happening via a PPA or through
provision of rebuilt packages elsewhere.




> Correct behaviour should be to throw error also when garbage (invalid
> user name), according to internal systemd check, was specified. And not
> start service under root user with high privileges.
>
> Because of this I would suggest to ask for CVE identifier, so Linux
> distributions can mitigate or decide how to handle this problem.
>
> Linux distributions which follow POSIX standard when creating new users
> are affected by this.
>
> Please note that above bug tracker on github is locked for future
> discussion, which means it is not possible to ask for more details or
> continue discussion in upstream.
>
> Which is really *bad* for security related problems.
>
> What do you think, how should be this problem handled?
>
>
Honestly, I think upstream have done an *awful *job of handling it so far
(and it's far from the only example of Poettering taking the not-a-bug
approach questionably). Their issues do have a habit of attracting trolls,
but I think sometimes their definition of troll expands to include anyone
who doesn't agree with them.

FWIW, I'd be inclined to agree that it needs a CVE so that downstream
distro's can at least refer to it, and decide how (and if) they want to
address it. Even if they decide to stick with upstream's approach, having
the CVE at least gives them something to make sure package reviewers refer
to.

I think the approach SUSE has taken is pretty good, and it's basically the
kind of fix I'd have liked to see upstream put in place (though in their
case, the suggestion of a config var to define whether it's acceptable is
also a very good suggestion).





> --
> Pali Roh=C3=A1r
> pali.rohar@gmail.com
>



--=20
Ben Tasker
https://www.bentasker.co.uk

--001a1141aede16abbd0553912487--
