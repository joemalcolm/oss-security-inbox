Received: (qmail 28492 invoked by uid 550); 18 Apr 2025 23:25:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28305 invoked from network); 18 Apr 2025 23:24:55 -0000
Date: Sat, 19 Apr 2025 01:20:31 +0200
From: Solar Designer <solar@openwall.com>
To: Fabian =?utf-8?Q?B=C3=A4umer?= <fabian.baeumer@rub.de>
Cc: oss-security@lists.openwall.com, Matt Keeley <keeley55@me.com>
Message-ID: <20250418232031.GA18802@openwall.com>
References: <088f2e26-c56c-4045-a822-359d468cad2f@rub.de> <5134cbea-7c3f-4270-b70d-70d624fb6044@rub.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5134cbea-7c3f-4270-b70d-70d624fb6044@rub.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2025-32433: Unauthenticated Remote Code Execution in Erlang/OTP SSH

Hi Fabian,

Thank you very much for this discovery and for the additional detail.

On Fri, Apr 18, 2025 at 02:01:44PM +0200, Fabian Bäumer wrote:
> Now, what prevented detection of this vulnerability by tools like 
> SSHambles, is that the server does not respond to these requests.

For others looking this up, it's actually SSHamble (without the "s"):

https://www.runzero.com/sshamble/
https://github.com/runZeroInc/sshamble

How did your team find this vulnerability?  Manual auditing?  Different
tool?  A formal verification project?

> >### Am I affected?
> >
> >All users running an SSH server based on the Erlang/OTP SSH library 
> >are likely to be affected by this vulnerability. If your application 
> >uses Erlang/OTP SSH to provide remote access, assume you are affected.

This has some additional detail on Elixir/Phoenix:

https://paraxial.io/blog/erlang-ssh

"The default configuration for Phoenix does not expose the Erlang SSH
daemon to the public internet. It is technically possible you are
vulnerable if your application does expose Erlang's SSH daemon, for
example Elixir sftp clients do this."

Regarding Matt Keeley's exploit I posted yesterday, they now have a blog
post explaining how the exploit was created mostly by AI:

https://platformsecurity.com/blog/CVE-2025-32433-poc

That's very impressive, although it might have been helped by the fix
containing a regression test, which already was almost a public PoC:

https://github.com/erlang/otp/commit/6eef04130afc8b0ccb63c9a0d8650209cf54892f#diff-156a6329570e311c82b40c32d19acb37ef6d03339219ea18cd2a2a4e5649c8e5R390

as it included the main steps:

early_rce(Config) ->
[...]
           {send, hello},
           {send, ssh_msg_kexinit},
           {match, #ssh_msg_kexinit{_='_'}, receive_msg},
           {send, SshMsgChannelOpen},
           {send, SshMsgChannelRequest},

Alexander
