X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1629" "Tuesday" "12" "July" "2016" "22:46:04" "+0300" "Paul Wouters" "pwouters@redhat.com" "<e2b42449-584c-9d7f-070e-b65b3150d3bc@redhat.com>" "32" "Re: [oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack" nil nil nil "7" "2016071219:46:04" "[oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack" (number mark "U       pwouters@red Jul 12   32/1629  " thread-indent "\"Re: [oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack\"\n") "<f24b7778-0446-c5d1-4905-e75a580fcbc4@redhat.com>" ("<20160613144048.9BBA942E034@smtpvbsrv1.mitre.org>" "<f24b7778-0446-c5d1-4905-e75a580fcbc4@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18224 invoked by uid 550); 12 Jul 2016 19:46:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18206 invoked from network); 12 Jul 2016 19:46:17 -0000
References: <20160613144048.9BBA942E034@smtpvbsrv1.mitre.org>
 <f24b7778-0446-c5d1-4905-e75a580fcbc4@redhat.com>
To: oss-security@lists.openwall.com, huzaifas@redhat.com
Cc: cve-assign@mitre.org
From: Paul Wouters <pwouters@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <e2b42449-584c-9d7f-070e-b65b3150d3bc@redhat.com>
Date: Tue, 12 Jul 2016 22:46:04 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.0
MIME-Version: 1.0
In-Reply-To: <f24b7778-0446-c5d1-4905-e75a580fcbc4@redhat.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Tue, 12 Jul 2016 19:46:05 +0000 (UTC)
Subject: Re: [oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to
 DoS amplification attack

On 06/14/2016 05:34 PM, Paul Wouters wrote:
> On 06/13/2016 10:40 AM, cve-assign@mitre.org wrote:
>>> Its not libreswan which is flawed, but its the protocol which they are trying to implement.
>>
>>> which implement IKEv1 are flawed, since they follow this protocol
>>
>> Many protocols could be described as "flawed." The IKEv1 protocol amplification concern does not make it flawed in a way that would lead to a per-protocol
>> CVE ID assignment.
> 
> Then you should pull the CVE-2016-5361 which deals with retransmission amplification in IKEv1
> 
>  We are maintaining the
>> CVE-2016-5361 ID assignment for the upstream announcement of "libreswan 3.16 vulnerable to DDOS attack. Please upgrade to 3.17"
> 
> That statement on the libreswan website is clearly referring to CVE-2016-3071 not CVE-2016-5361.
> 
>  and
>> accompanying upstream patch, as described in the http://www.openwall.com/lists/oss-security/2016/06/10/4 post.
> 
> Which again clearly refers to CVE-2016-5361 and not CVE-2016-3071
> 
> So again, please fix CVE-2016-5361 or drop it.

I have tested openswan and strongswan and confirmed it contains the same amplification that is inherent in being IKEv1 compliant.

Neither implementation has applied the hardening that libreswan has applied for this that was the original information that caused
CVE-2016-5361 to be issued for libreswan.

I believe MITRE needs to fix the inconsistency in the issuance of CVE-2016-5361, expand it to be about the IKEv1 protocol, and gather
the other vendor information and patches, or issue additional vendor specific CVE's. I believe the first solution is better.

Paul
