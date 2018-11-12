X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3426" "Monday" "12" "November" "2018" "11:34:22" "+0200" "Billy Brumley" "bbrumley@gmail.com" "<CAFeDd5YXQNepOMjpjvniVQS7roxkO_2k33ac3X13LxLETA0rMw@mail.gmail.com>" "108" "Re: [oss-security] CVE-2018-5407: new side-channel vulnerability on SMT/Hyper-Threading architectures" "^Date:" nil nil "11" "2018111209:34:22" "[oss-security] CVE-2018-5407: new side-channel vulnerability on SMT/Hyper-Threading architectures" (number mark "        bbrumley@gma Nov 12  108/3426  " thread-indent "\"Re: [oss-security] CVE-2018-5407: new side-channel vulnerability on SMT/Hyper-Threading architectures\"\n") "<9dab0b73-3bc4-a942-bb9e-6c0b243784c2@canonical.com>" ("<CAFeDd5Ya=q28T2b0v9Z2guTGjwccaq8AU_5OnybvuEVABWnFJA@mail.gmail.com>" "<20181102114655.GA2758@openwall.com>" "<CAFeDd5bLk0N4g3LP0FUgX+XH2QMaV+=d3ybagBE4K6pAHQAxHA@mail.gmail.com>" "<20181106192131.GA14967@openwall.com>" "<CAFeDd5aqTomuwP=zf0EOVqWks819r5S+cr2mVkZGW0EuqttkGA@mail.gmail.com>" "<9dab0b73-3bc4-a942-bb9e-6c0b243784c2@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22335 invoked by uid 550); 12 Nov 2018 09:34:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22313 invoked from network); 12 Nov 2018 09:34:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=b2klMK9KzsvyQsKufJ1d/D/NIm34ZQ5s5Kgs4YkE2dA=;
        b=lT2uCk63aQC0/CG1Vq/cNJMHrRitcnnKXa1yCMstrmDLGSs+9XNpiRraa/rT4rXIcP
         HRA/S3qOAZN6uSrvx3FedErnYE4uUyYuHCL0TJtGEXSLRng0DVL+v99obcJ9qLhFWkTM
         muYHjwvJi1U1uCvNOiBmILrnEfjV9bF2vh11cjRAkLggr4S9Hp+QMGZlT0mbRDhgJLXW
         Sv5gjKbVf33bqu3YE/dfi+0mbdX9E8eIQWIicPI7GLPVi6FR/DsN1oCDSpYtyYyW7KuN
         Yy5aGcCloHjOSXUayqyEjE6BZ/RCr0WVTXd9fQhJVK/z29pc/XE5dm176YaYaGwfwhEZ
         cUHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=b2klMK9KzsvyQsKufJ1d/D/NIm34ZQ5s5Kgs4YkE2dA=;
        b=mTOkilZhtEuXFjTCMdpGEoXbTM6JqQvOuSyPl2WbBC39IlwRRnr/2nlyaS0znwVghV
         MC7bXyIP4KLy5ufugBvJjFAbPAMQfSG3DOhISvQvqkGxtMhqLeCvgQYejPCW6Fa/PzoG
         MCe/bVVYxK32SLT2V+huXtKy+jv9r4HGbFfbtlNfyKZt799exYWhV+S5YBzBkOghyIl/
         SID9zvFGvrTO5JApgzP568rgew2ejqlV3apgnfKDjh4BkafNPo/7xZ6UKWTi9GMlcPj1
         oAifvZh7Ni87bnk/yTYaHAZi2CEqd5NyzwOmDRGn9W3SUrSRRLQ1kc7AOkypE4+9FGKS
         hO3A==
X-Gm-Message-State: AGRZ1gIQGLwv08hmd99hg3p9NXWcZIVscZgJ6puCeppMigl4rELNvQTc
	Kyzhn8g9R637O3OZIiaL/r87WMsXUdxu/rYGjuZxLYo=
X-Google-Smtp-Source: AJdET5en3SA3IdAkKtJ1MW8UPb0k/ZKeqpJAHuR0HV4tqp+m5dn5JjRdLTzeeCrlN/Xyuq/KYS7j0iGaoxJKSLwpvAE=
X-Received: by 2002:a1c:8fc5:: with SMTP id r188-v6mr4190273wmd.133.1542015273770;
 Mon, 12 Nov 2018 01:34:33 -0800 (PST)
MIME-Version: 1.0
References: <CAFeDd5Ya=q28T2b0v9Z2guTGjwccaq8AU_5OnybvuEVABWnFJA@mail.gmail.com>
 <20181102114655.GA2758@openwall.com> <CAFeDd5bLk0N4g3LP0FUgX+XH2QMaV+=d3ybagBE4K6pAHQAxHA@mail.gmail.com>
 <20181106192131.GA14967@openwall.com> <CAFeDd5aqTomuwP=zf0EOVqWks819r5S+cr2mVkZGW0EuqttkGA@mail.gmail.com>
 <9dab0b73-3bc4-a942-bb9e-6c0b243784c2@canonical.com>
In-Reply-To: <9dab0b73-3bc4-a942-bb9e-6c0b243784c2@canonical.com>
Message-ID: <CAFeDd5YXQNepOMjpjvniVQS7roxkO_2k33ac3X13LxLETA0rMw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 12 Nov 2018 11:34:22 +0200
From: Billy Brumley <bbrumley@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2018-5407: new side-channel vulnerability on
 SMT/Hyper-Threading architectures
To: oss-security@lists.openwall.com

> > If you are a package maintainer, and are putting together a patch set
> > for this, please reach out to me. My team can help test.
> >
> <snip>
>
> Could you please confirm the following commits are sufficient to fix CVE-2018-5407?

Some more technical advice below. Hope it helps!

BBB

# 1.0.1

That is EOL. Try your luck with porting the 1.0.2 solution.

Shameless self plug: read Section 2

https://eprint.iacr.org/2018/354

for a related discussion about EOL issues and security in the context
of OpenSSL.

# 1.0.2

Wait until this gets merged into OpenSSL_1_0_2-stable :

https://github.com/openssl/openssl/pull/7593

# 1.1.0 up to and including 1.1.0h

So I went through the process to patch this myself:

https://github.com/bbbrumley/openssl/tree/bbb_ecc_fix_110h

Ofc I have no idea what 1.1.0 version you started with, or what
patches you're applying. So take this as more of a HOWTO build and
test your own patchset.

## CVE-2018-5407

git checkout OpenSSL_1_1_0h -b bbb_ecc_fix_110h
git cherry-pick aab7c770353b1dc4ba045938c8fb446dd1c4531e
git cherry-pick f06437c751d6f6ec7f4176518e2897f44dd58eb0
git cherry-pick 33588c930d39d67d1128794dc7c85bae71af24ad
git cherry-pick f916a735bcdce496cebc7653a8ad2e72b333405a
git cherry-pick b43ad53119c0ac2ecfa6e4356210ccda57e0d16b
git cherry-pick 2172133d0dc58256bf776da074c0d1944fef15cb
git cherry-pick cc39f9250957dfe6e9f1b62a4eca1863e8451483
git cherry-pick 7b3e775a6a78650bbd3e8e19a5aa12981880402b
git cherry-pick 5eee95a54de6854e60886c8e662a902184b12d04
git cherry-pick 875ba8b21ecc65ad9a6bdc66971e50461660fcbb
git checkout --theirs CHANGES
git add CHANGES
git cherry-pick --continue
git checkout OpenSSL_1_1_0h -- CHANGES
git add CHANGES
git commit -m "revert changelog diffs"
git rebase -i OpenSSL_1_1_0h

(I skipped 926b21117df939241f1cd63f2f9e3ab87819f0ed because it is not
related to CVE-2018-5407. See

https://github.com/openssl/openssl/issues/6302

For a lengthy discussion. I'm not familiar enough with the issue to
give advice if you need to pick it up or not.)

All of them cherry pick cleanly except for the last one, but it's only
a trivial conflict with the changelog.

I checked the scalar multiplication code paths in ecdsatest with gdb
(break ec_mult.c:423), and indeed they are early exiting to the new
function when signing.

A lot of new regression testing went into 1.1.1. Some of it was
backported 1.1.0:

https://github.com/openssl/openssl/commits/OpenSSL_1_1_0-stable/test

So I fetched these KATs:

https://raw.githubusercontent.com/openssl/openssl/23fe5c582a83bce394a3cdf0bc8f6f4f2eb71ebb/test/recipes/30-test_evp_data/evppkey_ecc.txt

To run those tests, you also need to pick up this bug fix for
evp_test.c (this is for testing, not part of the CVE-2018-5407 fix) :

git cherry-pick e35e5941e0b2f7af1cd56f07ee8d4eaf2b445132

Then rebuilt, and ran

$ test/evp_test /path/to/evppkey_ecc.txt
484 tests completed with 0 errors, 0 skipped

All of those (positive and negative) tests pass; they are for ECC
keygen and ECDH. I checked the scalar multiplication code paths with
gdb (break ec_mult.c:423), and indeed they all early exit to the new
function.

## CVE-2018-0735

Apply this small fix on top:

git cherry-pick 56fb454d281a023b3f950d969693553d3f3ceea1
git cherry-pick 003f1bfd185267cc67ac9dc521a27d7a2af0d0ee
git rebase -i HEAD~2

Then ofc rerun all the regression testing ("make test", as well as the
custom EVP tests described above.)
