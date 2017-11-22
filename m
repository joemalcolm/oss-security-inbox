X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1854" "Wednesday" "22" "November" "2017" "15:27:11" "-0700" "Kurt Seifried" "kseifrie@redhat.com" "<63829CA0-BA0A-433E-8DAC-EE1D232F4639@redhat.com>" "43" "Re: [oss-security] Re: Security risk of server side text editing ..." "^Cc:" nil nil "11" "2017112222:27:11" "[oss-security] Re: Security risk of server side text editing ..." (number mark "        kseifrie@red Nov 22   43/1854  " thread-indent "\"Re: [oss-security] Re: Security risk of server side text editing ...\"\n") "<20171122221706.GA26704@openwall.com>" ("<201711171035.vAHAZFC3003212@masaka.moolenaar.net>" "<20171122221706.GA26704@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3640 invoked by uid 550); 22 Nov 2017 22:27:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3622 invoked from network); 22 Nov 2017 22:27:26 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=hMKYxmLLhFWuKjQX7MdOYjFeNr4X2P5qmfXOAIN6vTo=;
        b=H6tvoTTiUrJr5KRoyxEWM4g/mLZRDk8Sk3Pz5BQYe4JTDgpuYwgUEdREMtBJnNd+S3
         mT0idUSqwzBNrYZrAVrXW3tbZUuviSygCAKZNtK7XitCe4c7OjQFWAyUst8CTo56iLdJ
         j+nswETRZkkqTmmZcphVfMcTOgGiWf7O957SpDpegSysZaZG9hBBjFDE8i2jsxR+SiV3
         vUv4lq4U3+wOWAZa2UOvpdgMB1BGrvAiZ+VU0T7w99CILJmsCFYACrpMSGzMJ5r9zWxZ
         JaRWhu/jcFfJ9BDrsOK9S4OVYSCNGqBTgH7ABNpFRlw6Yp/2kcF+32Qs715OW3tNOSQl
         Sm+A==
X-Gm-Message-State: AJaThX7LdZdFVhZjlBt7Wk8fqx8xTnv8IfB9rwGLHSSr7REv0C3plOLK
	Slcp4Vnew2rvQKCrykB0SgZcJg==
X-Google-Smtp-Source: AGs4zMYRcMDGfPyg5XTFF/93waW+8HWsvUWteYqAqluBRiMgeqfq6kMWxrntAl76gloB+P5O0hiJnw==
X-Received: by 10.36.2.212 with SMTP id 203mr9214646itu.43.1511389634046;
        Wed, 22 Nov 2017 14:27:14 -0800 (PST)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (15B150)
In-Reply-To: <20171122221706.GA26704@openwall.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <63829CA0-BA0A-433E-8DAC-EE1D232F4639@redhat.com>
References: <201711171035.vAHAZFC3003212@masaka.moolenaar.net> <20171122221706.GA26704@openwall.com>
Cc: Bram Moolenaar <Bram@moolenaar.net>
Date: Wed, 22 Nov 2017 15:27:11 -0700
From: Kurt Seifried <kseifrie@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Security risk of server side text editing ...
To: oss-security@lists.openwall.com

Can you post a summary of the issues, it sounds like more than one CVE will=
 be needed, thanks.


-Kurt





> On Nov 22, 2017, at 15:17, Solar Designer <solar@openwall.com> wrote:
>=20
>> On Fri, Nov 17, 2017 at 11:35:15AM +0100, Bram Moolenaar wrote:
>> Please check out patch 8.0.1300.
>=20
> Thanks.  Personally, I don't have much to add.  This continues to do
> what I find are weird and wrong things, so any implementation issues are
> secondary to that.  I suppose you have some rationale for preserving the
> old behavior of propagating the edited file's permissions onto related
> temporary files, but I'm unaware of good reasons for that.
>=20
> If it's about users' collaboration, then I don't see a good reason for
> other users in the group, even if they could access the original file
> via group permissions, to also have access to recovery and backup files.
>=20
> As to the patch itself, aside from it propagating the possibly unsafe
> permissions on purpose (I mean unsafe such as in Hanno's original
> example, but also applying to backup files), it's also risky in
> temporarily setting umask to 0.  On some systems, this could mean libc
> or the kernel creating files with unsafe permissions if anything goes
> very wrong during this time - e.g., a coredump.  Checking st_ino is OK
> as a hardening measure, but might not always be sufficient: inode number
> reuse is possible if the original file could have been deleted.
> I suppose st_dev is not checked because of the use of O_NOFOLLOW, but I
> guess Vim can be built on systems without working O_NOFOLLOW as well?
>=20
> In case anyone wants to review the patch for real, I've attached it to
> this message, and here it is on GitHub (for expanding of the context):
>=20
> https://github.com/vim/vim/commit/cd142e3369db8888163a511dbe9907bcd138829c
>=20
> Alexander
> <8.0.1300>
