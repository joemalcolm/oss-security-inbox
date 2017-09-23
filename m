X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3269" "Saturday" "23" "September" "2017" "15:56:02" "+0200" "Levente Polyak" "levente@leventepolyak.net" "<5af4f41e-2cd6-c40e-16ef-736961903579@leventepolyak.net>" "69" "Re: [oss-security] Why send bugs embargoed to distros?" "^Date:" nil nil "9" "2017092313:56:02" "[oss-security] Why send bugs embargoed to distros?" (number mark "        levente@leve Sep 23   69/3269  " thread-indent "\"Re: [oss-security] Why send bugs embargoed to distros?\"\n") "<20170923134418.6e460656@pc1>" ("<20170923134418.6e460656@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17843 invoked by uid 550); 23 Sep 2017 13:57:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17426 invoked from network); 23 Sep 2017 13:56:37 -0000
References: <20170923134418.6e460656@pc1>
Message-ID: <5af4f41e-2cd6-c40e-16ef-736961903579@leventepolyak.net>
User-Agent: Mutt/1.6.42 (2014-04-01)
MIME-Version: 1.0
In-Reply-To: <20170923134418.6e460656@pc1>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-bounce-key: webpack.hosteurope.de;levente@leventepolyak.net;1506174997;97f27a9f;
X-HE-SMSGID: 1dvkuv-0003Bo-RS
Date: Sat, 23 Sep 2017 15:56:02 +0200
From: Levente Polyak <levente@leventepolyak.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Why send bugs embargoed to distros?
To: oss-security@lists.openwall.com

On 09/23/2017 01:44 PM, Hanno Böck wrote:
> My understanding is that the purpose of the distros list is that
> updates can be prepared so after a disclosure the time between "vuln is
> known" and "patch is available" is short.
> However from all I can see this largely didn't happen.
> 

[...]

> The only distro I'm aware of that prepared packages and pushed them
> right after disclosure is Gentoo.
> 

For Arch Linux I tested the patch beforehand and prepared the changed
buildscripts locally. The final build/release/publication process was
invoked just minutes after the public disclosure and the final artifact
was signed and hit the repository just 20 minutes after the disclosure.
The advisories were sent ~4 hours later once gone through a
peer-reviewing process (yes this could have been done even faster).

But that's not actually the primary goal of your mail, so lets focus on
answering the more important questions below from my personal point of view.

> All of this makes me wonder if the distros list serves its purpose.
> 
> I'd be curious to hear:
> 
> a) if any people felt that pre-disclosure of optionsbleed was helpful
> to them and in which way (after all - even if it only helps minor
> distros and major distros ignore it it may still be a good thing).
> 
> b) if people think that they'd usually prepare a fixed package, however
> they didn't consider optionsbleed important enough. (Naturally I
> probably have a bias seeing my findings as more important as other
> people, but I could live with that.)
> 

I think everyone should have come to the conclusion that this is
potentially pretty bad for a shared hosting environment or anywhere
where non-privileged users are able to fulfill the needed pre-requirements.

Anyway, my personal believe is that the list is important, useful and in
fact definitively helps preparing coordinated releases and doing all
needed work before a final fixed package can be deployed for security
relevant fixes.
Most of the time the provided information (at least for me :P) helps to
analyze and understand the underlying problem and its impact beforehand.
If patches are available (like for optionbleed) those can be tested and
possibly slightly adjusted or discussed when not fitting a specific
version/branch.
All this is part of the whole process before a problem is
analyzed/understood, prioritized, build-requirements adjusted, artifacts
prepared and finally released so being able to do the first steps in a
coordinated way definitively helps.

However, I indeed see your point and understand the frustration and the
reason for your mail demonstrated via the optionbleed case. I neither
say nor believe that every entity did perfectly to provide the users
with fixed packages as that's obviously not the case.
What I try to point out is that the list is IMO far from being useless
and indeed serves its purpose. I think blaming or questioning the list
itself is the wrong conclusion. Instead every entity on its own should
rethink their process, prioritization and possibly lack of resources (I
include myself to do this). This is not meant to anyone as blaming but
we all share the goal to protect the users as good as possible and I
believe that the distros list aids in doing so.

cheers,
Levente
