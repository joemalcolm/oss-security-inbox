X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1177" "Thursday" "7" "February" "2019" "18:13:25" "+0000" "Ben Hutchings" "ben.hutchings@codethink.co.uk" "<1549563205.2925.242.camel@codethink.co.uk>" "26" "[oss-security] Re: Linux Kernel: Missing access_ok() checks in IOCTL function (gpu/drm/i915 Driver)" "^Cc:" nil nil "2" "2019020718:13:25" "[oss-security] Re: Linux Kernel: Missing access_ok() checks in IOCTL function (gpu/drm/i915 Driver)" (number mark "        ben.hutching Feb  7   26/1177  " thread-indent "\"[oss-security] Re: Linux Kernel: Missing access_ok() checks in IOCTL function (gpu/drm/i915 Driver)\"\n") "<1549562987.2925.239.camel@debian.org>" ("<1549562987.2925.239.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21726 invoked by uid 550); 7 Feb 2019 18:16:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18306 invoked from network); 7 Feb 2019 18:13:38 -0000
Message-ID: <1549563205.2925.242.camel@codethink.co.uk>
In-Reply-To: <1549562987.2925.239.camel@debian.org>
References: <1549562987.2925.239.camel@debian.org>
Organization: Codethink Ltd.
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: oss-security@lists.openwall.com
Date: Thu, 07 Feb 2019 18:13:25 +0000
From: Ben Hutchings <ben.hutchings@codethink.co.uk>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Linux Kernel: Missing access_ok() checks in IOCTL function
 (gpu/drm/i915 Driver)
To: Yves-Alexis Perez <corsac@debian.org>, Timothy Michaud <tmm08a@acu.edu>

On Thu, 2019-01-24 at 10:30 +0100, Yves-Alexis Perez wrote:
> On Wed, 2019-01-23 at 14:28 -0600, Timothy Michaud wrote:
> > NOTE: I have requested a CVE identifier, and I'm sending this message, to
> > make tracking of the fix easier; however, to avoid missing security fixes
> > without CVE identifiers, you should *NOT* be cherry-picking a specific
> > patch in response to a notification about a kernel security bug.
> > 
> > Due to a lack of "access_ok()" checks in i915_gem_execbuffer2_ioctl[1], it
> > is possible to escalate privileges similar to the waitid vulnerability[2]
> 
> Hi, thanks for the report.
> 
> The patch doesn't seem CC: stable, could you give us a status on the various
> stable releases?

Is there even a real security issue here?  So far as I can see,
i915_gem_execbuffer2_ioctl() writes to a subset of the user memory
range that it previously read using copy_from_user().  copy_from_user()
does include the range check.

Ben.

-- 
Ben Hutchings, Software Developer                         Codethink Ltd
https://www.codethink.co.uk/                 Dale House, 35 Dale Street
                                     Manchester, M1 2HF, United Kingdom
