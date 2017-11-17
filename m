X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["347" "Saturday" "18" "November" "2017" "09:22:04" "+1100" "Dave Horsfall" "dave@horsfall.org" "<alpine.BSF.2.21.1711180920070.49959@aneurin.horsfall.org>" "13" "Re: [oss-security] phusion passenger CVE-2017-1000384" nil nil nil "11" "2017111722:22:04" "[oss-security] phusion passenger CVE-2017-1000384" (number mark "U       dave@horsfal Nov 18   13/347   " thread-indent "\"Re: [oss-security] phusion passenger CVE-2017-1000384\"\n") "<20171117211922.ljzilxin2rkvpqnf@jwilk.net>" ("<CANO=Ty13_HbxhMT8BnqYVfU6=g4GP+oJnyCv11ucUG_q8Kbqqg@mail.gmail.com>" "<ffe4aba0-426e-89c0-4760-1d4b315a88a1@cpanel.net>" "<20171117211922.ljzilxin2rkvpqnf@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22365 invoked by uid 550); 17 Nov 2017 22:23:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22020 invoked from network); 17 Nov 2017 22:22:20 -0000
X-RG-Spam: Unknown
X-Junkmail-Premium-Raw: score=9/83,refid=2.7.2:2017.11.17.215117:17:9.975,ip=,rules=__HAS_FROM,
 __TO_MALFORMED_2, __TO_NAME, __TO_NAME_DIFF_FROM_ACC,
 __BOUNCE_CHALLENGE_SUBJ, __BOUNCE_NDR_SUBJ_EXEMPT, __IN_REP_TO, __HAS_MSGID,
 __SANE_MSGID, __REFERENCES, __USER_AGENT, __MIME_VERSION, __CT,
 __CT_TEXT_PLAIN, __TO_IN_SUBJECT, __SUBJ_ALPHA_NEGATE, __FORWARDED_MSG,
 __NO_HTML_TAG_RAW, BODYTEXTP_SIZE_400_LESS, BODYTEXTP_SIZE_3000_LESS,
 BODY_SIZE_300_399, __MIME_TEXT_P1, __MIME_TEXT_ONLY, HTML_00_01, HTML_00_10,
 BODY_SIZE_5000_LESS, IN_REP_TO, MSG_THREAD, __TO_REAL_NAMES,
 LEGITIMATE_SIGNS, NO_URI_FOUND, NO_CTA_URI_FOUND, BODY_SIZE_1000_LESS,
 BODY_SIZE_2000_LESS, TO_IN_SUBJECT, __MIME_TEXT_P, REFERENCES, NO_URI_HTTPS,
 BODY_SIZE_7000_LESS
X-RG-VS-Verdict: clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrfeelgedrkeelgdduudefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuuffpveftpgfvgffnuffvtfetnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvufgjkfhffgggtgesthdttddttdervdenucfhrhhomhepffgrvhgvucfjohhrshhfrghllhcuoegurghvvgeshhhorhhsfhgrlhhlrdhorhhgqeenucfkphepuddutddrudeguddrudelfedrvdeffeenucfrrghrrghmpehhvghloheprghnvghurhhinhdrhhhorhhsfhgrlhhlrdhorhhgpdhinhgvthepuddutddrudeguddrudelfedrvdeffedpmhgrihhlfhhrohhmpeeouggrvhgvsehhohhrshhfrghllhdr
X-Authentication-Warning: aneurin.horsfall.org: dave owned process doing -bs
Date: Sat, 18 Nov 2017 09:22:04 +1100 (EST)
From: Dave Horsfall <dave@horsfall.org>
To: OSS Security <oss-security@lists.openwall.com>
In-Reply-To: <20171117211922.ljzilxin2rkvpqnf@jwilk.net>
Message-ID: <alpine.BSF.2.21.1711180920070.49959@aneurin.horsfall.org>
References: <CANO=Ty13_HbxhMT8BnqYVfU6=g4GP+oJnyCv11ucUG_q8Kbqqg@mail.gmail.com> <ffe4aba0-426e-89c0-4760-1d4b315a88a1@cpanel.net> <20171117211922.ljzilxin2rkvpqnf@jwilk.net>
User-Agent: Alpine 2.21 (BSF 202 2017-01-01)
X-GPG-Public-Key: http://www.horsfall.org/gpgkey.pub
X-GPG-Fingerprint: 05B4 FFBC 0218 B438 66E0  587B EF46 7357 EF5E F58B
X-Home-Page: http://www.horsfall.org/
X-Witty-Saying: "chmod 666 the_mode_of_the_beast"
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Subject: Re: [oss-security] phusion passenger CVE-2017-1000384

On Fri, 17 Nov 2017, Jakub Wilk wrote:

> But false _is_ a defined macro in this file, so this doesn't disable the 
> code inside. I guess they meant to write:
>
>  #if false
>  ...
>  #endif

Or perhaps they meant to write the more conventional "#ifdef notdef".

-- 
Dave Horsfall DTM (VK2KFU)  "Those who don't understand security will suffer."
