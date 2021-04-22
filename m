X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2872" "Thursday" "22" "April" "2021" "11:02:11" "-0400" "David A. Wheeler" "dwheeler@dwheeler.com" nil "67" "Re: [oss-security] Malicious commits to Linux kernel as part of university study" nil nil nil "4" nil nil (number mark "U       dwheeler@dwh Apr 22   67/2872  " thread-indent "\"Re: [oss-security] Malicious commits to Linux kernel as part of university study\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Malicious commits to Linux kernel as part of university study" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11586 invoked by uid 550); 22 Apr 2021 15:02:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11568 invoked from network); 22 Apr 2021 15:02:42 -0000
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Date: Thu, 22 Apr 2021 11:02:11 -0400
References: <20210422065959.GI13079@scully.more-magic.net>
 <CAEo4CePqice09K5PPhmxwwF3jg=USrqRqM5FgVX_jCB8sZfDeA@mail.gmail.com>
 <20210422095945.GA2495@scully.more-magic.net>
To: oss-security@lists.openwall.com
In-Reply-To: <20210422095945.GA2495@scully.more-magic.net>
Message-Id: <4DCB6EF3-73EE-4038-8437-FEB339F20F90@dwheeler.com>
X-Mailer: Apple Mail (2.3608.120.23.2.4)
Subject: Re: [oss-security] Malicious commits to Linux kernel as part of
 university study

Peter Bex:
> The university of Minnesota has been banned from making any commits to
> the Linux kernel after it was found out they'd been submitting bogus
> patches to the LKML to knowingly introduce security issues:
> https://lore.kernel.org/linux-nfs/YH%2FfM%2FTsbmcZzwnX@kroah.com/

I support research, but I personally think this work goes way beyond any et=
hical boundaries.
While I don=E2=80=99t know if it=E2=80=99s *illegal* (I=E2=80=99m not a law=
yer!), it seems clear to me that these
U of MN researchers were conducting experiments on people without their pri=
or consent.
In the US, experiments on people without their consent is generally forbidd=
en.
These researchers did their experiment *before* even consulting their Insti=
tutional Review Board (IRB),
a *huge* no-no, and then their IRB approved the non-consensual experiment a=
nyway (!!!).

GregKH=E2=80=99s response to this attack from the U of MN here:
https://lore.kernel.org/linux-nfs/YH%2FfM%2FTsbmcZzwnX@kroah.com/
which reads in part:
> Our community welcomes developers who wish to help and enhance Linux.
> That is NOT what you are attempting to do here...
> Our community does not appreciate being experimented on...

More discussion: https://news.ycombinator.com/item?id=3D26887670

Peter Bex:
> I don't know the scope of this research, but it could involve other OSS
> projects, now or in the future, as well.  Hence this e-mail.  If you feel
> it's spam or needless drama, feel free to ignore.

Since the researchers failed to get prior consent from the people
being experimented on, I don=E2=80=99t think we can presume ethical behavio=
r.
I have no faith that these researchers limited their attacks.
I hope they did, but I think we can take more proactive measures.

I used the following shell command to search for potentially-concerning com=
mits in git:

git shortlog --summary --numbered --email | grep -E '(wu000273|kjlu|@umn.ed=
u)'

I recommend other OSS projects do something similar, just in case, unless
we can have better verification that no other OSS projects were attacked.
I welcome improved methods to find concerning proposals or patches;
this is just a quick attempt to detect potential damage.


On Thu, Apr 22, 2021 at 11:44:49AM +0200, Albert Veli wrote:
> Supply chain attacks are a real threat to open source projects.

I completely agree. My work title is =E2=80=9CDirector of Open Source Suppl=
y Chain Security=E2=80=9D,
so I guess I=E2=80=99d have to say that :-), but I agree anyway :-).

*ALL* OSS projects should review proposed changes for potential security
issues, and harden their software & supply chain against attacks.
I also welcome research to make that better!
But we don=E2=80=99t need researchers who perform attacks
on production systems without authorization, or perform
attacks on developers without their consent.

--- David A. Wheeler

