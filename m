X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1437" "Saturday" "5" "September" "2015" "12:36:37" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150905163637.47D2436E3DB@smtpvbsrv1.mitre.org>" "35" "[oss-security] Re: CVE request: Ganglia-web auth bypass" nil nil nil "9" "2015090516:36:37" "[oss-security] Re: CVE request: Ganglia-web auth bypass" (number mark "        cve-assign@m Sep  5   35/1437  " thread-indent "\"[oss-security] Re: CVE request: Ganglia-web auth bypass\"\n") "<55E9D62F.5030603@wallarm.com>" ("<55E9D62F.5030603@wallarm.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16252 invoked by uid 550); 5 Sep 2015 16:36:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16234 invoked from network); 5 Sep 2015 16:36:52 -0000
In-Reply-To: <55E9D62F.5030603@wallarm.com>
Message-Id: <20150905163637.47D2436E3DB@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sat,  5 Sep 2015 12:36:37 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Ganglia-web auth bypass
To: in@wallarm.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/ganglia/ganglia-web/blob/4e98ea69e0e18b388cdc73809ce54843a16ff87b/lib/GangliaAuth.php#L34-L46
> It's easy to bypass auth by using boolean serialization

> https://github.com/ganglia/ganglia-web/issues/267

> https://github.com/ganglia/ganglia-web/issues/267#issuecomment-137822654
> sounds like strict equality checking would resolve the problem?

Use CVE-2015-6816.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJV6xmvAAoJEL54rhJi8gl5+G0QAKv+ZGG1HffLYkr8ETEAzRni
2+VBHL4L62xQW1ng1Ibad36PsBKzOWb3YqMzOmVyQDhBC8CBp7cQ11WDbFsP14B7
rC6crlmq3CkLDCMOrMnskVm1o5XYesFkoE4KhmOSDxNjDo5wfcak2/JYOqMfM4dz
OxKG5KU8srfhS2/NL5Y+DlS4c/9lfcwfFxDFgsfANZU73XHYWgL/wDWCnMFGJs0J
7x5W+EtbGk5lwuBQEW3l/rMlIjoK9tGF86JC0D0yDnzFp0ZufKaPyb8zDAhl1Vgf
EWGOT4yY64CWFx7Ztoi62hAAX599cUdkdNmocii4LWF6GHl7IiXku7WpwYSUew7x
5ma4M11dJo1/NrtXeZLMzcegddEFKyU/fKsOEOoGj2wXKPoE1ujsgcpr05Grs956
P0yg1/daDXVXQx3uWIseBmw9natbpAF1LQM2I5fqpWBMhIh25uFUFwCEcRtnWHvA
/YH7NosYnu7QKF0O8qZvqJPKymk+jjJS93ZFiZsI5lFV+wbN0HnseTldtvpZFi8U
bjl9b7CdE5DrI8JHrrI3j0MyteYTwxn2HhSU5+yldSBJ+AddYI6kvNykxF11BNRv
P7qGtW7MYgqhmOOi2/QdPGvbriIvTUFMKeJOLl3Oa0GZReoF3GUug7MKoK+eEiY2
0iG4G+E9wSfrYim3zjZa
=14xY
-----END PGP SIGNATURE-----
