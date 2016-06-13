X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1711" "Monday" "13" "June" "2016" "09:55:48" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<885b2658-698a-7030-f3bc-edec7208b3ba@redhat.com>" "54" "Re: [oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack" nil nil nil "6" "2016061304:25:48" "[oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack" (number mark "U       huzaifas@red Jun 13   54/1711  " thread-indent "\"Re: [oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack\"\n") "<20160610123434.D865C13B51E@smtpvmsrv1.mitre.org>" ("<20160610123434.D865C13B51E@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25801 invoked by uid 550); 13 Jun 2016 04:26:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25780 invoked from network); 13 Jun 2016 04:26:02 -0000
To: oss-security@lists.openwall.com
References: <20160610123434.D865C13B51E@smtpvmsrv1.mitre.org>
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Message-ID: <885b2658-698a-7030-f3bc-edec7208b3ba@redhat.com>
Date: Mon, 13 Jun 2016 09:55:48 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <20160610123434.D865C13B51E@smtpvmsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Mon, 13 Jun 2016 04:25:50 +0000 (UTC)
Subject: Re: [oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to
 DoS amplification attack

On 06/10/2016 06:04 PM, cve-assign@mitre.org wrote:
>> I would like to request a CVE for the protocol flaw in IKEv1, details below:
> 
>> https://www.kb.cert.org/vuls/id/419128
>> https://blogs.akamai.com/2016/02/ikeikev2-ripe-for-ddos-abuse.html
> 
>> https://bugzilla.redhat.com/show_bug.cgi?id=1308508
>> https://github.com/libreswan/libreswan/commit/152d6d95632d8b9477c170f1de99bcd86d7fb1d6
>> https://lists.libreswan.org/pipermail/swan-dev/2016-March/001394.html
> 
>> Can a CVE id be please assigned to this?
> 
> CVE IDs are not assigned to UDP protocols solely on the basis of an
> observed amplification-attack risk. A CVE ID can exist if the UDP
> reply traffic simply cannot ever have any legitimate purpose for users
> of a protocol. The general case of the interaction between UDP
> amplification and CVE was discussed between MITRE and CERT in 2013;
> this may be the reason that no CVE ID is listed in the
> https://www.kb.cert.org/vuls/id/419128 document.
> 

In that case, no CVE should be assigned to this issue as well. Its not
libreswan which is flawed, but its the protocol which they are trying to
implement.


> We can, however, assign a CVE ID to a vendor's announcement of a
> required security update, such as on the https://libreswan.org/ home
> page:
> 
>   "libreswan 3.16 vulnerable to DDOS attack. Please upgrade to 3.17"
> 
> Use CVE-2016-5361 for this issue only in the libreswan codebase.
> 
> 


Also the following products (which implement IKEv1 are flawed, since
they follow this protocol)

 ipsec-tools
 racoon2
 openswan
 strongswan
 libreswan
 ike
 vpnc

(There may be others, but i can only think of the above)



-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team
