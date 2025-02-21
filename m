Received: (qmail 5296 invoked by uid 550); 21 Feb 2025 22:31:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3992 invoked from network); 21 Feb 2025 22:31:00 -0000
Date: Fri, 21 Feb 2025 23:30:56 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20250221223056.GA28742@openwall.com>
References: <Z7jxsQoV9FdncT-v@jumper.schlittermann.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z7jxsQoV9FdncT-v@jumper.schlittermann.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2025-26794: Exim: SQL injection

On Fri, Feb 21, 2025 at 10:35:45PM +0100, Heiko Schlittermann wrote:
> today, 12:00 UTC we published an Exim security release: exim-4.98.1
> For further details please see https://exim.org/static/doc/security/CVE-2025-26794.txt

Here's the actual content from the web page above:

> # CVE 2025-26794
> 
> - Sat, 08 Feb 2025 21:14:37 +0100: reported
>   - by: "Oscar Bataille" <batailleoscar@protonmail.com>
>   - to: security@exim.org
> - Sun, 9 Feb 2025 00:00:05 +0100: report confirmed
> - Tue, 11 Feb 2025 00:23:34 +0100: issue confirmed
> - Tue, 11 Feb 2025 00:23:34 +0100: issue confirmed
> - Tue, 11 Feb 2025 12:54:10 +0000: CVE ID requested
> - Fri, 14 Feb 2025 04:19:13 -0500: CVE ID 2025-26794 received
> - Tue, 18 Feb 2025 20:56:25 +0100: sent notification to <distros@vs.openwall.org>
> - Wed, 19 Feb 2025 23:07:02 +0100: sent notification to <oss-security@lists.openwall.com>, and <exim-users@lists.exim.org>
> - Wed, 19 Feb 2025 23:07:02 +0100: sent notification to <oss-security@lists.openwall.com>, and <exim-users@lists.exim.org>
> - Thu, 20 Feb 2025 18:36:34 +0100: sent notification to <exim-announce@lists.exim.org>
> - Fri, 21 Feb 2025 13:00:00 +0100: published the changes on https://code.exim.org/exim/exim.git
> 
> 
> ## Details
> 
> A SQL injection is possible.
> 
> The following conditions have to be met for being vulnerable:
> 
> - Exim Version 4.98
> - Build time option _USE_SQLITE_ is set (it enables the use of SQLite
>   for the hints databases) -- check the output of `exim -bV`, whether it
>   contains
>   ```
>   Hints DB:
>     Using sqlite3
>   ```
> - Runtime config enables ETRN (`acl_smtp_etrn` returns _accept_
>   (defaults to _deny_))
> - Runtime config enforces ETRN serialization (`smtp_etrn_serialize` is
>   set to _true_ (defaults to _true_))
> 
> ## Acknowledgements
> 
> Thanks to Oscar Bataille for discovering and reporting this issue in a
> responsible manner.

Alexander
