X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["571" "Thursday" "23" "February" "2017" "07:56:51" "-0500" "Assaf Gordon" "assafgordon@gmail.com" "<D7FFF88A-2AA9-432A-9830-0DF662E32524@gmail.com>" "21" "Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616" nil nil nil "2" "2017022312:56:51" "[oss-security] util-linux 2.29.2 fixes CVE-2017-2616" (number mark "U       assafgordon@ Feb 23   21/571   " thread-indent "\"Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616\"\n") "<20170223100148.GA23394@suse.de>" ("<20170223074630.GB26098@suse.de>" "<20170223104054.42060545@pc1>" "<20170223100148.GA23394@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16122 invoked by uid 550); 23 Feb 2017 13:06:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9779 invoked from network); 23 Feb 2017 12:57:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:subject:from:in-reply-to:date
         :content-transfer-encoding:message-id:references:to;
        bh=Jb4Rpx/3trq1Sp21m7bXmo/872ZoyUQAs5LtyXNjSAE=;
        b=FDYzJjrG8yXV+WB4rR/omol8t2Fl/CcmwZaI4Jn2Hvf5JnIIjH20XNbIPMFThRSeY+
         cp3jPofy65hE03ZkGrhluRieDf5BZlCKTwGHFSbFFLZRluXmOfchg10k3eKUVni8RE+V
         ++SKU2Y/1gVzqqrQuvI1H52QocL35zjBKBcSELv5jwlLONrmS4+hl/+aGTGUA+4PPmWt
         sIe2xzZ1m6UyiYTBWICi20NMeOAdXpSDPcx5rdFVzPFOgTzNrmT0wFybImqcsz2cf2Bx
         1nZYBNR1xW8X9WVWoeEAKJn1nZMNr5gqDoCj/a0GdPUYnUfXZJhxhoJi6lkOpzYfsYF7
         IIpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date
         :content-transfer-encoding:message-id:references:to;
        bh=Jb4Rpx/3trq1Sp21m7bXmo/872ZoyUQAs5LtyXNjSAE=;
        b=MclKw0Be6QWKqGWupc6t8SO1o0mO3eoCwJeX74N16Fke29XsGh+sQaZEvCcVKbuX7D
         aHjNzbIVpr/lRZvwKpIKHNg5c14IcpkK1071JqlxwtaolQgUeR+tCtRwZoNIyID5xwvv
         NazR7GbgIzt5NQlTzWe18LK74bYls/IrxeKg9RvNT4n5UgmKRakjVpNKv/9elLDnyD59
         1cQfk4heb7hrq6YIiDo68Ts9kA4r+AskeBAZCjAiLQL17WNLLYXgRHrEF/mCsuFwRZsR
         /z0yauS9qCfMpl5BYEAynbQGNQJvT0aKF2e5Jo2vyPf42NW1KWNQ0IIBmBSgstbSnHUv
         GPMQ==
X-Gm-Message-State: AMke39kT4LLvru9U4vQwIdCYYl40YqqP2ODxchG3YGF7YIBDPFfGBkw2r1fQ4XTuRiyoOQ==
X-Received: by 10.200.41.73 with SMTP id z9mr35098632qtz.137.1487854614679;
        Thu, 23 Feb 2017 04:56:54 -0800 (PST)
Content-Type: text/plain; charset=iso-8859-1
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2102\))
From: Assaf Gordon <assafgordon@gmail.com>
In-Reply-To: <20170223100148.GA23394@suse.de>
Date: Thu, 23 Feb 2017 07:56:51 -0500
Content-Transfer-Encoding: quoted-printable
Message-Id: <D7FFF88A-2AA9-432A-9830-0DF662E32524@gmail.com>
References: <20170223074630.GB26098@suse.de> <20170223104054.42060545@pc1> <20170223100148.GA23394@suse.de>
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.2102)
Subject: Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616

Hello,

> On Feb 23, 2017, at 05:01, Marcus Meissner <meissner@suse.de> wrote:
>=20
> On Thu, Feb 23, 2017 at 10:40:54AM +0100, Hanno B=F6ck wrote:
>>=20
>>> util-linux 2.29.2 fixes CVE-2017-2616, a race condition which allowed
>>> local users to kill other processes.
>=20
> coreutils uses the same su.c codebase, so it is also affected.
>=20

GNU Coreutils stopped installing 'su' by default in 2007,
and completely removed 'su' (including the 'su.c' source file)
in 2012.

See:
https://git.savannah.gnu.org/cgit/coreutils.git/commit/?id=3D928dd737

regards,
 - assaf=
