Received: (qmail 3404 invoked by uid 550); 13 Mar 2025 04:14:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1410 invoked from network); 13 Mar 2025 04:14:27 -0000
Date: Thu, 13 Mar 2025 05:14:07 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20250313041407.GA20847@openwall.com>
References: <Z9H7D+X11A121Mkg@256bit.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z9H7D+X11A121Mkg@256bit.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] [vim-security] potential data loss with zip.vim and special crafted zip files in Vim < v9.1.1198

On Wed, Mar 12, 2025 at 10:22:23PM +0100, Christian Brabandt wrote:
> Therefore, Vim will try to work-around it by using the `[-]` glob when a
> filename starts with a `-` to protect unzip from parsing the filename as
> an argument, which is just an ugly work-around.

I was puzzled by this.  I expected that if you were running unzip via
the shell, then the glob pattern would be expanded back to a simple dash
before being passed to unzip, and if you were running unzip directly
then the glob pattern would never be expanded, so the brackets would
break the intended behavior.  However, it appears that unzip itself
expands glob patterns even for archive names (not only for matching
files in archives)?  I guess this is unexpected by many unzip users, and
it likely allows for other attacks on unzip and on the zip.vim plugin,
by providing a filename that includes glob patterns in it so that a
different archive would be processed.

Otherwise, a workaround for the original issue would be to prefix the
filename with ./ as we most recently discussed in this thread:

https://www.openwall.com/lists/oss-security/2024/11/06/1

Alexander
