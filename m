X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2151" "Friday" "1" "July" "2016" "15:42:35" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160701194235.46558EBC4E6@smtpvmsrv1.mitre.org>" "53" "[oss-security] Re: SQLite Tempdir Selection Vulnerability" nil nil nil "7" "2016070119:42:35" "[oss-security] Re: SQLite Tempdir Selection Vulnerability" (number mark "U       cve-assign@m Jul  1   53/2151  " thread-indent "\"[oss-security] Re: SQLite Tempdir Selection Vulnerability\"\n") "<a60e175c-5d17-9a6e-7cc6-31e0e6ae7dcb@suse.com>" ("<a60e175c-5d17-9a6e-7cc6-31e0e6ae7dcb@suse.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5185 invoked by uid 550); 1 Jul 2016 19:42:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5167 invoked from network); 1 Jul 2016 19:42:47 -0000
From: cve-assign@mitre.org
To: astieger@suse.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <a60e175c-5d17-9a6e-7cc6-31e0e6ae7dcb@suse.com>
Message-Id: <20160701194235.46558EBC4E6@smtpvmsrv1.mitre.org>
Date: Fri,  1 Jul 2016 15:42:35 -0400 (EDT)
Subject: [oss-security] Re: SQLite Tempdir Selection Vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>> Title: SQLite Tempdir Selection Vulnerability
>> Publication URL: https://www.korelogic.com/Resources/Advisories/KL-001-2016-003.txt

>>      Affected Vendor: SQLite/Hwaci
>>      Affected Product: SQLite
>>      Affected Version: All versions prior to 3.13.0
>>      Platform: UNIX, GNU/Linux
>>      CWE Classification: CWE-379: Creation of Temporary File in Directory
>>                          with Incorrect Permissions
>>      Impact: Data Leakage
>>      Attack vector: Local

> Release notes say:
>> Change the temporary directory search algorithm
>> <http://www.sqlite.org/tempfiles.html#tempdir> on Unix to allow
>> directories with write and execute permission, but without read
>> permission, to serve as temporary directories. Apply this same
>> standard to the "." fallback directory. 

> The covering commits seem to be:
> 
> http://www.sqlite.org/cgi/src/info/67985761aa93fb61
> Change the temporary directory search algorithm on unix so that
> directories with only -wx permission are allowed. And do not allow "."
> to be returned if it lacks -wx permission.

Use CVE-2016-6153.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXdsdXAAoJEHb/MwWLVhi2gRgP/3Lnd1cuFzM/pI4UqE3SfxPC
oOPgYhaU4zcAxlmiKVhUdm5CEw5xbW3yvkpALQ5hOByNHCaVzCMmO0uDyQA5AHFF
J/juDtFoVYBOMODFL0eGqnUGLmoWrpFkCpNHxIUVXHsroGvDACGsTUHVKx6gBrq/
cWx82JFiCvt0syb2K7bvYdIjsq6QQvWN4J312kjL99D0zvVz+i3S54+8rO/GHS7Q
//wTcHw7VAbs5mmeAdd77+qfvG57PfrT3bVs3JEYAh5hplHM9u3D4fWfE+dT3lE2
Uc1kmPtIz3bQO4kpf2JhE0DArMQ3oQK0LdTSD9/Or2SRuY/nICWl2veYTiEP18bb
oNvnA91s7Lcw9RGYhIDIDb+zcqkD7I6KwUcQkKOybknMyqKNRcKOBvK0lchME/tz
aRUSTwv9YhorY1+Bfx3JlHBqmBlPBT9t1vPMtBCc0SlDswMat9xWcmBHFSuQfVLP
y7HYntpVem4U86bKH2+VDkJZq9wkHbXGrWaFa3gSjvXsJibStY6P4ok9Gnz8n1DJ
+3LKycpYvQNUFi7Sh3w9hx5P2Qp74W9V41/ZeY/gNVgclPBO+41M8mGoSsSHs2jj
DXrFyZcvxCKOY9HH1kICReYG6riyBfinWD/vSOFg6mZdDbgVc/CAh7ja69KkOqSM
zC6vryife0xRFz+bpu3K
=InVu
-----END PGP SIGNATURE-----
