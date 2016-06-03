X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["656" "Friday" "3" "June" "2016" "13:50:40" "-0400" "Marc Deslauriers" "marc.deslauriers@canonical.com" "<5751C370.1010802@canonical.com>" "24" "[oss-security] CVE Request: Dnsmasq denial of service" nil nil nil "6" "2016060317:50:40" "[oss-security] CVE Request: Dnsmasq denial of service" (number mark "U       marc.deslaur Jun  3   24/656   " thread-indent "\"[oss-security] CVE Request: Dnsmasq denial of service\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21923 invoked by uid 550); 3 Jun 2016 17:50:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21902 invoked from network); 3 Jun 2016 17:50:54 -0000
From: Marc Deslauriers <marc.deslauriers@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <5751C370.1010802@canonical.com>
Date: Fri, 3 Jun 2016 13:50:40 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE Request: Dnsmasq denial of service

Hello,

I don't believe this issue has a CVE:

 Fix crash when an A or AAAA record is defined locally,
 in a hosts file, and an upstream server sends a reply
 that the same name is empty. Thanks to Edwin Török for
 the patch.

http://lists.thekelleys.org.uk/pipermail/dnsmasq-discuss/2016q2/010479.html
http://thekelleys.org.uk/gitweb/?p=dnsmasq.git;a=commit;h=41a8d9e99be9f2cc8b02051dd322cb45e0faac87
https://bugs.launchpad.net/ubuntu/+source/dnsmasq/+bug/1581181


Could a CVE please be assigned to it?

Thanks,

Marc.

-- 
Marc Deslauriers
Ubuntu Security Engineer     | http://www.ubuntu.com/
Canonical Ltd.               | http://www.canonical.com/
