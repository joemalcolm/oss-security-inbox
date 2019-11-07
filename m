X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1728" "Thursday" "7" "November" "2019" "10:28:04" "-0800" "Kees Cook" "kees@ubuntu.com" "<20191107182804.GE6595@outflux.net>" "47" "Re: [oss-security] Security fixes from Android 10 release which are relevant outside the Android ecosystem?" "^Date:" nil nil "11" "2019110718:28:04" "[oss-security] Security fixes from Android 10 release which are relevant outside the Android ecosystem?" (number mark "        kees@ubuntu. Nov  7   47/1728  " thread-indent "\"Re: [oss-security] Security fixes from Android 10 release which are relevant outside the Android ecosystem?\"\n") "<20191025212309.GA18967@pisco.westfalen.local>" ("<20191025212309.GA18967@pisco.westfalen.local>") nil nil nil nil nil nil nil "Re: [oss-security] Security fixes from Android 10 release which are relevant outside the Android ecosystem?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28089 invoked by uid 550); 7 Nov 2019 18:29:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27856 invoked from network); 7 Nov 2019 18:28:17 -0000
Message-ID: <20191107182804.GE6595@outflux.net>
References: <20191025212309.GA18967@pisco.westfalen.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20191025212309.GA18967@pisco.westfalen.local>
Organization: Ubuntu
User-Agent: Mutt/1.9.4 (2018-02-28)
X-MIMEDefang-Filter: outflux$Revision: 1.316 $
X-HELO: www.outflux.net
X-Scanned-By: MIMEDefang 2.83
Date: Thu, 7 Nov 2019 10:28:04 -0800
From: Kees Cook <kees@ubuntu.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Security fixes from Android 10 release which are
 relevant outside the Android ecosystem?
To: oss-security@lists.openwall.com

On Fri, Oct 25, 2019 at 11:23:09PM +0200, Moritz Mühlenhoff wrote:
> Android advisories used to contain commit references to AOSP change sets, but
> that's not the case for https://source.android.com/security/bulletin/android-10.
> 
> Typically most of these issues are specific to Android, but there are a few which
> per the CVE description are possibly affecting software packaged/used by Linux
> distros as well, one example:

Normally the advisories should link back to actual details, but I guess
this doesn't always happen.

> https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-9325:
> "In libvpx, there is a possible out of bounds read due to a missing bounds check.
> This could lead to remote information disclosure with no additional execution
> privileges needed. "

https://chromium-review.googlesource.com/c/webm/libvpx/+/1149604

> Similar for CVE-2019-9232,

https://chromium-review.googlesource.com/c/webm/libvpx/+/1395793

> CVE-2019-9278,

https://android.googlesource.com/platform/external/libexif/+/a5e8e5812a11ec9686294de8a5d68aaf2ab72475%5E%21/#F0

> CVE-2019-9371,

https://chromium.googlesource.com/webm/libwebm/+/cb5a9477073cf7ae4a28356d6e3e5638aba78dc9%5E%21/#F0
https://chromium.googlesource.com/webm/libwebm/+/027a472efe49ff3a24be619442d2150658dbaaa0%5E%21/#F0

> CVE-2019-9433,

https://chromium-review.googlesource.com/c/webm/libvpx/+/1070753

> CVE-2019-9423 (also libexif and opencv)

This one I can't find an external reference for. I've asked for more
details internally.

> Is there anyone from Android/Google on the list, who can comment on this? Can these
> references be added again for the benefit of non-Android distros?

Thank you Moritz for pinging me off-list! :)

-- 
Kees Cook
