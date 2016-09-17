X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1857" "Friday" "16" "September" "2016" "21:51:14" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160917015114.28FD28BC7E7@smtpvmsrv1.mitre.org>" "49" "[oss-security] Re: linux kernel SCSI arcmsr driver: buffer overflow in arcmsr_iop_message_xfer()" nil nil nil "9" "2016091701:51:14" "[oss-security] Re: linux kernel SCSI arcmsr driver: buffer overflow in arcmsr_iop_message_xfer()" (number mark "U       cve-assign@m Sep 16   49/1857  " thread-indent "\"[oss-security] Re: linux kernel SCSI arcmsr driver: buffer overflow in arcmsr_iop_message_xfer()\"\n") "<CAFkTri+FwSj8n_sMckcY1PZLjAjcaizLmeDiJsRFmcZiDKjD9w@mail.gmail.com>" ("<CAFkTri+FwSj8n_sMckcY1PZLjAjcaizLmeDiJsRFmcZiDKjD9w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9717 invoked by uid 550); 17 Sep 2016 01:51:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9699 invoked from network); 17 Sep 2016 01:51:25 -0000
From: cve-assign@mitre.org
To: marco.gra@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAFkTri+FwSj8n_sMckcY1PZLjAjcaizLmeDiJsRFmcZiDKjD9w@mail.gmail.com>
Message-Id: <20160917015114.28FD28BC7E7@smtpvmsrv1.mitre.org>
Date: Fri, 16 Sep 2016 21:51:14 -0400 (EDT)
Subject: [oss-security] Re: linux kernel SCSI arcmsr driver: buffer overflow in arcmsr_iop_message_xfer()

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://lxr.free-electrons.com/source/drivers/scsi/arcmsr/arcmsr_hba.c#L2399
> 
> the int32_t user_len is taken from the scsi command
> 
> user_len = pcmdmessagefld->cmdmessage.Length;
> 
> and used directly without sanitization in a memcpy to a heap buffer of
> fixed size 1032
> 
> memcpy(ptmpuserbuffer, pcmdmessagefld->messagedatabuffer, user_len);
> 
> potentially causing kernel heap corruption and arbitrary kernel code execution.
> 
> The issue has been already acknowledged and patched in a development
> branch:
> http://marc.info/?l=linux-scsi&m=147394713328707&w=2
> http://marc.info/?l=linux-scsi&m=147394796228991&w=2

Use CVE-2016-7425.

This is not yet available at
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/drivers/scsi/arcmsr/arcmsr_hba.c
but may be there later.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX3KBcAAoJEHb/MwWLVhi2PsAQAJiBt13fFrxXEIx2r4qo9M9A
z/lQ08hVmRkuCtR3hUPz6qRiLR6k6iWMdzE4m0ic2Nwckggoiv3S1siYdE/lO2q9
ngVLJ3EgmchdCD/R13bSEMGA4RP4zMBAQCuf4m+7oOiMWiXhmUZiFgz3QEH1Uatw
tRV+wJyTCkmTs3ooqXQW/JWXvs6kHxm5xY5qv3IGcMHNhMtpB19sRCLzFWIiSmxU
T/VtuhLPRhtecxrZfHgyIumTNtbeycjm/zBfQ1/RRg5kDmGRGAC32hUN+zBYchyW
NDlbveQqKhazRZ4tm7/HChH0Ah6ignen3GkyTMh8/ad69h/oEJ96TwLoBpxU+QL3
rKcb+I75TBB50ixD9cAaD1cOeYLvYGdtMRw+d30M6u5P0qSXMQsof8F2bgwIVH3g
9PiQFiSzJQeuXMxBpAJDsb0st4HiB0U7SeJYp1/eP0W4ojaZwBvcPqz84xoUPue8
XYlLde7OP7wIH+NW5ttpS0KmM8iGpcO5Sd0xB6fHo3Ms33SM4DP5PcNNgRjfky9R
ixlOUFp28vrIWUFRmlexqEgvGNMUWhwJOemsV/y3629MuhfASay2+4+xs0AMKpKa
tsIRk7hKjhgbl3iHJdAedXPbJT8wwuCbQXm6mU628BWire9smJKsYwIp+HAPVkU9
Q8bkubcBFrhLpuFa+/3b
=bvH5
-----END PGP SIGNATURE-----
