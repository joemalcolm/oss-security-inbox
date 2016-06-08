X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1828" "Wednesday" "8" "June" "2016" "16:44:44" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160608204444.1EC5EB2E01A@smtpvbsrv1.mitre.org>" "42" "[oss-security] Re: CVE Request Qemu: scsi: megasas: information leakage in megasas_ctrl_get_info" nil nil nil "6" "2016060820:44:44" "[oss-security] Re: CVE Request Qemu: scsi: megasas: information leakage in megasas_ctrl_get_info" (number mark "U       cve-assign@m Jun  8   42/1828  " thread-indent "\"[oss-security] Re: CVE Request Qemu: scsi: megasas: information leakage in megasas_ctrl_get_info\"\n") "<alpine.LFD.2.20.1606081531020.11110@wniryva>" ("<alpine.LFD.2.20.1606081531020.11110@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25973 invoked by uid 550); 8 Jun 2016 20:44:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25942 invoked from network); 8 Jun 2016 20:44:55 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn
In-Reply-To: <alpine.LFD.2.20.1606081531020.11110@wniryva>
Message-Id: <20160608204444.1EC5EB2E01A@smtpvbsrv1.mitre.org>
Date: Wed,  8 Jun 2016 16:44:44 -0400 (EDT)
Subject: [oss-security] Re: CVE Request Qemu: scsi: megasas: information leakage in megasas_ctrl_get_info

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the MegaRAID SAS 8708EM2 Host Bus Adapter
> emulation support is vulnerable to an information leakage issue. It could
> occur while processing MegaRAID Firmware Interface(MFI) command to read device
> control information in 'megasas_ctrl_get_info'.
> 
> A privileged user inside guest could use this flaw to leak host memory bytes.
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1343909
> https://lists.gnu.org/archive/html/qemu-devel/2016-06/msg01969.html
> http://git.qemu.org/?p=qemu.git;a=commit;h=844864fbae66935951529408831c2f22367a57b6

>> While reading information via 'megasas_ctrl_get_info' routine,
>> a local bios version buffer isn't null terminated. Add the
>> terminating null byte to avoid any OOB access.

Use CVE-2016-5337.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXWIM7AAoJEHb/MwWLVhi2Xf4P/Ahd+5miydBOK6lpzPz8rCki
yO1bf5RBSrxCs8mupwxK1jI8YgohSOwaeYrACwDeNTHnzJD7uc6MwvhWYvuMnv8D
K///kKuhocZD8A1Ol5KSHxul/ukNv1+jMV+XhQZvHZh/qHFApCeJAldAvPh3tqrT
Qt+8vCqoIQR14IbQMqLuC7peqBPOU9PuXv9xA3FYBxomlDCl+B3mfptLMuBCQ+hW
EDTea9jmA6M5rzDY23/iWyauUgW65+ze2Cx6Y8+xtJbAsBgzJl66iJWKmhZ5xvhm
qn7GWvN9YboqR+819cwmAHCDbPrE4UNfbst63W51epIj7eO5NQSVWb3INpV0rR8B
P64vpoOdZ+C9Ur+IH3bSypGXVAa9E2caT5Wn/LLnumxyDRB+zuQcmXikGe5clROV
rdA8Nq86HQEp+uax4j1KCjSJxeMWJ0C25QsNXVO5GZDBpJ7JAtpM0MSp1rh0KWPM
jqHv24YdWfq1SO/6XmVIv8yhJfCjOiXRgiC8fvb9y92n2UgRf4Lp88BCYrl6FU1x
vSph/1nqbl8WJqqRR3BYNCLaTEZUtuA6nxll6FttaGi/icWW6MB+B1QL4jQ1d2y3
5tIvvUD+NgCsfGZAEq63Qi4H+XlG8DdIAADKa1mXSNp0ZUAivNBgnH4SdUIKkT0v
5JkP8v9qRFtvQv9gceVV
=Up/J
-----END PGP SIGNATURE-----
