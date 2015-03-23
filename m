X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["519" "Tuesday" "24" "March" "2015" "00:13:06" "+0300" "Alexander Cherepanov" "ch3root@openwall.com" "<551081E2.8000607@openwall.com>" "15" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032321:13:06" "[oss-security] CVE for Kali Linux" (number mark "        ch3root@open Mar 24   15/519   " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<20150323103854.GA28211@suse.de>" ("<550EE478.70005@redhat.com>" "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>" "<20150322172300.GA21110@openwall.com>" "<550F2754.5060704@openwall.com>" "<20150323103854.GA28211@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17913 invoked by uid 550); 23 Mar 2015 21:13:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17895 invoked from network); 23 Mar 2015 21:13:18 -0000
Message-ID: <551081E2.8000607@openwall.com>
MIME-Version: 1.0
References: <550EE478.70005@redhat.com> <E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com> <20150322172300.GA21110@openwall.com> <550F2754.5060704@openwall.com> <20150323103854.GA28211@suse.de>
In-Reply-To: <20150323103854.GA28211@suse.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Tue, 24 Mar 2015 00:13:06 +0300
From: Alexander Cherepanov <ch3root@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

On 2015-03-23 13:38, Marcus Meissner wrote:
>> There are some attacks even if you verify signatures, e.g. serving
>> old, known-vulnerable versions. HTTPS can help here (until
>> signatures start to be widely accompanied by expiring timestamps or
>> something).
>
> SUSE has added an expiry tag in the YUM metadata for such cases.

It's nice to see progress in this area. Does SUSE guard against other 
attacks from [1] too?

[1] https://isis.poly.edu/~jcappos/papers/cappos_pmsec_tr08-02.pdf

-- 
Alexander Cherepanov
