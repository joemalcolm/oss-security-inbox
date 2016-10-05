X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2757" "Wednesday" "5" "October" "2016" "14:04:33" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161005180433.E7BC8B2E063@smtpvbsrv1.mitre.org>" "67" "[oss-security] Re: CVE Request - multiple ghostscript -dSAFER sandbox problems" "^Cc:" nil nil "10" "2016100518:04:33" "[oss-security] Re: CVE Request - multiple ghostscript -dSAFER sandbox problems" (number mark "        cve-assign@m Oct  5   67/2757  " thread-indent "\"[oss-security] Re: CVE Request - multiple ghostscript -dSAFER sandbox problems\"\n") "<CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>" ("<CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23901 invoked by uid 550); 5 Oct 2016 18:04:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23879 invoked from network); 5 Oct 2016 18:04:45 -0000
In-Reply-To: <CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>
Message-Id: <20161005180433.E7BC8B2E063@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed,  5 Oct 2016 14:04:33 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request - multiple ghostscript -dSAFER sandbox problems
To: taviso@google.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>> using libgs ... the same issues apply there.

> bug: various userparams allow %pipe% in paths, allowing remote shell
> command execution.
> id: http://bugs.ghostscript.com/show_bug.cgi?id=697178
> repro: http://www.openwall.com/lists/oss-security/2016/09/30/8
> patch: http://git.ghostscript.com/?p=user/chrisl/ghostpdl.git;h=71ac87493b1e445d6c07554d4246cf7d4f44875c

Use CVE-2016-7976.

There currently isn't a separate CVE ID for the earlier impact that
occurred when "b" was in the mode argument to popen. The question of
whether popen will execute anyway (even with the 'b" character) is,
more or less, a reachability concern in this context, and doesn't mean
that a second vulnerability needs to be defined.


> bug: .libfile doesn't check PermitFileReading array, allowing remote
> file disclosure.
> id: http://bugs.ghostscript.com/show_bug.cgi?id=697169
> repro: http://www.openwall.com/lists/oss-security/2016/09/29/28
> patch: http://git.ghostscript.com/?p=user/chrisl/ghostpdl.git;h=cf046d2f0fa2c6973c6ca8d582a9b185cc4bd280

Use CVE-2016-7977.


> bug: reference leak in .setdevice allows use-after-free and remote
> code execution
> id: http://bugs.ghostscript.com/show_bug.cgi?id=697179
> repro: http://bugs.ghostscript.com/show_bug.cgi?id=697179#c0
> patch: http://git.ghostscript.com/?p=user/chrisl/ghostpdl.git;h=d5ad1e0298e1c193087c824eb4f79628b182e28b

Use CVE-2016-7978.


> bug: type confusion in .initialize_dsc_parser allows remote code execution
> id: http://bugs.ghostscript.com/show_bug.cgi?id=697190
> repro: http://bugs.ghostscript.com/show_bug.cgi?id=697190#c0
> patch: http://git.ghostscript.com/?p=ghostpdl.git;h=875a0095f37626a721c7ff57d606a0f95af03913

Use CVE-2016-7979.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX9T/VAAoJEHb/MwWLVhi2cAIQAK8qd8U2OgbvvMLLHcWB3Ga8
BOkFNMfEXPYmzsSH7JAL7nv6JMuep5gRCKIVMVfbhSgFtCyb5m7sR7qb3SwAJ8j6
9Vj0Cm/wEif2NkuLQzstqir/wSlh0ltTiBI7Y+BoxVZbXyeh4yOJSbR0SADgp4Kv
Vczvr3Ys37mqjFTBULf9AaLIPQO3PF9iG8P48lJFVk+ZedWcJOV1XQIEwaJt1NJv
jW/w87MDDQxCmDOcZwha5mMWmiHc3oA3H/DllwMqb5GyW56+ek2zpykj1K2NmDVA
VPv01YTZh/PGQeBsnVNJpY9P3NI1FUsxRj7AunUUr50l2b2+0WLxE1fzHvgpd7fV
wuJuOoOZoFob6Bsv/OuxmOpsCqGPj5U4Q7CfCamNAHl14ahTZJzTO8plrTD5sexU
9wWSBqMeqtl5QdwcFu0RFvoxK+mPvOT1ufwkTWjk3eaH58tuk6FpacspAqH2sv/F
DqEMAGQ7pT6at6c2frQhBRX6aMyp/dUHsoSNRvcLYgR+m0boscez+ayFQGeq1DlT
pSbQbKyNb9KBa6u6kN72Ts8uwVKrqFbwuxCgOrXxdCeZQCGMh4vftA317jLDUJbV
2b8fNfMrssi11P7CmAMYX/PRM97ZlPHvdb2l1BcpUASymPj2SCivVQpxOj/pKXLw
ihoKA67NoYZiwgVqR44j
=2xkJ
-----END PGP SIGNATURE-----
