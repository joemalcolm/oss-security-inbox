X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["801" "Thursday" "27" "August" "2015" "10:42:57" "-0400" "Siddharth Sharma" "siddharth@redhat.com" "<171241075.9941998.1440686577060.JavaMail.zimbra@redhat.com>" "23" "[oss-security] CVE-2014-8177 gluster-swift metadata constraints are not correctly enforced" nil nil nil "8" "2015082714:42:57" "[oss-security] CVE-2014-8177 gluster-swift metadata constraints are not correctly enforced" (number mark "U       siddharth@re Aug 27   23/801   " thread-indent "\"[oss-security] CVE-2014-8177 gluster-swift metadata constraints are not correctly enforced\"\n") "<2129306644.9940404.1440686283309.JavaMail.zimbra@redhat.com>" ("<2129306644.9940404.1440686283309.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29981 invoked by uid 550); 27 Aug 2015 14:43:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29963 invoked from network); 27 Aug 2015 14:43:09 -0000
Date: Thu, 27 Aug 2015 10:42:57 -0400 (EDT)
From: Siddharth Sharma <siddharth@redhat.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <171241075.9941998.1440686577060.JavaMail.zimbra@redhat.com>
In-Reply-To: <2129306644.9940404.1440686283309.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.65.201.189]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF40 (Linux)/8.0.6_GA_5922)
Thread-Topic: CVE-2014-8177 gluster-swift metadata constraints are not correctly enforced
Thread-Index: InFTfeARavJUZjURxGSWwphpQC4NzA==
Subject: [oss-security] CVE-2014-8177 gluster-swift metadata constraints are not correctly
 enforced

Hi,

A flaw was found in the metadata constraints in gluster-swift package. By
adding metadata in several separate calls, a malicious user could bypass the
max_meta_count constraint, and store more metadata than allowed by the
configuration.

Upstream Fix: https://review.openstack.org/#/c/215487

Please refer to https://bugzilla.redhat.com/show_bug.cgi?id=1257525

we are using  CVE-2014-8177,  CVE SPLIT due to different codebases. 
so Please use CVE-2014-8177 for gluster-swift and for openstack-swift 
CVE-2014-7960 was already assigned. 

https://bugzilla.redhat.com/show_bug.cgi?id=1150461


-----------------------------------------------------------------
Siddharth Sharma / Red Hat Product Security / Key ID : 0xD9F6489A 
Fingerprint :  0x6F04C684 A49C E4CE 8148 E841 CD6F 8E55 D9F6 489A 


