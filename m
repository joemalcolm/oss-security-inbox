Received: (qmail 10126 invoked by uid 550); 16 Oct 2025 02:28:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16222 invoked from network); 16 Oct 2025 02:18:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=catalyst.net.nz;
	s=default; t=1760581106;
	bh=bUishsfYWuhhIJUmfj1Jjk5jUI9up8ezg+hQR+CXz+o=;
	h=Date:From:Subject:To:References:In-Reply-To:From;
	b=KGgblQexv80y1UTRoMNGep9oVE0gjj1hr8lwZD5/Mh0oodkHAL9CnSLKJ5kdoEe2C
	 uK90idcLv3sSNLQ4APD+iW2NzEMX2OjuAnGZ4va0Wb6VQRknkqpDHFjXf0ZsUTxdc8
	 VAf966JGEb4YvgvYofcsoU2mo/4GoVlaI0kmvKEnZFuQohisrINwir8O8XrqalEXCd
	 08gfJZzALHeONm4AHnrmEx9jxTzlggwf1fBXw2XW5EVUvB4Tm1I/K3ox8VHgozqoTJ
	 ieGQejXLTrshSQv9y5a4P8jRvNBN3ckdmDXQJdQOgOD+HoQ+l1S3TCvmsHHQAbxYMi
	 N6sVHziIzSWaQ==
Message-ID: <bb119ae4-dfdb-4cdb-bd25-edd7f19005a2@catalyst.net.nz>
Date: Thu, 16 Oct 2025 15:18:25 +1300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Douglas Bagnall <douglas.bagnall@catalyst.net.nz>
To: oss-security@lists.openwall.com
References: <20f5f042-d3de-411b-aa09-b2c46ee19cc8@samba.org>
 <da7aa05f-01c0-4798-8496-33f1c0010e4e@catalyst.net.nz>
 <2338e6b3-44d5-4d9e-bd94-e3b96534359d@catalyst.net.nz>
Content-Language: en-NZ
In-Reply-To: <2338e6b3-44d5-4d9e-bd94-e3b96534359d@catalyst.net.nz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Samba security releases for CVE-2025-10230 and
 CVE-2025-9640

More about this:

> CVE-2025-10230 https://bugzilla.samba.org/show_bug.cgi?id=15903
> https://www.samba.org/samba/security/CVE-2025-10230.html

The 'wins hook' parameter was introduced in Samba 2.0.6 in 1999. It
pointed to a program to run when a WINS record changed. The man page
said

  The second argument is the NetBIOS name. If the name is not a legal
  name then the wins hook is not called. Legal names contain only
  letters, digits, hyphens, underscores and periods.

which was performed thus:

+	for (p=namerec->name.name; *p; p++) {
+		if (!(isalnum((int)*p) || strchr("._-",*p))) {
+			DEBUG(3,("not calling wins hook for invalid name %s\n", nmb_namestr(&namerec->name)));
+			return;
+		}
+	}

That CVS commit is now called
https://gitlab.com/samba-team/samba/-/commit/e04a63783e7a71abe8aa46ea7da401157232825c
and has this good summary of the use case for a commit message:

  The new "wins hook" option specifies an optional external program to
  call for all WINS changes. This allows you to update your dynamic
  DNS server or ldap database with WINS entries as they are
  created/changed/deleted.

Shell command strings as parameters is quite typical of 1990s Samba
configuration. It was a unix building block and scripts were glue.

In 2007 Samba had a scare[1] with some other unsafe configuration
script options and its wrapper around execl("/bin/sh","sh","-c", cmd)
began to escape shell arguments[2].

[1]https://www.samba.org/samba/security/CVE-2007-2447.html
[2]https://gitlab.com/samba-team/samba/-/blob/master/source3/lib/smbrun.c

That left the Samba 3.0 wins hook parameter doubly protected.

Samba 4 began as a rewrite of Samba in 2004 or earlier, working around
the concept of a virtual NT file system. Quite quickly most of the
development began to focus on Active Directory, which was absent from
Samba 3. The remaining components largely languished, neither
vigorously developed nor used in the real world, though the Samba 4
WINS server was briefly an exception to that rule. A flurry of
activity in early 2006 saw it released as a part of "Samba 4
Technology Preview 1" and as a spin-off project samba4WINS
(https://lwn.net/Articles/169804/). The advantage of the Samba 4
server is could replicate to and from other WINS servers.

Nonetheless, after that the Samba 4 WINS server received no attention.
When Samba 4 was eventually released about 7 years later it was actually
a hybrid of the continually improved Samba 3 file server and the Samba 4
AD DC. This pragmatic un-forking left some overlaps -- there were 2 RPC
servers, 2 NBT servers, 2 WINS servers. Which one you got depended on
whether Samba was configured primarily as a domain controller or a
file server. It is not always clear (to me) which one will run -- the
unused NTVFS file server is kept around for testing, and I half
expected the associated WINS server to have similar status. I think
nobody has looked at it in recent years, because nobody has expected
it to run.

In the last six weeks we have had two reports of this bug. First from
Igor Morgenstern of Aisle Research, and then from Marcos Tolosa from
OWASP (Macros Tolosa obtained CVE-2025-59520 for this before
contacting us). I believe that these are LLM-assisted discoveries.
This is partly because of the coincidence, but also because over the
same period we have had a number of reports similar in tone and detail
that have turned out to be false positives.

This bug persisted I think because we regarded this as dead code, or
as-good-as-dead code, and never looked at it. LLMs without that
preconception came through and pointed out the now glaringly obvious
bug. This is a step up (or sideways) from other static analysers, in
that they seem to follow a taint across domains, from the C variable
into the string and execl call. Conventional analysers are stuck in
e.g. the exact semantics of C. It is hard to judge the true false
positive rate -- we only see what people send us -- but it doesn't
look (or necessarily need to be) spectacular.

Anyway, the summary is the Samba 3/4 history has left us with
unmaintained pockets within our codebase that we ignore because we
assume nobody is using them, but which we don't delete because maybe
somebody is using them. There may not be very many more.

Douglas
