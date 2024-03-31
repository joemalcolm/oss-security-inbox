Received: (qmail 28001 invoked by uid 550); 31 Mar 2024 21:30:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26399 invoked from network); 31 Mar 2024 21:30:23 -0000
Date: Sun, 31 Mar 2024 23:30:23 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: David Leadbeater <dgl@dgl.cx>
Message-ID: <20240331213023.GA22787@openwall.com>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de> <ZgcOVnk5hCVkDUt/@ycc.fr> <uu9f4s$oga$2@ciao.gmane.io>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <uu9f4s$oga$2@ciao.gmane.io>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh server compromise

On Sat, Mar 30, 2024 at 04:37:48PM -0000, Tavis Ormandy wrote:
> It was also pointed out they submitted an odd PR to libarchive:
> 
> https://github.com/libarchive/libarchive/pull/1609
> 
> In summary, they replaced calls to safe_fprintf() with fprintf() --
> meaning control characters are no longer filtered from errors. That
> seems pretty minor, but now that we know they were in the business of
> obfuscating the presence of backdoors -- seems a bit suspicious.
> 
> Regardless, that change has now been reverted:
> 
> https://github.com/libarchive/libarchive/pull/2101

This does look minor indeed - not usable for large-scale attacks, and
libarchive is quite unique in that it even bothered to filter control
characters, whereas most command-line tools outputting filenames don't
bother.  My guess is it could have been an early experiment to see
whether the project would accept PRs degrading security.

That said, here's an excellent write-up by David Leadbeater on specific
ways that specific terminal emulators may be usefully attacked with
control sequences:

https://dgl.cx/2023/09/ansi-terminal-security#vulnerabilities-using-known-replies

It's been mentioned in here before.  I just wish David would post a full
text version of it to oss-security in separate thread.

Alexander
