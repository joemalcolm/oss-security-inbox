X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1935" "Friday" "28" "April" "2017" "03:58:18" "+0200" "Guillem Jover" "guillem@debian.org" "<20170428015817.zgsoz5sdjrlou3fm@gaara.hadrons.org>" "42" "[oss-security] Re: CVE-2017-8283 Directory traversal in dpkg-source via indented patches on non-GNU systems" nil nil nil "4" "2017042801:58:18" "[oss-security] Re: CVE-2017-8283 Directory traversal in dpkg-source via indented patches on non-GNU systems" (number mark "U       guillem@debi Apr 28   42/1935  " thread-indent "\"[oss-security] Re: CVE-2017-8283 Directory traversal in dpkg-source via indented patches on non-GNU systems\"\n") "<20170420084105.his3vgnzjpvu4jcv@gaara.hadrons.org>" ("<20170420084105.his3vgnzjpvu4jcv@gaara.hadrons.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22362 invoked by uid 550); 28 Apr 2017 02:54:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11909 invoked from network); 28 Apr 2017 01:58:43 -0000
Date: Fri, 28 Apr 2017 03:58:18 +0200
From: Guillem Jover <guillem@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20170428015817.zgsoz5sdjrlou3fm@gaara.hadrons.org>
References: <20170420084105.his3vgnzjpvu4jcv@gaara.hadrons.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170420084105.his3vgnzjpvu4jcv@gaara.hadrons.org>
User-Agent: NeoMutt/20170306 (1.8.0)
Subject: [oss-security] Re: CVE-2017-8283 Directory traversal in dpkg-source via indented
 patches on non-GNU systems

Hi!

On Thu, 2017-04-20 at 10:41:05 +0200, Guillem Jover wrote:
> Recently, while going through the POSIX standard to check for some
> other stuff related to the patch(1) format, I realized that indented
> patches are also accepted, which is something the Dpkg::Source::Patch
> perl module is not checking, so any of the sanity checks against
> directory traveral attacks can be avoided through indenting.
> 
> Of course on Debian and other distributions using GNU patch >= 1.7.5,
> this is not a concern anymore, as this implementation should be
> directory traversal resistant.
> 
> But on systems such as the BSDs, with their own patch(1) variant,
> this is effective. And while this could (and should in addition be
> considered) a problem with those patch implementations, dpkg-source
> has always assumed uncooperating underlaying implementations so this
> is something it should probably protect against one way or another.
> 
> This issue shows up when unpacking a Debian source package for
> examination, but then on those non-GNU systems, usage of patch(1)
> is unsafe, so I'm not sure how sever this should be considered.
> 
> I've got a test case (attached) that fails (the attack is successful) on
> at least NetBSD (not tried others), but they share a similar patch(1)
> codebase.
> 
> And I started adding support for indented patches so thah the checks
> would apply, or to just reject them (as a query on codesearch.debian.net)
> didn't trigger any instance of such patches in Debian (which would make
> them not able to be unpacked if we reject them). But I'm considering the
> shorter and more strightforward solution of just requiring GNU patch at
> configure time for now. Which is what I'm attaching here as the fix
> I'm planning to merge for dpkg 1.18.24.
> 
> Given tha above, does this deserve a CVE? At least we have gotten ones
> for similar issues in the past.

This is now CVE-2017-8283.

Thanks,
Guillem
