X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["478" "Friday" "10" "June" "2016" "10:32:01" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<8dce1875-f41f-ebdb-707d-267ede9ae655@redhat.com>" "19" "[oss-security] CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack" nil nil nil "6" "2016061005:02:01" "[oss-security] CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack" (number mark "U       huzaifas@red Jun 10   19/478   " thread-indent "\"[oss-security] CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10080 invoked by uid 550); 10 Jun 2016 05:02:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10057 invoked from network); 10 Jun 2016 05:02:17 -0000
To: oss-security@lists.openwall.com,
        Mitre CVE assign department <cve-assign@mitre.org>
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Message-ID: <8dce1875-f41f-ebdb-707d-267ede9ae655@redhat.com>
Date: Fri, 10 Jun 2016 10:32:01 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Fri, 10 Jun 2016 05:02:05 +0000 (UTC)
Subject: [oss-security] CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack

Hi,

I would like to request a CVE for the protocol flaw in IKEv1, details below:

https://www.kb.cert.org/vuls/id/419128
https://blogs.akamai.com/2016/02/ikeikev2-ripe-for-ddos-abuse.html

While the reporter says that IKEv1 and IKEv2 both are affected, we have
reasons to believe that IKEv2 may not be affected:

https://bugzilla.redhat.com/show_bug.cgi?id=1308508#c2

Can a CVE id be please assigned to this?

Thanks!


-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team
