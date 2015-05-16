X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["395" "Saturday" "16" "May" "2015" "16:38:29" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20150516143829.GA1741@jwilk.net>" "12" "Re: [oss-security] QEMU 2.3.0 tmp vulns CVE request" nil nil nil "5" "2015051614:38:29" "[oss-security] QEMU 2.3.0 tmp vulns CVE request" (number mark "        jwilk@jwilk. May 16   12/395   " thread-indent "\"Re: [oss-security] QEMU 2.3.0 tmp vulns CVE request\"\n") "<555703A7.3090600@msgid.tls.msk.ru>" ("<55537A9D.70306@redhat.com>" "<555703A7.3090600@msgid.tls.msk.ru>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16028 invoked by uid 550); 16 May 2015 14:38:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16004 invoked from network); 16 May 2015 14:38:46 -0000
Message-ID: <20150516143829.GA1741@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com, qemu-devel@nongnu.org
References: <55537A9D.70306@redhat.com>
 <555703A7.3090600@msgid.tls.msk.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <555703A7.3090600@msgid.tls.msk.ru>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Ovh-Tracer-Id: 6226226486210123687
X-Ovh-Remote: 5.172.247.247 (ip-5-172-247-247.free.aero2.net.pl)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: 0
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeekuddrudduucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecu
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeekuddrudduucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecu
Cc: qemu-devel@nongnu.org
Date: Sat, 16 May 2015 16:38:29 +0200
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] QEMU 2.3.0 tmp vulns CVE request
To: oss-security@lists.openwall.com

* Michael Tokarev <mjt@tls.msk.ru>, 2015-05-16, 11:45:
>>./net/slirp.c:
>>    snprintf(s->smb_dir, sizeof(s->smb_dir), "/tmp/qemu-smb.%ld-%d",
>>             (long)getpid(), instance++);
>
>This one is real, used for -smb argument, to start smbd, making its 
>configuration.  Maybe tmpnam() should be used here.

"Never use this function.  Use mkstemp(3) or tmpfile(3) instead."

-- 
Jakub Wilk
