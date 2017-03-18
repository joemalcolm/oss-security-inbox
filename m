X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2268" "Saturday" "18" "March" "2017" "12:51:50" "+0300" "Jerome Athias" "athiasjerome@gmail.com" "<CAA=AuEenQx_oGZcY3iEwbp+frtfb1cw+fSaNH_kLQmv9+BkJKg@mail.gmail.com>" "49" "Re: [oss-security] Dealing with CVEs that apply to unspecified package versions" nil nil nil "3" "2017031809:51:50" "[oss-security] Dealing with CVEs that apply to unspecified package versions" (number mark "U       athiasjerome Mar 18   49/2268  " thread-indent "\"Re: [oss-security] Dealing with CVEs that apply to unspecified package versions\"\n") "<878to3f33h.fsf@prune.linuxpenguins.xyz>" ("<87wpbq5uqz.fsf@gnu.org>" "<878to3f33h.fsf@prune.linuxpenguins.xyz>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21579 invoked by uid 550); 18 Mar 2017 11:43:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32764 invoked from network); 18 Mar 2017 09:52:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=2ZXgra4n7HIAPpvkRWj793uWU3QyPnErTkwAjBn9Vtc=;
        b=LJCZTXxlLOeOwJo1KpnekZEFYYzvBlzJ3tnUj6dDR9YXfATMnJ0v7TRWiBu46tG7sn
         bNgBywhy/NxTcemhjRxN9nJqP8Dh+7KONaDQaAjywsCNYenlbIb6zyqwNbU1hpHsG6ZA
         odQFvBw08k/jIL/CranS3q7acVVlpbMgybve3Ffzs29mTjkOq091S5IKI2OgHRbvjsjx
         HZl1ZE30JVu3K47KevtrwhwsT7UU+FNpYwdpTmiXkJ/e8TbqIv+Mg8b/ypNYbdEL3o39
         I2/PXg9DLRtnFD1KVMuIXNd3bnWuZ4ToBmPTB8g1N5+Q+7TSzmkC0cuig9UmGdMhDqJn
         L0vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=2ZXgra4n7HIAPpvkRWj793uWU3QyPnErTkwAjBn9Vtc=;
        b=kw2h8Sk3rpCi2INLhtXb1NP7J0HBi6KXPzSkX38shZrl4Sc11QlLnAno8BYz1xo+RU
         EK3oVoNpZTqbUZypoXp6DufIrSzNYkiFX/asvbrPXPFSVSpPEocsrXDMCZEdo9AQ9SXe
         Bs/FVnrmFxC2Da7jTYIuiOIqRFH4xBCRMkaIo8WZXuwEOfZGIr5MhiOS/kZMKLE58gpf
         yE3c834GhJKgimYeNw8fTqa0DdSRQ50f2D7WmGHPgov/0NAe8TfqyzZ6neeHVf5lmZ/w
         ZmVbRbkQh8B8ZcQlG8+bqIx7Jl5ffWAPoL4fDgdVcs+1u07uUCAJ6nEjChn6Ljkinzsf
         bJzg==
X-Gm-Message-State: AFeK/H0Ox6AUwKROAPhPdpSlJTjdgSSzJr56jJkmneGvd4pwYL7Dfi0twFPIQeBH1hJ1VsCLC+6Uw8ujEbsrPg==
X-Received: by 10.159.39.38 with SMTP id a35mr6938351uaa.152.1489830711336;
 Sat, 18 Mar 2017 02:51:51 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <878to3f33h.fsf@prune.linuxpenguins.xyz>
References: <87wpbq5uqz.fsf@gnu.org> <878to3f33h.fsf@prune.linuxpenguins.xyz>
From: Jerome Athias <athiasjerome@gmail.com>
Date: Sat, 18 Mar 2017 12:51:50 +0300
Message-ID: <CAA=AuEenQx_oGZcY3iEwbp+frtfb1cw+fSaNH_kLQmv9+BkJKg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=94eb2c123e4c532994054afe3eac
Subject: Re: [oss-security] Dealing with CVEs that apply to unspecified
 package versions

--94eb2c123e4c532994054afe3eac
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

We also have this "Is File Version Comparison Sufficient Over Time?"
discussion in the OVAL Developer ml.
Yes, a reference to a commit is good to have, if you have time/resources
for manual vulnerability analysis
There is a trade-off, but I guess the point here is more on how to increase
automation for mitigation/remediation of software vulnerabilities.
Operation Rosehub is one example illustrating why it's important

On Sat, Mar 18, 2017 at 10:36 AM, Brian May <brian@linuxpenguins.xyz> wrote:

> Ludovic Court=C3=A8s <ludo@gnu.org> writes:
>
> > Some CVE entries do not specify the version of the package(s) they apply
> > to.  For instance, the software list for CVE-2016-10165 contains
> > =E2=80=9Ccpe:/a:littlecms:little_cms_color_engine=E2=80=9D, which theor=
etically means
> > that it applies to any version of lcms.
> >
> > The problem is automated tools cannot exploit such entries in practice
> > because they cannot tell which package versions are affected.
>
> I am not sure the software version helps that much. It can lead to
> incorrect decision. For example, for security flaw B upstream might say
> versions before Y.Y.Y are not applicable - lets say version X.X.X <
> Y.Y.Y and as such as OK, because the do not contain the vulnerable
> code. In fact, somebody could check the code and mark this security flaw
> as not applicable.
>
> Meanwhile, somebody else gets around to adding another (earlier)
> security patch for A to Y.Y.Y. This security adds the vulnerable code
> for B. Anybody making a quick inspection would not notice now that Y.Y.Y
> patched for A is now vulnerable to B. In fact B was already marked as
> not vulnerable, so there may not even be need to look at it again (not
> sure how to solve this problem).
>
> While a "fixed in version" is useful, a pointer to a commit that fixed
> the problem would be even better - and means less speculation on which
> commit actually fixes the issue. In fact some upstreams won't even
> answer bug reports asking if security issues has been fixed or not.
> --
> Brian May <brian@linuxpenguins.xyz>
> https://linuxpenguins.xyz/brian/
>

--94eb2c123e4c532994054afe3eac--
