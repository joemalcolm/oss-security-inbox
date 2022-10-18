Received: (qmail 30384 invoked by uid 550); 18 Oct 2022 17:27:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25839 invoked from network); 18 Oct 2022 17:25:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ttaylorr-com.20210112.gappssmtp.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0BUCqvuqhpHUsMIagKk4G+X/m02BHWPl/YY9U8Adk+Q=;
        b=IkOGRsN5z2j4RkZhP2tjerstH5IivgKx6fVxT0AYaE28GmSNSoPljySPnZmvEL8ZsF
         Jjf2zlq5KyQur3waODUlx38eogwAvCxI/Oz74d4VXSEIr962h1We4gAf1KjapfZeIbHU
         4jEYtqBx74ZX+A8SdGxWnlA0UnByEuUvCZMPzCcgJxchsA079K6JkdnrRcpmZjSweTDb
         knJtvEfl9Qbq5eta0pz1jXCZ0PQMsTpPvvnWbRxKQ2hLRFqZJBv979ZmLBAAy1TBsmEa
         e1wgoLKVoi2/3e8KHonkXxhUJ4orihGpwWGPcmACqleogqB0Ipcs9r2AA/gUXMDM4aW/
         1XuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0BUCqvuqhpHUsMIagKk4G+X/m02BHWPl/YY9U8Adk+Q=;
        b=2ln7/K6qqajBysCQjUgnfCd+JqKH25/1+AY627VEk4RS82I36qxTYHg1MJVr3UcSU6
         rOSWaac0F0ZCKQRKFuYcV+5sJHMdE2K1bdtDK4hn8jsFUCcC4gFzCY/WXvGAoVb6wqL/
         40XnxYb6z0g20iWxmdwbnjmj+92KvBbkmG1A6loGlbO1XpM5c08Dq5OkMyNCUTIDvFxo
         hO6Lz3NOpOsanpos0uIEC4/s3pWlpySwTE+6PccxYI9RlaKjaQko3NPZvViwnMtrYIB/
         gT7JL7TVeM+xQHWj93oeB1+qkMFibUFRPeZ5D4pTYMGgNQsqF+/E/M5XDn03ezPMk+YG
         jXZg==
X-Gm-Message-State: ACrzQf1xIFIizaS1t0gXVkskgl8L+ZWzVjZQ4CFu1EgdesoKgxdI1pBy
	s7nLfyVDabbvTDG3CgxsnhBESVumtVJev2LS
X-Google-Smtp-Source: AMsMyM4HsWx04sZQyEat/zRXkPSQq46kFVjFrsTvHEP3AfoPqFC3F3yjL50AJNyVZxgfZdz+cDGcGA==
X-Received: by 2002:a05:6602:1509:b0:69b:35ba:4720 with SMTP id g9-20020a056602150900b0069b35ba4720mr2176112iow.155.1666113910232;
        Tue, 18 Oct 2022 10:25:10 -0700 (PDT)
Date: Tue, 18 Oct 2022 13:25:09 -0400
From: Taylor Blau <me@ttaylorr.com>
To: oss-security@lists.openwall.com
Cc: git-security@googlegroups.com, kevinbackhouse@github.com,
	csnider@mirantis.com
Message-ID: <Y07hdTCQHoSZjN2Q@nand.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] Git 2.38.1 and others for CVE-2022-39253, and CVE-2022-39260

The Git project released new versions on 2022-10-18, addressing CVEs
2022-39253, 2022-39260. We highly recommend upgrading to one of the
fixed versions below:

  v2.30.6 v2.31.5 v2.32.4 v2.33.5 v2.34.5 v2.35.5 v2.36.3 v2.37.4 v2.38.1

If you are on the unreleased development track, the same fix is
already included, so you do not have to do anything.

https://lore.kernel.org/git/xmqq4jw1uku5.fsf@gitster.g/T/#u

The relevant information from the most recent release notes
pertaining to the above two CVEs are as follows:

CVE-2022-39253:
   When relying on the `--local` clone optimization, Git dereferences
   symbolic links in the source repository before creating hardlinks
   (or copies) of the dereferenced link in the destination repository.
   This can lead to surprising behavior where arbitrary files are
   present in a repository's `$GIT_DIR` when cloning from a malicious
   repository.

   Git will no longer dereference symbolic links via the `--local`
   clone mechanism, and will instead refuse to clone repositories that
   have symbolic links present in the `$GIT_DIR/objects` directory.

   Additionally, the value of `protocol.file.allow` is changed to be
   "user" by default.

CVE-2022-39260:
   An overly-long command string given to `git shell` can result in
   overflow in `split_cmdline()`, leading to arbitrary heap writes and
   remote code execution when `git shell` is exposed and the directory
   `$HOME/git-shell-commands` exists.

   `git shell` is taught to refuse interactive commands that are
   longer than 4MiB in size. `split_cmdline()` is hardened to reject
   inputs larger than 2GiB.

Credit for finding CVE-2022-39253 goes to Cory Snider of Mirantis. The
fix was authored by Taylor Blau, with help from Johannes Schindelin.

Credit for finding CVE-2022-39260 goes to Kevin Backhouse of GitHub.
The fix was authored by Kevin Backhouse, Jeff King, and Taylor Blau.

Thanks,
Taylor
