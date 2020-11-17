X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["616" "Tuesday" "17" "November" "2020" "17:06:55" "+0000" "Joe Orton" "jorton@apache.org" "<20201117170655.GA26512@redhat.com>" "25" "[oss-security] CVE-2019-12412: libapreq2 null pointer dereference" nil nil nil "11" "2020111717:06:55" "[oss-security] CVE-2019-12412: libapreq2 null pointer dereference" (number mark "U       jorton@apach Nov 17   25/616   " thread-indent "\"[oss-security] CVE-2019-12412: libapreq2 null pointer dereference\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-12412: libapreq2 null pointer dereference" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20430 invoked by uid 550); 17 Nov 2020 17:53:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17878 invoked from network); 17 Nov 2020 17:07:12 -0000
X-MC-Unique: Rf2ERf69N_C41hFxlx5a7Q-1
Date: Tue, 17 Nov 2020 17:06:55 +0000
From: Joe Orton <jorton@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <20201117170655.GA26512@redhat.com>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Organization: Registered in England and Wales under Company Registration No. 03798903 Directors: Michael Cunningham (US), Michael O'Neill (Ireland), Paul Argiry (US)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jorton@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] CVE-2019-12412: libapreq2 null pointer dereference

CVE-2019-12412: libapreq2 null pointer dereference

Severity: important

Vendor: The Apache Software Foundation

Versions Affected:
libapreq2 2.07 to 2.13

Description:
In libapreq2 versions 2.07 through 2.13 inclusive, a flaw in the 
multipart parser can deference a null pointer leading to a process 
crash.  A remote attacker could send a request causing a process crash 
which could lead to a denial of service attack.

Mitigation:
disable the libapreq2 multipart parser

Credit:
Thanks to Max Kellerman and Salvatore Bonaccorso for finding and
reporting this issue.

References:
https://bugs.debian.org/939937

