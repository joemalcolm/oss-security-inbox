X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1336" "Saturday" "7" "May" "2016" "11:17:34" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160507151734.68C826C0716@smtpvmsrv1.mitre.org>" "33" "[oss-security] Re: CVE Request: Linux: [media] videobuf2-v4l2: Verify planes array in buffer dequeueing" nil nil nil "5" "2016050715:17:34" "[oss-security] Re: CVE Request: Linux: [media] videobuf2-v4l2: Verify planes array in buffer dequeueing" (number mark "U       cve-assign@m May  7   33/1336  " thread-indent "\"[oss-security] Re: CVE Request: Linux: [media] videobuf2-v4l2: Verify planes array in buffer dequeueing\"\n") "<20160507141409.GA11843@eldamar.local>" ("<20160507141409.GA11843@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32706 invoked by uid 550); 7 May 2016 15:17:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32688 invoked from network); 7 May 2016 15:17:46 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, benh@debian.org
In-Reply-To: <20160507141409.GA11843@eldamar.local>
Message-Id: <20160507151734.68C826C0716@smtpvmsrv1.mitre.org>
Date: Sat,  7 May 2016 11:17:34 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: Linux: [media] videobuf2-v4l2: Verify planes array in buffer dequeueing

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://git.kernel.org/linus/2c1f6951a8a82e6de0d82b1158b5e493fc6c54ab
> 
> __fill_v4l2_buffer() however uses the number of planes from the dequeued
> videobuf2 buffer, overwriting kernel memory ...
> if the user provided fewer planes than the dequeued buffer had.

Use CVE-2016-4568.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXLgZSAAoJEHb/MwWLVhi20G8QALSR5YnhenGOLq7Om8MR3oNK
Y5cyZXw4E/4h9n1z1/HZ/2yn+xh52oEgQ4utPTFRzCB/yOjBW+qMGf+j3AGCRqA4
g7WKkRmqMp9nKMhnCrCcxFC+NsnN+tySE9Nk01nHO8EGPqHBbe+HBtg2SGOuYs2I
oCH/NZlZdb/LOCKZKAkqbLoVn5jHyKsHMYd16LVSbHDKRazMhH2IAPI1g8BgLuym
kEDVKUEwXazwuGATpRbIf2lSVZ5Qz5RhxDEntWMR5rR/w2RLcmTUfIHTkbEVoS35
QwV8pn+qgOEqZ1BdskOsYb8Cxc3rg+J8qusYa/xpkq3l3z9veMr/1tmcYbmWMZGb
/yWSm2R2Oy/t0jP0B421o+2FIFkqY6CXIypk1c4wpNLBzE2JlJoaymoQrwDrITHE
EANQ/dp9WJeNdXiuFH9wfIgQXo+Z48JhWrpdN3rleLB6Foezg/0a4tuqGCKoHdly
hGCI6Xx0OJKSq2ZBW6kW9ZvPATs0BY76/N9BAuxGKlTew7qiU7JeuF3Y0HGzIqpj
DUHAhNWj9/+QDPQXPQxVRoNc1m62M8pR9s7hw8dM2Fbc/kmcxV+oQTxKVoOjQryJ
XJE8+7oHZjWgGr1CUIrczk5ugZVhIjB63xj8YWPUxyKiOoWUhz1MRdWoAu42cEtx
I80GkBp5znEdyshOx9Rg
=eGPg
-----END PGP SIGNATURE-----
