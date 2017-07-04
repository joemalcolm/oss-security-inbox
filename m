X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1508" "Tuesday" "4" "July" "2017" "18:07:13" "+0300" "Igor Seletskiy" "i@cloudlinux.com" "<CA+-XxSHAUfG=z0AU9LoT_N1mB-aOAtFvEz6NgL8b8iyY5vYEhQ@mail.gmail.com>" "41" "Re: [oss-security] linux-distros list membership application - CloudLinux" "^Date:" nil nil "7" "2017070415:07:13" "[oss-security] linux-distros list membership application - CloudLinux" (number mark "        i@cloudlinux Jul  4   41/1508  " thread-indent "\"Re: [oss-security] linux-distros list membership application - CloudLinux\"\n") "<20170704123127.GA27528@openwall.com>" ("<CA+-XxSGi7OR3a8bDcgfM9-3-tYqXF+ZnDpw2SQGYTZANjhp5DQ@mail.gmail.com>" "<20170704123127.GA27528@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32200 invoked by uid 550); 4 Jul 2017 22:31:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25682 invoked from network); 4 Jul 2017 15:08:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudlinux-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=dujgIg1EEZXm+Xm9hC+2Bab6HxpCSa+8r+FrhAM450g=;
        b=mhvChKoHhevivFi0bv8aEibtOL9Z+w+UHgaR3ojq8Rs3HGl7iIA6H2czHrv1Y8lxUH
         L9mcx+qNR4eEUTFZtfFB/2ryqVoCDqovihF0ATImDw2PqpzgvpH143WvEjbN72gUAc1I
         w4ty64rmMu7lKwIrBilx/8Cx8kHLelishBtKlblpAfGaf8VlBQnUUm71mqvrC6uyBA+F
         CkZNNBVxE9f1n/bGawTsekbpeKQLwLCr4ZDJrusFTRpdDXMDOsUonVd3747Zx7FknWqn
         FEaWbPa0M8yCfv2XEN3VxS4JslG0UkUkdd0MnIHBPWTjK251knyCIyG3dTvPd2d6fMcX
         txRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=dujgIg1EEZXm+Xm9hC+2Bab6HxpCSa+8r+FrhAM450g=;
        b=rtecPBpLELJygLZiIcWXR97ouJfKKyIxBzD/mR5xaAQpgsiF9CyoJBZpRsEMMZLCKx
         4I1CJ40Jf7szvZt6H3m97cHnBcT4LxUWvA1mZLbGvbm2aiqQWv66Lc5uSXudpJ/ToTwe
         EuuCdTTWK9GQ6RfEh8qCammgO+i0SAzsCZs3TljLabTv3Zn9AOWkmEU5dDjZHy5MCkS7
         6v/pkwnBYeXnvWg4F6Ey6m0v/WAhm+OcFPwIMk3IcsLukoNQOal0/r2z9/Ed5kkL0J+8
         EdpVBHxXJl1V6dDntyfpVAAjGwTa/xCAoKrBFnpjhj9cyIISFhXCDYqSmjPqiROfIpRr
         IX9g==
X-Gm-Message-State: AKS2vOzxzho+hIGdoF+COSUkXfLagzXUGmuVesvAucQtEtF0AvknHxUu
	TLNokpYEJ9MSRcr/9UXmmjHlt99owsnW
X-Received: by 10.223.175.238 with SMTP id y46mr31394890wrd.163.1499180874618;
 Tue, 04 Jul 2017 08:07:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170704123127.GA27528@openwall.com>
References: <CA+-XxSGi7OR3a8bDcgfM9-3-tYqXF+ZnDpw2SQGYTZANjhp5DQ@mail.gmail.com>
 <20170704123127.GA27528@openwall.com>
Message-ID: <CA+-XxSHAUfG=z0AU9LoT_N1mB-aOAtFvEz6NgL8b8iyY5vYEhQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="f403043895987c76c805537f3f55"
Date: Tue, 4 Jul 2017 18:07:13 +0300
From: Igor Seletskiy <i@cloudlinux.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] linux-distros list membership application - CloudLinux
To: oss-security@lists.openwall.com

--f403043895987c76c805537f3f55
Content-Type: text/plain; charset="UTF-8"

>
>
>
> On Sun, Jul 02, 2017 at 05:29:25PM +0300, Igor Seletskiy wrote:
> > We typically have to patch local privilege escalations in kernel asap as
> > our customers are easily rooted using this type of vulnerabilities
> (anyone
> > can buy website or hack old wordpress instance & run any code).
>
> This may be a reason for you to harden your distro's userland against
> local privilege escalations as well, such as by adopting the
> owl-alt-sanitize-env glibc hardening patch maintained by ALT Linux:
>
> http://git.altlinux.org/gears/g/..git?p=glibc.git;a=commitdiff;h=496059f2

Thank you, we will analyze it / test how well it works with 3rd party
software.

>
>
> and getting rid of most or all world-accessible SUID programs, which is
> do-able like we have demonstrated with Owl.  This shouldn't be
> unreasonably hard to implement and maintain in a fork of RHEL, although
> obviously you'll end up with more packages (including some core ones)
> that would no longer be mere rebuilds of RHEL's.
>
All the web applications, end users ssh sessions and cron jobs are executed
in
namespaced / chrooted environment with no SUID files accessible already.
We cannot completely get rid of SUID scripts as they are used by 3rd party
software (like cPanel/Plesk) that is used on most of customer's servers.
It is not perfect, but the best we were able to do so far.


Thank you for the advise,
Igor.

--f403043895987c76c805537f3f55--
