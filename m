X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["423" "Tuesday" "25" "August" "2015" "14:03:18" "+0200" "Florian Weimer" "fweimer@redhat.com" "<55DC5986.2040709@redhat.com>" "11" "[oss-security] CVE-2015-5228 & CVE-2015-5231 in the criu service daemon" nil nil nil "8" "2015082512:03:18" "[oss-security] CVE-2015-5228 & CVE-2015-5231 in the criu service daemon" (number mark "        fweimer@redh Aug 25   11/423   " thread-indent "\"[oss-security] CVE-2015-5228 & CVE-2015-5231 in the criu service daemon\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7869 invoked by uid 550); 25 Aug 2015 12:03:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7820 invoked from network); 25 Aug 2015 12:03:32 -0000
Message-ID: <55DC5986.2040709@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Date: Tue, 25 Aug 2015 14:03:18 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-5228 & CVE-2015-5231 in the criu service daemon
To: oss-security@lists.openwall.com

This is just a heads-up that a discussion about hardening the criu
service daemon is now happening upstream:

  <http://lists.openvz.org/pipermail/criu/2015-August/021847.html>

Considering impact (the service is not widely used right now), we
decided to discuss the new design in the open.  Please contribute to the
discussion on the criu mailing list if you are interested.

-- 
Florian Weimer / Red Hat Product Security
