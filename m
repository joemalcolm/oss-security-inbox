X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["641" "Friday" "4" "September" "2015" "20:08:11" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150904180811.GA22933@eldamar.local>" "21" "[oss-security] CVE Request: PgBouncer: failed auth_query lookup leads to connection as auth_user" nil nil nil "9" "2015090418:08:11" "[oss-security] CVE Request: PgBouncer: failed auth_query lookup leads to connection as auth_user" (number mark "U       carnil@debia Sep  4   21/641   " thread-indent "\"[oss-security] CVE Request: PgBouncer: failed auth_query lookup leads to connection as auth_user\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7278 invoked by uid 550); 4 Sep 2015 18:08:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7257 invoked from network); 4 Sep 2015 18:08:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:content-transfer-encoding:user-agent;
        bh=Muiza4YX4FjuvEUBQBRhpdUSpfj9M6bfCBDzGImbzO4=;
        b=OyIUk8Tx+lEXN/uhErRna/T+8U28jRIaKYzPT9oQ+V8RwhDyXb53lldm8rwaLAuCp1
         E+rnvlU1CmN21xj83xgqfunQhjAxW+7M0VAhvD+ShbcOFARiabd3HDoluJLOEWlB6zPZ
         X6avmRkmSxc1fc9Fn/Ho8A5ctYe31Fg269zuMdJLOcIYNXhmty3nw4/tcWTwc+sQHOnM
         4Dn8yPj+PUqzWx9ycRxX/L5m29+Lb9OKJfh5Hn3bfJLwAN9/2DSGgXPYTO26kxO23QKg
         giFIS6TVBGwiHE6E0YQUyqgOB855uYbVtKGLzj60mKcWQ6ksLg1VgWWHqMu6zMb+P+ph
         Ql6w==
X-Received: by 10.181.11.134 with SMTP id ei6mr9448088wid.83.1441390093412;
        Fri, 04 Sep 2015 11:08:13 -0700 (PDT)
Message-ID: <20150904180811.GA22933@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Date: Fri, 4 Sep 2015 20:08:11 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: PgBouncer: failed auth_query lookup leads to connection
 as auth_user
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

Could you please assign a CVE for the following PgBouncer issue?

>From upstream announce:

https://pgbouncer.github.io/2015/09/pgbouncer-1-6-1/
> New auth_user functionality introduced in 1.6 allows login as
> auth_user when client presents unknown username. It’s quite likely
> auth_user is superuser. Affects only setups that have enabled
> auth_user in their config.

References:
 - https://github.com/pgbouncer/pgbouncer/issues/69
 - http://comments.gmane.org/gmane.comp.db.postgresql.pgbouncer.general/1251

Upstream fix:
https://github.com/pgbouncer/pgbouncer/commit/7ca3e5279d05fceb1e8a043c6f5b6f58dea3ed38

Regards,
Salvatore
