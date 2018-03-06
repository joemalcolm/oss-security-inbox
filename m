X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["903" "Tuesday" "6" "March" "2018" "09:26:00" "+0530" "Dhiru Kholia" "dkholia@redhat.com" "<26b869b9-5aad-d234-de78-67ea3a43e7a9@redhat.com>" "28" "[oss-security] Remote DoS flaw in 389-ds-base" nil nil nil "3" "2018030603:56:00" "[oss-security] Remote DoS flaw in 389-ds-base" (number mark "U       dkholia@redh Mar  6   28/903   " thread-indent "\"[oss-security] Remote DoS flaw in 389-ds-base\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1937 invoked by uid 550); 6 Mar 2018 04:08:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17796 invoked from network); 6 Mar 2018 03:56:19 -0000
To: oss-security@lists.openwall.com
Cc: Salvatore Bonaccorso <carnil@debian.org>
From: Dhiru Kholia <dkholia@redhat.com>
Message-ID: <26b869b9-5aad-d234-de78-67ea3a43e7a9@redhat.com>
Date: Tue, 6 Mar 2018 09:26:00 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.2]); Tue, 06 Mar 2018 03:56:07 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.2]); Tue, 06 Mar 2018 03:56:07 +0000 (UTC) for IP:'10.11.54.4' DOMAIN:'int-mx04.intmail.prod.int.rdu2.redhat.com' HELO:'smtp.corp.redhat.com' FROM:'dkholia@redhat.com' RCPT:''
Subject: [oss-security] Remote DoS flaw in 389-ds-base

Hi,
  
Here is a notification about a remote DoS flaw in the 389-ds-base
package (389 Directory Server).

NOTE: This notification was sent to "distros" mailing list on
02-March-2018.

https://bugzilla.redhat.com/show_bug.cgi?id=1537314 has some more
information about this flaw, including a patch.

CVE-2018-1054
-------------

389-ds-base: remote Denial of Service (DoS) via search filters in 
SetUnicodeStringFromUTF_8 in collate.c

A flaw was found in 389 Directory Server that affects all versions. An
improper handling of the search feature with an extended filter, when
read access on <attribute_name> is enabled, in SetUnicodeStringFromUTF_8
function in collate.c, can lead to out-of-bounds memory operations. This
may allow a remote unauthenticated attacker to trigger a server crash,
thus resulting in denial of service.

CVSSv3: 7.5/CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H

Thanks,
Dhiru
