X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1658" "Friday" "2" "December" "2016" "13:02:57" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<719af3cbbf8c4f269e61de4a0cbf6ac5@imshyb02.MITRE.ORG>" "41" "[oss-security] Re: CVE request Qemu: net: mcf_fec: infinite loop while receiving data in mcf_fec_receive" nil nil nil "12" "2016120218:02:57" "[oss-security] Re: CVE request Qemu: net: mcf_fec: infinite loop while receiving data in mcf_fec_receive" (number mark "U       cve-assign@m Dec  2   41/1658  " thread-indent "\"[oss-security] Re: CVE request Qemu: net: mcf_fec: infinite loop while receiving data in mcf_fec_receive\"\n") "<alpine.LFD.2.20.1612021331570.5998@wniryva>" ("<alpine.LFD.2.20.1612021331570.5998@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20115 invoked by uid 550); 2 Dec 2016 18:03:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20064 invoked from network); 2 Dec 2016 18:03:09 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<wjjzhang@tencent.com>
In-Reply-To: <alpine.LFD.2.20.1612021331570.5998@wniryva>
Message-ID: <719af3cbbf8c4f269e61de4a0cbf6ac5@imshyb02.MITRE.ORG>
Date: Fri, 2 Dec 2016 13:02:57 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: net: mcf_fec: infinite loop while receiving data in mcf_fec_receive

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the ColdFire Fast Ethernet Controller emulator
> support is vulnerable to an infinite loop issue. It could occur while
> receiving packets in 'mcf_fec_receive'.
> 
> A privileged user/process inside guest could use this issue to crash the Qemu
> process on the host leading to DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-11/msg05324.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1400829

Use CVE-2016-9776.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/net/mcf_fec.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYQbZDAAoJEHb/MwWLVhi2FGEP/jcbuXN9KtIlf6ff6wzQYoLv
+Vtqvl6S1/VSnjDKKm0ikKlnnN/jZtoh8dzO3inGFDruTxom+pJKAKcp+G30qaIy
G10mDBVeq0VzHvfJaFm63moPTkjvVGkapQKbpzuO+4xA3NESAhXc8TcAGyrm6CwB
RbjjFomICR1dwoLIlASTxxJDmh37BjAmI3zXJ14QcHER8TDb8NIQ0V8ROGD+inHp
yiRIt/3bQC/rEdkJETPCPFrogLFx/vjo9NKmxechzELPGTJ4CsvQumeAcwV3eEzO
CIgKY24n93PJFBZww/Y6NWK7JxVclQjMz78saBMaKOPmtf6JHyDf5he4mUJB7zwN
bpydPJFVLbgH/vd07APXgdoeoYY3uwxS3rE5vFDHjiJX8J6StvziUqLBZ+4RVo7V
4ZKNVyQ1sWIERTgSZoTxxj2Vauvl53ETI7cmSqV+dVHWshPAOP3Bsm9x6jbNDma8
hLkxiU+VhKqLZvfj9luyEdVCUnRDAqwPknnngjVPlZl67rD4o5ZKSyYx+fDV6Kqa
98TgAH0oC6SeyZ9I+YbSnCqmADX/xUDC3rmo9Ghux/1E9m3kApuW9geBwhcryOd3
RLljnzk3by19XCD10osVi0WplkvOCHvwHWzClzgbA/L6WMnrTSV8lNzipXD8rm/7
rAVDMdwKS6qXIq7RSrBE
=hUvr
-----END PGP SIGNATURE-----
