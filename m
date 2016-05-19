X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1647" "Thursday" "19" "May" "2016" "12:17:11" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<ffaed073-e299-5c01-eb3d-998c8e4e80bb@redhat.com>" "36" "Re: [oss-security] Re: CVE Request: null pointer deref in openslp, can be triggered remotely" nil nil nil "5" "2016051906:47:11" "[oss-security] Re: CVE Request: null pointer deref in openslp, can be triggered remotely" (number mark "U       huzaifas@red May 19   36/1647  " thread-indent "\"Re: [oss-security] Re: CVE Request: null pointer deref in openslp, can be triggered remotely\"\n") "<20160518162539.B5707B2E038@smtpvbsrv1.mitre.org>" ("<20160518162539.B5707B2E038@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3363 invoked by uid 550); 19 May 2016 06:47:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3341 invoked from network); 19 May 2016 06:47:25 -0000
To: cve-assign@mitre.org
References: <20160518162539.B5707B2E038@smtpvbsrv1.mitre.org>
Cc: oss-security@lists.openwall.com
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Message-ID: <ffaed073-e299-5c01-eb3d-998c8e4e80bb@redhat.com>
Date: Thu, 19 May 2016 12:17:11 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <20160518162539.B5707B2E038@smtpvbsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Thu, 19 May 2016 06:47:14 +0000 (UTC)
Subject: Re: [oss-security] Re: CVE Request: null pointer deref in openslp,
 can be triggered remotely

On 05/18/2016 09:55 PM, cve-assign@mitre.org wrote:

> The oss-security message and the rhbz document seem to describe the
> impact in different ways, i.e., "Basically return value from malloc
> isn't checked ... This can be triggered remotely by sending a large
> number of requests, which could possibly lead malloc to fail at one
> point, causing crash via null pointer deref" versus "A remote attacker
> could potentially deplete the memory of the server." For purposes of
> CVE, this type of scenario is often not interpreted as two independent
> problems. Roughly speaking, it is interpreted as "The unchecked malloc
> return value is the primary problem. This problem becomes reachable
> for reasons that aren't fully described, but those reasons might
> involve a design limitation in which the memory consumption of
> requests is not strictly controlled."
> 
I fixed the description in the bug. The problem basically is unchecked
return value from malloc inside the realloc function. So when "crafted"
packets are sent to the server, realloc is triggered to extend the size
of the data structure which holds the network data. Under memory
pressure malloc could fail, which will trigger a null pointer deref.



> Finally, although perhaps not related to the issue of whether a CVE ID
> should exist, that Security.html page says "If you find a security
> hole in OpenSLP, please bring it to the attention of the OpenSLP
> maintainer" and names John Calcote. Possibly Red Hat could do this
> upstream notification if that hasn't already happened.
> 


Yes, we will inform upstream


-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team
