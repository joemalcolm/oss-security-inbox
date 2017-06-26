X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2750" "Monday" "26" "June" "2017" "02:35:57" "+0200" "Solar Designer" "solar@openwall.com" "<20170626003556.GA8994@openwall.com>" "52" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062600:35:57" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        solar@openwa Jun 26   52/2750  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<20170621212835.GA28151@localhost.localdomain>" ("<20170619152843.GC7769@localhost.localdomain>" "<2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>" "<20170619203933.GA910@openwall.com>" "<20170620132204.GA6240@openwall.com>" "<20170621212835.GA28151@localhost.localdomain>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14192 invoked by uid 550); 26 Jun 2017 00:36:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13896 invoked from network); 26 Jun 2017 00:36:06 -0000
Message-ID: <20170626003556.GA8994@openwall.com>
References: <20170619152843.GC7769@localhost.localdomain> <2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com> <20170619203933.GA910@openwall.com> <20170620132204.GA6240@openwall.com> <20170621212835.GA28151@localhost.localdomain>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170621212835.GA28151@localhost.localdomain>
User-Agent: Mutt/1.4.2.3i
Date: Mon, 26 Jun 2017 02:35:57 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com

On Wed, Jun 21, 2017 at 02:28:35PM -0700, Qualys Security Advisory wrote:
> On Tue, Jun 20, 2017 at 03:22:04PM +0200, Solar Designer wrote:
> > Qualys, I suggest that, like you did with the Sudo exploit, you publish
> > your Stack Clash exploits in here as soon as third-party exploits of
> > comparable functionality appear, or next Tuesday, whichever is earlier.
> 
> We have discussed this internally, and we will first publish the Stack
> Clash exploits and proofs-of-concepts that we sent to the distros@ and
> linux-distros@ lists, plus our Linux ld.so exploit for amd64, and our
> Solaris rsh exploit.
> 
> We will do so next Tuesday, but we will publish our Linux exploits and
> proofs-of-concept if and only if Fedora updates are ready by then, our
> NetBSD proof-of-concept if and only if NetBSD patches are ready by then,
> and our FreeBSD proofs-of-concept if and only if FreeBSD patches are
> ready by then.
> 
> If someone happens to know of another major distribution that has not
> published patches and updates yet, please let us all know by replying
> here to oss-security. Thank you very much!

Thank you!

We didn't have a specific policy on exploit publication, but for further
occasions I've just added this clarification to:

http://oss-security.openwall.org/wiki/mailing-lists/distros

"If you shared exploit(s) that are not an essential part of the issue
description, then at your option you may slightly delay posting them to
oss-security but you must post the exploits to oss-security within at
most 7 days of making the mandatory posting above.  If you exercise this
option, you have two mandatory postings to make: first with a
sufficiently detailed issue description (as requested above) and with an
announcement of your intent to post the exploits separately (please
mention exactly when), and second with the exploits - or indeed you
could have included the exploits right away, in your first and only
mandatory posting."

The decision to wait for fixes in major distros that almost certainly do
intend to release fixes makes sense to me.  I haven't found a good way
to specify it as part of policy yet.  For now, we may plan to be not as
strict at enforcing the above addition to the policy as I intend to be
at enforcing the main policy of max 14 days for issue detail (possibly
excluding exploits).  Specifically, occasional well-reasoned exceptions
where exploits may be posted later than in 7 days may be made - or maybe
we simply need to relax the "at most 7 days" requirement, replacing it
with a higher maximum and a 7 days guideline.  Regardless, since this
will be for already-public issues, we'll be able to discuss any such
exceptions or policy changes in public as well - here on oss-security.

Alexander
