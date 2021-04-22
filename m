X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3146" "Thursday" "22" "April" "2021" "10:58:12" "-0600" "Ariadne Conill" "ariadne@dereferenced.org" nil "66" "Re: [oss-security] Malicious commits to Linux kernel as part of university study" nil nil nil "4" nil nil (number mark "U       ariadne@dere Apr 22   66/3146  " thread-indent "\"Re: [oss-security] Malicious commits to Linux kernel as part of university study\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Malicious commits to Linux kernel as part of university study" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6057 invoked by uid 550); 22 Apr 2021 17:21:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23663 invoked from network); 22 Apr 2021 16:58:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dereferenced.org;
	s=mailbun; t=1619110692;
	bh=4CP+20+wfIZS5zSQBY27Y53JvPVFRGkbRjJPs7k/B1I=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=hCXgIqBNVS2Tyd1D5UVyOJN8UGZ25RrFvJioiWdKsfUsz9FpOZQj8nVKaabDtzbRK
	 XpZ+xR+RQFLFj970uMVBb+6HFtqRRreTfC1fVQQM+AJrtKhfyVItUkekmJ1J+4HJGL
	 QJm/4R5OY1QokZFQ3wuApj2qJJ8vSnh9F+5d2G/XhQWTOVzBAirzoQtzZ+y4lFIz3Q
	 FT7284pJ7bL92c3uhaZx/NbLh9OZfZO+fFhLw9YIPXULu1R98NY1P3JEvOAL3niCTZ
	 xIvj8Z4AWVoG+zaFFnInJ8Xf4a7gVqjxANxaJp6TVhghb0QG1BQFC5aUw18GLFOscs
	 gfEM1/6aqN/4w==
Date: Thu, 22 Apr 2021 10:58:12 -0600 (MDT)
From: Ariadne Conill <ariadne@dereferenced.org>
To: oss-security@lists.openwall.com
In-Reply-To: <4DCB6EF3-73EE-4038-8437-FEB339F20F90@dwheeler.com>
Message-ID: <627170ea-4e1e-1a3d-8291-494eac38c9b@dereferenced.org>
References: <20210422065959.GI13079@scully.more-magic.net> <CAEo4CePqice09K5PPhmxwwF3jg=USrqRqM5FgVX_jCB8sZfDeA@mail.gmail.com> <20210422095945.GA2495@scully.more-magic.net> <4DCB6EF3-73EE-4038-8437-FEB339F20F90@dwheeler.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="0-1328316645-1619110693=:15938"
Subject: Re: [oss-security] Malicious commits to Linux kernel as part of
 university study

--0-1328316645-1619110693=:15938
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

Hello,

On Thu, 22 Apr 2021, David A. Wheeler wrote:

> Peter Bex:
>> The university of Minnesota has been banned from making any commits to
>> the Linux kernel after it was found out they'd been submitting bogus
>> patches to the LKML to knowingly introduce security issues:
>> https://lore.kernel.org/linux-nfs/YH%2FfM%2FTsbmcZzwnX@kroah.com/
>
> I support research, but I personally think this work goes way beyond any ethical boundaries.
> While I don’t know if it’s *illegal* (I’m not a lawyer!), it seems clear to me that these
> U of MN researchers were conducting experiments on people without their prior consent.
> In the US, experiments on people without their consent is generally forbidden.
> These researchers did their experiment *before* even consulting their Institutional Review Board (IRB),
> a *huge* no-no, and then their IRB approved the non-consensual experiment anyway (!!!).
>
> GregKH’s response to this attack from the U of MN here:
> https://lore.kernel.org/linux-nfs/YH%2FfM%2FTsbmcZzwnX@kroah.com/
> which reads in part:
>> Our community welcomes developers who wish to help and enhance Linux.
>> That is NOT what you are attempting to do here...
>> Our community does not appreciate being experimented on...
>
> More discussion: https://news.ycombinator.com/item?id=26887670
>
> Peter Bex:
>> I don't know the scope of this research, but it could involve other OSS
>> projects, now or in the future, as well.  Hence this e-mail.  If you feel
>> it's spam or needless drama, feel free to ignore.
>
> Since the researchers failed to get prior consent from the people
> being experimented on, I don’t think we can presume ethical behavior.
> I have no faith that these researchers limited their attacks.
> I hope they did, but I think we can take more proactive measures.
>
> I used the following shell command to search for potentially-concerning commits in git:
>
> git shortlog --summary --numbered --email | grep -E '(wu000273|kjlu|@umn.edu)'
>
> I recommend other OSS projects do something similar, just in case, unless
> we can have better verification that no other OSS projects were attacked.
> I welcome improved methods to find concerning proposals or patches;
> this is just a quick attempt to detect potential damage.

The paper says that they used throwaway Gmail accounts to submit the 
patches.  Frustratingly, they have not identified which patches they 
succeeded in landing in that paper.

However, the paper also claims that they generated these "hypocrite" 
commits using an LLVM-based static analysis tool.

Which means the work introduced by Aditya is likely directly related to 
this experiment, since it has the same "feel" to it.

By mining the LKML archive, it may be possible to find the original set of 
patch submissions by searching for similar keywords as the messages from 
Aditya.  If somebody can do that, then we would be able to determine at 
least some of the emails likely to have originated the patches.

Ariadne
--0-1328316645-1619110693=:15938--
