X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["463" "Tuesday" "27" "October" "2015" "13:48:38" "+0100" "Stefan Cornelius" "scorneli@redhat.com" "<20151027134838.5baf199d@redhat.com>" "16" "[oss-security] CVE request: libxslt xsltStylePreCompute() type confusion DoS" nil nil nil "10" "2015102712:48:38" "[oss-security] CVE request: libxslt xsltStylePreCompute() type confusion DoS" (number mark "        scorneli@red Oct 27   16/463   " thread-indent "\"[oss-security] CVE request: libxslt xsltStylePreCompute() type confusion DoS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1630 invoked by uid 550); 27 Oct 2015 12:48:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1608 invoked from network); 27 Oct 2015 12:48:55 -0000
Message-ID: <20151027134838.5baf199d@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Cc: cve-assign@mitre.org
Date: Tue, 27 Oct 2015 13:48:38 +0100
From: Stefan Cornelius <scorneli@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: libxslt xsltStylePreCompute() type confusion DoS
To: oss-security@lists.openwall.com

Hi,

A type confusion error within the libxslt "xsltStylePreCompute()"
function in preproc.c can lead to a DoS. Confirmed in version 1.1.28,
other versions may also be affected.

Red Hat bug:
https://bugzilla.redhat.com/show_bug.cgi?id=1257962

Proposed patch (afaik, not yet committed upstream, but I believe that
it'll happen soon):
https://bugzilla.redhat.com/attachment.cgi?id=1086465

Thanks and kind regards,
-- 
Stefan Cornelius / Red Hat Product Security
