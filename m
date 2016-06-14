X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["988" "Tuesday" "14" "June" "2016" "10:34:53" "-0400" "Paul Wouters" "pwouters@redhat.com" "<f24b7778-0446-c5d1-4905-e75a580fcbc4@redhat.com>" "23" "Re: [oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack" nil nil nil "6" "2016061414:34:53" "[oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack" (number mark "U       pwouters@red Jun 14   23/988   " thread-indent "\"Re: [oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack\"\n") "<20160613144048.9BBA942E034@smtpvbsrv1.mitre.org>" ("<20160613144048.9BBA942E034@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14238 invoked by uid 550); 14 Jun 2016 14:35:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14216 invoked from network); 14 Jun 2016 14:35:06 -0000
To: oss-security@lists.openwall.com, huzaifas@redhat.com
References: <20160613144048.9BBA942E034@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org
From: Paul Wouters <pwouters@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <f24b7778-0446-c5d1-4905-e75a580fcbc4@redhat.com>
Date: Tue, 14 Jun 2016 10:34:53 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.0
MIME-Version: 1.0
In-Reply-To: <20160613144048.9BBA942E034@smtpvbsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]); Tue, 14 Jun 2016 14:34:55 +0000 (UTC)
Subject: Re: [oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to
 DoS amplification attack

On 06/13/2016 10:40 AM, cve-assign@mitre.org wrote:
>> Its not libreswan which is flawed, but its the protocol which they are trying to implement.
> 
>> which implement IKEv1 are flawed, since they follow this protocol
> 
> Many protocols could be described as "flawed." The IKEv1 protocol amplification concern does not make it flawed in a way that would lead to a per-protocol
> CVE ID assignment.

Then you should pull the CVE-2016-5361 which deals with retransmission amplification in IKEv1

 We are maintaining the
> CVE-2016-5361 ID assignment for the upstream announcement of "libreswan 3.16 vulnerable to DDOS attack. Please upgrade to 3.17"

That statement on the libreswan website is clearly referring to CVE-2016-3071 not CVE-2016-5361.

 and
> accompanying upstream patch, as described in the http://www.openwall.com/lists/oss-security/2016/06/10/4 post.

Which again clearly refers to CVE-2016-5361 and not CVE-2016-3071

So again, please fix CVE-2016-5361 or drop it.

Paul
