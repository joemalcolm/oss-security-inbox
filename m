Received: (qmail 3426 invoked by uid 550); 11 May 2024 11:22:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1378 invoked from network); 11 May 2024 11:21:30 -0000
Date: Sat, 11 May 2024 13:21:23 +0200
From: Solar Designer <solar@openwall.com>
To: Corey Lopez <Corey.lopez09160587@hotmail.com>
Cc: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <20240511112123.GA2064@openwall.com>
References: <BYAPR03MB4903AF4B05EDB627E47C9370EBE72@BYAPR03MB4903.namprd03.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BYAPR03MB4903AF4B05EDB627E47C9370EBE72@BYAPR03MB4903.namprd03.prod.outlook.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Microsoft Device Firmware Configuration Interface (DFCI) in Linux efivars directory

Hi,

Corey's message is confused and there's no indication in it whether the
system was compromised, so that part doesn't need further discussion,
but as a moderator I don't mind someone explaining Linux's (and other
systems') exposure of the EFI variables and DFCI and what it means for
security as well as what it does not.

On Fri, May 10, 2024 at 01:19:35PM +0000, Corey Lopez wrote:
> investigate other files on my system with the immutable attribute set by running this
> command as root:
> 
> # find / -type f -exec lsattr {} + 2>/dev/null > immutable-list-find.txt
> 
> This led me the directory /sys/firmware/efi/efivars/ where I discovered efi variables

That's normal.

> Microsoft advertises DFCI as a defense mechanism against rootkits, however it seems that it
> is being used as a UEFI bootkit.

No reason to think so.

> I did discover loop devices on my system that I could not remove with the 
> losetup command.

That's probably because they were in use.  That's normal.

Alexander
