X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["605" "Monday" "25" "September" "2017" "13:36:48" "+0200" "Marek =?ISO-8859-1?Q?Hul=E1?==?ISO-8859-1?Q?n?=" "mhulan@redhat.com" "<2033359.mTVEEEsRMu@tony>" "16" "[oss-security] Foreman 1.1+ stored XSS in organizations/locations assignment to hosts" nil nil nil "9" "2017092511:36:48" "[oss-security] Foreman 1.1+ stored XSS in organizations/locations assignment to hosts" (number mark "U       mhulan@redha Sep 25   16/605   " thread-indent "\"[oss-security] Foreman 1.1+ stored XSS in organizations/locations assignment to hosts\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7792 invoked by uid 550); 25 Sep 2017 12:10:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20161 invoked from network); 25 Sep 2017 11:37:02 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com BD4C05F7AC
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=mhulan@redhat.com
From: Marek =?ISO-8859-1?Q?Hul=E1n?= <mhulan@redhat.com>
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Date: Mon, 25 Sep 2017 13:36:48 +0200
Message-ID: <2033359.mTVEEEsRMu@tony>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Mon, 25 Sep 2017 11:36:50 +0000 (UTC)
Subject: [oss-security] Foreman 1.1+ stored XSS in organizations/locations assignment to hosts

CVE-2017-7535: Attempting to assign all hosts to an organization or location 
that contains HTML does not properly escape the html in the toast notification 
informing of success. Exploiting this requires a user to actively assign hosts 
to an organization that contains html in its name which is visible to the user 
prior to taking action.

Affects Foreman 1.1 and higher.

Patch available at https://github.com/theforeman/foreman/pull/4851
Fix will be released in Foreman 1.16.0 (to be released)
For more information please see the Redmine issue http://
projects.theforeman.org/issues/20963

--
Marek

