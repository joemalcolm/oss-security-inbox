X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3128" "Tuesday" "20" "October" "2020" "09:49:31" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<28f1351e-1176-153d-1fc3-6768d807397c@oracle.com>" "94" "[oss-security] CVE-2020-15999 fixed in FreeType 2.10.4" nil nil nil "10" "2020102016:49:31" "[oss-security] CVE-2020-15999 fixed in FreeType 2.10.4" (number mark "U       alan.coopers Oct 20   94/3128  " thread-indent "\"[oss-security] CVE-2020-15999 fixed in FreeType 2.10.4\"\n") "<20201020.074731.286155678758388099.wl@gnu.org>" ("<20201020.074731.286155678758388099.wl@gnu.org>") nil nil nil nil nil nil nil "[oss-security] CVE-2020-15999 fixed in FreeType 2.10.4" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21893 invoked by uid 550); 20 Oct 2020 16:49:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21840 invoked from network); 20 Oct 2020 16:49:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : references
 : to : cc : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=zlN4CFjA2a8LvXMDti37QFKd4yib+uCKaqW4AwG3uEs=;
 b=Q2MKshxI05+GjD9LlLw0YsoQwg9qXX6jMTHXnJboTrefJ5ZoXIvILFIL+7fOhfx+4h8G
 dLkqd7dOHdX6BpLMcwwXYBaMIBsBxk7jtsa9QSkuF2JI725y5P7pW4+Zkn6tIvQOvNTI
 sqPd0x2zlUcgu38KZbC1cWj8PYnu70SbrjfbkCbxns4DhMJvH90Zh4bhxqpUa32pkRd9
 5QpANH2XognyCNv8SMrxJao6Sl1/0Nw8vdOyQ9TZelC9uM21eS1+p66Mydm16LngmBHE
 d5/4zxmx+AqLULovxHS9lCanGOsA8a8GRpRlH4UTiWyuGHZf34huv6ExeL4AY9qDpXdG Ow== 
References: <20201020.074731.286155678758388099.wl@gnu.org>
To: oss-security@lists.openwall.com
Cc: Werner LEMBERG <wl@gnu.org>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
X-Forwarded-Message-Id: <20201020.074731.286155678758388099.wl@gnu.org>
Message-ID: <28f1351e-1176-153d-1fc3-6768d807397c@oracle.com>
Date: Tue, 20 Oct 2020 09:49:31 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:78.0) Gecko/20100101
 Thunderbird/78.2.1
MIME-Version: 1.0
In-Reply-To: <20201020.074731.286155678758388099.wl@gnu.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9780 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxscore=0 phishscore=0
 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010200114
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9780 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 lowpriorityscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0
 mlxlogscore=999 mlxscore=0 spamscore=0 suspectscore=0 clxscore=1034
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010200112
Subject: [oss-security] CVE-2020-15999 fixed in FreeType 2.10.4

Before making this release, Werner said:

> I've just fixed a heap buffer overflow that can happen for some
> malformed `.ttf` files with PNG sbit glyphs.  It seems that this
> vulnerability gets already actively used in the wild, so I ask all
> users to apply the corresponding commit as soon as possible.

But distros should be warned that 2.10.3 and later may break the build
of ghostscript, due to ghostscript's use of a withdrawn macro that
wasn't intended for external usage:

https://bugs.ghostscript.com/show_bug.cgi?id=702985
https://lists.nongnu.org/archive/html/freetype-devel/2020-10/msg00002.html

Ghostscript's fix for that is at:
https://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=41ef9a0bc36b

	-Alan Coopersmith-               alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - https://blogs.oracle.com/alanc

-------- Forwarded Message --------
Subject: [ft-announce] Announcing FreeType 2.10.4
Date: Tue, 20 Oct 2020 07:47:31 +0200 (CEST)
From: Werner LEMBERG <wl@gnu.org>
To: freetype-announce@nongnu.org, freetype-devel@nongnu.org, freetype@nongnu.org


FreeType 2.10.4 has been released.

It is available from

     http://savannah.nongnu.org/download/freetype/

or

     http://sourceforge.net/projects/freetype/files/

The latter site also holds older versions of the FreeType library.

See below for the relevant snippet from the CHANGES file.

Enjoy!


    Werner


PS: Downloads from  savannah.nongnu.org  will redirect to your nearest
     mirror site.   Files on  mirrors may  be subject to  a replication
     delay   of   up   to   24   hours.   In   case   of  problems  use
     http://download-mirror.savannah.gnu.org/releases/


----------------------------------------------------------------------


http://www.freetype.org


FreeType 2  is a software  font engine that  is designed to  be small,
efficient,  highly   customizable,  and  portable   while  capable  of
producing high-quality output (glyph images) of most vector and bitmap
font formats.

Note that  FreeType 2 is  a font service  and doesn't provide  APIs to
perform higher-level features, like text layout or graphics processing
(e.g.,  colored  text  rendering,  `hollowing',  etc.).   However,  it
greatly simplifies these tasks by providing a simple, easy to use, and
uniform interface to access the content of font files.

FreeType  2  is  released  under  two open-source  licenses:  our  own
BSD-like FreeType  License and the  GPL.  It can  thus be used  by any
kind of projects, be they proprietary or not.


----------------------------------------------------------------------


CHANGES BETWEEN 2.10.3 and 2.10.4

   I. IMPORTANT BUG FIXES

   - A heap buffer overflow has been found  in the handling of embedded
     PNG bitmaps, introduced in FreeType version 2.6.

       https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-15999

     If you  use option  FT_CONFIG_OPTION_USE_PNG  you  should  upgrade
     immediately.

_______________________________________________
Freetype-announce mailing list
Freetype-announce@nongnu.org
https://lists.nongnu.org/mailman/listinfo/freetype-announce
