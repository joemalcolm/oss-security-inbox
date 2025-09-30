Received: (qmail 5515 invoked by uid 550); 30 Sep 2025 06:18:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5188 invoked from network); 30 Sep 2025 06:18:26 -0000
Date: Tue, 30 Sep 2025 08:18:23 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20250930061823.GA26871@openwall.com>
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com> <20250927214013.GA9163@openwall.com> <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com> <20250930052352.GA23546@openwall.com> <1dab9d0b-cd90-406a-81a5-5b20fffe81a5@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-2
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1dab9d0b-cd90-406a-81a5-5b20fffe81a5@gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] How to do secure coding and create secure software

A correction:

On Tue, Sep 30, 2025 at 07:23:52AM +0200, Solar Designer wrote:
> A malicious HTTP client connects to the HTTP server and requests an URL
> corresponding to the CGI script.  It uses the PUT method.  It passes a
> header named GET_SHELL_FUNCTION with a value that defines a shell
> function body, which ends up injected and executed.

This should be PUT_SHELL_FUNCTION in place of GET_SHELL_FUNCTION.

On Tue, Sep 30, 2025 at 01:02:01AM -0500, Jacob Bachmeyer wrote:
> On 9/30/25 00:23, Solar Designer wrote:
> >[...]
> >So is the vulnerability in the shell, like Shellshock was determined to
> >be?  [...] the shell maintainers may well dispute this CVE on
> >such grounds as well as because the shell worked exactly as documented. 
> >[...]
> 
> Small nit here:  Shellshock was clearly a vulnerability in Bash and I am 
> unsure if the way Bash exports shell functions was documented at all.

I agree, which is why I invented a different and documented alternative
for the sake of this example.

> If presented with an environment variable value having the correct form 
> for a shell function, but containing more text than the body of the 
> function, Bash would immediately execute the trailing text as commands 
> while importing the shell function from the environment.  That was 
> Shellshock.

Yes, there were multiple Shellshock-related code issues in bash, and
several CVEs were rightly assigned against bash.  No arguing about that.
Also, the proper Shellshock was exposed as a vulnerability by far not
only through HTTP servers, since it parsed variables of any names.

My point is that a similar documented and correctly implemented feature
could also become a vulnerability in some interactions.

Now let's be winding this thread down, please.

Alexander
