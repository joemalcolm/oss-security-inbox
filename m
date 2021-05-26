X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["933" "Wednesday" "26" "May" "2021" "14:15:38" "-0800" "Michael McNally" "mcnally@isc.org" nil "26" "[oss-security] ISC has disclosed a vulnerability in ISC DHCP (CVE-2021-25217)" nil nil nil "5" nil nil (number mark "U       mcnally@isc. May 26   26/933   " thread-indent "\"[oss-security] ISC has disclosed a vulnerability in ISC DHCP (CVE-2021-25217)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] ISC has disclosed a vulnerability in ISC DHCP (CVE-2021-25217)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3528 invoked by uid 550); 26 May 2021 22:15:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3510 invoked from network); 26 May 2021 22:15:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1622067339; bh=7mGyVwbAfGFvbg9PdElJNiEZc2cv6R1YD4UIoVGZlno=;
	h=From:To:Cc:Subject:Date;
	b=pOSR+vT2SYCNKrmD7YjPBcxfRKDXBsdxshc2Mbo8zf7tzuwU7uQesDOnbJiUW+pcd
	 /NikKmTyvev8DEm4+K/g/naxm1gfLTphKvvpbxzShh5oriS3oj84bLS+8oqIUt40k0
	 TBPfnkwnlF4KY+3Xcy3lwvP0qdkcXZ1FczVwBOuo=
DKIM-Filter: OpenDKIM Filter v2.9.2 zmx1.isc.org 7CEB7160079
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1622067339;
	bh=Gtqnrq+ZRzSQ87MlYNZU/nHV1LkDvQx/Nq/D8bX+CdM=;
	h=From:To:Subject:Message-ID:Date:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	b=SAzrX/zN9bKjTyDgdooSL9tRwB0R5nK5z2224PW18yxQnBReKg1UVDFLQzK8MEfTB
	 luewWGlj46wUYxMouZjZ4qlYJzUEshQEcPv7QeW+W89mNz4TBTu5Ma6FDMeC573aME
	 MLME+82/WgBRgH6o2kl2hl79uM68msskjtqrPU9s=
From: Michael McNally <mcnally@isc.org>
To: oss-security@lists.openwall.com
Cc: "security-officer@isc.org" <security-officer@isc.org>
Message-ID: <69a91eea-3377-2ad1-cf21-8a1c929e2152@isc.org>
Date: Wed, 26 May 2021 14:15:38 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.2
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] ISC has disclosed a vulnerability in ISC DHCP (CVE-2021-25217)

On May 26, 2021, we (Internet Systems Consortium) disclosed a
vulnerability affecting our ISC DHCP software:

    CVE-2021-25217: A buffer overrun in lease file parsing code can be
    used to exploit a common vulnerability shared by dhcpd and dhclient
    https://kb.isc.org/docs/cve-2021-25217

New versions of ISC DHCP are available from https://www.isc.org/downloads

Operators and package maintainers who prefer to apply patches selectively c=
an
find individual vulnerability-specific patches in the "patches" subdirectory
of the release directories for our two stable release branches (4.4 and 4.1=
-ESV)

   https://downloads.isc.org/isc/dhcp/4.4.2-P1/patches
   https://downloads.isc.org/isc/dhcp/4.1-ESV-R16-P1/patches

With the public announcement of this vulnerability, the embargo
period is ended and any updated software packages that have been
prepared may be released.

--

Michael McNally
(for ISC Security Officer)
