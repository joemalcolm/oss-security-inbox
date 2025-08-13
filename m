Received: (qmail 19953 invoked by uid 550); 13 Aug 2025 20:59:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18282 invoked from network); 13 Aug 2025 20:39:11 -0000
Date: Wed, 13 Aug 2025 22:38:57 +0200
From: Erik Auerswald <auerswal@unix-ag.uni-kl.de>
To: oss-security@lists.openwall.com
Message-ID: <20250813203857.GA11693@unix-ag.uni-kl.de>
References: <20250813170058.GE6936@qaa.vinc17.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250813170058.GE6936@qaa.vinc17.org>
Author: Erik Auerswald <auerswal@unix-ag.uni-kl.de>
X-Spam-Status: No, hits=-1.9, tests=BAYES_00=-1.9
X-Spam-Score:  (-1.9)
X-Spam-Flag: NO
Subject: Re: [oss-security] xterm terminal crash due to malicious character
 sequences in file name

Hi,

On Wed, Aug 13, 2025 at 07:00:58PM +0200, Vincent Lefevre wrote:
> The following makes the xterm terminal crash
> 
>   touch "$(printf "file\e[H\e[c\n\b")"
>   gunzip file*
> 
> due to malicious character sequences in the file name and a bug in
> xterm. Same issue with bunzip2 instead of gunzip.

I do not expect this to only happen with gunzip and bzip2.  Does this
happen with any program that prints the filename without any escaping,
e.g., "echo file*", and most programs that print the provided filename
when reporting any associated problem (i.e., all that do not escape or
suppress non-printable filename characters or bytes)?

> [...]

Best regards,
Erik
