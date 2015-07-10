X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1202" "Friday" "10" "July" "2015" "12:27:11" "+0200" "Gsunde Orangen" "gsunde.orangen@gmail.com" "<559F9DFF.7060508@gmail.com>" "32" "Re: [oss-security] Re: CVE Request: UDP checksum DoS" nil nil nil "7" "2015071010:27:11" "[oss-security] Re: CVE Request: UDP checksum DoS" (number mark "U       gsunde.orang Jul 10   32/1202  " thread-indent "\"Re: [oss-security] Re: CVE Request: UDP checksum DoS\"\n") "<20150706092311.19A656C0D6A@smtpvmsrv1.mitre.org>" ("<20150706092311.19A656C0D6A@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9244 invoked by uid 550); 10 Jul 2015 10:22:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9222 invoked from network); 10 Jul 2015 10:22:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=d1LFpXmnlCxEet9sJfpF84GRd36PpfTBTYzb5oRFCjE=;
        b=JlbuIMU7ovIJvxtp/QQJP0yZ/o9FklJIPIjHj+SiJgIWUURAq6+MPK9tsXgR43SwQL
         RM509XD+IEsjAoidL+2l11ULloYGLJ7/QF4DVlNBYjKdV2XVYRM6K3oixe2cjXhUmRPv
         eoTeBcoO4mxj+XbHuT1g16YV6Hls8ny7hHI97AX+fpc0Dr3HdorqgKH7IVMQsBR/eCpv
         pPuSHovISjshvKogJu7fqPHGJwPNAgerdumVUFZKOp1Mbi7uj3sS3cueLJlq/v8sXXcG
         I2zaLQ9FSNcCrwSemc7cRNN0iLQ5U6OFw/Wl2Y4ud2WDbEw9u2rk7KpxWjhQDCMo70oZ
         1Qag==
X-Received: by 10.194.112.3 with SMTP id im3mr40062073wjb.54.1436523760150;
        Fri, 10 Jul 2015 03:22:40 -0700 (PDT)
Message-ID: <559F9DFF.7060508@gmail.com>
Date: Fri, 10 Jul 2015 12:27:11 +0200
From: Gsunde Orangen <gsunde.orangen@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <20150706092311.19A656C0D6A@smtpvmsrv1.mitre.org>
In-Reply-To: <20150706092311.19A656C0D6A@smtpvmsrv1.mitre.org>
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Re: CVE Request: UDP checksum DoS

These two issues (CVE-2015-5366 and CVE-2015-5364) - commit in May 30th:
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=beb39db59d14990e401e235faf66a6b9b31240b0

are fixed upstream in: 3.10.81, 3.12.44, 3.14.45, 3.18.17, 4.0.6, and
4.1-rc7

Does anyone know the reason why it wasn't (yet?) included in the
latest 3.4.x release (3.4.108 as of 2015-06-19)?

Thanks,
Gsunde


On 2015-07-06, 11:23 cve-assign@mitre.org wrote:
>>> However, the presence of "return -EAGAIN" may also have been a
>>>  security problem in some realistic circumstances. For
>>> example, maybe there's an attacker who can't transmit a flood
>>> with invalid checksums, but can sometimes inject one packet
>>> with an invalid checksum. The goal of this attacker isn't to
>>> cause a system hang; the goal is to cause an EPOLLET epoll
>>> application to stop reading for an indefinitely long period of
>>> time. This scenario can't also be covered by CVE-2015-5364. Is
>>> it better to have no CVE ID at all, e.g., is
>>> udp_recvmsg/udpv6_recvmsg simply not intended to defend against
>>> this scenario?
> 
>> It seems reasonable to assign a second CVE ID to that issue.
> 
> Use CVE-2015-5366.
> 
> 

