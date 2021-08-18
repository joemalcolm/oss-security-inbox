X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1015" "Wednesday" "18" "August" "2021" "10:08:11" "-0800" "Michael McNally" "mcnally@isc.org" nil "27" "[oss-security] ISC has disclosed a vulnerability in BIND (CVE-2021-25218)" nil nil nil "8" nil nil (number mark "U       mcnally@isc. Aug 18   27/1015  " thread-indent "\"[oss-security] ISC has disclosed a vulnerability in BIND (CVE-2021-25218)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] ISC has disclosed a vulnerability in BIND (CVE-2021-25218)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21958 invoked by uid 550); 18 Aug 2021 18:08:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21931 invoked from network); 18 Aug 2021 18:08:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1629310092; bh=1CiAJ3ah2pxpJrddagv7AabxSYo+MntGGURD04/1Ulo=;
	h=To:From:Subject:Date;
	b=c+/VZq5fljINaW22pOpzxunBbGG0YYBaw0cLVhGLYqUeZ15906oRpJQbKAlrw/RPe
	 rjrFTLfnpqZmtg3bi3H3TiQ6Yr9I2sN8pCEMJx2bWdZFyoakSsOrHV9HkkbSP+tp96
	 dP3PwPTRZJmMmTGEOo30GQfCj3i5VE/A9CN32CP8=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbrang.isc.org E458FAA485F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1629310091;
	bh=zpsx3Zx/JqUNwK/3K+b7WxGHm4SuzaiXTB9qAkWiX10=;
	h=To:From:Message-ID:Date:MIME-Version;
	b=eNdl0hSoztcTNfKOkxbm7ZXkbarOCKcXroglgrkNZPJOr9ESDW/SgdhdCiJ89SJ9+
	 /e2c2QOY0GHwFoQRzYGNs/GPS0vfp7ojwnuBuTWCJ2UKhtKX0fYzfDC5i86okleDnt
	 YW0dKyyqc9wyjmybzrEtOJhGsf5XFAa4ii900FIE=
To: oss-security@lists.openwall.com
From: Michael McNally <mcnally@isc.org>
Message-ID: <15904ddc-8bdb-9661-48fa-d43a79f23aea@isc.org>
Date: Wed, 18 Aug 2021 10:08:11 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.13.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] ISC has disclosed a vulnerability in BIND (CVE-2021-25218)

On August 18, 2021, we (Internet Systems Consortium) have disclosed a
vulnerability affecting our BIND software:

    CVE-2021-25218: A too-strict assertion check could be triggered when
    responses in BIND 9.16.19 and 9.17.16 require UDP fragmentation if
    RRL is in use

    https://kb.isc.org/docs/cve-2021-25218

New versions of BIND are available from https://www.isc.org/downloads

Operators and package maintainers who prefer to apply patches selectively can
find individual vulnerability-specific patches in the "patches" subdirectory
of the release directories for our two affected release branches (9.16 and 9.17)
The BIND 9.11 branch was not affected by CVE-2021-25218.

   9.16: https://downloads.isc.org/isc/bind9/9.16.20/patches/
   9.17: https://downloads.isc.org/isc/bind9/9.17.17/patches/

With the public announcement of this vulnerability, the embargo
period is ended and any updated software packages that have been
prepared may be released.

-- 

Michael McNally
(for ISC Security Officer)
