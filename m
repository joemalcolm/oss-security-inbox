X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1743" "Tuesday" "25" "October" "2016" "10:42:16" "+0200" "Tomas Hoger" "thoger@redhat.com" "<20161025104216.6d74b72d@redhat.com>" "43" "Re: [oss-security] CVE-2016-6662 - MySQL Remote Root Code Execution / Privilege Escalation ( 0day )" nil nil nil "10" "2016102508:42:16" "[oss-security] CVE-2016-6662 - MySQL Remote Root Code Execution / Privilege Escalation ( 0day )" (number mark "U       thoger@redha Oct 25   43/1743  " thread-indent "\"Re: [oss-security] CVE-2016-6662 - MySQL Remote Root Code Execution / Privilege Escalation ( 0day )\"\n") "<df9f9b10-6946-c957-ca20-990c381dec91@gmail.com>" ("<CADSYzstomCU7KFOqX1u30Cej=OG3-FjCMpHPvsoCysHPoen1jw@mail.gmail.com>" "<20160912103527.GA3003@openwall.com>" "<CADSYzss4ZyRdBEHjDtXD4YcbrEJ6Kxvj_yUJTOmY-McGvm4KDg@mail.gmail.com>" "<CANTwUcrbn0J5+bfhgYQOy3DY-xLO=6dr7tj_6Esa8CKT0DA-0g@mail.gmail.com>" "<df9f9b10-6946-c957-ca20-990c381dec91@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31890 invoked by uid 550); 25 Oct 2016 08:42:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31868 invoked from network); 25 Oct 2016 08:42:33 -0000
Date: Tue, 25 Oct 2016 10:42:16 +0200
From: Tomas Hoger <thoger@redhat.com>
To: Gsunde Orangen <gsunde.orangen@gmail.com>
Cc: oss-security@lists.openwall.com, Dawid Golunski <dawid@legalhackers.com>
Message-ID: <20161025104216.6d74b72d@redhat.com>
In-Reply-To: <df9f9b10-6946-c957-ca20-990c381dec91@gmail.com>
References: <CADSYzstomCU7KFOqX1u30Cej=OG3-FjCMpHPvsoCysHPoen1jw@mail.gmail.com>
	<20160912103527.GA3003@openwall.com>
	<CADSYzss4ZyRdBEHjDtXD4YcbrEJ6Kxvj_yUJTOmY-McGvm4KDg@mail.gmail.com>
	<CANTwUcrbn0J5+bfhgYQOy3DY-xLO=6dr7tj_6Esa8CKT0DA-0g@mail.gmail.com>
	<df9f9b10-6946-c957-ca20-990c381dec91@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Tue, 25 Oct 2016 08:42:21 +0000 (UTC)
Subject: Re: [oss-security] CVE-2016-6662 - MySQL Remote Root Code Execution
 / Privilege Escalation ( 0day )

On Tue, 18 Oct 2016 22:56:18 +0200 Gsunde Orangen wrote:

> Dawid meanwhile updated his post [1] to reflect that the fixes for
> CVE-2016-6662 were added in 5.5.52/5.6.33/5.7.15.
> ... But today Oracle states that those versions were still affected
> [2], thus the fix releases are 5.5.53/5.6.34/5.7.16.

5.5.53/5.6.34/5.7.16 change the defaults for secure_file_priv - the
change that should break privilege escalation from FILE privilege to
database administrator. See upstream release notes for details.

> So which one is correct? Based on the changelogs I assume [1].

The advisory is not very explicit regarding which issue the CVE is for,
which leaves space for using it to refer to any related change.  Mitre
CVE description is more specific and says the id is for "general log
can write to my.cnf".  That description is consistent with how the id
was used by MariaDB upstream, or where Dawid's advisory says it was
fixed.

> And btw, Dawid: what happened with CVE-2016-6663? Still not public
> yet?

That CVE is now listed as fixed in MariaDB 5.5.52 and 10.1.18.  Based
on information from MariaDB upstream, the CVE is used for the race
condition issue fixed in this commit:

https://github.com/MariaDB/server/commit/347eeefbfc658c8531878218487d729f4e020805

MySQL fixed the issue in:

https://github.com/mysql/mysql-server/commit/4e5473862e6852b0f3802b0cd0c6fa10b5253291

Looking at the Oracle CPU, it seems CVE-2016-5616 is Oracle's dupe of
CVE-2016-6663.

It would be nice to have this conclusion confirmed by Oracle, but
frankly, we're unlikely to see that.  However, Dawid, as the original
reporter, can ask Oracle what CVEs they assigned to issues he reported,
and share the response.

-- 
Tomas Hoger / Red Hat Product Security
