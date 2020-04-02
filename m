X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3109" "Wednesday" "1" "April" "2020" "18:46:43" "-0700" "Russ Allbery" "eagle@eyrie.org" nil "55" nil "^Date:" nil nil "4" nil nil (number mark "        eagle@eyrie. Apr  1   55/3109  " thread-indent "\"Re: [oss-security] Deficient engineering processes\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Deficient engineering processes" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19778 invoked by uid 550); 2 Apr 2020 01:46:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19760 invoked from network); 2 Apr 2020 01:46:57 -0000
In-Reply-To: <CAH8yC8=P-5i_0WT-AWSJ65JeY1C3BrB7p9e+4SCtH938H5ZqVA@mail.gmail.com>
	(Jeffrey Walton's message of "Wed, 1 Apr 2020 19:42:38 -0400")
Organization: The Eyrie
References: <CAH8yC8=P-5i_0WT-AWSJ65JeY1C3BrB7p9e+4SCtH938H5ZqVA@mail.gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
Message-ID: <87a73uek1o.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
Date: Wed, 01 Apr 2020 18:46:43 -0700
From: Russ Allbery <eagle@eyrie.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Deficient engineering processes
To: oss-security@lists.openwall.com

Jeffrey Walton <noloader@gmail.com> writes:

> My question is, how to convince someone that following standard project
> management procedures is a good thing? How do we get them onboard with
> improving their engineering processes? Especially the evaluation phase,
> and leveraging a continuous integration pipeline to detect errors before
> they are released to users?

I would start by mentally dividing this into two cases: People who
consider security a top priority but don't know how to think about it
systematically, and people who don't currently have security as a focus.

The first group is the easy one, relatively speaking.  There will be
disagreements about what are valid root causes (for instance, is it
correct to identify the choice of programming language as a root cause for
classes of vulnerabilities?), but even with those disagreements, there are
a wealth of tools available for essentially any language, and showing
people how to apply them better if they're already interested in
preventing security problems is straightforward, if sometimes
labor-intensive if the code base isn't very testable.

The harder problem is when security isn't a top priority.  I don't think
you'll find many people who won't at least give lip service to security,
but that doesn't mean they're willing to invest in process to improve
security.  This is particularly true in the broader world of small open
source projects without corporate sponsors.  The maintainer may have only
a couple of hours a month to work on their project.  If they spend that
time improving engineering process, that may be all of their available
time for six months, and in the interim no other improvements to the
software happen.

Worse, improved process usually means increased fixed overhead costs.  A
CI pipeline will catch a lot of bugs and thus accelerate development in
some ways, but it will also break randomly and generate new problems that
have to be fixed (problems that are often much less fun than problems in
the main code).  I personally spend substantial amounts of time fixing or
working around bugs in the CI pipeline for my personal projects.  That
cuts into that couple of hours a month, possibly reducing it to zero.

In other words, I would argue that security for most open source projects
(by number, at least) is a resource problem, not a persuasion problem.
Their authors are not investing in engineering process improvement in
large part because they don't have time to both do that and to do the work
on their project that they find fun and that inspired them to release it
as open source in the first place.

That implies that the solution to look for isn't a winning persuasive
argument, but instead is a way to get the developer more resources, either
by somehow getting them more time to work on their project or by making
the cost of better engineering process substantially smaller than it is
now.  GitHub's automated pull requests for dependencies with security
vulnerabilities is a good example of the latter.

-- 
Russ Allbery (eagle@eyrie.org)             <https://www.eyrie.org/~eagle/>
