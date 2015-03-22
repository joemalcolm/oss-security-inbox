X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["841" "Sunday" "22" "March" "2015" "23:34:28" "+0300" "Alexander Cherepanov" "ch3root@openwall.com" "<550F2754.5060704@openwall.com>" "16" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032220:34:28" "[oss-security] CVE for Kali Linux" (number mark "        ch3root@open Mar 22   16/841   " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<20150322172300.GA21110@openwall.com>" ("<550EE478.70005@redhat.com>" "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>" "<20150322172300.GA21110@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30604 invoked by uid 550); 22 Mar 2015 20:34:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30585 invoked from network); 22 Mar 2015 20:34:39 -0000
Message-ID: <550F2754.5060704@openwall.com>
MIME-Version: 1.0
References: <550EE478.70005@redhat.com> <E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com> <20150322172300.GA21110@openwall.com>
In-Reply-To: <20150322172300.GA21110@openwall.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Sun, 22 Mar 2015 23:34:28 +0300
From: Alexander Cherepanov <ch3root@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

On 2015-03-22 20:23, Solar Designer wrote:
> https does offer a security aspect that signatures don't: it hides from
> some observers which exact software is being downloaded (and maybe that
> it's a software download at all).  It doesn't do that perfectly because
> the target address and transfer timings and sizes may be revealing, but
> I do acknowledge there's some subtle improvement over http here.  I just
> think this is far less important than ensuring authenticity of the
> software.  So let's demand signatures and signature verification first,
> and let's not be distracted by http vs. https.

There are some attacks even if you verify signatures, e.g. serving old, 
known-vulnerable versions. HTTPS can help here (until signatures start 
to be widely accompanied by expiring timestamps or something).

-- 
Alexander Cherepanov
