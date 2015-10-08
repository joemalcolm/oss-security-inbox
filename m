X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1603" "Wednesday" "7" "October" "2015" "23:01:28" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151008030128.76D35B2E4A0@smtpvbsrv1.mitre.org>" "39" "[oss-security] Re: CVE Request: Audio File Library" nil nil nil "10" "2015100803:01:28" "[oss-security] Re: CVE Request: Audio File Library" (number mark "U       cve-assign@m Oct  7   39/1603  " thread-indent "\"[oss-security] Re: CVE Request: Audio File Library\"\n") "<20151006040319.GH16643@hunt>" ("<20151006040319.GH16643@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32023 invoked by uid 550); 8 Oct 2015 03:01:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32002 invoked from network); 8 Oct 2015 03:01:40 -0000
From: cve-assign@mitre.org
To: seth.arnold@canonical.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, michael@68k.org, security@ubuntu.com
In-Reply-To: <20151006040319.GH16643@hunt>
Message-Id: <20151008030128.76D35B2E4A0@smtpvbsrv1.mitre.org>
Date: Wed,  7 Oct 2015 23:01:28 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: Audio File Library

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugs.launchpad.net/ubuntu/+source/audiofile/+bug/1502721
> https://github.com/mpruett/audiofile/pull/25/files

> When libaudiofile is used to change both the number of channels of an
> audio file (e.g. from stereo to mono) and the sample format (e.g. from
> 16-bit samples to 8-bit samples), the output file will contain
> corrupted data.
> 
> The 2 variables byte and abyte are int8_t. afReadFrames is told to
> read 1 8-bit sample into byte, but ends up treating &byte as a pointer
> to an int16_t, thus overwriting abyte

Use CVE-2015-7747.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWFdvAAAoJEL54rhJi8gl5P5AQANByD2GdY3CRGrGRm06N4yEK
1ir7TAsy5+SW5wjvyBjBzMmEhCCs2IIq48pXpZxHIeA9mmd/fxsxTuWIEdAXwruH
HvTvBwRBOSK9srEyL2ksCA6agLtq+pDuCuksdnHLnotJbuqziBlSSmP1QXWaOklD
6DjnRy7cUGs4/ZWcuMfGHyo/GVRhHrfbspiJQFfnO43hKraBd79ZaLNz7SNQxmlq
77ruploCtfCdPvcbwsR4xy5ogPy/o+jEreLySgEgqlWXI4Q/aXYwr/P/DOcPTyVr
mmbicJ53IDMsX7vW5xpk1teGcFLrhb6fL4nr2PWQSaRUf12Q4YEgPMpIPqqbUbQU
uvU3ZmrU78Ciw1+6fA6Issajk7MQ0ElbYijErRk/U3he0zNkYjAjKJlNAAkHFsfB
tic6cOyHATt8U/NVCBaUlffclerU17mu+nbg74CbOLnXDERInhUpvSFiVIx5NPLj
iVjXz/0VMmfDIaVLDD+tWv/0BTivq887L9rvP4Xnnie+GpDQExOkD0Los50G8caS
vBjb4gl/w2MWJmoaZEXIaUowZDntqttdkN5k88SjAW676UChyPJtMRQUUg5wHXzj
PdEh11jaR35Qt8v8DtikFhoLJC72gS7Hy++Vwah/AABFWBbsGu/qLYo1g5PUfps3
rEZF+jsCSdCtDHH3uNt6
=KsIM
-----END PGP SIGNATURE-----
