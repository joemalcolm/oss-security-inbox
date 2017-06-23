X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3038" "Friday" "23" "June" "2017" "08:12:39" "+0100" "Simon McVittie" "smcv@debian.org" "<20170623071216.ddio6ve4f54yy2hf@perpetual.pseudorandom.co.uk>" "59" "Re: [oss-security] CVE-2017-9780: Flatpak: privilege escalation via setuid/world-writable file permissions" nil nil nil "6" "2017062307:12:39" "[oss-security] CVE-2017-9780: Flatpak: privilege escalation via setuid/world-writable file permissions" (number mark "U       smcv@debian. Jun 23   59/3038  " thread-indent "\"Re: [oss-security] CVE-2017-9780: Flatpak: privilege escalation via setuid/world-writable file permissions\"\n") "<af227933-a69f-6a1f-5ab1-00a1031e8819@redhat.com>" ("<20170622210110.zqlh2rn5cnzsre65@perpetual.pseudorandom.co.uk>" "<af227933-a69f-6a1f-5ab1-00a1031e8819@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30329 invoked by uid 550); 23 Jun 2017 07:12:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30305 invoked from network); 23 Jun 2017 07:12:59 -0000
Date: Fri, 23 Jun 2017 08:12:39 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20170623071216.ddio6ve4f54yy2hf@perpetual.pseudorandom.co.uk>
References: <20170622210110.zqlh2rn5cnzsre65@perpetual.pseudorandom.co.uk>
 <af227933-a69f-6a1f-5ab1-00a1031e8819@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <af227933-a69f-6a1f-5ab1-00a1031e8819@redhat.com>
User-Agent: NeoMutt/20170306 (1.8.0)
Subject: Re: [oss-security] CVE-2017-9780: Flatpak: privilege escalation via
 setuid/world-writable file permissions

On Fri, 23 Jun 2017 at 07:37:54 +0200, Florian Weimer wrote:
> On 06/22/2017 11:01 PM, Simon McVittie wrote:
> > * If you are using Flatpak to install apps from a third-party vendor,
> >   then there is already a trust relationship: the app is sandboxed, but
> >   the third-party vendor chooses what parameters are used for the sandbox.
> 
> Doesn't this qualify as a vulnerability in its own right?  Flatpak
> advertises countermeasures against malicious applications

Hmm, yes, that mitigation is overstated. The extent of the trust
relationship depends whether you consider the arbiter of app permissions
to be the user of Flatpak (who has the opportunity to check and deny
requested permissions, but will frequently not take that opportunity)
or the repository maintainer (the app author sets the permissions that
will be used in the absence of further user action, and the repository
maintainer chooses what apps they are willing to publish).

The flatpak(1) low-level CLI tool is non-interactive (CLI, not TUI), so
it can't prompt for acceptance/rejection of permissions, but they can
be viewed between installation and run with "flatpak info", and taken
away (or indeed added) with "flatpak override". I believe the intention
is that interactive GUIs for Flatpak (like GNOME Software) will query
requested permissions in advance[1], more like the way Android does it.

CVE-2017-9780 applies after merely installing a Flatpak app, even if
the user intends to remove permissions before running it, so it breaks
that model.

> Flatpak's sandboxing technology prevents exploits and hinders malicious
> applications.

I think "prevents exploits" is stronger than is justified (I didn't
write that text). If nothing else, most current Linux desktops use X11,
which has very little privilege separation; and in practice GUI Flatpak
apps all ask for access to the X11 socket, because otherwise their GUIs
would not work on non-Wayland systems.

The sandbox certainly *hinders* malicious applications - in particular
some aspects of the sandbox, such as NO_NEW_PRIVS, cannot be turned off
by configuration - but it is not enough to render malicious code
harmless to run.

I would recommend talking to Flatpak's maintainer directly if you have
comments on this - I am not going to be adding useful value by acting
as a man-in-the-middle.

    S

[1] Where possible, user consent for actions outside the sandbox is
    obtained at the time of use by "portals": for instance opening
    a file outside the sandbox is mediated by an ordinary File->Open
    dialog running outside the sandbox, and only the user-selected
    file is made available inside the sandbox. However, not all
    permissions are feasible to use this way; in particular, the
    framework needs to know when the app is run whether to set up
    an isolated network namespace or allow sharing the host's
    network namespace. In the above, and when I wrote "parameters
    for the sandbox" in the advisory, I mean the permissions that
    can't be prompted for on-use.
