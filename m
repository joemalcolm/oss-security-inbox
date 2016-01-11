X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1223" "Monday" "11" "January" "2016" "10:16:46" "+0200" "Stelios Tsampas" "stelios@census-labs.com" "<569364EE.6010709@census-labs.com>" "33" "[oss-security] CVE-2015-8397: GDCM out-of-bounds read in JPEGLSCodec::DecodeExtent" nil nil nil "1" "2016011108:16:46" "[oss-security] CVE-2015-8397: GDCM out-of-bounds read in JPEGLSCodec::DecodeExtent" (number mark "U       stelios@cens Jan 11   33/1223  " thread-indent "\"[oss-security] CVE-2015-8397: GDCM out-of-bounds read in JPEGLSCodec::DecodeExtent\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30677 invoked by uid 550); 11 Jan 2016 14:09:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29763 invoked from network); 11 Jan 2016 08:17:11 -0000
To: oss-security@lists.openwall.com
Cc: fulldisclosure@seclists.org, bugtraq@securityfocus.com
From: Stelios Tsampas <stelios@census-labs.com>
Message-ID: <569364EE.6010709@census-labs.com>
Date: Mon, 11 Jan 2016 10:16:46 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2015-8397: GDCM out-of-bounds read in JPEGLSCodec::DecodeExtent

Grassroots DICOM (GDCM) is a C++ library for processing DICOM medical
images.
It provides routines to view and manipulate a wide range of image formats
and can be accessed through many popular programming languages like Python,
C#, Java and PHP.

GDCM versions 2.6.0 and 2.6.1 (and possibly previous versions) are prone to
an out-of-bounds read vulnerability due to missing checks. The vulnerability
occurs during the decoding of JPEG-LS images when the dimensions of the
embedded JPEG-LS image (as specified in the JPEG headers) are smaller than
the ones of the selected region (set by gdcm::ImageRegionReader::SetRegion
and usually based on DICOM header values).

More information about this vulnerability can be found at
http://census-labs.com/news/2016/01/11/gdcm-out-bounds-read-jpeglscodec-decodeextent/

The GDCM project has released version 2.6.2 that addresses this issue.
It is advised to upgrade all GDCM installations to the latest stable
release.

Disclosure Timeline
-------------------
CVE assignment:    December 2nd, 2015
Vendor Contact:    December 4th, 2015
Vendor Patch Release: December 23rd, 2015
Public Disclosure: January 11th, 2016

Regards,

Stelios Tsampas

IT Security Researcher
CENSUS S.A.   
