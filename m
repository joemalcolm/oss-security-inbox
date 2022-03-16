X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1202" "Wednesday" "16" "March" "2022" "14:51:01" "-0500" "Everett B. Fulton" "ebf@isc.org" nil "32" "[oss-security] Four vulnerabilities disclosed in BIND (CVE-2021-25220, CVE-2022-0396, CVE-2022-0635 and CVE-2022-0667)" nil nil nil "3" nil nil (number mark "U       ebf@isc.org  Mar 16   32/1202  " thread-indent "\"[oss-security] Four vulnerabilities disclosed in BIND (CVE-2021-25220, CVE-2022-0396, CVE-2022-0635 and CVE-2022-0667)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Four vulnerabilities disclosed in BIND (CVE-2021-25220, CVE-2022-0396, CVE-2022-0635 and CVE-2022-0667)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13756 invoked by uid 550); 16 Mar 2022 19:55:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11824 invoked from network); 16 Mar 2022 19:51:16 -0000
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.pao1.isc.org 3164E3AB026
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1647460264; bh=SlJubT0p53wK/+AMKFsVc21DHH+QINo+dC5M+/pifvY=;
	h=Date:To:From:Subject;
	b=FO9EhMoOSBvGC5K//EZiuJyWV1JBpWEuV0gnO3MPZ0XqJoNO+uv1MP7RKl2XLMPAH
	 C0s8+HF1bhXkhBF6kaiSHQFRtQlMy+odn28c3xE7Alj0wxU9zeD7aVWIsk7noUwtLs
	 FT41Tq4v8dzxHgR3fJuBpYw5zuxm5GMoyRFc9h7I=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbrang.isc.org 1CACD10E9E63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1647460248;
	bh=7uum2WbPmZviuclbBomc24ha+PPm3WAgWL3WOBG7Mz0=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=gMjNvIC/ihh98Gw4OApAY7b6sibqFWOtVeLHaPmpHq6Vsc5nSMLzF45b8HbX6Lrgo
	 ZY4VybQbMuXlC8zUMwxsuXoGVUn9RKu+axir6WWuLVz7HTXx6xHtojVNwBzVQcTTxp
	 7NpwLm0SjnRUUxdtNBTfuKLaRY0w9OtWhMplQeds=
Message-ID: <c4f4fbb4-04fb-a4e5-0aba-d18533ddaaa9@isc.org>
Date: Wed, 16 Mar 2022 14:51:01 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: oss-security@lists.openwall.com
From: "Everett B. Fulton" <ebf@isc.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Four vulnerabilities disclosed in BIND (CVE-2021-25220,
 CVE-2022-0396, CVE-2022-0635 and CVE-2022-0667)

On March 16 2022, we (Internet Systems Consortium) disclosed four
vulnerabilities affecting our BIND 9 software:

   CVE-2021-25220: DNS forwarders - cache poisoning vulnerability
   https://kb.isc.org/docs/CVE-2021-25220

   CVE-2022-0396: DoS from specifically crafted TCP packets
   https://kb.isc.org/docs/cve-2022-0396

   CVE-2022-0635: DNAME insist with synth-from-dnssec enabled
   https://kb.isc.org/docs/cve-2022-0635

   CVE-2022-0667: Assertion failure on delayed DS lookup
   https://kb.isc.org/docs/cve-2022-0667

New versions of BIND are available from https://www.isc.org/downloads

Operators and package maintainers who prefer to apply patches
selectively can find individual vulnerability-specific patches in the
"patches" subdirectory of the release directories for our three stable
release branches (9.11. 9.16 and 9.18)

   https://downloads.isc.org/isc/bind9/9.11.37/patches/
   https://downloads.isc.org/isc/bind9/9.16.27/patches/
   https://downloads.isc.org/isc/bind9/9.18.1/patches/

With the public announcement of these vulnerabilities, the embargo
period is ended and any updated software packages that have been
prepared may be released.
-- 
Everett B. Fulton
ISC Support
