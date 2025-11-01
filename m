Received: (qmail 25989 invoked by uid 550); 1 Nov 2025 21:55:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25928 invoked from network); 1 Nov 2025 21:55:02 -0000
From: Russ Allbery <eagle@eyrie.org>
To: Demi Marie Obenour <demiobenour@gmail.com>
Cc: oss-security@lists.openwall.com
In-Reply-To: <fa732776-855f-42e8-b645-b2c3f13413f2@gmail.com> (Demi Marie
	Obenour's message of "Sat, 1 Nov 2025 17:12:42 -0400")
Organization: The Eyrie
References: <aP_msOoiyHJ_M4Yx@mertle>
	<20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com>
	<20251028014909.GA6430@openwall.com>
	<76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com>
	<20251101030054.GA3031@openwall.com> <875xbtlf4z.fsf@hope.eyrie.org>
	<fa732776-855f-42e8-b645-b2c3f13413f2@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Date: Sat, 01 Nov 2025 14:54:51 -0700
Message-ID: <87fraxju50.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

Demi Marie Obenour <demiobenour@gmail.com> writes:
> On 11/1/25 15:35, Russ Allbery wrote:

>> This is a bit of an "ask the Lazyweb" question since I have done only
>> minimal research, but is there any way for me to declare, as the
>> software maintainer, what I consider to be the security boundaries of
>> the software in a way that can be at least partially machine-readable?
>> I know there are tons of modeling languages for *building* software,
>> imposing or checking access control, etc., but is there a way for me to
>> *label* a free software project to communicate information such as
>> "edit access to the configuration file is arbitrary code execution by
>> design"?

> Even this gets tricky.  For instance, it is trivially unsafe to pass
> untrusted input to a shell *without properly escaping it first*.
> However, if the untrusted input is properly escaped, then it is the
> shell's job to process the data correctly.  The same goes for kernel
> command lines in libvirt XML configurations, SaltStack reactor YAML,
> Vim script command arguments, and almost certainly many, many more
> situations that I am not even aware of.

Certainly, I'm simplifying. Developing some sort of language to talk about
this is more than an afternoon with a Markdown editor. But at least in
theory, it feels like it should be possible to say things like that in
some sort of structured way.

untrusted-input: unsafe
untrusted-input: if-escaped
untrusted-input: safe

Obviously this is massively oversimplified, needs more thought than a lazy
Saturday afternoon in an email message, and humans will probably still
need to interpret it. I very much doubt you can describe these things in a
way that's truly unambiguous.

But even that very simple example is somewhat helpful, no? If the program
declares "untrusted-input: unsafe" and you get a CVE submission
complaining about the escaping mechanism not working, well, the maintainer
said right there in black and white that they don't intend for that to be
a safe operation even with escaping, so go talk to the maintainer if that
makes you unhappy, but this is probably not a CVE.

It's an interesting point that bash's policy is more like "if-escaped",
although honestly bash is probably just a bad example and there should be
some entirely separate option like "interpreter" to capture the case that
the input is interpreted as a program in some programming language with
properties way too complicated to capture in this sort of mechanism.

Anyway, I don't mean to try to hash out the details of such a language
here because all the points you're raising are good ones and this is
exactly why I was wondering if someone has already done the work to think
through all of this. :)

> In the dnsmasq case, it definitely isn't okay to pass a fully
> untrusted config file.  However, I think it is reasonable to allow IP
> or MAC addresses and certain DHCP option values to come from sources
> that are less than fully trusted, provided that they are valid and
> properly encoded.

Sure, that's the sort of thing that ideally the maintainer should be able
to capture in some sort of structured way.

They also should be able to capture the opposite! There should be some
mechanism to say "regardless of whether you think this should be safe, I
am not going to maintain this software in such a way that I will make any
guarantees about its safety." You may not *like* that position, but that's
the point: It communicates useful information that you really want to
know! And does so in a way that isn't quite as confrontational as a lot of
these CVE arguments end up being, and is happening *before* someone finds
some problem instead of after.

Also, this seems useful to know as a user of the software. In the absence
of any additional information, I may make assumptions about what is and
isn't safe that are wrong. I'd rather find out that the maintainer
disagrees with me before I deploy the software somewhere critical.

Ideally everyone would write wonderful documentation about these edge
cases and everyone would read all of the documentation before deploying
software, but, well, you know.

I don't know if there's some sweet spot here for a machine-readable policy
that is sufficiently useful to be worth the additional effort of writing
the labels. Maybe the answer is just "that's what the documentation is
for; maintainers should write better documentation and users and security
researchers should actually read it." But it feels like that's what we're
trying right now and I'm not sure it's working that well.

something more
machine-readable would help, but it might.

-- 
Russ Allbery (eagle@eyrie.org)             <https://www.eyrie.org/~eagle/>
