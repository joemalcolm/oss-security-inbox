X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["640" "Thursday" "21" "May" "2015" "11:00:32" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150521090032.GA20360@eldamar.local>" "21" "[oss-security] CVE Request: pgbouncer: DoS/remote crash: invalid packet order causes lookup of NULL pointer" nil nil nil "5" "2015052109:00:32" "[oss-security] CVE Request: pgbouncer: DoS/remote crash: invalid packet order causes lookup of NULL pointer" (number mark "        carnil@debia May 21   21/640   " thread-indent "\"[oss-security] CVE Request: pgbouncer: DoS/remote crash: invalid packet order causes lookup of NULL pointer\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21837 invoked by uid 550); 21 May 2015 09:00:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21817 invoked from network); 21 May 2015 09:00:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=LHI/o84Tx1TIi8sEMGBKoStPAwvsGX8qnQahxcu/3S4=;
        b=OZXWYgCUzOXV3xCp43+YcZ2/mPG2Lj3BEQXifxgaZhb5UsXl6LLH5SQqE83fMJ7R98
         sgSfc3gaplrvdG8un7EdntVS1HplEBkmB7PaiG0sHsPiqFNBDV32wUKd7EgyhkTLmBTI
         R+R1PCbGnPu2Rkbz95WtZ2HxIgc12G9qmAHa79tqo17FwDzq1zsMijz6xHCsX3Iw7W4/
         B9KfMPO9MRW1BN9eiJEOtbEiXdlBi7ipcCIE7pgCNfzYOqPGzp28dRT6zXZjknvZ6fEy
         Oex2I3oomnSCNoVm+ewEgvPA3L6qMMImktVz2T02JrqicXvoshltxgY6xSF6/8kIEueP
         l3fg==
X-Received: by 10.180.73.176 with SMTP id m16mr4326264wiv.68.1432198834077;
        Thu, 21 May 2015 02:00:34 -0700 (PDT)
Message-ID: <20150521090032.GA20360@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>,
	Christoph Berg <myon@debian.org>
Date: Thu, 21 May 2015 11:00:32 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: pgbouncer: DoS/remote crash: invalid packet order
 causes lookup of NULL pointer
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

PgBouncer, a lightweight connection pooler for PostgreSQL, fixed the
following issue with the 1.5.5 release:

> Fix remote crash - invalid packet order causes lookup of NULL
> pointer. Not exploitable, just DoS.

https://pgbouncer.github.io/2015/04/pgbouncer-1-5-5/

The issue was reported in
https://github.com/pgbouncer/pgbouncer/issues/42 and fixed in master
with
https://github.com/pgbouncer/pgbouncer/commit/edab5be6665b9e8de66c25ba527509b229468573
and in the stable-1.5 branch with
https://github.com/pgbouncer/pgbouncer/commit/74d6e5f7de5ec736f71204b7b422af7380c19ac5

Could a CVE be assigned for this issue?

Regards,
Salvatore
