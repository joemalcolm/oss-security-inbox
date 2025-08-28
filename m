Received: (qmail 15961 invoked by uid 550); 28 Aug 2025 17:56:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14219 invoked from network); 28 Aug 2025 17:55:48 -0000
Date: Thu, 28 Aug 2025 19:55:40 +0200
From: Solar Designer <solar@openwall.com>
To: Marco Benatto <mbenatto@redhat.com>
Cc: oss-security@lists.openwall.com, Tomas Bzatek <tbzatek@redhat.com>,
	Marc Deslauriers <marc.deslauriers@canonical.com>
Message-ID: <20250828175540.GA16855@openwall.com>
References: <CAOGQQ28=RumQ21g-PFw=hNX3qpkyViYzCjPPqZLVJu8SWry05A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAOGQQ28=RumQ21g-PFw=hNX3qpkyViYzCjPPqZLVJu8SWry05A@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2025-8067 - UDisks

Hi,

Thank you Marco and Tomášor handling this disclosure so well!

I'll add below a little piece of discussion from the distros list, which
I think may be helpful to a wider audience.

On Thu, Aug 28, 2025 at 04:41:50PM +0200, Tomáš Bžatek wrote:
> On Wed, 2025-08-27 at 23:01 +0200, Solar Designer wrote:
> > I looked a bit into exposure of this vulnerability for attack:
> > 
> > I checked a few Linux server systems, and I do not see udisks running
> > anywhere by default, but simply running:
> > 
> > $ udisksctl monitor
> > Monitoring the udisks daemon. Press Ctrl+C to exit.
> > 22:49:43.365: The udisks-daemon is running (name-owner :1.49).
> > 
> > as an unprivileged user ssh'ed in remotely gets udisksd started as root
> > e.g. on Rocky Linux 9 and on an old Fedora, so it's exposed for attack
> > anyway.  The user isn't a sudoer and isn't in group wheel.
> 
> UDisks is primarily a D-Bus daemon and set for autoactivation through
> its well-known name and there's a D-Bus service policy file for that.
> It can be started via an initscript/systemd unit as well, that's up to
> distro discretion.
> 
> > The below also works to get udisksd started as root, but requires the
> > user to be in group wheel and to re-authenticate:
> > 
> > $ systemctl start udisks2
> > ==== AUTHENTICATING FOR org.freedesktop.systemd1.manage-units ====
> > Authentication is required to start 'udisks2.service'.
> > Authenticating as: user
> > Password: 
> > ==== AUTHENTICATION COMPLETE ====
> > 
> > Trying to actually trigger the bug from the provided Python script (the
> > crash one) as a user ssh'ed in remotely to Rocky Linux 9, I get:
> > 
> > gi.repository.GLib.GError: g-io-error-quark: GDBus.Error:org.freedesktop.UDisks2.Error.NotAuthorizedCanObtain: Not authorized to perform operation (36)
> > 
> > So maybe it's not fully exposed even if the user can start udisksd on
> > demand.  When I ran the script as root, it crashed udisksd just fine.
> > 
> > What are the permissions commonly required for this?
> 
> Access is guarded through Polkit rules, in this case:

Tomáš provided a link to latest revision, but here's one updated to
point to the current revision specifically (so that it stays valid):

https://github.com/storaged-project/udisks/blob/b495ae587662747b373b5d32c284529e048aebf8/data/org.freedesktop.UDisks2.policy.in#L183-L192

  <action id="org.freedesktop.udisks2.loop-setup">
    <description>Manage loop devices</description>
    <message>Authentication is required to set up a loop device</message>
    <defaults>
      <allow_any>auth_admin</allow_any>
      <allow_inactive>auth_admin</allow_inactive>
      <!-- NOTE: this is not a DoS because we are using /dev/loop-control -->
      <allow_active>yes</allow_active>
    </defaults>
  </action>

> So really depends how is your session classified and yes, the attack
> surface is slightly lower for non-local seats. However, combine it with
> other CVEs, notably CVE-2025-6018, and you have a bigger problem.

CVE-2025-6018: LPE from unprivileged to allow_active in *SUSE 15's PAM
https://www.openwall.com/lists/oss-security/2025/06/17/4

> > For the potential privilege escalation attack, is the negatively indexed
> > fd located within the same heap object or a different one?  Would e.g. a
> > guard page before the allocation, such as planted by hardened_malloc,
> > affect the ability to mount this attack?  (We're actually running with
> > hardened_malloc in CIQ's RLC-H product.)
> 
> I'm not a security expert and this spans to the glib code
> (g_unix_fd_list_get) as well.
> 
> > Would it be good practice to exclude udisks2 from default installs of
> > server systems?  I tried "rpm -e udisks2" on Rocky Linux 9 and it just
> > completed, meaning there were no dependencies on this package (at least
> > known to RPM).
> 
> It's not really needed for minimal installs, it's used primarily by
> desktop environments and server management consoles like Cockpit. For
> RHEL specifically, its inclusion by default AND udisks2.service being
> enabled by default is mostly historic relic I guess.

Thanks again,

Alexander
