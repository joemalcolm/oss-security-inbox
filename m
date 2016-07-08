X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1339" "Friday" "8" "July" "2016" "11:16:33" "+0300" "Paul Wouters" "pwouters@redhat.com" "<e97fc0b3-06b5-41af-8379-111486ab1a0c@redhat.com>" "22" "Re: [oss-security] CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack" nil nil nil "7" "2016070808:16:33" "[oss-security] CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack" (number mark "U       pwouters@red Jul  8   22/1339  " thread-indent "\"Re: [oss-security] CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack\"\n") "<026336DF-456D-4D42-80B3-A36C74177F72@akamai.com>" ("<20160613144048.9BBA942E034@smtpvbsrv1.mitre.org>" "<f24b7778-0446-c5d1-4905-e75a580fcbc4@redhat.com>" "<026336DF-456D-4D42-80B3-A36C74177F72@akamai.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15876 invoked by uid 550); 8 Jul 2016 08:16:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15858 invoked from network); 8 Jul 2016 08:16:47 -0000
To: oss-security@lists.openwall.com
References: <20160613144048.9BBA942E034@smtpvbsrv1.mitre.org>
 <f24b7778-0446-c5d1-4905-e75a580fcbc4@redhat.com>
 <026336DF-456D-4D42-80B3-A36C74177F72@akamai.com>
Cc: "huzaifas@redhat.com" <huzaifas@redhat.com>,
        "cve-assign@mitre.org" <cve-assign@mitre.org>
From: Paul Wouters <pwouters@redhat.com>
Message-ID: <e97fc0b3-06b5-41af-8379-111486ab1a0c@redhat.com>
Date: Fri, 8 Jul 2016 11:16:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.0
MIME-Version: 1.0
In-Reply-To: <026336DF-456D-4D42-80B3-A36C74177F72@akamai.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Fri, 08 Jul 2016 08:16:35 +0000 (UTC)
Subject: Re: [oss-security] CVE Request: IKEv1 protocol is vulnerable to DoS
 amplification attack

On 07/07/2016 07:27 PM, Seaman, Chad wrote:
> Hi All,
> 
> I’m Chad Seaman @ Akamai, the researcher who found, researched, and wrote the paper on the IKEv1 and IKEv2 flaws that could lead to amplification attacks.
> 
> The opening e-mail states that IKEv2 is not believed to be affected, I can confirm that in some cases some implementations are indeed affected.
> 
> There was some doubts about IKEv2 being affected and I was contacted by a Cisco engineer as well as one of the RFC authors, we constructed multiple IKEv2
> probe payloads and did a series of secondary scans that specifically targeted IKEv2 hosts to confirm these results.
> 
> Where hosts should respond once based on IKEv2 RFC specs, hundreds of thousands reply multiple times, roughly 110,000 reply 21 times or more per single
> probe, some of the worst offenders responded thousands of times.
> 

Are you sure those replies did not come from IKEv1 servers that do not implement IKEv2 ? A bunch of implementations just copy the incoming header
to construct the outgoing header. You can detect this by sending an bogus IKEv3 packet and see if they reply the same to that.

Can you confirm your test actually got a valid IKE_INIT reply that was re-send multiple times? If so, can you detect the vendor behind it? I can probably help
fingerprint that to determine.

Paul

