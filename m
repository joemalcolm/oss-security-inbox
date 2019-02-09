X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4079" "Friday" "8" "February" "2019" "19:47:34" "-0600" "Michael Catanzaro" "mcatanzaro@igalia.com" "<1549676854.13064.0@mail.igalia.com>" "105" "[oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2019-0001" "^Cc:" nil nil "2" "2019020901:47:34" "[oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2019-0001" (number mark "        mcatanzaro@i Feb  8  105/4079  " thread-indent "\"[oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2019-0001\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16302 invoked by uid 550); 9 Feb 2019 13:30:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7638 invoked from network); 9 Feb 2019 01:48:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Type:MIME-Version:Message-Id:Cc:To:Subject:From:Date; bh=EV2S0M2qZXBcYXAw7kpjSOGZkgakmLn9vxG8ON2f3Bc=;
	b=FdVCZUH9iwUA97Jr17cS5OU9VMlGHatY5a7uKGqtK/MALk7oiEVKHekyk/8H402Q4q2DKKQLyGFhYJEUjlKTyZA4YDp7L1BfV5R+L+bfxsqdEYwW3guprMzi6LKaW4e96ofbMMp2Jvdt3aJw5Vya/WnjA5rQ5HFhviKscMO60Rvt+0adyIScVBa/RsTlMPgCCVP5FXZzeRDmaQkvEC1Rabk/M55XTBvhVTqfVHsp7sDvFWtgMCnYFXvfE7hyEsMk6+DjOKLOKY1M4b5M9NMuktwbn/ESIrZ8FA9rhumhWpmREEuAz8lscvOd6T5CNDP1iv0JJgo5G+w0CD0xlcx8Ng==;
Message-Id: <1549676854.13064.0@mail.igalia.com>
X-Mailer: geary/0.12.4
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Cc: security@webkit.org, distributor-list@gnome.org,
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Date: Fri, 08 Feb 2019 19:47:34 -0600
From: Michael Catanzaro <mcatanzaro@igalia.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] WebKitGTK+ and WPE WebKit Security Advisory WSA-2019-0001
To: webkit-gtk@lists.webkit.org, webkit-wpe@lists.webkit.org

------------------------------------------------------------------------
WebKitGTK+ and WPE WebKit Security Advisory WSA-2019-0001
------------------------------------------------------------------------

Date reported : February 08, 2019
Advisory ID : WSA-2019-0001
WebKitGTK+ Advisory URL : 
https://webkitgtk.org/security/WSA-2019-0001.html
WPE WebKit Advisory URL : 
https://wpewebkit.org/security/WSA-2019-0001.html
CVE identifiers : CVE-2019-6212, CVE-2019-6215, CVE-2019-6216,
                  CVE-2019-6217, CVE-2019-6226, CVE-2019-6227,
                  CVE-2019-6229, CVE-2019-6233, CVE-2019-6234.

Several vulnerabilities were discovered in WebKitGTK+ and WPE WebKit.

CVE-2019-6212
    Versions affected: WebKitGTK+ before 2.22.6 and WPE WebKit before
    2.22.4.
    Credit to an anonymous researcher.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-6215
    Versions affected: WebKitGTK+ before 2.22.6 and WPE WebKit before
    2.22.4.
    Credit to Lokihardt of Google Project Zero.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A type confusion issue was addressed with improved
    memory handling.

CVE-2019-6216
    Versions affected: WebKitGTK+ before 2.22.5 and WPE WebKit before
    2.22.3.
    Credit to Fluoroacetate working with Trend Micro's Zero Day
    Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-6217
    Versions affected: WebKitGTK+ before 2.22.5 and WPE WebKit before
    2.22.3.
    Credit to Fluoroacetate working with Trend Micro's Zero Day
    Initiative, Proteas, Shrek_wzw, and Zhuo Liang of Qihoo 360 Nirvan
    Team.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-6226
    Versions affected: WebKitGTK+ and WPE WebKit before 2.22.0.
    Credit to Apple.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. Multiple memory corruption issues were addressed
    with improved memory handling.

CVE-2019-6227
    Versions affected: WebKitGTK+ before 2.22.5 and WPE WebKit before
    2.22.3.
    Credit to Qixun Zhao of Qihoo 360 Vulcan Team.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A memory corruption issue was addressed with
    improved memory handling.

CVE-2019-6229
    Versions affected: WebKitGTK+ before 2.22.5 and WPE WebKit before
    2.22.3.
    Credit to Ryan Pickren.
    Processing maliciously crafted web content may lead to universal
    cross site scripting. A logic issue was addressed with improved
    validation.

CVE-2019-6233
    Versions affected: WebKitGTK+ before 2.22.4 and WPE WebKit before
    2.22.2.
    Credit to G. Geshev from MWR Labs working with Trend Micro's Zero
    Day Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A memory corruption issue was addressed with
    improved memory handling.

CVE-2019-6234
    Versions affected: WebKitGTK+ before 2.22.4 and WPE WebKit before
    2.22.2.
    Credit to G. Geshev from MWR Labs working with Trend Micro's Zero
    Day Initiative.
    Processing maliciously crafted web content may lead to arbitrary
    code execution. A memory corruption issue was addressed with
    improved memory handling.


We recommend updating to the latest stable versions of WebKitGTK+ and
WPE WebKit. It is the best way to ensure that you are running safe
versions of WebKit. Please check our websites for information about the
latest stable releases.

Further information about WebKitGTK+ and WPE WebKit security advisories
can be found at: https://webkitgtk.org/security.html or
https://wpewebkit.org/security/.

The WebKitGTK+ and WPE WebKit team,
February 08, 2019

