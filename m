X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2483" "Thursday" "13" "October" "2016" "11:10:19" "+0100" "Simon McVittie" "smcv@debian.org" "<20161013101019.uiaqlniqatzmc6j4@perpetual.pseudorandom.co.uk>" "53" "Re: [oss-security] bubblewrap LPE" nil nil nil "10" "2016101310:10:19" "[oss-security] bubblewrap LPE" (number mark "U       smcv@debian. Oct 13   53/2483  " thread-indent "\"Re: [oss-security] bubblewrap LPE\"\n") "<20161012131247.GB14056@suse.de>" ("<20161012131247.GB14056@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1382 invoked by uid 550); 13 Oct 2016 10:10:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1351 invoked from network); 13 Oct 2016 10:10:38 -0000
Date: Thu, 13 Oct 2016 11:10:19 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20161013101019.uiaqlniqatzmc6j4@perpetual.pseudorandom.co.uk>
References: <20161012131247.GB14056@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161012131247.GB14056@suse.de>
User-Agent: NeoMutt/20160916 (1.7.0)
Subject: Re: [oss-security] bubblewrap LPE

On Wed, 12 Oct 2016 at 15:12:47 +0200, Sebastian Krahmer wrote:
> /usr/bin/bwrap may be installed mode 04755 or with cap_sys_admin and other
> file caps. I dont know if there are any dists already shipping it that way,
> but the Makefile and some RedHat spec files contain file caps for it.

It needs to be setuid root (or CAP_SYS_ADMIN, which might as well be setuid
root) to be useful on any distribution whose kernel doesn't normally allow
unprivileged users to open user-namespaces; in particular, Debian, RHEL,
and backports to older/LTS Ubuntu (but not current Ubuntu).

> For some reason it sets the PR_SET_DUMPABLE flag, as seen below. The comment about
> it looks strange to me. If thats really true, suid programs shouldn't
> be forced to play with the dumpable flag to achieve their goal.

I assume the developers of Bubblewrap wouldn't have done this if the
kernel (or at least *a* kernel they care about) didn't require it.
But hopefully becoming dumpable can be restricted to smaller sections
of the code.

If it's only for write_uid_gid_map(), then one way would be for that
function to fork(), with the child making itself dumpable and writing
the map files, and the parent just waiting for the child?

> Once the dumpable flag is set, there is a chance we could attach to the process,
> once the remaining caps are dropped and the whole process runs as user.

I have reported this to
<https://github.com/projectatomic/bubblewrap/issues/107>.

I believe the intention is that none of the operations that can pass over
the privilege separation socket are problematic, because they only affect
the sandboxed processes, and if you can ptrace bwrap then you can certainly
ptrace and subvert the sandboxed processes too. SETUP_SET_HOSTNAME clearly
doesn't match that intention, *if* Bubblewrap didn't unshare the UTS namespace
beforehand; Bubblewrap does insist that --hostname can't be used without
--unshare-uts, but you're right that a user outside the sandbox can ptrace
it and bypass that check by making it behave as though --hostname had been
used.

As a quick temporary fix for Debian, I'm reverting the addition of
SETUP_SET_HOSTNAME.

Am I right in thinking that this pseudocode would fix it while reinstating
the feature?

    case PRIV_SEP_OP_SET_HOSTNAME:
      if (!opt_unshare_uts)
        die_with_error ("Refusing to set hostname in original namespace");
      else if (!sethostname (... as before))
        die_with_error (... as before);

Thanks,
    S
