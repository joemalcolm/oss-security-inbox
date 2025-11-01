Received: (qmail 5949 invoked by uid 550); 1 Nov 2025 19:36:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5903 invoked from network); 1 Nov 2025 19:36:06 -0000
From: Russ Allbery <eagle@eyrie.org>
To: oss-security@lists.openwall.com
In-Reply-To: <20251101030054.GA3031@openwall.com> (Solar Designer's message of
	"Sat, 1 Nov 2025 04:00:54 +0100")
Organization: The Eyrie
References: <aP_msOoiyHJ_M4Yx@mertle>
	<20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com>
	<20251028014909.GA6430@openwall.com>
	<76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com>
	<20251101030054.GA3031@openwall.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Date: Sat, 01 Nov 2025 12:35:56 -0700
Message-ID: <875xbtlf4z.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

Solar Designer <solar@openwall.com> writes:

> I don't think a "check that the config file is root-owned and not
> user-writable" would be relevant since a maybe-relevant threat model
> involves config files intentionally created by other software such as a
> web UI, which would set permissions such that the file is processed, and
> since such checks are uncommon and the lack of them does not mean the
> software supports untrusted config files.

> Other than that, I see that this gets tricky for a CNA to evaluate
> without input from the maintainers, so I may have been unnecessarily
> harsh on VulDB.

This is a bit of an "ask the Lazyweb" question since I have done only
minimal research, but is there any way for me to declare, as the software
maintainer, what I consider to be the security boundaries of the software
in a way that can be at least partially machine-readable? I know there are
tons of modeling languages for *building* software, imposing or checking
access control, etc., but is there a way for me to *label* a free software
project to communicate information such as "edit access to the
configuration file is arbitrary code execution by design"?

It feels like this problem is arising regularly with automated and
semi-automated security testing and fuzzing, and there are regular
complaints about security "bugs" that the maintainer considers meaningless
because they don't cross a privilege boundary in the maintainer's model,
and then endless disputes about edge-case usage where no, actually, that
is a security boundary.

I don't think the argument over what the security boundary should be in
the abstract is winnable; there will always be someone who disagrees. But
documentation of the *maintainer's* intended security boundary is an
objective fact about the software maintenance practices. If the maintainer
says "if you can write to the configuration file / inject arbitrary
command line parameters / control the input to the program, the program
will execute arbitrary code and this is by design and I'm not going to
change it," this feels like useful information for both users and security
researchers. Or even if the answer is that weird behavior in that scenario
will be considered a bug but not a security issue, and therefore won't be
treated with much urgency, won't result in a new software release when
fixed, won't be backported, etc.

One can disagree with the maintainer and try to change the maintainer's
mind, but failing that, if you want a different security model than what
the software declares it supports, the answer is to use a different piece
of software (such as a fork) or enforce the security boundary yourself
somehow, not to file a CVE.

It would be really nice if the maintainer could somehow declare this in
such a way that CVE issuers could retrieve that declaration and check the
CVE report against it, ideally in a semi-automated fashion. I say "semi"
because I think a human will have to be involved to some extent, or the
expression language problem will be too hard, but it would be nice if
automation could take a reliable first cut at filtering things down to the
bits a human has to look at.

Beyond the perpetually-discussed case of configuration files, since there
are indeed some programs that consider configuration file parsing to be a
security boundary and treat failure to safely parse an attacker-controlled
configuration file as a security bug, this would also provide a way to
represent the difference between (to exaggerate for clarity) a command to
do malware scanning (should be runnable on arbitrary untrusted input) and,
say, "bash" or "python" (will never be possible to run on arbitrary
untrusted input by design).

I can of course stick such a statement in the documentation and the
security bug reporting instructions and so forth, and that would be a good
start and I'm not doing that in all the places that I should, but if we
could agree on a language for representing this, that feels a bit more
satisfying. Part of the ongoing problem is a constant fight over
definition of terms, so having some pre-defined terms feels useful.

-- 
Russ Allbery (eagle@eyrie.org)             <https://www.eyrie.org/~eagle/>
