X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["699" "Thursday" "29" "April" "2021" "08:15:10" "-0600" "Ariadne Conill" "ariadne@dereferenced.org" nil "21" "Re: [oss-security] ISC discloses three BIND vulnerabilities (CVE-2021-25214, CVE-2021-25215, and CVE-2021-25216)" nil nil nil "4" nil nil (number mark "U       ariadne@dere Apr 29   21/699   " thread-indent "\"Re: [oss-security] ISC discloses three BIND vulnerabilities (CVE-2021-25214, CVE-2021-25215, and CVE-2021-25216)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] ISC discloses three BIND vulnerabilities (CVE-2021-25214, CVE-2021-25215, and CVE-2021-25216)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31776 invoked by uid 550); 29 Apr 2021 14:23:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28355 invoked from network); 29 Apr 2021 14:15:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dereferenced.org;
	s=mailbun; t=1619705711;
	bh=9B1OGwu5EZF2gFhwW06m26uK21ltW7TJQG4IuN7k0B8=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=L/iu8lkkFxMOsNKZno2sLfVxcZl0y9EFrNCXRSelYIdkJ04dMa1gZHqCJPAqcpw16
	 RKc5jKIiABkx2bB76IcnMlfYpM//1YEGqVQeofvVMGbZ7d1VUBbjLLBrBPvypvm5XQ
	 mpFIHYQSjseXLsn4fCN1QiU6ynyGm6uIU4vHUiOrkNIiZ7WS9h4IW0QUsS51G5367i
	 PBpCZkGO9bRLA5D5JPc5yb6uIh9FpiFTvPVMhE7ExMNR8SGp5OIrWEa6kTFBqUls1G
	 g5hglJLmKChmSgYefcA2Xl2/V17SJKOvHSOaZQTHlFQ7+gvi+4DNaEVzSibSQg9pzB
	 frEXLTuMfn00w==
Date: Thu, 29 Apr 2021 08:15:10 -0600 (MDT)
From: Ariadne Conill <ariadne@dereferenced.org>
To: oss-security@lists.openwall.com
cc: Ariadne Conill <ariadne@dereferenced.org>, 
    "security-officer@isc.org" <security-officer@isc.org>
In-Reply-To: <10CA3DFF-8822-4BB2-8659-8C311199769F@isc.org>
Message-ID: <c2f4a07b-45e-0b1-a7eb-22db2e584460@dereferenced.org>
References: <bb03954a-2db8-8c4c-3937-a3c59072abb4@isc.org> <4ba1f3b4-9452-c630-cf7a-aa2f7e8b5835@dereferenced.org> <10CA3DFF-8822-4BB2-8659-8C311199769F@isc.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="0-1993481371-1619705712=:15938"
Subject: Re: [oss-security] ISC discloses three BIND vulnerabilities
 (CVE-2021-25214, CVE-2021-25215, and CVE-2021-25216)

--0-1993481371-1619705712=:15938
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

Hello,

On Thu, 29 Apr 2021, Ondřej Surý wrote:

> Hi Ariande,
>
> BIND 9.17.x was using the system SPNEGO since 9.17.2 (I think).
>
> Also for older versions, it should be enough to use --disable-isc-spnego if you can’t patch it (that’s what I am doing for Debian buster).  It just won’t work with Heimdal krb5, but it compiles just fine with MIT krb5.

Yeah, we've always built with --disable-isc-spnego, so no problem there.

I wound up just upgrading every branch still supportd to 9.16.15.  Seemed 
like the easiest way.

Ariadne
--0-1993481371-1619705712=:15938--
