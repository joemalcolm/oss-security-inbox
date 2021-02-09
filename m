X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1896" "Tuesday" "9" "February" "2021" "16:48:29" "+0100" "Solar Designer" "solar@openwall.com" "<20210209154829.GA4167@openwall.com>" "41" "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil "2" "2021020915:48:29" "[oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" (number mark "U       solar@openwa Feb  9   41/1896  " thread-indent "\"Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?\"\n") "<20201019112249.GA14339@openwall.com>" ("<CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>" "<20201005204820.GA8410@openwall.com>" "<51adb874-f967-5cf7-ffff-a2b871a5455b@spamtrap.tnetconsulting.net>" "<20201019112249.GA14339@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7541 invoked by uid 550); 9 Feb 2021 15:49:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7433 invoked from network); 9 Feb 2021 15:48:50 -0000
Date: Tue, 9 Feb 2021 16:48:29 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20210209154829.GA4167@openwall.com>
References: <CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com> <20201005204820.GA8410@openwall.com> <51adb874-f967-5cf7-ffff-a2b871a5455b@spamtrap.tnetconsulting.net> <20201019112249.GA14339@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201019112249.GA14339@openwall.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?

Hi,

Here are a couple of updates on what was said in this thread earlier.

Things started changing regarding home directory permissions on Ubuntu:

https://lists.ubuntu.com/archives/ubuntu-devel-discuss/2020-November/018842.html
https://discourse.ubuntu.com/t/private-home-directories-for-ubuntu-21-04-onwards/19533

Alex Murray from Canonical proposed "that it is time we moved ahead and
stopped creating home directories as world-readable on Ubuntu".  Later
he added: "since there was no opposition to this proposal, I have
uploaded updated adduser and shadow packages to hirsute-proposed to
support setting the mode of home directories to 750 by default when they
are created via either adduser or useradd."

On Mon, Oct 19, 2020 at 01:22:49PM +0200, Solar Designer wrote:
> > On 10/5/20 2:48 PM, Solar Designer wrote:
> > > Then there's the trend towards having a desktop-like Linux system on
> > > mobile devices again.  Before Android, we had e.g. Maemo and MeeGo.  Now
> > > we have e.g. Ubuntu Touch, postmarketOS, and Sailfish OS.  As far as I'm
> > > aware, so far this means lack of isolation between the apps just like we
> > > have on the desktop.
> 
> BTW, there's a Russian security-hardened fork of Sailfish OS called
> Aurora.  I've skimmed and searched its user's manual (in Russian) for
> any mentions of isolation between the apps - found nothing, so I assume
> there's none.  (This isn't to say they haven't implemented any security
> changes - I think they have.  An interview I read with their CEO
> looked surprisingly reasonable.  However, it appears that addressing
> cross-app attacks is completely out of their focus.)

The release notes for Sailfish OS 4.0.1 include this:

"Contributions from Aurora OS
[...]
Security: Isolation of applications (a.k.a. application sandboxing)
implemented for the platform (core) apps, based on Firejail app
sandboxing."

Alexander
