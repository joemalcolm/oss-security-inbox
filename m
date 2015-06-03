X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["565" "Wednesday" "3" "June" "2015" "16:06:33" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.11.1506031600540.11488@wniryva>" "18" "[oss-security] CVE request Linux kernel: udf: information leakage when reading symlink" nil nil nil "6" "2015060310:36:33" "[oss-security] CVE request Linux kernel: udf: information leakage when reading symlink" (number mark "        ppandit@redh Jun  3   18/565   " thread-indent "\"[oss-security] CVE request Linux kernel: udf: information leakage when reading symlink\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22041 invoked by uid 550); 3 Jun 2015 10:36:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22017 invoked from network); 3 Jun 2015 10:36:53 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.11.1506031600540.11488@wniryva>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
cc: Carl Henrik Lunde <chlunde@ping.uio.no>
Date: Wed, 3 Jun 2015 16:06:33 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request Linux kernel: udf: information leakage when reading
 symlink
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Linux kernel built with the UDF file system(CONFIG_UDF_FS) support is 
vulnerable to an information leakage issue. It could occur while reading 
symlink information from corrupted/malicious udf file system image.

An unprivileged user could use this flaw to leak kernel memory bytes.

Upstream fix:
-------------
   -> https://git.kernel.org/linus/0e5cc9a40ada6046e6bc3bdfcd0c0d7e4b706b14

Thank you 'Carl H Lunde' for reporting this issue.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
