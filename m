X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1530" "Monday" "13" "June" "2016" "11:07:49" "-0400" "Paul Wouters" "pwouters@redhat.com" "<dbaa8dbe-68a9-012d-4ea1-a6dd0e1d748e@redhat.com>" "30" "Re: [oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack" nil nil nil "6" "2016061315:07:49" "[oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack" (number mark "U       pwouters@red Jun 13   30/1530  " thread-indent "\"Re: [oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack\"\n") "<20160613144048.9BBA942E034@smtpvbsrv1.mitre.org>" ("<20160613144048.9BBA942E034@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22149 invoked by uid 550); 13 Jun 2016 15:08:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22108 invoked from network); 13 Jun 2016 15:08:01 -0000
To: oss-security@lists.openwall.com, huzaifas@redhat.com
References: <20160613144048.9BBA942E034@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org
From: Paul Wouters <pwouters@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <dbaa8dbe-68a9-012d-4ea1-a6dd0e1d748e@redhat.com>
Date: Mon, 13 Jun 2016 11:07:49 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.0
MIME-Version: 1.0
In-Reply-To: <20160613144048.9BBA942E034@smtpvbsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Mon, 13 Jun 2016 15:07:50 +0000 (UTC)
Subject: Re: [oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to
 DoS amplification attack

On 06/13/2016 10:40 AM, cve-assign@mitre.org wrote:
>> Its not libreswan which is flawed, but its the protocol which they are trying to implement.
> 
>> which implement IKEv1 are flawed, since they follow this protocol
> 
> Many protocols could be described as "flawed." The IKEv1 protocol amplification concern does not make it flawed in a way that would lead to a per-protocol
> CVE ID assignment. We are maintaining the CVE-2016-5361 ID assignment for the upstream announcement of "libreswan 3.16 vulnerable to DDOS attack. Please
> upgrade to 3.17" and accompanying upstream patch, as described in the http://www.openwall.com/lists/oss-security/2016/06/10/4 post.

<with upstream libreswan hat on>

If you want us to keep honestly reporting security issues, I recommend you
not single out single implementations over RFC compliant protocol flaws.

I'm fine if you list the CVE with the 6 vulnerable implementations, then say
libreswan has fixed it.

I'm not okay with libreswan being listed as vulnerable and the other 5 vulnerable
implementations not being listed.

If you keep the CVE as-is, we will document it at libreswan.org/security/ as a
mis-issued CVE entry.

Related, I would _REALLY_ appreciate it if MITR talks to us before issuing CVE's
for our software. We've been at this long before MITR, we respond within days, we
are known to have coordinated CVE issues for IKE implementation issues across
various implementations. You can contact us at security@libreswan.org, PGP key
available at the usual places.

Paul
