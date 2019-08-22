X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1056" "Thursday" "22" "August" "2019" "11:27:23" "-0700" "Kurt H Maier" "khm@sciops.net" "<20190822182723.GA77294@wopr>" "17" "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" "^Date:" nil nil "8" "2019082218:27:23" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" (number mark "        khm@sciops.n Aug 22   17/1056  " thread-indent "\"Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2\"\n") "<63686C1A-E1C5-4351-948B-EFAE6FBA616A@oracle.com>" ("<CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>" "<C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>" "<20190822093122.GQ6086@suse.de>" "<ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>" "<CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>" "<20190822135753.10d124a4@jabberwock.cb.piermont.com>" "<63686C1A-E1C5-4351-948B-EFAE6FBA616A@oracle.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23704 invoked by uid 550); 22 Aug 2019 18:27:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23683 invoked from network); 22 Aug 2019 18:27:40 -0000
Message-ID: <20190822182723.GA77294@wopr>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>
 <C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>
 <20190822093122.GQ6086@suse.de>
 <ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>
 <CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>
 <20190822135753.10d124a4@jabberwock.cb.piermont.com>
 <63686C1A-E1C5-4351-948B-EFAE6FBA616A@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <63686C1A-E1C5-4351-948B-EFAE6FBA616A@oracle.com>
Date: Thu, 22 Aug 2019 11:27:23 -0700
From: Kurt H Maier <khm@sciops.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB
 subsystem x2
To: oss-security@lists.openwall.com

On Thu, Aug 22, 2019 at 07:17:34PM +0100, John Haxby wrote:
> 
> If I'm going to attack random devices I'm not going to do it with some random driver that may or may not be present on a phone.  And as this is a null pointer reference we're talking about you plug the phone and and it reboots so you won't do that more than once.   That's it, that's the limit of the vulnerability.
> 
> If I'm going to go to the trouble of emulating a device so I can sneak it into a public charging point I'm not going to do it just to make a phone reboot.  I'm going to pick a UAF vulnerability with an exploit that actually does something useful, something beyond just making the phone reboot.
> 
> Either that or I'm going to sneak in a USB killer and destroy the phones.
> 
> No matter what, emulating a device just to cause a null dereference is not CVE worthy.   If it is, then we need a CVE for power buttons on laptops and phones.
> 
> jch
> 

Undisclosed impromptu power buttons are absolutely a concern, regardless
of your personal pen-testing preferences.

khm
