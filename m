X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["900" "Friday" "25" "October" "2019" "23:23:09" "+0200" "=?UTF-8?B?TW9yaXR6IE3DvGhsZW5ob2Zm?=" "jmm@inutil.org" "<20191025212309.GA18967@pisco.westfalen.local>" "21" "[oss-security] Security fixes from Android 10 release which are relevant outside the Android ecosystem?" "^Date:" nil nil "10" "2019102521:23:09" "[oss-security] Security fixes from Android 10 release which are relevant outside the Android ecosystem?" (number mark "        jmm@inutil.o Oct 25   21/900   " thread-indent "\"[oss-security] Security fixes from Android 10 release which are relevant outside the Android ecosystem?\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Security fixes from Android 10 release which are relevant outside the Android ecosystem?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32265 invoked by uid 550); 25 Oct 2019 21:23:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32233 invoked from network); 25 Oct 2019 21:23:22 -0000
Message-ID: <20191025212309.GA18967@pisco.westfalen.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Fri, 25 Oct 2019 23:23:09 +0200
From: =?UTF-8?Q?Moritz_M=C3=BChlenhoff?= <jmm@inutil.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Security fixes from Android 10 release which are relevant outside
 the Android ecosystem?
To: oss-security@lists.openwall.com

Android advisories used to contain commit references to AOSP change sets, but
that's not the case for https://source.android.com/security/bulletin/android-10.

Typically most of these issues are specific to Android, but there are a few which
per the CVE description are possibly affecting software packaged/used by Linux
distros as well, one example:

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-9325:
"In libvpx, there is a possible out of bounds read due to a missing bounds check.
This could lead to remote information disclosure with no additional execution
privileges needed. "

Similar for CVE-2019-9232, CVE-2019-9278, CVE-2019-9325, CVE-2019-9371, CVE-2019-9433,
CVE-2019-9423 (also libexif and opencv)

Is there anyone from Android/Google on the list, who can comment on this? Can these
references be added again for the benefit of non-Android distros?

Cheers,
        Moritz
	
