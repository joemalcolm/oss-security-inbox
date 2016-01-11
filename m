X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1465" "Monday" "11" "January" "2016" "10:15:25" "+0200" "Stelios Tsampas" "stelios@census-labs.com" "<5693649D.2050802@census-labs.com>" "41" "[oss-security] CVE-2015-8396: GDCM buffer overflow in ImageRegionReader::ReadIntoBuffer" nil nil nil "1" "2016011108:15:25" "[oss-security] CVE-2015-8396: GDCM buffer overflow in ImageRegionReader::ReadIntoBuffer" (number mark "U       stelios@cens Jan 11   41/1465  " thread-indent "\"[oss-security] CVE-2015-8396: GDCM buffer overflow in ImageRegionReader::ReadIntoBuffer\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30362 invoked by uid 550); 11 Jan 2016 14:09:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28237 invoked from network); 11 Jan 2016 08:15:51 -0000
To: oss-security@lists.openwall.com
Cc: fulldisclosure@seclists.org, bugtraq@securityfocus.com
From: Stelios Tsampas <stelios@census-labs.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <5693649D.2050802@census-labs.com>
Date: Mon, 11 Jan 2016 10:15:25 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2015-8396: GDCM buffer overflow in
 ImageRegionReader::ReadIntoBuffer

Grassroots DICOM (GDCM) is a C++ library for processing DICOM medical
images.
It provides routines to view and manipulate a wide range of image formats
and can be accessed through many popular programming languages like Python,
C#, Java and PHP.

GDCM versions 2.6.0 and 2.6.1 (and possibly previous versions) are prone
to an
integer overflow vulnerability which leads to a buffer overflow and
potentially to remote code execution. The vulnerability is triggered by the
exposed function gdcm::ImageRegionReader::ReadIntoBuffer, which copies
DICOM
image data to a buffer. ReadIntoBuffer checks whether the supplied
buffer is
large enough to hold the necessary data, however in this check it fails to
detect the occurrence of an integer overflow, which leads to a buffer
overflow
later on in the code. The buffer overflow will occur regardless of the
size of
the buffer supplied to the ReadIntoBuffer call.

More information about this vulnerability can be found at
http://census-labs.com/news/2016/01/11/gdcm-buffer-overflow-imageregionreaderreadintobuffer/

The GDCM project has released version 2.6.2 that addresses this issue.
It is advised to upgrade all GDCM installations to the latest stable
release.

Disclosure Timeline
-------------------
CVE assignment:    December 2nd, 2015
Vendor Contact:    December 4th, 2015
Vendor Patch Release: December 23rd, 2015
Public Advisory: January 11th, 2016

Regards,

Stelios Tsampas

IT Security Researcher
CENSUS S.A.
