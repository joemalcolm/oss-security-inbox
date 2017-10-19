X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2045" "Thursday" "19" "October" "2017" "20:32:55" "+0000" "Robert Watson" "robertcwatson1@gmail.com" "<CAOfWR+H_UbXfxh=oECSqUEcLmAh+RZciH61q0E5LqskWSOYWKA@mail.gmail.com>" "52" "Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" "^Date:" nil nil "10" "2017101920:32:55" "[oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" (number mark "        robertcwatso Oct 19   52/2045  " thread-indent "\"Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync\"\n") "<20171019194428.GK20315@hunt>" ("<20171017162507.e7lx6fbnleugoxxa@waldi.eu.org>" "<CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>" "<CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>" "<CAOfWR+GW8oR8+uSKeETF3+mzhhzH5-GiRuJr2sGOnhodefHRaQ@mail.gmail.com>" "<20171019194428.GK20315@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6064 invoked by uid 550); 20 Oct 2017 11:16:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24168 invoked from network); 19 Oct 2017 20:33:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=d7pGs9HhqHHMyrqFbEoghghVnhag07yVJ7L93UrnkMc=;
        b=K6Batw7xo2bR/FXxR5Q9CI+nlG4NiAo77cGk6sagIGWW5EQu9GpilQaUDi+lMUbgT4
         rmgdbx35j1USsLhUtIPFz7YaQDKK14+hqbU0MdK/yeYtD3PLQ2G+JVE05XC7cfvpAb/i
         d/orY1EdLBdN6lLD/nEHlmPh5C5gGYoqayYRl7EGIdwu+kgCa9z/R/9+dPKOTtjytub9
         6CYTbkAQfFalE1sn8wIUpsGUgbEqfuFvqlaLwFWo263GsjeN/vX0acYRfgqxiJcDHvJ+
         8VlKbvSlQdcavE1yHSnSM65rVDuvOrPRv85Z9uIDX/lC5sDX0R51CnoZ5vS1KQDCkh81
         sbwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=d7pGs9HhqHHMyrqFbEoghghVnhag07yVJ7L93UrnkMc=;
        b=i0yBwJxIxKLEmwET/xjh+y7xdXvGXMd1DUpkZxb7GIB1+vOGj8pJMBl8xIbLFwVydn
         2vqZtQJYo1WykWVqVi4BPZ52lQhlwUtUpUebh0DpzSnfZ34xxgTbuLGkKAcWP5QaTDbL
         46v00Y9uV9egfwBZmHKDrepQePXJK/kICIxFOpHIiaiODi8b9Wp7SDbuq+h36MKF2Fyz
         iyhMf0yAUcIzmhdUKTsRJ/Rmde4UV6082TgBuYR6CVR6WPIvf66edAiLz9U4l4PvD1Nf
         VlDKk/YCMsT1tfzYrvb/LgfKZWz7ObeuOs62hqPe72z/LnC83+CpuWM5HEbHEWAOkLlX
         dvag==
X-Gm-Message-State: AMCzsaXSItK0IjKuTCgOw0eAZnMlIlLTAgTP42HlJWc4Eh9VV7ZtjABh
	wzkcwcF95hGihEJJ26QCR71ieZpPlruqTkHI5yo=
X-Google-Smtp-Source: ABhQp+TfkjQqK4LylWi+8KrRlXhfiuwS76vOeftHwOr/eTqVF4P9JarPD8ETam+IoivTXjvXmxOsjO4zl3KVD373FME=
X-Received: by 10.28.48.150 with SMTP id w144mr2537802wmw.23.1508445186378;
 Thu, 19 Oct 2017 13:33:06 -0700 (PDT)
MIME-Version: 1.0
References: <20171017162507.e7lx6fbnleugoxxa@waldi.eu.org> <CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>
 <CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>
 <CAOfWR+GW8oR8+uSKeETF3+mzhhzH5-GiRuJr2sGOnhodefHRaQ@mail.gmail.com> <20171019194428.GK20315@hunt>
In-Reply-To: <20171019194428.GK20315@hunt>
Message-ID: <CAOfWR+H_UbXfxh=oECSqUEcLmAh+RZciH61q0E5LqskWSOYWKA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a1142427e7f51ad055bec43b5"
Date: Thu, 19 Oct 2017 20:32:55 +0000
From: Robert Watson <robertcwatson1@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in
 Debian mirror script ftpsync
To: oss-security@lists.openwall.com

--001a1142427e7f51ad055bec43b5
Content-Type: text/plain; charset="UTF-8"

Scripts depend on the underlying functionality of the various utilities
like rsync that they call. I'm having trouble understanding how a script
could ever be deserving of a CVE. Maybe I'm wrong. I wish to be educated.

We are overwhelmed with more vulnerabilities than can be fixed quickly
already.

Are "just to be safer" type things really a wise use of our resources?

Does a proliferation of a large number of low-caliber problems make
monitoring these lists more trouble than it's worth? Does it cause
high-impact problems to be lost amongst low-impact ones?

On Thu, Oct 19, 2017, 15:46 Seth Arnold <seth.arnold@canonical.com> wrote:

> On Wed, Oct 18, 2017 at 04:55:07PM -0400, Robert Watson wrote:
> > Removing the ability for rsync to copy symlinks pointing to targets
> outside
> > the mirror tree would greatly cripple it. I need to understand how the
> > danger is worth the loss of this functionality.
>
> Note that the fix isn't modifying rsync, the fix is modifying the ftpsync
> script that calls rsync:
>
> +    RSYNC_OPTIONS=${RSYNC_OPTIONS:-"-prltvHSB8192 --safe-links --timeout
> 3600 --stats --no-human-readable"}
>
>
> https://anonscm.debian.org/cgit/mirror/archvsync.git/commit/?id=d1ca2ab2210990b6dfb664cd6776a41b71c48016
>
> Of course for people who run this mirroring tool as a specific user
> account and set file permissions appropriately this is more or less a
> no-op. But this is a useful hardening for people who run the ftpsync
> command as a user with too many privileges. (I wouldn't have bothered
> filing for a CVE for this change; I see it as a simple hardening change.)
>
> This option shouldn't cripple ftpsync as a well-run repository is highly
> unlikely to have symlinks pointing out of the tree. A repository with
> symlinks pointing out of the tree is already not a suitable rsync source.
>
> Thanks
>
-- 

Robert "DocSalvager" Watson
... trust in truth keeps hope alive
www.DocSalvage.info

--001a1142427e7f51ad055bec43b5--
