X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1405" "Wednesday" "18" "October" "2017" "14:30:31" "+0100" "Ben Tasker" "ben@bentasker.co.uk" "<CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>" "38" "Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" "^Cc:" nil nil "10" "2017101813:30:31" "[oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" (number mark "        ben@bentaske Oct 18   38/1405  " thread-indent "\"Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync\"\n") "<CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>" ("<20171017162507.e7lx6fbnleugoxxa@waldi.eu.org>" "<CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11458 invoked by uid 550); 18 Oct 2017 13:45:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30006 invoked from network); 18 Oct 2017 13:30:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bentasker.co.uk; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=49c5zp9Hsl5cj8WQR7FMPnOPGCY4FZ4jby5w7HERMmE=;
        b=a1xq1mcTC24TCu1oVC9duMQMhyipxyzPRWteyeEoLSR0mi18gu1FVdqDIbV4A4Hxpt
         VksCxiyDSWadKeZLGe5Xrm0LAijnJFUT2XQ0NMJ5vb91YwhVnUyy0biYbE4ZAEzL+NeF
         nFL44FL5bD0kIP2LwlFmluzd6/t0jlOqFKrN0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=49c5zp9Hsl5cj8WQR7FMPnOPGCY4FZ4jby5w7HERMmE=;
        b=DBIhjWf0x7Th9sQEcFx6vyjqGjMcKAoFLOFBImKNxQTdaO+aV9TQMWEna2UqfHeR/9
         baYs00r9yo02ODLBuu9gT2bDm+0E9x23Xe/1N33NH1Z8GjfEQhPj0wfMqpPuCYlxXMGJ
         RKTqLF/c2xlgPwA5eVciTXuFRowRE6PKrqhxmtB4PniH9pr5NOmSKs1MWDZgRDDwyq0A
         XNq6DPaFaip1HerTsy+9S87GVnS6k9og630lrTOF65XSpo3KuVxLelrb21w7wYY3BryU
         1mDhzCmPIbkcWHv4FMAG3ySmoC1205zdrTevMM5e6dRAs6+WEmOCywN10HA52wFtCVgl
         VvYw==
X-Gm-Message-State: AMCzsaUwyWcDkNGlN7OfDRHRm+X+T66vX6sRaLrKnI7J8nX+3vJ03ymi
	ri2dyBVcAotUKrOmbqKtxYDyougSJLtWlmnP3ab8ag==
X-Google-Smtp-Source: ABhQp+RlpUQO4lWartuNM4BSC2Rlkoc1yZstM8AWUZ04clZQIP+0sm7OnA8YrW1Yy5a9aSDGzoD0gHOCk5jGVDXoC4c=
X-Received: by 10.200.15.136 with SMTP id b8mr3161078qtk.64.1508333432367;
 Wed, 18 Oct 2017 06:30:32 -0700 (PDT)
MIME-Version: 1.0
X-Originating-IP: [46.17.166.68]
In-Reply-To: <CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>
References: <20171017162507.e7lx6fbnleugoxxa@waldi.eu.org> <CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>
Message-ID: <CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="94eb2c04f61470830f055bd23e83"
Cc: Bastian Blank <waldi@debian.org>
Date: Wed, 18 Oct 2017 14:30:31 +0100
From: Ben Tasker <ben@bentasker.co.uk>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in
 Debian mirror script ftpsync
To: oss-security@lists.openwall.com

--94eb2c04f61470830f055bd23e83
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 18, 2017 at 1:55 PM, Robert Watson <robertcwatson1@gmail.com>
wrote:

> Since security is determined by file and directory permissions and
> ownership, not by symlinks, wouldn't the fact that a malicious user did not
> have permissions to access the symlink's target file/directory prevent any
> harm?
>

If I'm reading the original correctly, then the user that will access the
target will be the user your HTTP daemon runs as (so, for sake of example,
nginx).

There's stuff that will be protected by permissions (for example, you
shouldn't be able to pull down /etc/shadow - so long as nginx/apache isn't
running as root), but there are other files that you might consider
sensitive(ish). Pulling down /etc/passwd would give you a list of known
good usernames to better target brute-force attempts (for example). Or
perhaps using it to grab the config file of some dynamic site on the same
server etc.

So there is potential scope for abuse there, and others probably have
better imaginations than I do.

The "nice" thing about it is: if an attacker gets access to the upstream
mirror they still may not be able to mess with the packages themselves (as
they're signed), but with this they can still potentially be hostile to
downstream.


-- 
Ben Tasker
https://www.bentasker.co.uk

--94eb2c04f61470830f055bd23e83--
