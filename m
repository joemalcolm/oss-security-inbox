Received: (qmail 11796 invoked by uid 550); 30 Sep 2025 05:24:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9478 invoked from network); 30 Sep 2025 05:24:11 -0000
Date: Tue, 30 Sep 2025 07:23:52 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20250930052352.GA23546@openwall.com>
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com> <20250927214013.GA9163@openwall.com> <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] How to do secure coding and create secure software

Hi,

Let's wind this thread down.  As a moderator, I already rejected 4
postings (3 by Amit, 1 arguing with him), and if necessary will reject
more.  Further postings to this thread, if any, will have to add value
on top of what was already said.  The 4 rejected postings did not.

There's no goal of challenging any one subscriber, nor convincing any
one particular person of anything.  The discussion should be generally
helpful and relevant to the community here.

On Sun, Sep 28, 2025 at 09:05:15AM +0530, Amit wrote:
> Everyone has said more or less the same thing that even if in a software
> all functions are secure then this doesn't mean that the software will be
> secure.
> 
> But the point is that this is what people have said and this is all
> theoretical.
> 
> Can someone give an example as to how a software made up of secure
> functions can be hacked?

Consider the below two C programs made from secure functions.  These
implement /bin/su.  If one is secure, the other is not.

#include "secure_functions.h"
int main(void)
{
	if (secure_auth(secure_password_prompt()) == AUTH_PASSED)
		return secure_spawn_shell();
	return 1;
}

#include "secure_functions.h"
int main(void)
{
	if (secure_auth(secure_password_prompt()) != AUTH_PASSED)
		return secure_spawn_shell();
	return 1;
}

You could try to disqualify this example by saying that main() is also a
function and its body should also be secure to qualify, but I had
addressed this in my first reply:

You claim that "If functions/methods are secure then the whole software
is secure."  If we talk C where main() is also a function, and limit the
definition of "whole software" to one program, then I'd agree - your
claim can as well directly say "if [all functions including] main() are
secure then the whole software [meaning this one program only] is
secure."  While true, under those definitions this isn't a useful claim.

So either my example above is valid, or your claim is useless, depending
on your choice of definitions.  You choose, and it is unimportant to the
rest of us which choice you make for yourself.  We have no use for a
false claim, and we have no use for a useless claim.

> Let's assume that there are 2 (or more) different software and all the
> functions in all the software are secure and these software are interacting
> with each other. Then how can they be hacked? Can someone give an example.

Program 1 is a Unix shell that uses environment variables to pass
exported functions from a parent shell to a subshell.  The shell
suffixes the function names with _SHELL_FUNCTION to form the variable
names and puts the function bodies into those variables.  Any invocation
of the shell (which may be a subshell or not) imports all environment
variables with names ending in _SHELL_FUNCTION and processes them to
define such shell functions.  (This is similar to bash Shellshock, but a
bit different so that it "obviously" isn't a vulnerability per se.)

Program 2 is a web server capable of running CGI programs.  It parses
HTTP headers and prefixes each header name (provided by any untrusted
HTTP client) with HTTP_ to form environment variable names, and it sets
the variables to the header values.  (This is how common HTTP servers
actually work, and it "obviously" isn't a vulnerability per se.)

Program 3 is a CGI script written in the Unix shell language, and using
the shell.  It has functions invoked on different HTTP request methods,
with functions HTTP_GET and HTTP_POST currently defined.  The script
prefixes the request method with HTTP_ and calls the function with that
name.  If an unknown HTTP method is requested, the script fails securely
since there's no corresponding function.

All functions in these 3 programs are secure.  Also, all 3 programs
individually implement strictly their documented behavior, which in
isolation can reasonably be considered secure.

A malicious HTTP client connects to the HTTP server and requests an URL
corresponding to the CGI script.  It uses the PUT method.  It passes a
header named GET_SHELL_FUNCTION with a value that defines a shell
function body, which ends up injected and executed.

The injected function may also be secure: it is the attacker's function,
and it may implement strictly the documented behavior that the attacker
wants.  In fact, in isolation it may also be deemed secure even if
reviewed by the server owner, unaware of where this function would be
used.  "Oh, this function runs a provided arbitrary shell command
exactly as documented in the comment, and follows my friend Amit's
secure shell script coding guidelines so diligently."

Yet the server gets hacked.

Where to place blame?  What to fix?  Realistically, the more established
and externally relied-upon convention will stay, in this case the HTTP
server's use of HTTP_ variables.  The shell will probably be modified to
avoid this unfortunate interaction, such as switching from usage of a
suffix to a prefix.  The CGI script may be hardened to use an additional
allow-list of HTTP request names prior to trying to call a function, in
case its new version is installed on a system with non-updated shell.
So is the vulnerability in the shell, like Shellshock was determined to
be?  CVE-wise, this would probably be the case here as well, although
without the rest of the ecosystem being like that there's no
vulnerability, and the shell maintainers may well dispute this CVE on
such grounds as well as because the shell worked exactly as documented.
Yet sysadmins will want this CVE against the shell to stay because that
is the package they need security scanners to flag as needing an update.
Even though the HTTP server could be considered the vulnerable component
just as well, if it weren't too big to fail.  Such is life.

> Someone also mentioned that secure functions having limits on arguments can
> result in DoS. In my opinion, DoS is better than getting hacked.

I did, and I generally agree.  BIND 9 is better than BIND 8.  However,
those BIND 9 DoS vulnerabilities do have to be fixed one by one anyway,
which is being done.

If you were to introduce arbitrary limits and just crash the server on
exceeding those, and would refuse to fix that because it's part of your
secure design, then this wouldn't be received well by the sysadmins and
they'd choose an alternative that isn't so "secure".

I'm not strictly opposed to having sane arbitrary limits, but they and
the handling of failures should be carefully chosen to fit all of the
function's use cases.  It's one thing to reject one request, and it's a
different thing to crash the service for all users.

Alexander
