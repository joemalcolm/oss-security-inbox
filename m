X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["558" "Wednesday" "20" "June" "2018" "15:58:10" "-0400" "Siddharth Sharma" "siddharth@redhat.com" "<1864620726.13471147.1529524690040.JavaMail.zimbra@redhat.com>" "14" "[oss-security] CVE-2018-10841 glusterfs: access trusted peer group via remote-host command" "^Date:" nil nil "6" "2018062019:58:10" "[oss-security] CVE-2018-10841 glusterfs: access trusted peer group via remote-host command" (number mark "        siddharth@re Jun 20   14/558   " thread-indent "\"[oss-security] CVE-2018-10841 glusterfs: access trusted peer group via remote-host command\"\n") "<659657150.13464661.1529524403388.JavaMail.zimbra@redhat.com>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18322 invoked by uid 550); 20 Jun 2018 20:36:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15605 invoked from network); 20 Jun 2018 19:58:22 -0000
Message-ID: <1864620726.13471147.1529524690040.JavaMail.zimbra@redhat.com>
In-Reply-To: <659657150.13464661.1529524403388.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.36.117.97, 10.4.196.29, 10.5.100.50, 10.4.195.13]
Thread-Topic: CVE-2018-10841 glusterfs: access trusted peer group via remote-host command
Thread-Index: f+uMsKJMs/Brx/H4uSGf2VJTMFiOTg==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.41]); Wed, 20 Jun 2018 19:58:10 +0000 (UTC)
Date: Wed, 20 Jun 2018 15:58:10 -0400 (EDT)
From: Siddharth Sharma <siddharth@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-10841 glusterfs: access trusted peer group via remote-host
 command
To: oss-security@lists.openwall.com

A flaw was found in glusterfs which can lead to privilege escalation on
gluster server nodes.

It was found that any gluster client authenticated via TLS could use
gluster cli with --remote-host command to add itself to gluster trusted
pool and perform all gluster operations like peer probe itself or other
machines, start, stop, delete volumes etc.

https://bugzilla.redhat.com/show_bug.cgi?id=1582043

Respectfully,
Siddharth Sharma / Red Hat Product Security / Key ID : 0xD9F6489A      
Fingerprint  :  6F04 C684 A49C E4CE 8148 E841 CD6F 8E55 D9F6 489A

