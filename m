X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6955" "Tuesday" "19" "January" "2021" "13:30:49" "+0100" "Riccardo Schirone" "rschiron@redhat.com" "<20210119123049.GB228699@fedorawork>" "168" "[oss-security] Multiple CVEs in dnsmasq fixed in version 2.83" nil nil nil "1" "2021011912:30:49" "[oss-security] Multiple CVEs in dnsmasq fixed in version 2.83" (number mark "U       rschiron@red Jan 19  168/6955  " thread-indent "\"[oss-security] Multiple CVEs in dnsmasq fixed in version 2.83\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple CVEs in dnsmasq fixed in version 2.83" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19762 invoked by uid 550); 19 Jan 2021 12:47:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13641 invoked from network); 19 Jan 2021 12:31:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1611059457;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=dIdxpuahsPOs73VGo/8/kEU0cSD6nkMvoD0lvTdMHhY=;
	b=jNUpqOB9IGIqbR+f26lMll/C1QeEeialDxfQNJI38kZ+zNaikE3DO8Qlb9Tp6NUxR2k03V
	SXyeGR+bRphr/1aI/QnQU1W4qcT9TvGnKR31DM0zC+oe/w7v454+8PUS2gSCpmLomBVej0
	hX2HcRA6yna1HW9VmCYHeUCJLVsklLs=
X-MC-Unique: 4dOpbWcJN3CgkPtUSqcc_A-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=QtwxZ7hrpQT1J22WSX2hYss8nTgdvjkP+JhzXJokbcU=;
        b=hkG9dP6F+HKA+6++3zUURL3oB1INT0yLxAnvoganL+ye5OvZr9oOX5Q8H6P020hwz8
         yp0yo1LP8sUNdf1o9yvP3DdpVMXAndKyNkltdu+WhtKEjI6Epd7+FdyFlXLdBqnnQzWV
         YZyxI/yFcu9SD6ZO+/CII2S9FVgCfhILOrd/75jit5v0ATaKdhlbheJ+MaqExTVEJALf
         JUbFmpgLrNf9LH7CuwxNmjq8TGD+p6nkYHUJykbXKiHRD9UOzaqaIUDbBAb7J/kzDn32
         ztNIwuIWwxlz1KPZ5C4I3LpQ93cr08fgCuSAKHETmruy0JtUiWEzS1BmKbsZSqBW8E82
         pE0w==
X-Gm-Message-State: AOAM5329sDaICyTsa3VZAKtP068bcg5ZFlOVJedSKqeMuNo2hEd4rbj9
	QjkHXljUXZpKU2zz7UFTx//MWQ8Cs89iDofM9tN34GXwqUCzMBpZ7H9SPZPkjay3yP3AzZKpHly
	ou6+jWSWdfWQV7s+leOY3NLxrMrb/lJwxe38TxD2GzldUH+9WPNWEWR3a+uJdsZ+oyM+GcZlYd8
	A8/AN7
X-Received: by 2002:a17:907:20a4:: with SMTP id pw4mr2716441ejb.499.1611059451762;
        Tue, 19 Jan 2021 04:30:51 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxR9n549yj/WETGkmbDwYcPzT/rIU7LDO47SO9MA/1mUOVpTbM3v5vCJnZC5Y+UEOWyce386Q==
X-Received: by 2002:a17:907:20a4:: with SMTP id pw4mr2716426ejb.499.1611059451454;
        Tue, 19 Jan 2021 04:30:51 -0800 (PST)
Date: Tue, 19 Jan 2021 13:30:49 +0100
From: Riccardo Schirone <rschiron@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20210119123049.GB228699@fedorawork>
MIME-Version: 1.0
X-PGP-Key: http://keyserv.sr32.net/pks/lookup?op=get&search=0x1E8AB789CF96E110
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=rschiron@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7ZAtKRhVyVSsbBD2"
Content-Disposition: inline
Subject: [oss-security] Multiple CVEs in dnsmasq fixed in version 2.83

--7ZAtKRhVyVSsbBD2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Multiple issues were discovered in dnsmasq up to version 2.82, included, by
Moshe Kol (JSOF) and Shlomi Oberman (JSOF). It is recommended that you adopt
the latest update bringing your version of the software to 2.83.

Upstream release:
http://lists.thekelleys.org.uk/pipermail/dnsmasq-discuss/2021q1/014599.html
https://www.thekelleys.org.uk/dnsmasq/dnsmasq-2.83.tar.gz

Reference:
https://www.jsof-tech.com/disclosures/dnspooq/



CVE-2020-25681
A heap-based buffer overflow was discovered in dnsmasq in the way it sorts
RRSets before validating them with DNSSEC data. An attacker on the network,
who can forge DNS replies such as that they are accepted as valid, could use
this flaw to cause an overflow with arbitrary data in a heap-allocated memo=
ry,
possibly executing code on the machine.

Relevant patches:
http://thekelleys.org.uk/gitweb/?p=3Ddnsmasq.git;a=3Dcommit;h=3D4e96a4be685=
c9e4445f6ee79ad0b36b9119b502a

CVE-2020-25682
A buffer overflow vulnerability was discovered in the way dnsmasq extract
names from DNS packets before validating them with DNSSEC data. An attacker=
 on
the network, who can create valid DNS replies, could use this flaw to cause=
 an
overflow with arbitrary data in a heap-allocated memory, possibly executing
code on the machine. The flaw is in rfc1035.c:extract_name() function, which
writes data to the memory pointed by name assuming MAXDNAME*2 bytes are
available in the buffer. However, in some code execution paths it is possib=
le
extract_name() gets passed an offset from the base buffer, thus reducing in
practice the number of available bytes that can be written in the buffer.

Relevant patches:
http://thekelleys.org.uk/gitweb/?p=3Ddnsmasq.git;a=3Dcommit;h=3D4e96a4be685=
c9e4445f6ee79ad0b36b9119b502a

CVE-2020-25683
A heap-based buffer overflow was discovered in dnsmasq when DNSSEC is enabl=
ed
and before it validates the received DNS entries. A remote attacker, who can
create valid DNS replies, could use this flaw to cause an overflow in a
heap-allocated memory. This flaw is caused by the lack of length checks in
rtc1035.c:extract_name(), which could be abused to make the code execute
memcpy() with a negative size in get_rdata() and cause a crash in dnsmasq,
resulting in a Denial of Service.

Relevant patches:
http://thekelleys.org.uk/gitweb/?p=3Ddnsmasq.git;a=3Dcommit;h=3D4e96a4be685=
c9e4445f6ee79ad0b36b9119b502a

CVE-2020-25684
A flaw was found when getting a reply from a forwarded query, where dnsmasq
checks in forward.c:reply_query() if the reply destination address/port is
used by the pending forwarded queries. However, it does not use the
address/port to retrieve the exact forwarded query, substantially reducing =
the
number of attempts an attacker on the network would have to perform to forg=
e a
reply and get it accepted by dnsmasq. This issue contrasts with RFC5452, wh=
ich
specifies a query's attributes that all must be used to match a reply. This
flaw allows an attacker to perform a DNS Cache Poisoning attack. If chained
with CVE-2020-25685 or CVE-2020-25686, the attack complexity of a successful
attack is reduced.

Relevant patches:
http://thekelleys.org.uk/gitweb/?p=3Ddnsmasq.git;a=3Dcommit;h=3D257ac0c5f77=
32cbc6aa96fdd3b06602234593aca

CVE-2020-25685
When getting a reply from a forwarded query, dnsmasq checks in
forward.c:reply_query() which one is the forwarded query that matches the
reply, by only using a weak hash of the query name. Due to the weak hash
(CRC32 when dnsmasq is compiled without DNSSEC, SHA-1 when it is) an off-pa=
th
attacker can find several different domains all having the same hash,
substantially reducing the number of attempts he would have to perform to
forge a reply and get it accepted by dnsmasq. This is in contrast with
RFC5452, which specifies that query name is one of the attributes of a query
that must be used to match a reply. This flaw could be abused to perform a =
DNS
Cache Poisoning attack. If chained with CVE-2020-25684 the attack complexity
of a successful attack is reduced.

Relevant patches:
http://thekelleys.org.uk/gitweb/?p=3Ddnsmasq.git;a=3Dcommit;h=3D2d765867c59=
7db18be9d876c9c17e2c0fe1953cd
http://thekelleys.org.uk/gitweb/?p=3Ddnsmasq.git;a=3Dcommit;h=3D2024f972971=
3fd657d65e64c2e4e471baa0a3e5b

CVE-2020-25686
A flaw was found when receiving a query, where dnsmasq does not check for an
existing pending request for the same name and forwards a new request. By
default, a maximum of 150 pending queries can be sent to upstream servers, =
so
there can be at most 150 queries for the same name. This flaw allows an
off-path attacker on the network to substantially reduce the number of
attempts that would have to be performed to forge a reply and have it accep=
ted
by dnsmasq. This issue is mentioned in the "Birthday Attacks" section of
RFC5452. If chained with CVE-2020-25684, the attack complexity of a success=
ful
attack is reduced.

Relevant patches:
http://thekelleys.org.uk/gitweb/?p=3Ddnsmasq.git;a=3Dcommit;h=3D15b60ddf935=
a531269bb8c68198de012a4967156
http://thekelleys.org.uk/gitweb/?p=3Ddnsmasq.git;a=3Dcommit;h=3D6a6e06fbb0d=
4690507ceaf2bb6f0d8910f3d4914

CVE-2020-25687
A heap-based buffer overflow was discovered in dnsmasq when DNSSEC is enabl=
ed
and before it validates the received DNS entries. A remote attacker, who can
create valid DNS replies, could use this flaw to cause an overflow in a
heap-allocated memory. This flaw is caused by the lack of length checks in
rtc1035.c:extract_name(), which could be abused to make the code execute
memcpy() with a negative size in sort_rrset() and cause a crash in dnsmasq,
resulting in a Denial of Service.

Relevant patches:
http://thekelleys.org.uk/gitweb/?p=3Ddnsmasq.git;a=3Dcommit;h=3D4e96a4be685=
c9e4445f6ee79ad0b36b9119b502a


Thanks,
--=20
Riccardo Schirone
Red Hat -- Product Security
Email: rschiron@redhat.com
PGP-Key ID: CF96E110

--7ZAtKRhVyVSsbBD2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE3bt3kyIFawQJu6PaHoq3ic+W4RAFAmAG0PYACgkQHoq3ic+W
4RDhSg//fULj4nP/YIPlPzVB7jqwknLIxyntP/j0deQlMpQ5U9Dxa1ckmaeE6VwU
RU6RHoXsuPeFsuAQd4gtwW45Todu4Qlre3QePZhk8q5RHzSDx1m2I3blnYpH+Q2l
WFUXZEInACIjhirzXLmcUzNn/4noqMkiHCLw2h6odC+hhAww/5xXJwhDzkdgS8GC
DvpNNFPHJqbIEis95qz2EVDpByLVhZSOTF3Zv/a0+NfEwC4yfmqvYg2foxAfEHvi
J0L/XKrTZWToO5jSlytdToXiWL2mTyWHwcb732Xy0v25zx43LW/pE722ax2HEUFT
rX4J+3sOT2TpTMhXZPlaHjvk5BXNk5jrSdM68c+Gf+0/9JbmrqXFm45V1Yh3iO4o
uhictNEYCxUDykfhi0ncZG+kgLK8Jd/NXaXZV3r5SCJXBZbk7CRt7gCCMJfc7QJq
e7VkM6m+nmkCh4fZDnHuGWdw0nOFohHUafSGYzpg0J1Ybeo0lDJH5rMYMAq3d0qV
1jJYpVEpN4t9XPmHYSq+d30HOxScuiKKFSvXZlDJaJOxZJFb/2r29bH63QJrTUhr
xZBmbMCEuGgKMIVheuczEl+bwLidtPZRAdL4yq5uKRU+OuhQUys6FqfAVmS1BXDn
2YSw2wlyE8MnBC8GsBT0K0Jffg+LYvHnFiFTG6Wy4CyLJS1+Tm0=
=3hvP
-----END PGP SIGNATURE-----

--7ZAtKRhVyVSsbBD2--

