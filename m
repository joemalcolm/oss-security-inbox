X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3110" "Friday" "18" "August" "2017" "16:13:00" "+0200" "Marcus Meissner" "meissner@suse.de" "<20170818141300.GH13079@suse.de>" "130" "Re: [oss-security] Re: ***UNCHECKED*** [oss-security] UnRAR: directory traversal + memory safety bugs" nil nil nil "8" "2017081814:13:00" "[oss-security] Re: ***UNCHECKED*** [oss-security] UnRAR: directory traversal + memory safety bugs" (number mark "U       meissner@sus Aug 18  130/3110  " thread-indent "\"Re: [oss-security] Re: ***UNCHECKED*** [oss-security] UnRAR: directory traversal + memory safety bugs\"\n") "<20170818132450.GE13079@suse.de>" ("<20170814223948.w4j6rsznsgixhc43@jwilk.net>" "<20170818132450.GE13079@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9633 invoked by uid 550); 18 Aug 2017 14:13:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9602 invoked from network); 18 Aug 2017 14:13:12 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Fri, 18 Aug 2017 16:13:00 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20170818141300.GH13079@suse.de>
References: <20170814223948.w4j6rsznsgixhc43@jwilk.net>
 <20170818132450.GE13079@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170818132450.GE13079@suse.de>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] Re: ***UNCHECKED*** [oss-security] UnRAR:
 directory traversal + memory safety bugs

Quoting from MITRE:

>> There is also a memory overread / corruption issues, are you going to assign
>> more CVEs?

Yes, we looked further and it appears that all of the other issues can
have CVEs.

Specifically, the UnRAR license says "UnRAR source code may be used in
any software to handle RAR archives without limitations free of
charge, but cannot be used to develop RAR (WinRAR) compatible archiver
and to re-create RAR compression algorithm, which is proprietary."
Also, the makefile can be used to build libraries from the code
(libunrar.a, etc.). Therefore, someone might have a long-running
process executing the UnRAR code, and any arbitrary crash
(out-of-bounds read, etc.) could be a denial of service.

Although this scenario may be unlikely, here are the three CVE IDs
anyway.


> [Suggested description]
> libunrar.a in UnRAR before 5.5.7 has an out-of-bounds read in the EncodeFileName::Decode
> call within the Archive::ReadHeader15 function.
> 
> ------------------------------------------
> 
> [Additional Information]
> Someone else might have requested CVEs.
> 
> ------------------------------------------
> 
> [Vulnerability Type]
> memory safety
> 
> ------------------------------------------
> 
> [Vendor of Product]
> unrar
> 
> ------------------------------------------
> 
> [Affected Product Code Base]
> unrar - 5.5.7
> 
> ------------------------------------------
> 
> [Reference]
> http://seclists.org/oss-sec/2017/q3/290
> 
> ------------------------------------------
> 
> [Has vendor confirmed or acknowledged the vulnerability?]
> true

Use CVE-2017-12940.


> [Suggested description]
> libunrar.a in UnRAR before 5.5.7 has an out-of-bounds read in the Unpack::Unpack20
> function.
> 
> ------------------------------------------
> 
> [Additional Information]
> Someone else might have requested CVEs.
> 
> ------------------------------------------
> 
> [Vulnerability Type]
> memory safety
> 
> ------------------------------------------
> 
> [Vendor of Product]
> unrar
> 
> ------------------------------------------
> 
> [Affected Product Code Base]
> unrar - 5.5.7
> 
> ------------------------------------------
> 
> [Reference]
> http://seclists.org/oss-sec/2017/q3/290
> 
> ------------------------------------------
> 
> [Has vendor confirmed or acknowledged the vulnerability?]
> true

Use CVE-2017-12941.


> [Suggested description]
> libunrar.a in UnRAR before 5.5.7 has a buffer overflow in the Unpack::LongLZ
> function.
> 
> ------------------------------------------
> 
> [Additional Information]
> Someone else might have requested CVEs.
> 
> ------------------------------------------
> 
> [Vulnerability Type]
> memory safety
> 
> ------------------------------------------
> 
> [Vendor of Product]
> unrar
> 
> ------------------------------------------
> 
> [Affected Product Code Base]
> unrar - 5.5.7
> 
> ------------------------------------------
> 
> [Reference]
> http://seclists.org/oss-sec/2017/q3/290
> 
> ------------------------------------------
> 
> [Has vendor confirmed or acknowledged the vulnerability?]
> true

Use CVE-2017-12942.
