Received: (qmail 24489 invoked by uid 550); 14 Mar 2023 11:36:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22412 invoked from network); 14 Mar 2023 11:02:15 -0000
Date: Tue, 14 Mar 2023 12:01:38 +0100
From: Helmut Grohne <helmut@subdivi.de>
To: oss-security@lists.openwall.com
Message-ID: <20230314110138.GA1192267@subdivi.de>
Mail-Followup-To: Helmut Grohne <helmut@subdivi.de>,
	oss-security@lists.openwall.com
References: <Y91yP6mYIZ+UXmgf@alf.mars>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="aqKdY5bIWcH9zdeu"
Content-Disposition: inline
In-Reply-To: <Y91yP6mYIZ+UXmgf@alf.mars>
Subject: [oss-security] Re: sox: patches for old vulnerabilities

--aqKdY5bIWcH9zdeu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 03, 2023 at 09:44:47PM +0100, Helmut Grohne wrote:
>  * CVE-2021-33844

The original fix for this issue would cause a regression. After applying
it, sox would be unable to decode WAV GSM files. This has been reported
as https://bugs.debian.org/1032082. I am attaching an updated patch that
fixes this regression. It is meant to replace the previous patch. The
updated patch includes a regression test case to avoid repeating the
mistake.

I see that most distributions (e.g. RedHat, SUSE, Gentoo, etc.) have not
picked up the faulty patch. Ubuntu inherited it from Debian and will
likely inherit the fix as it gets fixed in Debian releases.

Helmut

--aqKdY5bIWcH9zdeu
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2021-33844.patch"

From: Helmut Grohne <helmut@subdivi.de>
Subject: wav: reject 0 bits per sample to avoid division by zero
Bug: https://sourceforge.net/p/sox/bugs/349/
Bug-Debian: https://bugs.debian.org/1021135

--- a/src/wav.c
+++ b/src/wav.c
@@ -506,7 +506,7 @@
     unsigned short wChannels;       /* number of channels */
     uint32_t      dwSamplesPerSecond; /* samples per second per channel */
     uint32_t      dwAvgBytesPerSec;/* estimate of bytes per second needed */
-    uint16_t wBitsPerSample;  /* bits per sample */
+    uint16_t wBitsPerSample = 0;  /* bits per sample */
     uint32_t wFmtSize;
     uint16_t wExtSize = 0;    /* extended field for non-PCM */
 
@@ -954,6 +959,11 @@
         break;
 
     default:
+        if (ft->encoding.bits_per_sample == 0)
+        {
+            lsx_fail_errno(ft, SOX_EHDR, "WAV file bits per sample is zero");
+            return SOX_EOF;
+        }
         wav->numSamples = div_bits(qwDataLength, ft->encoding.bits_per_sample) / ft->signal.channels;
         ft->signal.length = wav->numSamples * ft->signal.channels;
     }
--- a/src/testall.sh
+++ b/src/testall.sh
@@ -67,3 +67,4 @@
 t vox -r 8130
 t wav
 t wve
+t wav -e gsm-full-rate

--aqKdY5bIWcH9zdeu--

