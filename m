Received: (qmail 27869 invoked by uid 550); 30 Sep 2025 16:54:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24571 invoked from network); 30 Sep 2025 16:53:51 -0000
Date: Tue, 30 Sep 2025 18:53:46 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20250930165346.GA28712@openwall.com>
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com> <20250927214013.GA9163@openwall.com> <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com> <20250930052352.GA23546@openwall.com> <1dab9d0b-cd90-406a-81a5-5b20fffe81a5@gmail.com> <20250930061823.GA26871@openwall.com> <CAFf+5zio7VxKn_9sDoRc7ap5D8m5LDfWBn5AOd54jLU5Veh4NQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFf+5zio7VxKn_9sDoRc7ap5D8m5LDfWBn5AOd54jLU5Veh4NQ@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] How to do secure coding and create secure software

On Tue, Sep 30, 2025 at 02:54:58PM +0530, Amit wrote:
> Definitely, let's wind down this thread.
> 
> My final point:

Message accepted assuming that it is indeed final.  No further messages
from you on this topic are likely to be accepted, so please don't bother
writing any.

> My whole idea was that a normal programmer doesn't know
> that if all functions (including main) are secure then the software will be
> secure. And the programmer should only worry about making his/her functions
> secure and not think about the whole software and the programmer doesn't
> need to think about side-channel attacks, buffer-overflow attacks, etc.
> Basically, I have narrowed down the security of the software to the
> functions. And that's why I wrote that article to educate
> programmers/people.
> 
> But it looks like people here think that my article is useless. It is fine
> with me. I know that not everyone in the world will agree with me.

Basically, you're just trolling.  But it is unimportant that you do.  We
nevertheless had a few valid and interesting points made in this thread.

> Developers (whether closed source or open source) don't take input
> validation seriously - in glibc/POSIX, many functions don't validate the
> inputs and cyberattackers have taken advantage of glibc vulnerabilities in
> the past (like buffer overflow, etc.). It is also very easy to crash
> glibc/POSIX functions.

Not replying to you, but for others on the list:

Input validation is important, but it is also important to distinguish
genuine vulnerabilities (something not working as documented/expected in
a way that results in unexpected security risks) from explicit design
choices (delegation of responsibility, such as libc functions being
generic and low-level enough that it's typically not their job to
validate their inputs).  That said, in some cases there's reasonable
room for security hardening including function input validation beyond
what's required by POSIX, such as what's already implemented with
glibc's _FORTIFY_SOURCE, or glibc qsort() having recently been made
robust with respect to nontransitive comparison functions.

Alexander
