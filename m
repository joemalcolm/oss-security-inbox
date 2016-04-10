X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1470" "Sunday" "10" "April" "2016" "10:24:23" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160410142423.B8E2B6C02B9@smtpvmsrv1.mitre.org>" "39" "[oss-security] Re: CVE request: imlib2 - off-by-one OOB read in __imlib_MergeUpdate()" nil nil nil "4" "2016041014:24:23" "[oss-security] Re: CVE request: imlib2 - off-by-one OOB read in __imlib_MergeUpdate()" (number mark "U       cve-assign@m Apr 10   39/1470  " thread-indent "\"[oss-security] Re: CVE request: imlib2 - off-by-one OOB read in __imlib_MergeUpdate()\"\n") "<57098CB0.1000806@vorlons.info>" ("<57098CB0.1000806@vorlons.info>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9551 invoked by uid 550); 10 Apr 2016 14:24:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9500 invoked from network); 10 Apr 2016 14:24:35 -0000
From: cve-assign@mitre.org
To: matthias@vorlons.info
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <57098CB0.1000806@vorlons.info>
Message-Id: <20160410142423.B8E2B6C02B9@smtpvmsrv1.mitre.org>
Date: Sun, 10 Apr 2016 10:24:23 -0400 (EDT)
Subject: [oss-security] Re: CVE request: imlib2 - off-by-one OOB read in __imlib_MergeUpdate()

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://git.enlightenment.org/legacy/imlib2.git/commit/?id=ce94edca1ccfbe314cb7cd9453433fad404ec7ef
> 
> -  (T(xx, y).used & T_USED) && (xx < tw); xx++, ww++);
> +  (xx < tw) && (T(xx, y).used & T_USED); xx++, ww++);


> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=819818

> Invalid read of size 1
> T(xx, y) addresses one byte out of buffer
> off-by-one error due to swapped condition order

Use CVE-2016-3993.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXCl7GAAoJEL54rhJi8gl59FEQAMW3yzAq1QQQYjdy7XOAw2Nf
fSE86f1yzJY+cfK0k1107Rdva4b9AJ+qT6xw8a7Jn/HFIe7DHBgU+Vx6jO8AKKEI
ugr1KRfuDHWslYS2naZTX9Y2RCfpL82rBET6ZfUFa6uUvN44Ns5fzVhzYtwxemps
FuMYcVh/WUFBHaCi2kXHCzdGkCpV/d7bQ2YHeysMP/z2VKtglxXzyjOBnHaeERaM
T+lUExknVIjPioH1M2sdFF2kxsTZx80/vJUS7EuIc5bbj5X6N0aWuJvWjB/N5isb
eKvZ5RjNdlCCdCuCDxxj+VyCwi8gb0OY75IjIIS8Qm119OwFRts1UnrYI0hYfAnH
R1I8KAmDOMLfsVgUYHlDqXL2c4IbDE4ZvYbZPKWRWo3FhKQHy9lLrjAt6lryWZWG
3V13Pcf09x+zPhD0U3I0neiJDLUfI7QKztRhujjzhgbQsdv6dS0JFMQZ+Ebr0X1T
AAVsp5WYJtwLM78QgMahlyqoVrPVtu2UBJ+iJ0hTA4OnyVqMFFwKajGV0LqIRrkJ
oz08H2e2PrB+YjhLp3RHZPL7TejBsv1DAsU1RT63Lt1W0Lsxc+ho0tzNS+E+lLKZ
K9cXJ7pdD5NsVj6hQu0+h2B76tRLLSfvt8TQo8UHecvFQ5MvujpIAtsM6AXLh1/X
Ws91LdqvbB3pCAf2I2Vx
=U68g
-----END PGP SIGNATURE-----
