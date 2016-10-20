X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1333" "Thursday" "20" "October" "2016" "08:39:40" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<dee4adeb-e6b5-b011-b1cc-7c8e76a3ed1f@redhat.com>" "33" "Re: [oss-security] Re: CVE Request: OpenSSH: Memory exhaustion issue found in OpenSSH" nil nil nil "10" "2016102003:09:40" "[oss-security] Re: CVE Request: OpenSSH: Memory exhaustion issue found in OpenSSH" (number mark "U       huzaifas@red Oct 20   33/1333  " thread-indent "\"Re: [oss-security] Re: CVE Request: OpenSSH: Memory exhaustion issue found in OpenSSH\"\n") "<20161019213233.2E9CA52E00A@smtpvbsrv1.mitre.org>" ("<20161019213233.2E9CA52E00A@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17681 invoked by uid 550); 20 Oct 2016 03:09:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17663 invoked from network); 20 Oct 2016 03:09:55 -0000
To: oss-security@lists.openwall.com
References: <20161019213233.2E9CA52E00A@smtpvbsrv1.mitre.org>
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Message-ID: <dee4adeb-e6b5-b011-b1cc-7c8e76a3ed1f@redhat.com>
Date: Thu, 20 Oct 2016 08:39:40 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <20161019213233.2E9CA52E00A@smtpvbsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Thu, 20 Oct 2016 03:09:43 +0000 (UTC)
Subject: Re: [oss-security] Re: CVE Request: OpenSSH: Memory exhaustion issue
 found in OpenSSH

On 10/20/2016 03:02 AM, cve-assign@mitre.org wrote:
>> The OpenSSH has a memory exhaustion bug in key exchange process. An
>> unauthenticated peer could repeat the KEXINIT and cause allocation of
>> up to 384MB(not 128MB that the official said). In the default case, an
>> attacker can build 100 such connections, which will consume 38400 MB
>> of memory on the server.
> 
>> http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/usr.bin/ssh/kex.c?rev=1.127&content-type=text/x-cvsweb-markup
> 
>>> Unregister the KEXINIT handler after message has been received.
> 
> Use CVE-2016-8858.
> 
> 
OpenSSH upstream dos not consider this as a security issue btw.

It seems the only thing the attacker could do here, is self-dos his own
connection. Regarding consuming memory on the server, by opening several
concurrent connections at the same time, there are various protections
available in opensshd_config file, such as "MaxStartups", which can
limit the maximum number of sessions per network connections.

This value is effectively set to 10:30:100 so maximum of 100 * 128 MB
can be allocated, which is pretty much for unauthenticated user. Though
the rate limiting starts to drop connection after 10, which is like 1GB
and which should not hurt the server (though it is not cool).





-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team
