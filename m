X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["617" "Friday" "2" "June" "2017" "09:16:06" "+0200" "Marek =?ISO-8859-1?Q?Hul=E1n?=" "mhulan@redhat.com" "<2395094.PLkjrNgCai@tony>" "17" "[oss-security] CVE-2017-7505: User scoped in organization with permissions for user management can manage administrators that are not assigned to any organization on Foreman 1.5+" "^Cc:" nil nil "6" "2017060207:16:06" "[oss-security] CVE-2017-7505: User scoped in organization with permissions for user management can manage administrators that are not assigned to any organization on Foreman 1.5+" (number mark "U       mhulan@redha Jun  2   17/617   " thread-indent "\"[oss-security] CVE-2017-7505: User scoped in organization with permissions for user management can manage administrators that are not assigned to any organization on Foreman 1.5+\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19864 invoked by uid 550); 2 Jun 2017 08:02:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21659 invoked from network); 2 Jun 2017 07:16:20 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com A752723205A
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=mhulan@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com A752723205A
Message-ID: <2395094.PLkjrNgCai@tony>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Fri, 02 Jun 2017 07:16:08 +0000 (UTC)
Cc: foreman-security@googlegroups.com
Date: Fri, 02 Jun 2017 09:16:06 +0200
From: Marek =?ISO-8859-1?Q?Hul=E1n?= <mhulan@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-7505: User scoped in organization with permissions for user management can manage administrators that are not assigned to any organization on Foreman 1.5+
To: oss-security@lists.openwall.com

CVE-2017-7505: User scoped in organization with permissions for user 
management can manage administrators that are not assigned to any organization 
on Foreman 1.5+

It has been found that user with user management permission who is assigned to 
some organization(s) can do all operations granted by these permissions on all 
administrator user objects.

Affects Foreman 1.5 and higher.

Patch available at https://github.com/theforeman/foreman/pull/4545
Fix will be released in Foreman 1.15.1 (to be released)
For more information please see the Redmine issue http://
projects.theforeman.org/issues/19612

--
Marek
