X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["433" "Friday" "14" "August" "2015" "17:25:46" "+0200" "Florian Weimer" "fweimer@redhat.com" "<55CE087A.1040706@redhat.com>" "18" "[oss-security] CVE request: conntrackd denial of service with unusual network traffic" nil nil nil "8" "2015081415:25:46" "[oss-security] CVE request: conntrackd denial of service with unusual network traffic" (number mark "        fweimer@redh Aug 14   18/433   " thread-indent "\"[oss-security] CVE request: conntrackd denial of service with unusual network traffic\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15519 invoked by uid 550); 14 Aug 2015 15:26:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15478 invoked from network); 14 Aug 2015 15:26:00 -0000
Message-ID: <55CE087A.1040706@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Fri, 14 Aug 2015 17:25:46 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: conntrackd denial of service with unusual network
 traffic
To: oss-security@lists.openwall.com,
        Assign a CVE Identifier <cve-assign@mitre.org>

Upstream bug:

http://bugzilla.netfilter.org/show_bug.cgi?id=910

Upstream commit:

https://git.netfilter.org/conntrack-tools/commit/?id=c392c159605956c7bd4a264ab4490e2b2704c0cd

“
Fix a possible crash if conntrackd sees DCCP, SCTP and ICMPv6 traffic
and the corresponding kernel modules that track this traffic are not
available.
”

Could we please get a CVE ID for this?  Thanks.

-- 
Florian Weimer / Red Hat Product Security
