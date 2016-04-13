X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2131" "Wednesday" "13" "April" "2016" "11:05:30" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160413150530.9016D3AE19B@smtpvbsrv1.mitre.org>" "56" "[oss-security] Re: CVE Request: Linux kernel: incorrect restoration of machine specific registers from signal handler." "^Cc:" nil nil "4" "2016041315:05:30" "[oss-security] Re: CVE Request: Linux kernel: incorrect restoration of machine specific registers from signal handler." (number mark "        cve-assign@m Apr 13   56/2131  " thread-indent "\"[oss-security] Re: CVE Request: Linux kernel: incorrect restoration of machine specific registers from signal handler.\"\n") "<CALJHwhSGK2YxVqSz3zKJRbd1_mL1Yso_SUFE_5ZZ9-QKVD25Tg@mail.gmail.com>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21609 invoked by uid 550); 13 Apr 2016 15:05:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21591 invoked from network); 13 Apr 2016 15:05:42 -0000
In-Reply-To: <CALJHwhSGK2YxVqSz3zKJRbd1_mL1Yso_SUFE_5ZZ9-QKVD25Tg@mail.gmail.com>
Message-Id: <20160413150530.9016D3AE19B@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 13 Apr 2016 11:05:30 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Linux kernel: incorrect restoration of machine specific registers from signal handler.
To: wmealing@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Upstream fixes:

We feel that the two listed git.kernel.org commits should have
separate CVE IDs.

> QMEU guests can also modify the same machine specific register values
> via set_one_reg and guests may invoke the same unknown state and
> callpath. Since the fix is in the same location I would argue that
> this is the same flaw.

We do not feel that there's a need for any separate CVE IDs that are
specific to this QEMU observation.


> https://git.kernel.org/cgit/linux/kernel/git/powerpc/linux.git/commit/?h=fixes&id=d2b9d2a5ad5ef04ff978c9923d19730cb05efd55
> 
> Currently we allow both the MSR T and S bits to be set by userspace on
> a signal return. Unfortunately this is a reserved configuration and
> will cause a TM Bad Thing exception if attempted

Use CVE-2015-8844.


> https://git.kernel.org/cgit/linux/kernel/git/powerpc/linux.git/commit/?h=fixes&id=7f821fc9c77a9b01fe7b1d6e72717b33d8d64142
> 
> This tm_reclaim() now causes a TM Bad Thing exception as this state
> has already been saved and the processor is no longer in TM suspend
> mode.

Use CVE-2015-8845.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXDl+gAAoJEL54rhJi8gl5T7wP/2/ntgW7kmLWhFqlfS0C8LXy
YP6YBfdnxTQ65Cl8E5kJMZpRKmkqgQ7lXQ4Kb7yttyFSK5nQkN9AOyFXapOsKTlD
7MTkmM4BIhPv0kKB+Sl1jhMvXw+ZJyue/NLhj2YwX5UKI2Ud/7n7tvdsCINXuH4o
xgGgnGiLG4rCsyxmwoguglyvkEG0brURXgG+HVTSG5JHY+DjdD7ggWujrj+WwVZP
fEBT4HaI59PzbgY1KsToj7nIMg3RGv1OHJ507x+t45wHUjVT7kAlgunLUdJ9Gkxt
OJOctE1oBfgRH0cHUUdPFBVvP6S1HUXZ7HZTFpGS17+FjQ3z1J76OwZDu6CKzxKb
M9bon4o3AHmduqOyH5vfu68pkwWHV5EAhihk8Az2jRwqVEgG57thhCk22NmXaiYT
kdgJIrgiHognvjk6yckrjO7JbApHnTYGCXPPcTUtHsihb2eXMl7s5W0O6aOcWkDY
HnbkamRgl1KHBJJTyG8st5jfa6jq/boo2JZUu2W1mEaH/dMTrGCuDtVupXtb38sO
6E+3MtZj5a/KU+7d+eio355/oxDJ9Txnv2ykx8tzQftO9gYBCpA3xc/frU3AwQeA
pBeVnmwxuybREBCeburjFvHyHOtW+hLSCP1zk7dNMI9z6Yj/CZcDmjFIbzRqAVOr
34oxYUiS76IsBIuX/CCS
=hKPj
-----END PGP SIGNATURE-----
