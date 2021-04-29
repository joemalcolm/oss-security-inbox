X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1225" "Wednesday" "28" "April" "2021" "17:09:42" "-0800" "Michael McNally" "mcnally@isc.org" nil "28" "[oss-security] ISC discloses three BIND vulnerabilities (CVE-2021-25214, CVE-2021-25215, and CVE-2021-25216)" nil nil nil "4" nil nil (number mark "U       mcnally@isc. Apr 28   28/1225  " thread-indent "\"[oss-security] ISC discloses three BIND vulnerabilities (CVE-2021-25214, CVE-2021-25215, and CVE-2021-25216)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] ISC discloses three BIND vulnerabilities (CVE-2021-25214, CVE-2021-25215, and CVE-2021-25216)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24180 invoked by uid 550); 29 Apr 2021 01:09:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24159 invoked from network); 29 Apr 2021 01:09:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1619658584; bh=QADBDZWiqdePsQumcqPNdSVwtt7Bw0juMbkT9DlsiGA=;
	h=To:Cc:From:Subject:Date;
	b=Qj2OaN0FDz5u9qSWO2SF3apxydTgQEkVHcmVO8DUmLiyMSZYUqbFnrwHjme2TpYhw
	 9KEMYEIKO2Hg5RAuwpVvow+44YSPz2t5VSaLP05dKK+HOHLiuuvCNhzy8dG56W8SHD
	 saTYbVLek7GWYowX8nUalnblPH0uLROcbwMoVc5g=
DKIM-Filter: OpenDKIM Filter v2.9.2 zmx1.isc.org 29F7316007E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1619658584;
	bh=JQFAJP9mWOkoyj+Cn5FGGhXbXVKX6TsTmKQXLjD65qo=;
	h=To:From:Subject:Message-ID:Date:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	b=VdN53rzzhon68sT47yI4DrntiIveU4gxt/W255+9wgAhqbXQkaNvfOTsL/FQ+HaN3
	 UDyV7wOPmE2Py3t4QVO9f3dEMF9QD1pqS0fEMss3Lr8J9qKeITsTcIFzE/uZXLnZMr
	 A1QSZfrhmDBh2WLXXkIGJ8U3mfxg+iNchf2z5Q40=
To: oss-security@lists.openwall.com
Cc: "security-officer@isc.org" <security-officer@isc.org>
From: Michael McNally <mcnally@isc.org>
Message-ID: <bb03954a-2db8-8c4c-3937-a3c59072abb4@isc.org>
Date: Wed, 28 Apr 2021 17:09:42 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] ISC discloses three BIND vulnerabilities (CVE-2021-25214,
 CVE-2021-25215, and CVE-2021-25216)

On April 28, 2021, we (Internet Systems Consortium) disclosed three
vulnerabilities affecting our BIND 9 software:

    CVE-2021-25214: A broken inbound incremental zone update (IXFR)
    can cause named to terminate unexpectedly
    https://kb.isc.org/docs/cve-2021-25214

    CVE-2021-25215: An assertion check can fail while answering queries for
    DNAME records that require the DNAME to be processed to resolve itself
    https://kb.isc.org/docs/cve-2021-25215

    CVE-2021-25216: A second vulnerability in BIND's GSSAPI security policy
    negotiation can be targeted by a buffer overflow attack
    https://kb.isc.org/docs/cve-2021-25216

New versions of BIND are available from https://www.isc.org/downloads

Operators and package maintainers who prefer to apply patches selectively can
find individual vulnerability-specific patches in the "patches" subdirectory
of the release directories for our two stable release branches (9.11 and 9.16)

   https://downloads.isc.org/isc/bind9/9.11.31/patches
   https://downloads.isc.org/isc/bind9/9.16.15/patches

With the public announcement of these vulnerabilities, the embargo
period is ended and any updated software packages that have been
prepared may be released.

