X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["902" "Tuesday" "28" "July" "2015" "17:01:11" "+0100" "Kiall Mac Innes" "kiall@macinnes.ie" "<55B7A747.3050806@macinnes.ie>" "32" "[oss-security] CVE Request - OpenStack Designate mDNS DoS through incorrect handling of large RecordSets" nil nil nil "7" "2015072816:01:11" "[oss-security] CVE Request - OpenStack Designate mDNS DoS through incorrect handling of large RecordSets" (number mark "        kiall@macinn Jul 28   32/902   " thread-indent "\"[oss-security] CVE Request - OpenStack Designate mDNS DoS through incorrect handling of large RecordSets\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4025 invoked by uid 550); 28 Jul 2015 16:43:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26269 invoked from network); 28 Jul 2015 16:01:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=macinnes.ie;
	s=default; t=1438099273;
	bh=kA+ytzhPTa2HN54V1xB6VM97sg5+GP6kjhumW4gGDeE=;
	h=Date:From:To:Subject;
	b=BQMMEQn1gkLSgzWTuss+R4FQQMbv0H6ByK59knOjqBSwa43PYw6biX5NgEQjkvcIf
	 tI3Od0EVet2mYxhhPa2CbrqHOC3te0OGngk+cYGnKlYS8bCeT9uFCsLreqJscdz4r9
	 TAPC5zZdbXlDhBCbgqwrXUWKHPpQ/wnjrZq5Y96Q=
Message-ID: <55B7A747.3050806@macinnes.ie>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Tue, 28 Jul 2015 17:01:11 +0100
From: Kiall Mac Innes <kiall@macinnes.ie>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request - OpenStack Designate mDNS DoS through incorrect handling
 of large RecordSets
To: oss-security@lists.openwall.com

Hi,

Can I please have a CVE assigned for the following issue:

Launchpad Number: 1471161
CVE: TBA
Date: July 28, 2015
Title: Designate mDNS DoS through incorrect handling of large RecordSets
Reporter: Florian Weimer (Red Hat)
Products: Designate
Versions: 2015.1.0 through 1.0.0.0b1

Description:
Florian Weimer from Red Hat reported a vulnerability in Designate.
By creating a single RecordSet that exceeds the configured max allowed
DNS packet size, an authenticated user may cause the Designate mDNS
service to enter an infinite loop, triggering a DoS.

Liberty (development branch) fix:
https://review.openstack.org/206578

Kilo fix:
https://review.openstack.org/206580

Notes:
This fix will be included in a future 1.0.0.0b2 release.

References:
https://launchpad.net/bugs/1471161
http://lists.openstack.org/pipermail/openstack/2015-July/013548.html

-- Kiall Mac Innes, OpenStack Designate PTL
