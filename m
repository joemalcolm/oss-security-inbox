X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1132" "Wednesday" "17" "February" "2021" "11:25:57" "-0900" "Michael McNally" "mcnally@isc.org" nil "34" "[oss-security] One BIND vulnerability (CVE-2020-8625) has been publicly disclosed" nil nil nil "2" nil nil (number mark "U       mcnally@isc. Feb 17   34/1132  " thread-indent "\"[oss-security] One BIND vulnerability (CVE-2020-8625) has been publicly disclosed\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] One BIND vulnerability (CVE-2020-8625) has been publicly disclosed" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1304 invoked by uid 550); 17 Feb 2021 20:26:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1283 invoked from network); 17 Feb 2021 20:26:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1613593558; bh=uVnNIvce/nH2+2MRK7xtGXZVoBtCpv/wRuPoHZY3EPg=;
	h=To:Cc:From:Subject:Date;
	b=qwJH85gyLeRagiRYSlN7qbku0mqO/B2b27GjZfTpyF0IT3BCMBg2EFZS/K9n3z9z0
	 XRNaDK9yIxTgO77bcKKi7tqmUvXojBTAHrCzR0+cJUkPTOHLB0+P0tyaA873UztPpa
	 4B3W4O+HNxicwYfvfLuGyz0RvYR63+ZCGb6V/Nm0=
DKIM-Filter: OpenDKIM Filter v2.9.2 zmx1.isc.org 45603160082
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1613593558;
	bh=GqvKGGzJ9kUO/eaSspClppG3jIj9XYWhvT9V9jEGdoQ=;
	h=To:From:Subject:Message-ID:Date:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	b=esep7f0Y0zKzRN4T5bc+xxkCS1ySpFhoqwBVmjThzbp/+sB37MIgPP+j1IeLScglh
	 DkyOCP20+JpHJOH2zbdDgTQEt9Y5LL1L2pMkHFfTUwiuILXi3iAdsq4JTSbt1kFUVY
	 ZpOIy4hVDNrxHN2yBppeJ4KqVwqfCuY9fjvul0ug=
To: oss-security@lists.openwall.com
Cc: "security-officer@isc.org" <security-officer@isc.org>
From: Michael McNally <mcnally@isc.org>
Message-ID: <eb9b5bdc-aee2-8295-4711-276759fbeae0@isc.org>
Date: Wed, 17 Feb 2021 11:25:57 -0900
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] One BIND vulnerability (CVE-2020-8625) has been publicly disclosed

On February 17, 2021, Internet Systems Consortium has disclosed a
vulnerability in our BIND 9 software about which we previously
provided advance notice.

    CVE-2020-8625: A vulnerability in BIND's GSSAPI security policy
    negotiation can be targeted by a buffer overflow attack
    https://kb.isc.org/docs/cve-2020-8625

With the public announcement of this vulnerability, the embargo
period is ended and any updated software packages that have been
prepared may be released.

ISC's own releases containing fixes are:

    -  BIND 9.11.28
    -  BIND 9.16.12
    -  BIND 9.17.10

each of which can be downloaded via the ISC downloads page,
https://www.isc.org/downloads

For package maintainers who want *only* the fixes for the
CVE vulnerabilities, patch diffs are available for each branch
in the "patches" subdirectory of the branch's February 2021
maintenance release, e.g.:

   9.11 branch:  https://downloads.isc.org/isc/bind9/9.11.28/patches
   9.16 branch:  https://downloads.isc.org/isc/bind9/9.16.12/patches
   9.17 branch:  no patch necessary for versions >= 9.17.2

Sincerely,

Michael McNally
ISC Security Officer
